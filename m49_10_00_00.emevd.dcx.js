// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    if (IsMapVariation(0)) {
        if (EventFlag(49100000)) {
            $InitializeCommonEvent(0, 90055000, 49105200, 1, 49102200, 49100201);
            $InitializeCommonEvent(0, 90055001, 49105200, 1, 49100201, 49100200);
        }
        if (EventFlag(49100001)) {
            $InitializeCommonEvent(0, 90055000, 49105200, 2, 49102200, 49100201);
            $InitializeCommonEvent(0, 90055001, 49105200, 2, 49100201, 49100200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 49100200);
    }
    $InitializeCommonEvent(0, 90065910, 49100200, 49100205, 49100800, 475000, 690047, 49105210, 49100800, 904750000, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 49100200, 49100800, 475000, 49105210, 49100800, 904750000, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065900, 49100800, 1, 0, 0, 1050, 475000, 904750000, 49100800);
    $InitializeCommonEvent(0, 90015012, 49105210, 49100200);
    $InitializeCommonEvent(1, 90015012, 0, 49100200);
    $InitializeCommonEvent(0, 90015020, 49100200, 49100800);
    $InitializeCommonEvent(0, 90015008, 49100205, 49100800, 475000, 49100800, 14771, 0);
    $InitializeCommonEvent(0, 90035001, 49100800);
});

$Event(491002800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
    EndIf(EventFlag(eventFlagId));
    EndIf(EventFlag(eventFlagId2));
    WaitFor(HPRatio(chrEntityId) <= 0);
    WaitFixedTimeSeconds(4);
    WaitFor(CharacterDead(chrEntityId));
    DisplayBossHealthBar(Disabled, chrEntityId, 0, 0);
    if (assetEntityId != 0) {
        EnableAsset(assetEntityId);
    }
    if (chrEntityId2 != 0) {
        EnableCharacter(chrEntityId2);
    }
    if (!EventFlag(eventFlagId3)) {
        SetEventFlagID(eventFlagId, ON);
        EndEvent();
    }
    SetEventFlagID(eventFlagId2, ON);
    WaitFor(ElapsedSeconds(3));
    DisableCharacter(chrEntityId);
});

$Event(49102810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
    if (EventFlag(eventFlagId4) || EventFlag(eventFlagId5)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        ForceCharacterDeath(chrEntityId, false);
        EndEvent();
    }
L0:
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    flag = EventFlag(7515) && (EventFlag(eventFlagId) || EventFlag(eventFlagId2));
    WaitFor(EventFlag(eventFlagId3));
    WaitFixedTimeSeconds(1);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    EnableCharacterAI(chrEntityId);
    ForceAnimationPlayback(49100800, 20012, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    DisableCharacterHPBarDisplay(49100801);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(49100800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});


