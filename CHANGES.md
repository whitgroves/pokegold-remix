# Pokémon Gold Remix - Revision 1.3 ("Champion")
Below is a non-exhaustive list of changes as of this revision:
- [Type Chart](#type-chart)
- [Pokémon Changes](#pokémon-changes)
    - [Types](#types)
    - [Evolution Methods](#evolution-methods)
        - [By Friendship](#by-friendship)
        - [By Item](#by-item)
    - [Encounters](#encounters)
    - [Learnsets](#learnsets)
- [Move Updates](#move-updates)
    - [General Updates](#general-updates)
    - [Always Physical Moves](#always-physical-moves)
    - [Trapping Moves](#trapping-moves)
    - [Flavor Changes](#flavor-changes)
    - [TMs](#tms)
    - [Weather Interactions](#weather-interactions)
    - [Other](#other)
- [Store Updates](#store-updates)
- [Miscellaneous](#miscellaneous)
    - [DVs](#dvs)
    - [Story Progression](#story-progression)
    - [Other](#other-1)

## Type Chart
The goal here was to rebalance the chart so otherwise "isolated" types (e.g., *Ghost*, *Dark*) feel more interactive while making "weaker" types (e.g. *Bug*) less so by giving them key advantages.

To that end, please pay close attention to *Ice*, *Bug*, *Ghost*, *Dragon*, and *Dark*, as many well-known interactions have changed (e.g., *Dragon* now resists *Ice*, *Dark* is no longer immune to *Psychic*).

|*→Defending→*|NORMAL|FIRE|WATER|ELECTRIC|GRASS|ICE|FIGHTING|POISON|GROUND|FLYING|PSYCHIC|BUG|ROCK|GHOST|DRAGON|DARK|STEEL
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|***↓Attacking↓***|
NORMAL|||||||||||||0.5|0|||0.5
FIRE||0.5|0.5||2|2|0.5|||||2|0.5|2|0.5||2
WATER||2|0.5||0.5|0.5|||2||||2||||
ELECTRIC|||2|0.5|0.5|0.5|||0|2|0.5|2|0.5||0.5|2|2
GRASS||0.5|2||0.5|||0.5|2|0.5||0.5|2||||0.5
ICE||0.5|0.5|2|2|0.5|0.5||2|2||2|||0.5||0.5
FIGHTING|2||0.5|||2|0.5|||0.5|0.5|0.5|2|0.5||2|2
POISON|||2||2||0.5|0.5|0.5|||2|0.5|0.5|2|0.5|0
GROUND||2||2|0.5||2|2||0||0.5|2||||2
FLYING|||||2||2|||||2|0.5||||0.5
PSYCHIC|||||||2|2|||0.5|0.5|||0.5|0.5|
BUG||0.5||0.5|2|||||0.5|2||0.5|0.5||2|0.5
ROCK||2||||2|||0.5|2||2|||||0.5
GHOST|0||||0.5||0.5||||2|0.5||2|2|0.5|
DRAGON|||||0.5||||||0.5||||2||0.5
DARK|2||||||0.5|0.5|||2|0.5|0.5|||0.5|0.5
STEEL|||||2|2|0.5|||0.5|||2|0.5|2||

## Pokémon Changes

### Types
These mons have had their types updated:
- Bulbasaur, Ivysaur: *Grass/Poison* -> *Grass*
- Venusaur: *Grass/Poison* -> *Grass/Dragon*
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
- Cloyster: *Water/Ice* -> *Water/Steel*
- Gastly, Haunter: *Ghost/Poison* -> *Ghost*
- Gengar: *Ghost/Poison* -> *Ghost/Dark*
- Drowzee, Hypno: *Psychic* -> *Psychic/Dark*
- Kingler: *Water* -> *Water/Fighting*
- Voltorb, Electrode: *Electric* -> *Steel*
- Exeggcute: *Grass/Psychic* -> *Grass/Normal*
- Exeggcutor: *Grass/Psychic* -> *Grass/Fighting*
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
- Magmar: *Fire* -> *Fire/Poison*
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
- Unown: *Psychic* -> *Psychic/Dark*
- Dunsparce: *Normal* -> *Ground/Dragon*
- Gligar: *Ground/Flying* -> *Poison/Flying*
- Snubbull, Granbull: *Normal* -> *Normal/Dark*
- Shuckle: *Bug/Rock* -> *Rock/Poison*
- Slugma: *Fire* -> *Fire/Ground*
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
All friendship evolutions now happen at a happiness stat of of 217, displayed as a [TRUST](#dvs) level of 85% (vs 220 / ~87% in base).

These evolutions can now happen by friendship:
- Nidorina -> Nidoqueen
- Nidorino -> Nidoking
- Gloom -> Vileplume (Night)
- Gloom -> Bellossom (Day)
- Growlithe -> Arcanine
- Poliwhirl -> Politoed
- Kadabra -> Alakazam
- Machoke -> Machamp
- Graveler -> Golem
- Haunter -> Gengar (Night)
- Sunkern -> Sunflora (Day)

#### By Item
Certain held evolution items (*Dragon Scale* and *Up-Grade*) can now be used from the menu. In general, item evolutions will grant a new [learnset](#learnsets) rather than removing it entirely.

These evolutions can now happen by item effect:
- Slowpoke -> Slowking: *Dragon Scale*
- Onix -> Steelix: *Up-Grade*
- Seadra -> Kingdra: *Dragon Scale*
- Scyther -> Scizor: *Up-Grade*
- Chansey -> Blissey: *Sun Stone*
- Eevee -> Espeon: *Sun Stone*
- Eevee -> Umbreon: *Moon Stone*
- Porygon -> Porygon2: *Up-Grade*
- Cleffa -> Clefairy: *Moon Stone*
- Togepi -> Togetic: *Sun Stone* -OR- *Moon Stone*
- Pineco -> Forretress: *Leaf Stone*
- Slugma -> Magcargo: *Fire Stone*
- Smoochum -> Jynx: *Water Stone*
- Elekid -> Electabuzz: *Thunderstone*
- Magby -> Magmar: *Fire Stone*

All evolution items are available for purchase at either the [Goldenrod Dept. Store](#goldenrod-dept-store) or [Mahogany Mart](#mahogany-mart) after their respective Gyms have been cleared.

### Encounters
Encounters for every area of the game (grass, caves, trees, surfing, fishing, trades, swarms, and the bug contest) have been updated.

Notably, several unique or otherwise unobtainable pokemon are now available in new ways:
- *Ivysaur*, *Charmeleon*, and *Wartortle* are available as 10% encounters along Routes 26, 27, and Victory Road.
- *Hitmonlee*, *Hitmonchan*, and *Hitmontop* are available as 10% encounters on the bottom floor of Mt. Mortar.
- *Porygon* is available earlier for 700 coins in the Goldenrod Game Corner.
- *Omanyte* and *Kabuto* are 10% encounters on the lowest floor of the Ice Path (the room with the Nevermeltice).
- *Aerodactyl* is encountered as part of the plot, and at 1% on the summit of Mt. Silver.
- *Bayleef*, *Quilava*, and *Croconaw* are 10-20% encounters along Route 28 and outside Mt. Silver.
- *Sudowoodo* is now a 40% Headbutt encounter on all "rare" trees.
- *Articuno*, *Zapdos*, and *Moltres* are available as unique weekday encounters on Mt. Silver after defeating Red.
- *Mewtwo* and *Mew* are available as unique encounters somewhere in Kanto after defeating Red.
- *Celebi* is available as a unique encounter in Johto after defeating Red.

Tables for every route and method are listed in the [Encounters.ods](./Encounters.ods) spreadsheet.

### Learnsets
Most learnsets have been updated to give each mon a unique kit that sets them apart for a playthrough. 

For example, *Sunflora* keeps *Sunny Day* at level 19 but also gets *Solarbeam* at level 24 to reward raising one early:
```
 1 - Pound
 4 - Growth
10 - Razor Leaf
19 - Sunny Day
24 - Solarbeam
31 - Morning Sun
38 - Baton Pass
46 - Petal Dance
```

Similarly, *Jigglypuff* gets access to sound-based utilities like *Sonicboom*, *Snore*, and *Perish Song*:
```
 1 - Sing
 4 - Supersonic
 9 - Pound
14 - Screech
19 - Sonicboom
24 - Doubleslap
29 - Rest
34 - Snore
39 - Perish Song
```

But the player can trade that coverage for greater Normal STAB by evolving to *Wigglytuff*:
```
 1 - Sing
 4 - Bide
 9 - Slam
14 - Screech
19 - Flail
24 - Doubleslap
29 - Body Slam
34 - Take Down
39 - Belly Drum
```

Generally speaking, any mon with an updated type has an updated learnset.

All learnsets can be exported and viewed with [`easy_edit`](./README.md#whats-easy_edit).

## Move Updates
Most moves have had their types, effects, or other attributes changed to provide better STAB coverage or make certain movesets more viable. 

In rare cases (Sand Attack, Hyper Beam), moves have had their attack power or power points reduced to improve game balance around these changes.

### General Updates
- Comet Punch: *Normal* -> *Fighting*
- Vicegrip: *Normal* -> *Dark*
- Razor Wind: *Normal* -> *Flying* | *Charging Move* -> *30% Chance To Flinch* | *75%* -> *100% Accuracy*
- Cut: *Normal* -> *Bug* | *No Effect* -> *High Crit Rate* | *95%* -> *100% Accuracy*
- Fly: *Fly Effect* -> *Fly Effect, Hits Flying Targets* | *70* -> *80 Power* | *95%* -> *100% Accuracy*
- Vine Whip: *35* -> *40 Power* | *10* -> *20 PP* | [*Always Physical*](#always-physical-moves)
- Rolling Kick: *85%* -> *90% Accuracy*
- Sand Attack: *100%* -> *80% Accuracy*
- Horn Attack: *Normal* -> *Dragon* | *No Effect* -> *30% Chance To Flinch* | *65* -> *70 Power* | *25* -> *15 PP* | [*Always Physical*](#always-physical-moves)
- Fury Attack: *Normal* -> *Bug*
- Tackle: *95%* -> *100% Accuracy*
- Wrap: *Normal* -> *Poison* | *85%* -> *75% Accuracy*
- Thrash: *Normal* -> *Dark*
- Double-Edge: *Normal* -> *Steel*
- Poison Sting: *15* -> *20 Power*
- Twineedle: *Bug* -> *Poison*
- Sonicboom: *Normal* -> *Steel* | *Flat Damage* -> *Priority Move* | *20 Damage* -> *40 Power* | *20* -> *30 PP*
- Surf: *No Effect* -> *Always Hits, Hits Underground Targets*
- Blizzard: *10% Chance To Freeze* -> *20% Chance To Freeze*
- Hyper Beam: *Normal* -> *Dragon* | *150* -> *120 Power*
- Submission: *80 Damage* -> *100 Damage* | *25* -> *20 PP*
- Seismic Toss: *Flat Damage* -> *30% Chance To Paralyze* | *Damage Equal To User's Level* -> *85 Power* | *20* -> *15 PP*
- Strength: *Normal* -> *Fighting* | *No Effect* -> *10% Chance To Raise Attack*
- Absorb: *20* -> *30 Power* | *20* -> *30 PP*
- Mega Drain: *40* -> *50 Power* | *10* -> *20 PP*
- Razor Leaf: *95%* -> *100% Accuracy* | [*Always Physical*](#always-physical-moves)
- Petal Dance: *70* -> *90 Power* | [*Always Physical*](#always-physical-moves)
- Dragon Rage: *Flat Damage* -> *Always Hits* | *40 Damage* -> *60 Power* | *10* -> *20 PP*
- Fire Spin: *70%* -> *75% Accuracy* | *15*-> *20 PP*
- Rock Throw: *90%* -> *100% Accuracy*
- Dig: *Dig Effect* -> *Dig Effect, Hits Underground Targets* | *10* -> *15 PP*
- Hypnosis: *20* -> *15 PP*
- Rage: *Normal* -> *Dark*
- Night Shade: *Flat Damage* -> *10% Chance To Sleep* | *Damage Equal To User's Level* -> *55 Power*
- Lick: *30% Chance To Paralyze* -> *Leeches Health On Hit* | *20* -> *30 Power*
- Smog: *20* -> *30 Power*
- Bone Club: *Ground* -> *Rock* | *85%* -> *100% Accuracy*
- Clamp: *35* -> *15 Power* | *10* -> *20 PP* | [*Always Physical*](#always-physical-moves)
- Skull Bash: *Normal* -> *Rock* | *Charging Move* -> *30% Chance To Flinch* | *100* -> *70 Power*
- Spike Cannon: *Normal* -> *Steel*
- Constrict: *Normal* -> *Bug* | *10% Chance To Lower Speed* -> [*Trapping Move*](#trapping-moves) | *10* -> *15 Power* | *100%* -> *75% Accuracy* | *35* -> *20 PP*
- Dream Eater: *15* -> *10 PP*
- Leech Life: *20* -> *30 Power* | *15* -> *30 PP*
- Sky Attack: *Charging Move* -> [*Skips Charging Turn Under Sun*](#sun)
- Dizzy Punch: *Normal* -> *Psychic* | [*Always Physical*](#always-physical-moves)
- Bonemerang: *Ground* -> *Rock* | *90%* -> *100% Accuracy*
- Rock Slide: *90%* -> *100% Accuracy* | *75* -> *80 Power*
- Hyper Fang: *Normal* -> *Dark* | *90%* -> *100% Accuracy*
- Tri Attack: *Normal* -> *Dragon*
- Triple Kick: *90%* -> *100% Accuracy*
- Aeroblast: *95%* -> *100% Accuracy*
- Mud-Slap: *100% Chance To Lower Accuracy* -> *50% Chance To Lower Accuracy*
- Octazooka: *85%* -> *100% Accuracy*
- Icy Wind: *100% Chance To Lower Speed* -> *50% Chance To Lower Speed* | *95%* -> *100% Accuracy*
- Bone Rush: *Ground* -> *Rock*
- Giga Drain: *60* -> *80 Power* | *5* -> *10 PP*
- Return: *Power Scales With Happiness* -> *Power Equals Happiness Stat / 2*
- Frustration: *Normal* -> *Dark* | *Power Scales With Happiness* -> *Power Equals (Max Happiness - Happiness Stat) / 2*
- Sacred Fire: *95%* -> *100% Accuracy*
- Dragonbreath: *30% Chance To Paralyze* -> *20% Chance To Lower Special Defense*
- Iron Tail: *75%* -> *90% Accuracy*
- Metal Claw: *10% Chance To Raise Attack* -> *20% Chance To Raise Attack* | *95%* -> *100% Accuracy*
- Twister: *40* -> *50 Power*
- Crunch: *20% Chance To Lower Special Defense* -> *30% Chance To Paralyze*
- Ancientpower: *5* -> *10 PP*
- Future Sight: *80* -> *150 Power* | *90%* -> *100% Accuracy* | *15* -> *5 PP*
- Whirlpool: *70%* -> *75% Accuracy* | *15* -> *20 PP*

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

### Flavor Changes
These moves ignore STAB but have had their types changed for flavor; however, this may still impact the AI's choices.
- Guillotine: *Normal* -> *Dark*
- Whirlwind: *Normal* -> *Flying*
- Horn Drill: *Normal* -> *Dragon*
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
- Super Fang: *Normal* -> *Dark*
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

In addition, the locations of HM06 (Whirlpool) and HM07 (Waterfall) have been swapped, as HM06 is no longer required to progress the storyline outside of optional content.

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
- The enemy AI can only steal berries using *Thief*. Use by the player is unaffected.
- Wild Pokemon with their evasion lowered by *Sweet Scent* cannot flee, and will have twice the catch rate.

## Store updates
Several of the stores have been updated with new items.

### Goldenrod Dept. Store
The BATTLE CORNER (3rd floor) now sells these additional items after defeating Whitney:
- Leaf Stone
- Fire Stone
- Water Stone
- Thunderstone

The TM CORNER (5th floor) now sells these additional TMs:
- TM09 Metal Claw
- TM39 Swift - *Available after receiving TM02 Headbutt in Ilex Forest*
- TM28 Dig - *Available after receiving TM08 Rock Smash on Route 36*

### Mahogany Mart
The Mahogany Mart carries these items once the Rocket Hideout is cleared and Pryce has been defeated:
- Lemonade
- Gold Berry
- Moon Stone
- Sun Stone
- Dragon Scale
- Up-Grade

## Miscellaneous

### DVs
- The gender formula has been tweaked so female mons outside of all-female species can roll high ATK DVs.
- As a consequence of the above, the shininess formula has been updated and now has a ~1/10,000 chance instead of 1/8192.
- Similarly, trainer DVs have been updated to raise the attack of (most) female trainer classes and give each of the Elite Four a perfect stat.
- The stats screen shows happiness as percent of 255 (TRUST) and Attack, Defense, Special, and Speed DVs (DNA).

### Story Progression
- The aide now gives 5 pokeballs when the player receives their starter and 2 potions when returning after the theft.
- After receiving the Old and Good Rods, each Fishing Guru will tell the player where to find the next one.
- Whitney now reminds the player to pick up the Squirtbottle after beating her.
- The player can pick up the Secretpotion in Cianwood without clearing the lighthouse and talking to Jasmine first.
- The trainer in Cianwood now gifts a Delibird instead of Shuckle so the player can always FLY home after beating the gym.
- Each surveillance statue in the Rocket Hideout summons 1 unique battle instead of 2 generic grunts.
- The Radio Tower incident now starts when reaching Blackthorn rather than immediately after the 7th badge.
- Consequently, Route 44 and the [Mahogany Mart](#mahogany-mart-post-rocket-hideout) both open immediately after beating Pryce.
- After clearing Radio Tower, the player receives a badge boost for *Dark* type moves and can pick up the Radio Card without taking the quiz.
- Since Radio Tower can be cleared before defeating Chuck and/or Jasmine, Blackthorn Gym remains blocked until the player both clears it and has 7 badges.
- Clair gives the Risingbadge immediately upon defeat, but the player must still complete the dragon user challenge to receive TM24.
- The dragon user challenge has changed; check the center of the cavern first.

### Other
- Since Remoraid are no longer found on Route 44, Sailor Huey (lighthouse) activates the Remoraid swarm on Route 40 instead.
- Headbutting trees in cities (Ecruteak) can now spawn wild encounters.
- Dragon Fang now boosts Dragon-type moves instead of Dragon Scale.
- The Dragon Fang in Dragons' Den is now a Dragon Scale.
- The Dragon Scale in Mt. Mortar is now a Quick Claw.
- Using *Sweet Scent* in the field will always pull a <=20% encounter.
- The chance to receive a random incoming call in the overworld is now 12.5% instead of 50%.
- Phone calls are more meaningful; most incoming and outgoing calls will trigger a rematch, swarm, or rare mon sighting.
- Sleep lasts for a maximum of 5 turns instead of 7.
- In addition to *Steel* and *Poison* types, *Rock* and *Ghost* type pokemon are now immune to the PSN status.
- The Hyper Potion in the hideout is now an Up-Grade.
- The likelihood of the player's mon to hit itself in confusion now scales with happiness rather than a 50/50 chance.