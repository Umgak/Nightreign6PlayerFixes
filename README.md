# Nightreign 6 Player Fixes
A collection of fixes for Elden Ring: Nightreign, for modded playthroughs where the player count is greater than the default 3.
The vanilla scripts repeatedly explicitly refernece players 1, 2, and 3, so when using a mod such as Seamless Co-op, many things do not correctly apply for extra players. This mod attempts to fix the game's maps and event scripts to be able to account for the expanded playercount.

## Current changes/fixes:
* Margit boss invasion can target all players
* Maris boss invasion will target all players 
* Frenzied Flame invasion event will target extra players for frenzy buildup.
* Gnoster boss invasion will target all players
* Libra invasion event won't spawn on top of extra players, but will be able to spawn near the extra players even if they're separated from the group, like it can for the original 3
* Everdark Libra will spawn clones of all six players. This will be chaos. I know.
* Gnoster boss fight has tracking balls to target all players
* Heolstor teleports all players during phase change, instead of extra players awkwardly standing around where they were.
* Duke's Dear Freyja night boss applies its slow effect to everyone
* Defeat event will not trigger until ALL players are dead
* Wending Grace/Blessing of Noklateo will revive ALL players
* DLC Boss Rush Tower effects work when players 1-3 are not present
* Divine Beast Dancing Lion can steal heals from anyone, not just players 1-3
* Caligo raid event is able to target all 6 players

## Known issues:
* Wormface night boss
* Fulghor
* Balancers invasion
* Gladius invasion (wontfix for now)
* Battle towers give the wrong rune quantities (needs a Seamless update)