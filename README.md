# Pokémon Gold Remix

This is a follow-up to [Pokémon Blue Remix](https://github.com/whitgroves/pokeblue-remix) forked from [pret's disassembly of Pokémon Gold/Silver](https://github.com/pret/pokegold) and inspired by [TheSmithPlays' Crystal Legacy project](https://github.com/cRz-Shadows/Pokemon_Crystal_Legacy).

Similar to Blue Remix, the goal is not to recreate the Legacy games, but simply to see what gen 2 would feel like with a rebalanced type chart and some more unique typings (e.g., Steel is super effective vs Dragon, Sunflora is now Grass/Fire).

However, some changes from Crystal, the Legacy hacks, and the [pret tutorials](https://github.com/pret/pokered/wiki/Tutorials) are duplicated here, such as sprite animations, making *Cut* Bug-type, and auto-sorting the items in the backpack.

## Changes (✓ = done, ~ = in progress)
- Updated interactions for all 17 types ~
- Updated typings to make certain Pokemon lore-friendly, interesting, or unique ~
- Updated learnsets to better fit each Pokemon's kit ~
- Updated moves and TMs, detailed [here](./MOVES.md) ~
- The Ghost type is special and the Dark type is physical ✓
- All 251 Pokemon are available on a single save ~
- New moves and mons for some of the trainer teams ~
- Select and play as the female protagonist (Kris) ~
- Fast text speed and Set battles by default ~
- Use animated Pokemon sprites from Crystal ~
- Auto-sort the backpack by pressing Start ~
- The good rod is good and the super rod is super ~
- The "Down + B" trick actually works ~

These changes are largely untested, so if you run into issues please reach out on X: [@whitgroves](https://x.com/whitgroves)

## Why *Gold* Remix?
Similar to Blue Remix, Gold was the gen 2 game I made memories with, so I decided to go with my favorite.

## Why Not Crystal?
I don't like the Suicune plot, plus Crystal Legacy is far more comprehensive than what I can build.

That said, if you'd like to play Crystal Legacy with the remixed types, you can can clone both repos and use easy_edit to migrate the typechart, movepool, and pokemon to their codebase, then build your own revision of CL (although this will remove all of their stat and learnset changes).

## What's *easy_edit*?
While working on Blue Remix I developed a script, [*easy_edit*](https://github.com/whitgroves/pokeblue-remix/blob/rev_1.3/tools/easy_edit.py), to convert type, move, and pokemon data from assembly to csv and back again for easier editing.

The version here, **ee2 (easy_edit gen 2)**, should be compatible with any gen 2 disassembly and only relies on the python3 standard library, so feel free to use it for your own projects.

### Example 1
To make changes for another repo, copy [ee2.py](./tools/ee2.py) into the root of your project, then call:
```
$ ee2.py -e --matchups
$ ee2.py -e --moves
$ ee2.py -e --mon <pokemon name, all lowercase, no spaces>
$ ee2.py -e --all
```
To generate your csv files for editing, then run:
```
$ ee2.py -u --matchups
$ ee2.py -u --moves
$ ee2.py -u --mon <pokemon name, all lowercase, no spaces>
$ ee2.py -u --all
```
To overwrite the game's assembly files with any of those updates.

### Example 2
To make changes to this build using `make`:
```
$ git clone https://github.com/whitgroves/pokegold-remix.git
$ cd pokegold-remix
$ make edits
<< update csv files as desired >>
$ make updates
```

### Example 3
To import matchups, moves, and pokemon data from another gen2 hack (e.g., Crystal Legacy) into this one:
```
$ git clone https://github.com/cRz-Shadows/Pokemon_Crystal_Legacy.git
$ git clone https://github.com/whitgroves/pokegold-remix.git
$ cd pokegold-remix
$ tools/ee2.py -e --all -d ../Pokemon_Crystal_Legacy/data/
$ tools/ee2.py -u --all
```
*Note: When importing between Gold/Silver and Crystal, sprite files need to be manually updated due to former having separate sprites for gold and silver.*

### Disclaimer

Please note that this script is not "smart", so values in the csv (except for "PSYCHIC", which is an edge case) must match the assembly code (case-insensitive).

Also, consider making a backup of the original data before updating so you can rollback changes:
```
$ ee2.py -e --all -c .edits
$ cp -r .edits .backups
```