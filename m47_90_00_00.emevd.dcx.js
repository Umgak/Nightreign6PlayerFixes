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
        if (EventFlag(47900000)) {
            $InitializeCommonEvent(0, 90055000, 47905200, 1, 47902200, 47900201);
            $InitializeCommonEvent(0, 90055001, 47905200, 1, 47900201, 47900200);
        }
        if (EventFlag(47900001)) {
            $InitializeCommonEvent(0, 90055000, 47905200, 2, 47902200, 47900201);
            $InitializeCommonEvent(0, 90055001, 47905200, 2, 47900201, 47900200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 47900200);
    }
    $InitializeCommonEvent(0, 90035001, 47900800);
    $InitializeCommonEvent(0, 90065910, 47900200, 47900205, 47900800, 771000, 690048, 47900800, 47900800, 907710000, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 47900200, 47900800, 771000, 47900800, 47900800, 907710000, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065900, 47900800, 1, 0, 0, 1070, 771000, 907710000, 47900800);
    $InitializeCommonEvent(0, 90015012, 47900800, 47900200);
    $InitializeCommonEvent(1, 90015012, 47905801, 47900200);
    $InitializeCommonEvent(0, 90015020, 47900200, 47900800);
    $InitializeCommonEvent(0, 90065030, 47900800, 42280, 50, NPCPartType.Part7, 221, 42260, 20000, 47900200, 47900800);
    $InitializeCommonEvent(0, 90065031, 47900800, 42262, 42280, 47902801, 47900801, 12, 47900200, 47900800);
    $InitializeCommonEvent(0, 90065032, 47900800, 47900801, 42264, 47900200, 47900800);
    $InitializeCommonEvent(0, 90065030, 47900800, 42281, 51, NPCPartType.Part9, 222, 42261, 20001, 47900200, 47900800);
    $InitializeCommonEvent(0, 90065031, 47900800, 42263, 42281, 47902802, 47900802, 100, 47900200, 47900800);
    $InitializeCommonEvent(0, 90065032, 47900800, 47900802, 42265, 47900200, 47900800);
});

$Event(47902800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
    EndIf(EventFlag(eventFlagId));
    EndIf(EventFlag(eventFlagId2));
    WaitFor(HPRatio(chrEntityId) <= 0);
    WaitFixedTimeSeconds(4);
    WaitFor(CharacterDead(chrEntityId));
    DisableGenerator(47902801);
    DisableGenerator(47902802);
    ForceCharacterDeath(47900801, false);
    ForceCharacterDeath(47900802, false);
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

$Event(47902810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
    if (EventFlag(eventFlagId4) || EventFlag(eventFlagId5)) {
        DisableCharacter(chrEntityId);
        DisableCharacter(47902801);
        DisableCharacter(47902802);
        DisableCharacterCollision(chrEntityId);
        DisableCharacterCollision(47902801);
        DisableCharacterCollision(47902802);
        ForceCharacterDeath(chrEntityId, false);
        ForceCharacterDeath(47902801, false);
        ForceCharacterDeath(47902802, false);
        DisableGenerator(47902801);
        DisableGenerator(47902802);
        EndEvent();
    }
L0:
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    DisableCharacter(47902801);
    DisableCharacterCollision(47902801);
    DisableCharacter(47902802);
    DisableCharacterCollision(47902802);
    flag = EventFlag(7515) && (EventFlag(eventFlagId) || EventFlag(eventFlagId2));
    WaitFor(EventFlag(eventFlagId3));
    WaitFixedTimeSeconds(1);
    EnableCharacter(chrEntityId);
    EnableCharacter(47902801);
    EnableCharacter(47902802);
    EnableCharacterCollision(chrEntityId);
    EnableCharacterCollision(47902801);
    EnableCharacterCollision(47902802);
    EnableCharacterAI(chrEntityId);
    EnableCharacterAI(47902801);
    EnableCharacterAI(47902802);
    ForceAnimationPlayback(47900800, 20005, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    DisableCharacterHPBarDisplay(47900801);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(47900800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
    DisableCharacter(47900801);
    DisableCharacterCollision(47900801);
    DisableCharacterAI(47900801);
    EnableGenerator(47902801);
    DisableCharacter(47900802);
    DisableCharacterCollision(47900802);
    DisableCharacterAI(47900802);
    EnableGenerator(47902802);
});

$Event(9992850, Restart, function(chrEntityId, spEffectId) {
    CreateNPCPart(chrEntityId, 50, NPCPartType.Part7, 400, 1, 1, false, false);
    SetNPCPartSEAndSFX(chrEntityId, 50, 125, 110, 106, 110, 106);
    WaitFor(NPCPartHP(chrEntityId, 50) <= 1);
    SetSpEffect(47900800, spEffectId);
    RestartEvent();
});

$Event(9992851, Restart, function(chrEntityId, spEffectId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId));
    ForceAnimationPlayback(47900800, 20000, true, false, false);
    RestartEvent();
});

$Event(9992852, Restart, function(chrEntityId, spEffectId) {
    CreateNPCPart(chrEntityId, 51, NPCPartType.Part9, 400, 1, 1, false, false);
    SetNPCPartSEAndSFX(chrEntityId, 51, 125, 110, 106, 110, 106);
    WaitFor(NPCPartHP(chrEntityId, 51) <= 1);
    SetSpEffect(47900800, spEffectId);
    RestartEvent();
});

$Event(9992853, Restart, function(chrEntityId, spEffectId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId));
    ForceAnimationPlayback(47900800, 20001, true, false, false);
    RestartEvent();
});

$Event(9992860, Restart, function(chrEntityId, dummypolyId) {
    WaitFor(CharacterHasSpEffect(47900800, 42262));
    WaitFixedTimeSeconds(1.5);
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Character, 47900800, dummypolyId, 47900800);
    ForceAnimationPlayback(47900801, 20000, true, false, false);
    EnableCharacter(47900801);
    EnableCharacterCollision(47900801);
    EnableCharacterAI(47900801);
    RestartEvent();
});

$Event(9992861, Restart, function(chrEntityId, dummypolyId) {
    WaitFor(CharacterHasSpEffect(47900800, 42263));
    WaitFixedTimeSeconds(1.5);
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Character, 47900800, dummypolyId, 47900800);
    ForceAnimationPlayback(47900802, 20000, true, false, false);
    EnableCharacter(47900802);
    EnableCharacterCollision(47900802);
    EnableCharacterAI(47900802);
    RestartEvent();
});

$Event(9992862, Restart, function(spEffectId) {
    WaitFor(HPRatio(47900801) <= 0);
    SetSpEffect(47900800, spEffectId);
    RestartEvent();
});

$Event(9992863, Restart, function(spEffectId) {
    WaitFor(HPRatio(47900802) <= 0);
    SetSpEffect(47900800, spEffectId);
    RestartEvent();
});


