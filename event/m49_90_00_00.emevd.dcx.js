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
        if (EventFlag(49900000)) {
            $InitializeCommonEvent(0, 90055000, 49905200, 1, 49902200, 49900201);
            $InitializeCommonEvent(0, 90055001, 49905200, 1, 49900201, 49900200);
        }
        if (EventFlag(49900001)) {
            $InitializeCommonEvent(0, 90055000, 49905200, 2, 49902200, 49900201);
            $InitializeCommonEvent(0, 90055001, 49905200, 2, 49900201, 49900200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 49900200);
    }
    $InitializeCommonEvent(0, 90065910, 49900200, 49900205, 49900800, 920600, 690047, 49905210, 49900800, 904640000, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 49900200, 49900800, 920600, 49905210, 49900800, 904640000, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065900, 49900800, 1, 0, 0, 1050, 920600, 904640000, 49900800);
    $InitializeCommonEvent(0, 90015012, 49905210, 49900200);
    $InitializeCommonEvent(1, 90015012, 0, 49900200);
    $InitializeCommonEvent(0, 90015020, 49900200, 49900800);
    $InitializeCommonEvent(0, 90015008, 49900205, 49900800, 920600, 49900800, 18870, 0);
    $InitializeCommonEvent(0, 90035001, 49900800);
});

$Event(49902800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
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

$Event(49902810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
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
    ForceAnimationPlayback(48600800, 20005, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(48600800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});


