#!/usr/bin/env python3

# Converts certain gen2 game files between assembly and csv for easier editing of the type chart and movepool.
# Not backwards-compatible with gen1.

import os
import csv
from pathlib import Path
from argparse import ArgumentParser

# Command-Line Arguments

parser = ArgumentParser()
parser.description = 'Converts certain gen2 game files between assembly and csv for easier editing of the type chart and movepool.\
                      By default, assumes cwd is the root folder of the disassembly. Does not support custom types.'
parser.add_argument('-c', '--csv-dir', type=Path, help="Where to read/write the csv files. Defaults to cwd.", default='.edits')
parser.add_argument('-d', '--data-dir', type=Path, help="Where the game's data files are located.", default='./data/')
parser.add_argument('-e', '--export', action='store_true', help="When set, exports the game's assembly files to csv.")
parser.add_argument('-u', '--update', action='store_true', help="When set, updates the game's assembly files with csv edits.")
parser.add_argument('-q', '--quiet', action='store_true', help="If set, will not print import/export status to the cmd.")
parser.add_argument('-v', '--verbose', action='store_true', help="If set, overrides --quiet and outputs all messages for --all.")
parser.add_argument('--matchups', action='store_true', help="Set to import/export type_matchups.asm.")
parser.add_argument('--moves', action='store_true', help="Set to import/export moves.asm.")
parser.add_argument('--mon', type=str, help="Set to export the base stats and level_moves of a specific pokemon. Name should exclude punctuation or spaces.")
parser.add_argument('--all', action='store_true', help="Set to import/export all applicable game files.")
ARGS, _ = parser.parse_known_args()

