# Nightreign 6 Player Fixes
A collection of fixes for Elden Ring: Nightreign, for modded playthroughs where the player count is greater than the default 3.
The vanilla scripts repeatedly explicitly reference players 1, 2, and 3, so when using a mod such as Seamless Co-op, many things do not correctly apply for extra players. This mod attempts to fix the game's maps and event scripts to be able to account for the expanded playercount.
## Current changes/fixes:
### General
* The global rune multiplier will scale down as player counts increase to 6 (0.9x for 4 players, 0.8x for 5 players, 0.7x for 6 players).
* The Defeat event will not trigger until all players are down.
* Favor of Noklateo, the Shrouded City and Wending Graces will revive all players under their effects.
### Raid events
* Maris' boss raid will summon all players, complete with vfx for the bubbles.
* Gnoster's boss raid will target all players.
* Libra's raid will check all players for its spawn conditions, and correctly track that all players have had the curse removed.
* [DLC] Caligo's raid will correctly fire projectiles at all players.
* [DLC] Caligo's raid will respect the rune scaling, and the code isn't terrible any more.
* [DLC] Gladius' raid will check all players for its spawn conditions.
* [DLC] Harmonia's raid will teleport players in pairs to each POI, instead of softlocking players 4-6.
* Fell Omen boss raid can target any player.
* Hordes will spawn when any player passes through the trigger area.
* Frenzied Flame raid will cause madness buildup on all players in view.
### Nightlords
* Gnoster's laser beams will be able to target any and all players, where previously only players 1-3 could be targeted.
* Fulghor's targeting behavior should be more consistent when interrupted by players 4-6.
* Everdark Sovereign Libra will clone every player. Chaos ensues.
* Nightlords with phase-transition teleports (Heolstor, Straghess, Everdark Harmonia) will teleport all players, instead of the extra players awkwardly standing around.
* [DLC] Everdark Harmonia's approach behavior should be more consistent for players 4-6. Also fixes a bug where player 3 could not be targeted in vanilla.
### Night bosses
* Duke's Dear Freyja night boss will correctly handle application and removal of its spEffects for all players.
* Gaping Dragon will remove its HP drain effect from all players on death.
* [DLC] Divine Beast Dancing Lion's flask-steal effect will function for all players.
* [DLC] Knight Artorias will be target more consistently when interrupted.
### Misc
* Sorcerous Rise reset behavior will be suspended until all players leave.
* [DLC] Great Hollow Divine Tower bosses can clone spEffects from any player.
* [DLC] Great Hollow Divine Tower floor rewards respect the rune scaling changes, and the code isn't terrible any more.
## Known issues:
* Wormface night boss has some strange spEffect behavior that I haven't fully understood. As such, it remains unchanged for now.
* [DLC] Gladius raid event has not been fully modified. The scripts for this raid are, honestly, a mess, and I don't want to make it even more unfun by making it summon more dogs or something.
* Several AI scripts have not been patched, and their behavior may not be fully consistent:
    * Godskin Apostle
    * Royal Revenant
    * Wormface
    * Gladius, Beast of Night
    * Duke's Dear Freyja
    * [DLC] Weapon-Bequeathed Harmonia
    * [DLC] Dreglord's rotten hollow summons