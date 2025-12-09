// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (IsMapVariation(0)) {
        if (EventFlag(47800000)) {
            $InitializeCommonEvent(0, 90055000, 47805200, 1, 47802200, 47800201);
            $InitializeCommonEvent(0, 90055001, 47805200, 1, 47800201, 47800200);
        }
        if (EventFlag(47800001)) {
            $InitializeCommonEvent(0, 90055000, 47805200, 2, 47802200, 47800201);
            $InitializeCommonEvent(0, 90055001, 47805200, 2, 47800201, 47800200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 47800200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 47802200, 47800200);
    }
    $InitializeCommonEvent(0, 90065910, 47800200, 47800205, 47800800, 770000, 690048, 47800800, 47800800, 907700000, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90065911, 47800200, 47800800, 770000, 47800800, 47800800, 907700000, 0, 0, 0, 0, 0);
    if (!IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90065900, 47800800, 1, 0, 0, 1070, 770000, 907700000, 47800800);
    }
    $InitializeCommonEvent(0, 90015012, 47800800, 47800200);
    $InitializeCommonEvent(0, 90015020, 47800200, 47800800);
    $InitializeCommonEvent(0, 90065070, 47800800, 47800810, 47800200, 47800800);
    $InitializeCommonEvent(0, 90065071, 47800800, 10002);
    $InitializeCommonEvent(0, 90065071, 47800800, 10003);
    $InitializeCommonEvent(0, 90065071, 47800800, 10004);
    // NR6PF: Fix gaping dragon max hp drain effect for all players
    $InitializeCommonEvent(0, 90065071, 47800800, 10005);
    $InitializeCommonEvent(0, 90065071, 47800800, 10006);
    $InitializeCommonEvent(0, 90065071, 47800800, 10007);
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 47802200, 47800800);
        $InitializeCommonEvent(0, 90015023, 47800200, 40, 0, 47800800, 47800800, 907700000, 0, 0, 0, 0);
        $InitializeCommonEvent(0, 90015030, 47800200, 47800800, 40, 770000, 0);
        $InitializeCommonEvent(0, 90015002, 0, 47800200, 0, 47800800, 1070, 770000, -1, 907700000, 47800800);
        $InitializeCommonEvent(0, 90015471, 47802200, 47800200, 47800800, 47800800, 0, 0, 46550, 0, 0, 0);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015446, 47800800, 47800200, 47800800, 47802200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015460, 47802200, 47800800);
        $InitializeCommonEvent(0, 90015460, 47802200, 47800810);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 47802200, 47800800);
        $InitializeCommonEvent(0, 90015023, 47800200, 40, 0, 47800800, 47800800, 907700000, 0, 0, 0, 0);
        $InitializeCommonEvent(0, 90015030, 47800200, 47800800, 40, 770000, 0);
        $InitializeCommonEvent(0, 90015002, 0, 47800200, 0, 47800800, 1070, 770000, -1, 907700000, 47800800);
        $InitializeCommonEvent(0, 90015471, 47802200, 47800200, 47800800, 47800800, 0, 0, 46550, 0, 0, 0);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015446, 47800800, 47800200, 47800800, 47802200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015460, 47802200, 47800800);
        $InitializeCommonEvent(0, 90015460, 47802200, 47800810);
    }
    $InitializeCommonEvent(0, 90035001, 47800800);
    if (1 == 1) {
        $InitializeCommonEvent(0, 90015070, 1056402601, 47800000, 47800300);
        $InitializeCommonEvent(0, 90015070, 1028402600, 47800000, 47800300);
    }
    if (1 == 2) {
        $InitializeCommonEvent(0, 90015070, 1056402602, 47800000, 47800300);
        $InitializeCommonEvent(0, 90015070, 1028402601, 47800000, 47800300);
    }
    if (1 == 3) {
        $InitializeCommonEvent(0, 90015070, 1056402603, 47800000, 47800300);
        $InitializeCommonEvent(0, 90015070, 1028402602, 47800000, 47800300);
    }
    if (2 == 1) {
        $InitializeCommonEvent(0, 90015070, 1056402601, 47800000, 47800301);
        $InitializeCommonEvent(0, 90015070, 1028402600, 47800000, 47800301);
    }
    if (2 == 2) {
        $InitializeCommonEvent(0, 90015070, 1056402602, 47800000, 47800301);
        $InitializeCommonEvent(0, 90015070, 1028402601, 47800000, 47800301);
    }
    if (2 == 3) {
        $InitializeCommonEvent(0, 90015070, 1056402603, 47800000, 47800301);
        $InitializeCommonEvent(0, 90015070, 1028402602, 47800000, 47800301);
    }
});

$Event(47802800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
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

$Event(47802810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
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
    ForceAnimationPlayback(47800800, 20005, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    DisableCharacterHPBarDisplay(47800801);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(47800800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(47802820, Restart, function(chrEntityId, nameId) {
    WaitFor(EventFlag(7500));
    if ((!EventFlag(7700) && !EventFlag(7720)) || EventFlag(8020)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        EndEvent();
    }
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    WaitFor(EventFlag(8035));
    RecordUserDispLog(10131, 20000, LogObjectType.None, -1);
    WaitFixedTimeSeconds(1);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    EnableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 20005, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(9992850, Restart, function(chrEntityId, spEffectId) {
    CreateNPCPart(chrEntityId, 50, NPCPartType.Part6, 1300, 1, 1, false, false);
    SetNPCPartSEAndSFX(chrEntityId, 50, 109, 109, 109, 109, 0);
    WaitFor(NPCPartHP(chrEntityId, 50) <= 1);
    SetSpEffect(47800800, spEffectId);
    EndEvent();
});

$Event(9992851, Restart, function(chrEntityId, spEffectId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId));
    ForceAnimationPlayback(47800800, 20000, true, false, false);
});

