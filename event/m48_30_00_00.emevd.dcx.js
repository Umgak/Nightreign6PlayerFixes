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
        if (EventFlag(48300000)) {
            $InitializeCommonEvent(0, 90055000, 48305200, 1, 48302200, 48300201);
            $InitializeCommonEvent(0, 90055001, 48305200, 1, 48300201, 48300200);
        }
        if (EventFlag(48300001)) {
            $InitializeCommonEvent(0, 90055000, 48305200, 2, 48302200, 48300201);
            $InitializeCommonEvent(0, 90055001, 48305200, 2, 48300201, 48300200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 48300200);
    }
    $InitializeCommonEvent(0, 90065910, 48300200, 48300205, 48300800, 792000, 690046, 48305210, 48300800, 907920000, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 48300200, 48300800, 792000, 48305210, 48300800, 907920000, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065900, 48300800, 2, 0, 0, 1080, 792000, 907920000, 48300800);
    $InitializeCommonEvent(0, 90015012, 48305210, 48300200);
    $InitializeCommonEvent(1, 90015012, 0, 48300200);
    $InitializeCommonEvent(0, 90015020, 48300200, 48300800);
    $InitializeCommonEvent(0, 90015008, 48300205, 48300800, 792000, 48300800, 5401, 0);
    $InitializeCommonEvent(0, 90035001, 48300800);
});

$Event(48302800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
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

$Event(48302810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
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
    ForceAnimationPlayback(48300800, 20005, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    DisableCharacterHPBarDisplay(48300801);
    CreateReferredDamagePair(48300801, chrEntityId);
    CreateReferredDamagePair(48300802, chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(48300800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(48302820, Restart, function(chrEntityId, spEffectId, dummypolyId) {
    WaitFor(CharacterHasSpEffect(48300800, 42030));
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Character, 48300800, dummypolyId, 48300800);
    SetSpEffect(chrEntityId, spEffectId);
    WaitFixedTimeSeconds(5);
    RestartEvent();
});

$Event(48302830, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(48300800, 42031));
    SetSpEffect(chrEntityId, 42039);
    WaitFixedTimeSeconds(1);
    SetSpEffect(chrEntityId, 5950);
    WaitFixedTimeSeconds(5);
    RestartEvent();
});


