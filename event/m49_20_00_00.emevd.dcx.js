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
        if (EventFlag(49200000)) {
            $InitializeCommonEvent(0, 90055000, 49205200, 1, 49202200, 49200201);
            $InitializeCommonEvent(0, 90055001, 49205200, 1, 49200201, 49200200);
        }
        if (EventFlag(49200001)) {
            $InitializeCommonEvent(0, 90055000, 49205200, 2, 49202200, 49200201);
            $InitializeCommonEvent(0, 90055001, 49205200, 2, 49200201, 49200200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 49200200);
    }
    $InitializeCommonEvent(0, 90065910, 49200200, 49200205, 49200800, 920800, 690047, 49205210, 49200800, 904680603, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 49200200, 49200800, 920800, 49205210, 49200800, 904680603, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065900, 49200800, 2, 0, 0, 1050, 920800, 904680603, 49200800);
    $InitializeCommonEvent(0, 90015012, 49205210, 49200200);
    $InitializeCommonEvent(1, 90015012, 0, 49200200);
    $InitializeCommonEvent(0, 90015020, 49200200, 49200800);
    $InitializeCommonEvent(0, 90015008, 49200205, 49200800, 920800, 49200800, 16495, 0);
    $InitializeCommonEvent(0, 90035001, 49200800);
});

$Event(492002800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
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

$Event(49202810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
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
    ForceAnimationPlayback(49200800, 20009, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    DisableCharacterHPBarDisplay(49200801);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(49200800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});


