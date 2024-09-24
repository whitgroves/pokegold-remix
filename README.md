# Pokémon Blue Remix

This is a follow-up to [Pokémon Blue Remix](https://github.com/whitgroves/pokeblue-remix) forked from [pret's disassembly of Pokémon Gold/Silver](https://github.com/pret/pokegold) and inspired by [TheSmithPlays' Crystal Legacy project](https://github.com/cRz-Shadows/Pokemon_Crystal_Legacy).

Similar to Blue Remix, the goal is not to recreate the Legacy games, but simply to see what gen 2 would feel like with a rebalanced type chart and some more unique typings (e.g., Steel is super effective vs Dragon, Sunflora is now Grass/Fire).

However, some changes from Crystal, the Legacy hacks, and the [pret tutorials](https://github.com/pret/pokered/wiki/Tutorials) are duplicated here, such as sprite animations, making *Cut* Bug-type, and auto-sorting the items in the backpack.

## Changes (✓ = done, ~ = in progress)
- Updated interactions for all 17 types ~
- Updated typings to make certain Pokemon lore-friendly, interesting, or unique ~
- Updated learnsets to better fit each Pokemon's kit ~
- Several changes to the movepool, detailed [here](./MOVES.md) ~
- The Ghost type is special and the Dark type is physical ~
- All 251 Pokemon are available on a single save ~
- Select and play as the female protagonist (Kris) ~
- Fast text speed and Set battles by default ~
- Auto-sort the backpack by pressing Start (thanks to [devolov](https://github.com/pret/pokered/wiki/Add-Item-Sorting-In-Bag)) ~
- The good rod is good and the super rod is super ~
- The "Down + B" trick actually works ~

These changes are largely untested, so if you run into issues please reach out on X: [@whitgroves](https://x.com/whitgroves)

## Why *Gold* Remix?
Similar to *Blue Remix*, Gold was the gen 2 game I made memories with, so I decided to go with my favorite.

## Why Not Crystal?
I don't like the Suicune plot, plus *Crystal Legacy* is far more comprehensive than what I can build.

That said, if you'd like to play Crystal Legacy with the remixed types, you can can clone both repos and use easy_edit to migrate the typechart, movepool, and pokemon to their codebase, then build your own revision of CL (although this will remove all of their stat and learnset changes).

## What's *easy_edit*?
While working on BR I developed a script to convert type, move, and pokemon data from assembly to csv and back again for easier editing.

The version here should be compatible with any gen 2 disassembly and only relies on the python3 standard library, so feel free to use it for your own projects.

### Example 1
To make changes for another repo, copy [easy_edit.py](./tools/easy_edit.py) into your project, then call:
```
$ easy_edit.py -e --matchups
$ easy_edit.py -e --moves
$ easy_edit.py -e --mon <pokemon name, all lowercase, no spaces>
$ easy_edit.py -e --all
```
To generate your csv files for editing, then run:
```
$ easy_edit.py -u --matchups
$ easy_edit.py -u --moves
$ easy_edit.py -u --mon <pokemon name, all lowercase, no spaces>
$ easy_edit.py -u --all
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

### Disclaimer

Please note that this script is not "smart", so values in the csv (except for "PSYCHIC", which is an edge case) must match the assembly code (case-insensitive).

Also, consider making a backup of the original values before updating so you can rollback changes:
```
$ easy_edit.py -e --all
$ mv moves.csv moves_old.csv && mv type_matchups.csv type_matchups.old.csv
```