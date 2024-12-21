# Pokémon Gold Remix - Changes
Listed below are the changes that have been implemented so far:
- [Type Chart](#type-chart)
- [Pokémon Changes](#pokémon-changes)
    - [Types](#types)
    - [Evolution Methods](#evolution-methods)
- [Move Updates](#move-updates)
    - [Damaging Moves](#damaging-moves)
    - [Always Physical Moves](#always-physical-moves)
    - [Non-Damaging Moves](#non-damaging-moves)
    - [TMs](#tms)
    - [Weather Interactions](#weather-interactions)
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
- Muk: *Poison* -> *Poison/Dark*
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
These mons evolve by new methods in addition to their old ones (e.g., *Nidorina* still evolves by Moon Stone, *Machoke* still evolves by trade).
- Nidorina -> Nidoqueen: *Happiness*
- Nidorino -> Nidoking: *Happiness*
- Gloom -> Vileplume: *Happiness, Night*
- Gloom -> Bellossom: *Happiness, Day*
- Poliwhirl -> Politoed: *Happiness*
- Kadabra -> Alakazam: *Happiness*
- Machoke -> Machamp: *Happiness*
- Graveler -> Golem: *Happiness*
- Slowpoke -> Slowking: *Dragon Scale (use from menu)*
- Haunter -> Gengar: *Happiness, Night*
- Onix -> Steelix: *Up-Grade (use from menu)*
- Seadra -> Kingdra: *Dragon Scale*
- Scyther -> Scizor: *Up-Grade*
- Eevee -> Espeon: *Sun Stone*
- Eevee -> Umbreon: *Moon Stone*
- Porygon -> Porygon2: *Up-Grade*
- Togepi -> Togetic: *Sun Stone* -or- *Moon Stone*
- Sunkern -> Sunflora: *Happiness, Day*

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
- Rolling Kick: *85%* -> *100% Accuracy*
- Sand Attack: *100%* -> *80% Accuracy*
- Horn Attack: *Normal* -> *Dragon* | *No Effect* -> *30% Chance To Flinch* | *65* -> *70 Power* | *25* -> *15 PP* | [*Always Physical*](#always-physical-moves)
- Fury Attack: *Normal* -> *Dark*
- Horn Drill: *Normal* -> *Dragon*
- Tackle: *95%* -> *100% Accuracy*
- Wrap: *Normal* -> *Poison* | *85%* -> *75% Accuracy*
- Thrash: *Normal* -> *Dark*
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
- Razor Leaf: *95%* -> *100% Accuracy*
- Petal Dance: *70* -> *90 Power*
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
- Clamp
- Waterfall
- Dizzy Punch
- Crabhammer
- Vine Whip
- Horn Attack
- Outrage
- Flame Wheel

As a side note, all *Ghost* moves are now special and all *Dark* moves are now physical.
### Trapping Moves
Besides preventing a switch out, trapped pokemon will now have their speed cut as if they were paralyzed. This does not stack with the PRZ status.
### Non-Damaging Moves
These moves had their types changed for flavor only; however, this can impact the AI's choices.
- Whirlwind: *Normal* -> *Flying*
- Roar: *Normal* -> *Dragon*
- Growth: *Normal* -> *Grass*
- Agility: *Psychic* -> *Normal*
- Smokescreen: *Normal* -> *Dark*
- Glare: *Normal* -> *Dark*
- Lovely Kiss: *Normal* -> *Dark*
- Flash: *Normal* -> *Electric*
- Splash: *Normal* -> *Water*
- Rest: *Psychic* -> *Normal*
- Mind Reader: *Normal* -> *Psychic*
- Perish Song: *Normal* -> *Ghost*
- Lock-On: *Normal* -> *Steel*
- Swagger: *Normal* -> *Dark*
- Mean Look: *Normal* -> *Dark*
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
- *Dragon* Pokemon are immune to Sandstorm
- *Solarbeam* behaves as if under Rain
- *Thunder* behaves as if under Sun

## Store updates
Several of the stores have been updated with new items.
### Goldenrod Dept. Store
TM CORNER (5th floor) now sells these additional TMs:
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
- *Fire*-type moves can no longer defrost through *Safeguard*
- Gender is no longer determined solely by Attack DV (i.e., female mons outside of all-female species can roll high ATK DVs)
- As a consequence of the above, the shininess formula has been updated and now has a ~1/7281 chance instead of 1/8192
- Similarly, trainer DVs have been updated so that trainer classes generally have the same gender mons as the base game
- Each surveillance statue in the Rocket Hideout summons 1 unique battle instead of 2 generic grunts
- The trainer in Cianwood now gifts a Delibird instead of Shuckle so the player can always FLY home after beating the gym
- HM moves can now be forgotten; when learning over them, a confirmation prompt is brought up before they're overwritten
- The Radio Tower incident now starts when reaching Blackthorn rather than immediately the 7th badge
- Consequently, Route 44 and the [Mahogany Mart](#mahogany-mart-post-rocket-hideout) both open immediately after beating Pryce
- Clair gives the Risingbadge immediately upon defeat, but the player must still get the Dragon Fang to receive TM24