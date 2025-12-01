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
        if (EventFlag(48000000)) {
            $InitializeCommonEvent(0, 90055000, 48005200, 1, 48002200, 48000201);
            $InitializeCommonEvent(0, 90055001, 48005200, 1, 48000201, 48000200);
        }
        if (EventFlag(48000001)) {
            $InitializeCommonEvent(0, 90055000, 48005200, 2, 48002200, 48000201);
            $InitializeCommonEvent(0, 90055001, 48005200, 2, 48000201, 48000200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 48000200);
    }
    $InitializeCommonEvent(0, 90065910, 48000200, 48000205, 48000800, 780000, 690048, 48000800, 48000800, 907800000, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 48000200, 48000800, 780000, 48000800, 48000800, 907800000, 0, 0, 0, 0, 48005800);
    $InitializeCommonEvent(0, 90065900, 48000800, 1, 0, 0, 1070, 780000, 907800000, 48000800);
    $InitializeCommonEvent(0, 90015012, 48000800, 48000200);
    $InitializeCommonEvent(1, 90015012, 48005800, 48000200);
    $InitializeCommonEvent(0, 90015020, 48000200, 48000800);
    $InitializeCommonEvent(0, 90065080, 48000800, 50, NPCPartType.Part9, 42300, 42301, 220, 48000200, 48000800);
    $InitializeCommonEvent(0, 90065080, 48000800, 60, NPCPartType.Part10, 42302, 42303, 221, 48000200, 48000800);
    $InitializeCommonEvent(0, 90065081, 48000800, 48000200, 48000800);
    $InitializeCommonEvent(0, 90065082, 48005800, 48000200, 48000205, 48000800);
    $InitializeCommonEvent(0, 90065083, 48000800, 48003800, 48003800, 48000200, 48000800);
    $InitializeCommonEvent(0, 90065084, 48000800, 48000200, 48000800);
    $InitializeCommonEvent(0, 90015008, 48000205, 48000800, 780000, 48000800, 42311, 0);
    $InitializeCommonEvent(0, 90035001, 48000800);
});

$Event(48002800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
    EndIf(EventFlag(eventFlagId));
    EndIf(EventFlag(eventFlagId2));
    WaitFor(HPRatio(chrEntityId) <= 0);
    DisableGenerator(48003800);
    ForceCharacterDeath(48005800, false);
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

$Event(48002810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
    if (EventFlag(eventFlagId4) || EventFlag(eventFlagId5)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        ForceCharacterDeath(chrEntityId, false);
        DisableCharacter(48005800);
        DisableCharacterCollision(48005800);
        ForceCharacterDeath(48005800, false);
        DisableGenerator(48003800);
        EndEvent();
    }
L0:
    DisableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 30001, true, false, false);
    DisableCharacter(48005800);
    DisableCharacterCollision(48005800);
    flag = EventFlag(7515) && (EventFlag(eventFlagId) || EventFlag(eventFlagId2));
    WaitFor(EventFlag(eventFlagId3));
    WaitFixedTimeSeconds(1);
    ForceAnimationPlayback(chrEntityId, 20001, false, false, false);
    EnableCharacter(48005800);
    EnableCharacterCollision(48005800);
    EnableGenerator(48003800);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(48002820, Restart, function(chrEntityId, spEffectId) {
    CreateNPCPart(chrEntityId, 50, NPCPartType.Part9, 1000, 1, 1, false, false);
    SetNPCPartSEAndSFX(chrEntityId, 50, 125, 146, 139, 123, 0);
    WaitFor(NPCPartHP(chrEntityId, 50) <= 1);
    SetSpEffect(chrEntityId, spEffectId);
    EndEvent();
});

$Event(48002821, Restart, function(chrEntityId, spEffectId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId));
    DisableLockOnPoint(chrEntityId, 220);
});

$Event(48002825, Restart, function(chrEntityId, spEffectId) {
    CreateNPCPart(chrEntityId, 60, NPCPartType.Part10, 1000, 1, 1, false, false);
    SetNPCPartSEAndSFX(chrEntityId, 60, 125, 146, 139, 123, 0);
    WaitFor(NPCPartHP(chrEntityId, 60) <= 1);
    SetSpEffect(chrEntityId, spEffectId);
    EndEvent();
});

$Event(48002826, Restart, function(chrEntityId, spEffectId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId));
    DisableLockOnPoint(chrEntityId, 221);
});

$Event(48002830, Restart, function(chrEntityId, spEffectId, spEffectId2) {
    WaitFor(
        CharacterHasSpEffect(chrEntityId, spEffectId)
            && CharacterHasSpEffect(chrEntityId, spEffectId2));
    ForceCharacterDeath(chrEntityId, true);
    EndEvent();
});


