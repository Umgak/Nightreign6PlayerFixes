# Nightreign 6 Player Fixes
A collection of fixes for Elden Ring: Nightreign, for modded playthroughs where the player count is greater than the default 3.
The vanilla scripts repeatedly explicitly reference players 1, 2, and 3, so when using a mod such as Seamless Co-op, many things do not correctly apply for extra players. This mod attempts to fix the game's maps and event scripts to be able to account for the expanded playercount.

## Current changes/fixes:
### General
* Rune multipliers scale all the way up to 6 players (1.5x, 1.3x, 1x, 0.9x, 0.8x, 0.7x)
* Defeat event will not trigger until ALL players are dead
* Wending Grace/Blessing of Noklateo will revive ALL players
### Raid events
* Morgott boss raid can target all players
* Maris boss raid will target all players 
* Frenzied Flame raid event will target extra players for frenzy buildup.
* Gnoster boss raid will target all players
* Libra raid event bounds checks against all players
* Caligo raid event is able to target all 6 players
* Caligo raid event rune rewards scale for up to 6 players
* All players can trigger Hordes
### Bosses
* Duke's Dear Freyja night boss applies its slow effect to everyone
* Divine Beast Dancing Lion can steal heals from anyone, not just players 1-3
* Gnoster laser beam can target all players
* Fulghor, Champion of Nightglow should target players 4-6 more consistently when interrupted by them
* Everdark Libra will spawn clones of all six players. This will be chaos. I know.
* Heolstor teleports all players during phase change, instead of extra players awkwardly standing around where they were.
### Misc
* Sorcerous Rises will not reset if ANY players are nearby
* Great Hollow Divine Tower effects work when players 1-3 are not present
* Great Hollow Divine Tower rune rewards scale for up to 6 players


## Known issues:
* Wormface night boss
* Balancers raid (84 event flags in 28 maps)
* Gladius raid (wontfix for now)