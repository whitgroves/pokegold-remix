# Pokémon Gold Remix - Changes
Listed below are the changes that have been implemented so far:
- [Type Chart](#type-chart)
- [Pokémon Changes](#pokémon-changes)
    - [Types](#types)
    - [Evolution Methods](#evolution-methods)
        - [By Friendship](#by-friendship)
        - [By Item](#by-item)
    - [Fossils](#fossils)
- [Move Updates](#move-updates)
    - [Damaging Moves](#damaging-moves)
    - [Always Physical Moves](#always-physical-moves)
    - [Non-Damaging Moves](#non-damaging-moves)
    - [TMs](#tms)
    - [Weather Interactions](#weather-interactions)
    - [Other](#other)
- [Store Updates](#store-updates)
- [Miscellaneous](#miscellaneous)

## Type Chart
The goal here was to rebalance the chart so otherwise "isolated" types (e.g., *Ghost*, *Dark*) feel more interactive while making "weaker" types (e.g. *Bug*) less so by giving them key advantages.

To that end, please pay close attention to *Ice*, *Bug*, *Ghost*, *Dragon*, and *Dark*, as many well-known interactions have changed (e.g., *Dragon* now resists *Ice*, *Dark* is no longer immune to *Psychic*).

|*→Defending→*|NORMAL|FIRE|WATER|ELECTRIC|GRASS|ICE|FIGHTING|POISON|GROUND|FLYING|PSYCHIC|BUG|ROCK|GHOST|DRAGON|DARK|STEEL
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|***↓Attacking↓***|
NORMAL|||||||||||||0.5|0|||0.5
FIRE||0.5|0.5||2|2|0.5|||||2|0.5|2|0.5||2
WATER||2|0.5||0.5|0.5|||2||||2||||
ELECTRIC|||2|0.5|0.5|0.5|||0|2||2|0.5||0.5|2|2
GRASS||0.5|2||0.5|||0.5||0.5||0.5|2||||0.5
ICE||0.5|0.5||2|0.5|0.5||2|2|||||0.5||0.5
FIGHTING|2||0.5|||2||||0.5|0.5|0.5|2|0.5||2|2
POISON|||||2|||0.5|0.5|||2|0.5|0.5|2||0
GROUND||2||2|0.5|||2||0||0.5|2||||2
FLYING|||||2||2|||||2|0.5||||0.5
PSYCHIC|||||||2|2|||0.5|0.5|||0.5|0.5|0.5
BUG|||||2|||||0.5|2||0.5|0.5||2|0.5
ROCK||2||||2|||0.5|2||2|||||0.5
GHOST|0||||0.5||0.5||||2|||2||0.5|
DRAGON|||||||||||2||||2||0.5
DARK|2||||||0.5|0.5|||2|0.5|0.5|||0.5|
STEEL|||||2|2|0.5||||||2|0.5|2||0.5

## Pokémon Changes

### Types
These mons have had their types (and in many cases, learnsets) updated.
- Bulbasaur, Ivysaur, Venusaur: *Grass/Poison* -> *Grass*
- Charizard: *Fire/Flying* -> *Fire/Dragon*
- Blastoise: *Water* -> *Water/Steel*
- Arbok: *Poison* -> *Poison/Dark*
- Pikachu: *Electric* -> *Electric/Normal*
- Raichu: *Electric* -> *Electric/Psychic*
- Sandshrew: *Ground* -> *Ground/Normal*
- Sandslash: *Ground* -> *Ground/Steel*
- Nidoran♀, Nidorina: *Poison* -> *Poison/Fighting*
- Nidoqueen: *Poison/Ground* -> *Dragon/Fighting*
- Nidoran♂, Nidorino:  *Poison* -> *Poison/Fighting*
- Nidoking: *Poison/Ground* -> *Poison/Dragon*
- Clefairy, Clefable: *Normal* -> *Normal/Psychic*
- Ninetales: *Fire* -> *Fire/Ghost*
- Zubat, Golbat: *Poison/Flying* -> *Dark/Flying*
- Oddish, Gloom: *Grass/Poison* -> *Grass*
- Vileplume: *Grass/Poison* -> *Grass/Dark*
- Parasect: *Bug/Grass* -> *Bug/Ghost*
- Venonat, Venomoth: *Bug/Poison* -> *Bug/Psychic*
- Persian: *Normal* -> *Normal/Dark*
- Golduck: *Water* -> *Water/Psychic*
- Mankey: *Fighting* -> *Fighting/Normal*
- Primeape: *Fighting* -> *Fighting/Dark*
- Growlithe: *Fire* -> *Fire/Normal*
- Arcanine: *Fire* -> *Fire/Fighting*
- Poliwag, Poliwhirl: *Water* -> *Water/Normal*
- Geodude, Graveler, Golem: *Rock/Ground* -> *Rock*
- Ponyta, Rapidash: *Fire* -> *Fire/Normal*
- Slowpoke, Slowbro: *Water/Psychic* -> *Poison/Psychic*
- Farfetch'd: *Normal/Flying* -> *Fighting/Flying*
- Doduo, Dodrio: *Normal/Flying* -> *Ground/Flying*
- Seel: *Water* -> *Water/Ice*
- Cloyster: *Water* -> *Water/Steel*
- Gastly, Haunter: *Ghost/Poison* -> *Ghost*
- Gengar: *Ghost/Poison* -> *Ghost/Dark*
- Drowzee, Hypno: *Psychic* -> *Psychic/Dark*
- Kingler: *Water* -> *Water/Fighting*
- Voltorb, Electrode: *Electric* -> *Steel*
- Exeggcute: *Grass/Psychic* -> *Grass/Normal*
- Exeggcutor: *Grass/Psychic* -> *Grass/Dragon*
- Cubone: *Ground* -> *Rock/Normal*
- Marowak: *Ground* -> *Rock/Ghost*
- Lickitung: *Normal* -> *Normal/Poison*
- Koffing, Weezing: *Poison* -> *Poison/Flying*
- Rhyhorn: *Ground/Rock* -> *Rock/Fighting*
- Rhydon: *Ground/Rock* -> *Rock/Dragon*
- Tangela: *Grass* -> *Grass/Ghost*
- Kangaskhan: *Normal* -> *Normal/Dragon*
- Seadra: *Water* -> *Water/Dragon*
- Mr. Mime: *Psychic* -> *Psychic/Normal*
- Scyther: *Bug/Flying* -> *Bug/Normal*
- Jynx: *Ice/Psychic* -> *Ice/Ghost*
- Electabuzz: *Electric* -> *Electric/Fighting*
- Pinsir: *Bug* -> *Bug/Dark*
- Tauros: *Normal* -> *Normal/Fighting*
- Gyarados: *Water* -> *Water/Dragon*
- Porygon: *Normal* -> *Normal/Ghost*
- Kabuto, Kabutops: *Rock/Water* -> *Rock/Bug*
- Bayleef, Meganium: *Grass* -> *Grass/Dragon*
- Cyndaquil, Quilava, Typhlosion: *Fire* -> *Fire/Normal*
- Croconaw, Feraligatr: *Water* -> *Water/Dark*
- Noctowl: *Normal/Flying* -> *Ghost/Flying*
- Spinarak/Ariados: *Bug/Poison* -> *Bug/Dark*
- Crobat: *Poison/Flying* -> *Dark/Flying*
- Pichu: *Electric* -> *Electric/Normal*
- Togetic: *Normal* -> *Normal/Psychic*
- Mareep, Flaaffy: *Electric* -> *Electric/Normal*
- Ampharos: *Electric* -> *Electric/Dragon*
- Marill, Azumarill: *Water* -> *Water/Normal*
- Sudowoodo: *Rock* -> *Rock/Fighting*
- Sunflora: *Grass* -> *Grass/Fire*
- Yanma: *Bug/Flying* -> *Bug/Dragon*
- Umbreon: *Dark* -> *Ghost*
- Slowking: *Water/Psychic* -> *Psychic/Dragon*
- Misdreavus: *Ghost* -> *Ghost/Psychic*
- Unown: *Psychic* -> *Ghost/Dark*
- Gligar: *Ground/Flying* -> *Poison/Flying*
- Snubbull, Granbull: *Normal* -> *Normal/Dark*
- Shuckle: *Bug/Rock* -> *Rock/Poison*
- Corsola: *Water/Rock* -> *Water/Ghost*
- Octillery: *Water* -> *Water/Fire*
- Donphan: *Ground* -> *Ground/Fighting*
- Porygon2: *Normal* -> *Normal/Ghost*
- Smoochum: *Ice/Psychic* -> *Ice*
- Suicune: *Water* -> *Water/Ice*
- Larvitar: *Rock/Ground* -> *Dark/Ground*
- Pupitar: *Rock/Ground* -> *Dark/Rock*
- Tyranitar: *Rock/Dark* -> *Dark/Dragon*
- Lugia: *Psychic/Flying* -> *Water/Flying*

### Evolution Methods
New evolution methods have been added to make trade evolutions available and stone evolutions available earlier. These are in addition to prior methods; for example, *Nidorina* can evolve into *Nidoqueen* by happiness, but will still evolve by Moon Stone.

#### By Friendship
These evolutions can now happen by friendship:
- Nidorina -> Nidoqueen
- Nidorino -> Nidoking
- Gloom -> Vileplume (Night)
- Gloom -> Bellossom (Day)
- Poliwhirl -> Politoed
- Kadabra -> Alakazam
- Machoke -> Machamp
- Graveler -> Golem
- Haunter -> Gengar (Night)
- Sunkern -> Sunflora (Day)

In general, all friendship evolutions now happen at a happiness stat of of 217, displayed as a [TRUST](#dvs) level of 85% (vs 220 / ~87% in base).

#### By Item
These evolutions now happen by item effect (select and use the item from menu):
- Slowpoke -> Slowking: *Dragon Scale*
- Onix -> Steelix: *Up-Grade*
- Seadra -> Kingdra: *Dragon Scale*
- Scyther -> Scizor: *Up-Grade*
- Eevee -> Espeon: *Sun Stone*
- Eevee -> Umbreon: *Moon Stone*
- Porygon -> Porygon2: *Up-Grade*
- Cleffa -> Clefairy: *Moon Stone*
- Togepi -> Togetic: *Sun Stone* -OR- *Moon Stone*
- Smoochum -> Jynx: *Water Stone*
- Elekid -> Electabuzz: *Thunderstone*
- Magby -> Magmar: *Fire Stone*

All evolution items are available for purchase at the [Mahogany Mart](#mahogany-mart) after Mahogany Gym has been cleared.

### Availability
Besides evolution, several unique or otherwise unobtainable pokemon are now available in new ways:
- *Ivysaur*, *Charmeleon*, and *Wartortle* are available as 10% encounters along Routes 26, 27, and Victory Road.
- *Hitmonlee*, *Hitmonchan*, and *Hitmontop* are available as 10% encounters on the bottom floor of Mt. Mortar.
- *Omanyte* and *Kabuto* are 10% encounters on the lowest floor of the Ice Path (the room with the Nevermeltice).
- *Bayleef*, *Quilava*, and *Croconaw* are 10-20% encounters along Route 28 and outside Mt. Silver.
- Additional *Sudowoodo* are a 40% Headbutt encounter on "rare" trees.

## Move Updates
Several moves have had their types, effects, or other attributes changed to provide better STAB coverage or make certain movesets more viable.

### Damaging Moves
- Comet Punch: *Normal* -> *Fighting*
- Vicegrip: *Normal* -> *Dark*
- Guillotine: *Normal* -> *Dark*
- Razor Wind: *Normal* -> *Flying* | *Charging Move* -> *30% Chance To Flinch* | *75%* -> *100% Accuracy*
- Cut: *Normal* -> *Bug* | *No Effect* -> *High Crit Rate* | *95%* -> *100% Accuracy*
- Fly: *95%* -> *100% Accuracy*
- Vine Whip: *35* -> *40 Power* | *10* -> *20 PP* | [*Always Physical*](#always-physical-moves)
- Stomp: *Normal* -> *Ground*
- Rolling Kick: *85%* -> *100% Accuracy*
- Sand Attack: *100%* -> *80% Accuracy*
- Horn Attack: *Normal* -> *Dragon* | *No Effect* -> *30% Chance To Flinch* | *65* -> *70 Power* | *25* -> *15 PP* | [*Always Physical*](#always-physical-moves)
- Fury Attack: *Normal* -> *Bug*
- Horn Drill: *Normal* -> *Dragon*
- Tackle: *95%* -> *100% Accuracy*
- Wrap: *Normal* -> *Poison* | *85%* -> *75% Accuracy*
- Thrash: *Normal* -> *Dark*
- Double-Edge: *Normal* -> *Steel*
- Poison Sting: *15* -> *20 Power*
- Twineedle: *Bug* -> *Poison*
- Sonicboom: *Normal* -> *Steel* | *Flat Damage* -> *Priority Move* | *20 Damage* -> *40 Power* | *20* -> *30 PP*
- Blizzard: *10% Chance To Freeze* -> *20% Chance To Freeze*
- Hyper Beam: *Normal* -> *Dragon*
- Submission: *80 Damage* -> *100 Damage* | *25* -> *20 PP*
- Seismic Toss: *Flat Damage* -> *30% Chance To Paralyze* | *Damage Equal To User's Level* -> *85 Power* | *20* -> *15 PP*
- Strength: *Normal* -> *Fighting* | *No Effect* -> *10% Chance To Raise Attack* | *15* -> *10 PP*
- Absorb: *20* -> *30 Power* | *20* -> *30 PP*
- Mega Drain: *40* -> *50 Power* | *10* -> *20 PP*
- Razor Leaf: *95%* -> *100% Accuracy* | [*Always Physical*](#always-physical-moves)
- Petal Dance: *70* -> *90 Power* | [*Always Physical*](#always-physical-moves)
- Dragon Rage: *Flat Damage* -> *Always Hits* | *40 Damage* -> *60 Power* | *10* -> *20 PP*
- Fire Spin: *70%* -> *75% Accuracy* | *15*-> *20 PP*
- Rock Throw: *90%* -> *100% Accuracy*
- Dig: *10* -> *15 PP*
- Rage: *Normal* -> *Dark*
- Night Shade: *Flat Damage* -> *10% Chance To Sleep* | *Damage Equal To User's Level* -> *55 Power*
- Lick: *30% Chance To Paralyze* -> *Leeches Health On Hit* | *20* -> *30 Power*
- Smog: *20* -> *30 Power*
- Bone Club: *Ground* -> *Rock* | *85%* -> *100% Accuracy*
- Clamp: *35* -> *15 Power* | *10* -> *20 PP* | [*Always Physical*](#always-physical-moves)
- Skull Bash: *Normal* -> *Rock* | *Charging Move* -> *30% Chance To Flinch* | *100* -> *70 Power*
- Spike Cannon: *Normal* -> *Steel*
- Constrict: *Normal* -> *Bug* | *10% Chance To Lower Speed* -> [*Trapping Move*](#trapping-moves) | *10* -> *15 Power* | *35* -> *20 PP*
- Leech Life: *20* -> *30 Power* | *15* -> *30 PP*
- Sky Attack: *Charging Move* -> [*Skips Charging Turn Under Sun*](#sun)
- Dizzy Punch: *Normal* -> *Psychic* | [*Always Physical*](#always-physical-moves)
- Bonemerang: *Ground* -> *Rock* | *90%* -> *100% Accuracy*
- Rock Slide: *90%* -> *100% Accuracy* | *75* -> *80 Power*
- Hyper Fang: *Normal* -> *Dark* | *90%* -> *100% Accuracy*
- Tri Attack: *Normal* -> *Dragon*
- Super Fang: *Normal* -> *Dark*
- Triple Kick: *90%* -> *100% Accuracy*
- Aeroblast: *95%* -> *100% Accuracy*
- Mud-Slap: *100% Chance To Lower Accuracy* -> *50% Chance To Lower Accuracy*
- Octazooka: *85%* -> *100% Accuracy*
- Icy Wind: *100% Chance To Lower Speed* -> *50% Chance To Lower Speed* | *95%* -> *100% Accuracy*
- Bone Rush: *Ground* -> *Rock*
- Giga Drain: *60* -> *80 Power* | *5* -> *10 PP*
- Frustration: *Normal* -> *Dark*
- Sacred Fire: *95%* -> *100% Accuracy*
- Dragonbreath: *30% Chance To Paralyze* -> *20% Chance To Lower Special Defense*
- Iron Tail: *75%* -> *90% Accuracy*
- Metal Claw: *10% Chance To Raise Attack* -> *20% Chance To Raise Attack* | *95%* -> *100% Accuracy*
- Crunch: *20% Chance To Lower Special Defense* -> *30% Chance To Paralyze*
- Whirlpool: *70%* -> *75% Accuracy* | *15*-> *20 PP*

### Always Physical Moves
These moves are special, but their damage is now treated as physical.
- Fire Punch
- Ice Punch
- Thunderpunch
- Razor Leaf
- Petal Dance
- Clamp
- Waterfall
- Dizzy Punch
- Crabhammer
- Vine Whip
- Horn Attack
- Outrage
- Flame Wheel
- Spark

As a side note, all *Ghost* moves are now special and all *Dark* moves are now physical.

### Trapping Moves
Besides preventing a switch out, trapped pokemon will now have their speed cut as if they were paralyzed. This does not stack with the PRZ status.

### Non-STAB Moves
These moves ignore STAB but have had their types changed for flavor only; however, this may still impact the AI's choices.
- Whirlwind: *Normal* -> *Flying*
- Roar: *Normal* -> *Dragon*
- Disable: *Normal* -> *Psychic*
- Growth: *Normal* -> *Grass*
- Agility: *Psychic* -> *Normal*
- Recover: *Normal* -> *Psychic*
- Smokescreen: *Normal* -> *Dark*
- Glare: *Normal* -> *Dark*
- Lovely Kiss: *Normal* -> *Dark*
- Flash: *Normal* -> *Electric*
- Splash: *Normal* -> *Water*
- Rest: *Psychic* -> *Normal*
- Mind Reader: *Normal* -> *Psychic*
- Spikes: *Ground* -> *Steel*
- Perish Song: *Normal* -> *Ghost*
- Lock-On: *Normal* -> *Steel*
- Swagger: *Normal* -> *Dark*
- Mean Look: *Normal* -> *Ghost*
- Pain Split: *Normal* -> *Ghost*
- Psych Up: *Normal* -> *Psychic*

### TMs
These TMs have been reassigned. Except for TM09, they are available in their same locations.
- TM05: *Roar* -> *Sonicboom*
- TM07: *Zap Cannon* -> *Thunderbolt*
- TM09: *Psych Up* -> *Metal Claw*
- TM16: *Icy Wind* -> *Ice Beam*
- TM20: *Endure* -> *Tri Attack*
- TM31: *Mud Slap* -> *Razor Wind*
- TM32: *Double Team* -> *Flamethrower*

The original moves can still be learned by level-up on mons that could learn it by TM or otherwise fit the theming (e.g., *Dragon* and "dog" pokemon get *Roar*).

### HMs
HM moves can now be forgotten; when learning over them, a confirmation prompt is brought up before they're overwritten.

### Weather Interactions
Weathers cause new interactions in addition to their old ones (e.g., Rain boosting *Water* moves, *Solarbeam* skipping a turn in Sun).

#### Rain
- *Ice*, *Grass*, and *Electric* moves are more effective
- *Ground* and *Flying* moves are less effective
- Moves that fail to inflict the *Freeze* status get a 10% reroll to inflict status
- The *Burn* status can be inflicted, but has a 90% chance to fail on hit

#### Sun
- *Grass* and *Flying* moves are more effective
- *Ice* and *Ghost* moves are less effective
- Moves that fail to inflict the *Burn* status get a 10% reroll to inflict status
- The *Freeze* status can be inflicted, but has a 90% chance to fail on hit
- *Sky Attack* skips its charging turn, similar to *Solarbeam*
- Changed battle text to make certain move interactions (e.g., *Moonlight*) less confusing

#### Sand
- *Rock*, *Ground*, and *Dark* moves are more effective
- *Grass*, *Flying*, and *Electric* moves are less effective
- *Ghost* and *Dragon* Pokemon are immune to Sandstorm
- *Solarbeam* behaves as if under Rain
- *Thunder* behaves as if under Sun

### Other
- *Fire*-type moves can no longer defrost through *Safeguard*
- *Ghost*-type pokemon are now immune to *Spikes*

## Store updates
Several of the stores have been updated with new items.

### Goldenrod Dept. Store
The TM CORNER (5th floor) now sells these additional TMs:
- TM09 Metal Claw
- TM39 Swift -*Available after receiving TM02 Headbutt in Ilex Forest*
- TM28 Dig -*Available after receiving TM08 Rock Smash on Route 36*

### Mahogany Mart
The Mahogany Mart carries these items once the Rocket Hideout is cleared and Pryce has been defeated:
- Lemonade
- Gold Berry
- Leaf Stone
- Fire Stone
- Water Stone
- Thunderstone
- Moon Stone
- Sun Stone
- Dragon Scale
- Up-Grade

## Miscellaneous

### DVs
- Gender is no longer determined solely by Attack DV (i.e., female mons outside of all-female species can roll high ATK DVs)
- As a consequence of the above, the shininess formula has been updated and now has a ~1/10,000 chance instead of 1/8192
- Similarly, trainer DVs have been updated to raise the attack of (most) female trainer classes and give each of the Elite Four a perfect stat
- The stats screen shows happiness as percent of 255 (TRUST) and Attack, Defense, Special, and Speed DVs (DNA)

### Story Progression
- After receiving the Old and Good Rods, each Fishing Guru will tell the player where to find the next one
- The trainer in Cianwood now gifts a Delibird instead of Shuckle so the player can always FLY home after beating the gym
- Each surveillance statue in the Rocket Hideout summons 1 unique battle instead of 2 generic grunts
- The Radio Tower incident now starts when reaching Blackthorn rather than immediately the 7th badge
- Consequently, Route 44 and the [Mahogany Mart](#mahogany-mart-post-rocket-hideout) both open immediately after beating Pryce
- Clair gives the Risingbadge immediately upon defeat, but the player must still get the Dragon Fang to receive TM24

### Other
- Since Remoraid are no longer found on Route 44, Sailor Huey (lighthouse) now activates the Remoraid swarm
trees in cities (Ecruteak) can now spawn wild encounters.