# Update to support custom types. Except for Psychic, these must appear exactly as they are written in the game's code, and the csv order must match.
types = ['NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'ROCK', 'GHOST', 'DRAGON', 'DARK', 'STEEL']

# Helper Functions

def effect_map(inverted=False) -> dict:
    effect_text = ['NO_EFFECT', 'NOT_VERY_EFFECTIVE', 'SUPER_EFFECTIVE']
    effect_vals = [0, 0.5, 2]
    if inverted: return dict(zip([str(val) for val in effect_vals], effect_text))
    return dict(zip(effect_text, effect_vals))

def format_type(_type:str, as_code:bool=False) -> str:
    _type = _type.strip().upper()
    if as_code: return 'PSYCHIC_TYPE' if _type == 'PSYCHIC' else _type
    return 'PSYCHIC' if _type == 'PSYCHIC_TYPE' else _type

def format_move(move:str, as_code:bool=False) -> str:
    move = move.strip().upper()
    if as_code: return 'PSYCHIC_M' if move == 'PSYCHIC' else move.replace(' ','_')
    return 'PSYCHIC' if move == 'PSYCHIC_M' else move #.replace('_',' ')

def rpad(string:str, target:int) -> str: # right-pads `string` if shorter than `target`.
    amount = target - len(string)
    return string + ' '*amount if amount > 0 else string

def lpad(string:str, target:int) -> str: # left-pads `string` if shorter than `tartet`.
    amount = target - len(string)
    return ' '*amount + string if amount > 0 else string

def safe_print(message:str, **kwargs) -> None:
    if ARGS.quiet and not ARGS.verbose: return
    print(f'easy_edit.py: {message}', **kwargs)

# Export / Update Functions

## Matchups

def export_matchups() -> None: # exports type_matchups.asm to type_matchups.csv
    safe_print('Exporting type_matchups.asm to type_matchups.csv...', end='\r')
    effects = effect_map()
    matchups = { _type: dict.fromkeys(types) for _type in types } # { Attacker : { Defender : Multiplier } }
    with ARGS.data_dir.joinpath('types', 'type_matchups.asm').open() as infile:
        for line in infile.readlines():
            data = line.split(';')[0].split('\tdb')
            if len(data) <= 1 or any(eof in data[-1] for eof in ['-1','-2']): continue # normally -1 is EOF but there is a second table with only ghost's immunities to make Foresight work
            attacker, defender, effect = [format_type(field) for field in data[-1].split(',')]
            matchups[attacker][defender] = effects[effect]
    with ARGS.csv_dir.joinpath('type_matchups.csv').open('w') as outfile:
        writer = csv.writer(outfile, delimiter=',')
        writer.writerow(['', *types])
        for attacker in matchups:
            writer.writerow([attacker, *matchups[attacker].values()])
    safe_print('Exporting type_matchups.asm to type_matchups.csv...Done.')

def update_matchups() -> None: # overwrites type_matchups.asm using type_matchups.csv; breaks gen1 (foresight)
    csv_path = ARGS.csv_dir.joinpath('type_matchups.csv')
    if not csv_path.exists(): safe_print('type_matchups.csv not found. Skipping update.')
    else:
        safe_print('Updating type_matchups.asm using type_matchups.csv...', end='\r')
        effects = effect_map(inverted=True)
        with csv_path.open() as infile:
            with ARGS.data_dir.joinpath('types', 'type_matchups.asm').open('w') as outfile:
                reader = csv.reader(infile, delimiter=',')
                lines = [
                    'TypeEffects:',
                    '\t;  attacker,     defender,     *=',
                ]
                foresight = [] # Normal->Ghost and Normal->Fighting go in a separate table for Foresight
                for i, [attacker, *defenders] in enumerate(reader):
                    if i == 0: continue
                    attacker = format_type(attacker, as_code=True)+','
                    for d, effect in enumerate(defenders):
                        if not effect: continue
                        defender = format_type(types[d], as_code=True)+','
                        code = f'\tdb {rpad(attacker, 13)} {rpad(defender, 13)} {effects[effect]}'
                        if defender == 'GHOST,' and attacker in ['NORMAL,', 'FIGHTING,']: foresight.append(code) # see last note
                        else: lines.append(code)
                lines.append('\n\tdb -2 ; end (with Foresight)')
                lines.append("\n; Foresight removes Ghost's immunities.")
                lines.extend(foresight)
                lines.append('\n\tdb -1 ; end')
                outfile.writelines([line+'\n' for line in lines])
        safe_print('Updating type_matchups.asm using type_matchups.csv...Done.')

## Moves

def export_moves() -> None: # exports moves.asm to moves.csv; breaks gen1 (side effect %)
    safe_print('Exporting moves.asm to moves.csv...', end='\r')
    with ARGS.data_dir.joinpath('moves', 'moves.asm').open() as infile:
        with ARGS.csv_dir.joinpath('moves.csv').open('w') as outfile:
            writer = csv.writer(outfile, delimiter=',')
            writer.writerow(['Name', 'Effect', 'Power', 'Type', 'Accuracy', 'PP', 'Side Effect %'])
            for line in infile.readlines():
                data = line.split(';')[0].split('\tmove')
                if len(data) > 1:
                    data = [d.strip().upper() for d in data[-1].split(',')]
                    data[0] = format_move(data[0])
                    data[3] = format_type(data[3])
                    writer.writerow(data)
    safe_print('Exporting moves.asm to moves.csv...Done.')

def update_moves() -> None: # overwrites moves.asm using moves.csv; breaks gen1 (side effect %)
    csv_path = ARGS.csv_dir.joinpath('moves.csv')
    if not csv_path.exists(): safe_print('moves.csv not found. Skipping update.')
    else:
        safe_print('Updating moves.asm using moves.csv...', end='\r')
        with csv_path.open() as infile:
            with ARGS.data_dir.joinpath('moves', 'moves.asm').open('w') as outfile:
                reader = csv.reader(infile, delimiter=',')
                lines = [
                    '; Characteristics of each move.',
                    '',
                    'MACRO move',
                    '\tdb \\1 ; animation',
                    '\tdb \\2 ; effect',
                    '\tdb \\3 ; power',
                    '\tdb \\4 ; type',
                    '\tdb \\5 percent ; accuracy',
                    '\tdb \\6 ; pp',
                    '\tdb \\7 percent ; effect chance',
                    '\tassert \\6 <= 40, "PP must be 40 or less"',
                    'ENDM',
                    '',
                    'Moves:',
                    '; entries correspond to move ids (see constants/move_constants.asm)',
                    '\ttable_width MOVE_LENGTH, Moves',
                ]
                for i, (name, effect, power, _type, accuracy, pp, side_effect, *_) in enumerate(reader):
                    if i == 0: continue # header
                    if any([not field.isnumeric() for field in [power, accuracy, pp, side_effect]]): raise ValueError('Power, Accuracy, PP, and Side Effect % must be numeric.')
                    name = format_move(name, as_code=True)
                    _type = format_type(_type, as_code=True)
                    name, effect, _type = [field.strip().upper()+',' for field in [name, effect, _type]]
                    power, accuracy, pp, side_effect = [lpad(field, 3)+',' for field in [power, accuracy, pp, side_effect]]
                    lines.append(f'\tmove {rpad(name, 13)} {rpad(effect, 25)} {rpad(power, 4)} {rpad(_type, 13)} {rpad(accuracy, 4)}{rpad(pp,2)}{lpad(side_effect[:-1], 4)}')
                lines.append('\tassert_table_length NUM_ATTACKS')
                outfile.writelines([line+'\n' for line in lines])
        safe_print('Updating moves.asm using moves.csv...Done.')

## Mon

# Mon data is strictly ordered, so we can use a static list of csv headers and reference by index.
mon_data_labels = [
    'pokedex id pointer -- see data/pokemon/dex_order.asm',
    'base stats (0-255)',
    'type(s) -- enter twice for monotype (ex: BUG BUG)',
    'catch rate (X/255)',
    'base exp (0-255)',
    'held items -- enter NO_ITEM for none',
    'gender ratio -- see constants/pokemon_data_constants.asm',
    'unknown 1',
    'hatch steps',
    'unknown 2',
    'front sprite -- either 1 file (crystal) or 2 (gold, silver)',
    'unused (NULL)',
    'growth rate -- see constants/pokemon_data_constants.asm',
    'egg group(s) -- see constants/pokemon_data_constants.asm',
    # tm/hm learnset -- excluded from this list for csv formatting
]

# Special cases where name formatting does not match the typical pattern across files. { <mon name> : (<filename>, <EvosAttacks prefix>) }
name_exceptions = {
    'nidoranf' : ('nidoran_f', 'NidoranF'),
    'nidoranm' : ('nidoran_m', 'NidoranM'),
    'farfetchd' : ('farfetch_d', 'FarfetchD'),
    'mrmime' : ('mr__mime', 'MrMime'),
    'hooh' : ('ho_oh', 'HoOh'),
}

def export_mon() -> None: # exports <ARGS.mon>.asm and evos_attacks.asm (partial) to <ARGS.mon>.csv; breaks gen 1
    safe_print(f'Exporting {ARGS.mon}.asm and evos_attacks.asm to {ARGS.mon}.csv...', end='\r')
    indir = ARGS.data_dir.joinpath('pokemon')
    mon_data = [] # see mon_data_labels
    reading_sprites = False # these vary by version and are determined at build time
    filename = ARGS.mon
    pointer = filename[0].upper() + filename[1:]
    if ARGS.mon in name_exceptions: filename, pointer = name_exceptions[ARGS.mon]
    with indir.joinpath('base_stats', f'{filename}.asm').open() as infile:
        for line in infile.readlines():
            data = line.split(';')[0].strip()
            if not data or any(d in data for d in ['IF DEF','ENDC']): continue
            if not reading_sprites and 'INCBIN' in data:
                reading_sprites = True
                mon_data.append([]) # start sprite list
            elif reading_sprites and not 'INCBIN' in data:
                reading_sprites = False
            data = data.split(' ', maxsplit=1)[-1].strip()
            if reading_sprites: mon_data[-1].append(data)
            else: mon_data.append(data.split(','))
    tm_hm_moves = mon_data.pop(-1) # multi-line exception in gen 1, but useful to separate here for formatting
    if len(tm_hm_moves) == 1: tm_hm_moves.pop() # 1 entry = empty learnset, as there are no pokemon that learn only 1 TM/HM
    evo_data = [] # excluded in code for mons that don't evolve, but included here for consistent formatting
    level_moves = [] # level up learnset and evolution are pulled from a single file (evos_attacks.asm) for all mons
    with indir.joinpath('evos_attacks.asm').open() as infile:
        mon_header = pointer + 'EvosAttacks:'
        mon_found = False
        in_evos = True
        for line in infile.readlines():
            data = line.split(';')[0].strip()
            if 'EvosAttacks:' in data and mon_found: mon_found = False
            if data == mon_header: 
                mon_found = True
                continue # skip header
            if not data or not mon_found: continue
            if 'db 0' in data:
                if in_evos: in_evos = False
                continue
            data = [d.strip() for d in data.split('db', maxsplit=1)[-1].split(',')]
            if in_evos: evo_data.append(data) # evolution, if present, is either 3 or 4 items
            else: level_moves.append(data) # note this is specifically a nested list to include learn level
    with ARGS.csv_dir.joinpath(f'{ARGS.mon}.csv').open('w') as outfile:
        writer = csv.writer(outfile, delimiter=',')
        for i, label in enumerate(mon_data_labels):
            data = [d.strip() for d in mon_data[i]]
            if i in [1, 2, 5, 6, 7]:
                match i:
                    case 1: writer.writerow(['','Hit Points','Attack','Defense','Speed','Sp. Attack', 'Sp. Defense'])
                    case 2: 
                        writer.writerow(['','Type 1','Type 2'])
                        data = [format_type(d) for d in data]
            writer.writerow([label, *data])
            writer.writerow([]) # readability
        writer.writerow(['evolution(s) -- see data/pokemon/evos_attacks.asm'])
        writer.writerow(['if by level...', '(EVOLVE_LEVEL)', 'At Level', 'Evolves To'])
        writer.writerow(['if by stone...', '(EVOLVE_ITEM)', 'With Item', 'Min Level', 'Evolves To'])
        writer.writerow(['if by trade...', '(EVOLVE_TRADE)', 'Min Level', 'Evolves To'])
        writer.writerow(['if fully evolved...', '*Leave blank*'])
        for evo in evo_data: writer.writerow(['', *evo]) # gotta support eevee
        writer.writerow([]) # readability
        writer.writerow(['moves -- must match constants/move_constants.asm (case insensitive)']) # must start with "moves" -- see update_mon()
        writer.writerow(['...by level up (in order)', 'Move Name', 'Learned At'])
        for level, move in level_moves: writer.writerow(['', format_move(move), level])
        writer.writerow([]) # readability
        writer.writerow(['...by TM/HM', 'Move Name']) # first column must end with "TM/HM" -- see update_mon()
        for move in tm_hm_moves: writer.writerow(['', format_move(move)])
    safe_print(f'Exporting {ARGS.mon}.asm and evos_attacks.asm to {ARGS.mon}.csv...Done.')

def update_mon() -> None: # imports <ARGS.mon>.csv to <ARGS.mon>.asm and does in-place update of evos_attacks.asm; breaks gen 1
    csv_path = ARGS.csv_dir.joinpath(f'{ARGS.mon}.csv')
    out_path = ARGS.data_dir.joinpath('pokemon')
    if not csv_path.exists(): safe_print(f'{ARGS.mon}.csv not found. Skipping update.')
    elif not out_path.exists(): safe_print(f'{ARGS.mon}.asm not found. Skipping update.')
    else:
        # safe_print(f'Updating {ARGS.mon}.asm using {ARGS.mon}.csv...', end='\r')
        
        data_index = 0 # traverses mon_data_labels, then evos, level up moves, and tm/hm's
        mon_data = [] # see mon_data_labels
        evo_data = [] # nested list for eevee
        level_moves = [] # [[move, level], [move, level], ..., etc.]
        tm_hm_moves = [] # [move1, move2, ..., moveN]
        with csv_path.open() as infile:
            reader = csv.reader(infile, delimiter=',')
            for row in reader:
                if not row or all([col == '' for col in row]): continue # libre fills empty rows
                n_labels = len(mon_data_labels)
                if len(mon_data) < n_labels: # base stats, sprites, etc.
                    if row[0] == mon_data_labels[data_index]:
                        mon_data.append(row[1:])
                        data_index += 1
                elif data_index == n_labels: # evolution(s)
                    if row[0] == '': evo_data.append([col for col in row[1:] if col != ''])
                    elif row[0][:5] == 'moves': data_index += 1 # must match section header -- see export_mon()
                elif data_index == n_labels + 1: # level up moves
                    if row[0] == '': level_moves.append(row[1:])
                    elif row[0][-5:] == 'TM/HM': data_index += 1 # must match section header -- see export_mon()
                elif data_index == n_labels + 2: # tm/hm moves    
                    if row[0] == '': tm_hm_moves.append([move for move in row[1:]]) # imports as nested list
        filename = ARGS.mon
        pointer = filename[0].upper() + filename[1:]
        if ARGS.mon in name_exceptions: filename, pointer = name_exceptions[ARGS.mon]
        dex_num = None
        with open('constants/pokemon_constants.asm') as temp: # lookup dex no. for comments
            for line in temp.readlines():
                line = line.split(';')
                if line[0].replace('const','').strip() != filename.upper(): continue
                dex_num = int(line[-1].strip(), 16) # comments are in hex
                break
        with out_path.joinpath('base_stats',f'{filename}.asm').open('w') as outfile:
            lines = []
            for i, data in enumerate(mon_data):
                data = [d for d in data if d != ''] # libre fills empty columns
                match i:
                    case 0:  line = f'db {data[0]} ; {dex_num:03d}'
                    case 1:  line = f'db {", ".join([lpad(d, 3) for d in data])}\n\t;   hp  atk  def  spd  sat  sdf'
                    case 2:  line = f'db {", ".join([format_type(d, as_code=True) for d in data])} ; type'
                    case 3:  line = f'db {data[0]} ; catch rate'
                    case 4:  line = f'db {data[0]} ; base exp'
                    case 5:  line = f'db {", ".join(data)} ; items'
                    case 6:  line = f'db {data[0]} ; gender ratio'
                    case 7:  line = f'db {data[0]} ; unknown 1'
                    case 8:  line = f'db {data[0]} ; step cycles to hatch'
                    case 9:  line = f'db {data[0]} ; unknown 2'
                    case 10:
                        if len(data) > 1: # special case
                            lines.append('IF DEF(_GOLD)')
                            lines.append(f'\tINCBIN {data[0]}')
                            lines.append('ELIF DEF(_SILVER)')
                            lines.append(f'\tINCBIN {data[1]}')
                            lines.append('ENDC')
                            continue # skip final append
                        else: line = f'INCBIN {data[0]}'
                    case 11: line = f'dw {", ".join(data)} ; unused (beta front/back pics)' # probably should be hard-coded
                    case 12: line = f'db {data[0]} ; growth rate'
                    case 13: line = f'dn {", ".join(data)} ; egg groups'
                    case _: break
                if i in [0, 1, 13]: line = line + '\n' # clean code
                lines.append(f'\t{line}')
            lines.append('\t; tm/hm learnset')
            line = 'tmhm'
            if len(tm_hm_moves) > 0: line = line + ' ' + ', '.join([format_move(move[0], as_code=True) for move in tm_hm_moves]) # gen 2 puts these on a single line
            lines.append(f'\t{line}')
            lines.append('\t; end')
            outfile.writelines([line+'\n' for line in lines])
        evos_attacks = None # read entire file into a list, slice and replace mon data, then write the whole thing back
        with out_path.joinpath('evos_attacks.asm').open('r') as outfile: evos_attacks = outfile.readlines()
        mon_header = pointer + 'EvosAttacks:'
        mon_found = False
        start, end = 0, None
        for i, line in enumerate(evos_attacks):
            if 'EvosAttacks:' in line and mon_found:
                end = i
                break
            if mon_header in line: 
                mon_found = True
                start = i
        updates = [mon_header]
        for evo in evo_data: updates.append(f'\tdb {", ".join(evo)}') # scrub a lubba dub dub
        updates.append('\tdb 0 ; no more evolutions')
        for move in level_moves: updates.append(f'\tdb {move[1]}, {format_move(move[0], as_code=True)}')
        updates.append('\tdb 0 ; no more level-up moves'+('\n' if end is not None else ''))
        updates = [line + '\n' for line in updates]
        lines = evos_attacks[:start] + updates + ([] if end is None else evos_attacks[end:])
        with out_path.joinpath('evos_attacks.asm').open('w') as outfile: outfile.writelines(lines)
        
        # safe_print(f'Updating {ARGS.mon}.asm using {ARGS.mon}.csv...Done.')

# Showtime

if __name__ == '__main__':
    error = None  
    if not ARGS.data_dir.exists(): error = "Game data either doesn't exist or wasn't found. Update --data-dir and try again."
    if not ARGS.export and not ARGS.update: error = "No operation selected. Set --export or --update and try again."
    if not any([ARGS.all, ARGS.matchups, ARGS.moves, ARGS.mon]): error = "No data category selected. Set --macthups, --moves, or --mon and try again."
    if error:
        safe_print(f'{error} (Use -h to see options)')
        exit(1)
    if ARGS.update and not ARGS.csv_dir.exists():
        safe_print("CSV data either dosen't exist or wasn't found. Skipping updates.") # soft fail so make works w/ no edits
        exit()
    os.makedirs(ARGS.csv_dir, exist_ok=True)
    if ARGS.all or ARGS.matchups:
       if ARGS.export: export_matchups()
       if ARGS.update: update_matchups()
    if ARGS.all or ARGS.moves:
        if ARGS.export: export_moves()
        if ARGS.update: update_moves()
    if ARGS.mon:
        ARGS.mon = ARGS.mon.lower() # filenames are all lowercase
        for punct in ['.', '_', "'", '-']: ARGS.mon = ARGS.mon.replace(punct, '') # simplify to all lowercase
        if ARGS.export: export_mon()
        if ARGS.update: update_mon()
    elif ARGS.all:
        operation = ('Exporting' if ARGS.export else 'Updating')
        safe_print(f'{operation} data for all pokemon...', end='\r')
        ARGS.quiet = True
        for file in os.listdir(ARGS.data_dir.joinpath('pokemon', 'base_stats')):
            ARGS.mon = file.rsplit('.',maxsplit=1)[0].replace('_', '')
            try:
                if ARGS.export: export_mon()
                if ARGS.update: update_mon()
            except Exception as e:
                print(f'\n{ARGS.mon} broke everything')
                print(e)
                break
        ARGS.quiet = False
        safe_print(f'{operation} data for all pokemon...Done.')