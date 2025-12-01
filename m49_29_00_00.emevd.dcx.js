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
        if (EventFlag(49290000)) {
            $InitializeCommonEvent(0, 90055000, 49295200, 1, 49292200, 49290201);
            $InitializeCommonEvent(0, 90055001, 49295200, 1, 49290201, 49290200);
        }
        if (EventFlag(49290001)) {
            $InitializeCommonEvent(0, 90055000, 49295200, 2, 49292200, 49290201);
            $InitializeCommonEvent(0, 90055001, 49295200, 2, 49290201, 49290200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 49290200);
    }
    $InitializeCommonEvent(0, 90065910, 49290200, 49290205, 49290800, 931000, 690047, 49295220, 49290800, 904130700, 49290810, 905810000, 0, 0);
    $InitializeCommonEvent(0, 90065911, 49290200, 49290800, 931000, 49295220, 49290800, 904130700, 49290810, 905810000, 0, 0, 49295210);
    $InitializeCommonEvent(0, 90065900, 49290800, 1, 0, 0, 1050, 931000, 904130700, 49290800);
    $InitializeCommonEvent(0, 90065040, 49290800, 49295210, 49290200, 49290800);
    $InitializeCommonEvent(0, 90065041, 49290800, 49290810, 49290200, 49290800);
    $InitializeCommonEvent(0, 90015012, 49295220, 49290200);
    $InitializeCommonEvent(1, 90015012, 49295210, 49290200);
    $InitializeCommonEvent(0, 90015020, 49290200, 49290800);
    $InitializeCommonEvent(0, 90065920, 49290800, 7305);
    $InitializeCommonEvent(0, 90065920, 49290810, 7306);
    $InitializeCommonEvent(0, 90065920, 49295210, 7307);
    $InitializeCommonEvent(0, 90015008, 49290205, 49290800, 931000, 49290800, 10581, 0);
});

$Event(49292800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
    EndIf(EventFlag(eventFlagId));
    EndIf(EventFlag(eventFlagId2));
    WaitFor(CharacterRatioHPRatio(49295220) <= 0);
    WaitFixedTimeSeconds(4);
    WaitFor(CharacterRatioDead(49295220));
    DisplayBossHealthBar(Disabled, chrEntityId, 1, 902500520);
    DisplayBossHealthBar(Disabled, 49290810, 0, 905810000);
    DisableCharacter(chrEntityId);
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
});

$Event(49292810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5, chrEntityId2, chrEntityId3) {
    if (EventFlag(eventFlagId4) || EventFlag(eventFlagId5)) {
        DisableCharacter(chrEntityId);
        DisableCharacter(chrEntityId2);
        DisableCharacter(chrEntityId3);
        DisableCharacterCollision(chrEntityId);
        DisableCharacterCollision(chrEntityId2);
        DisableCharacterCollision(chrEntityId3);
        ForceCharacterDeath(chrEntityId, false);
        ForceCharacterDeath(chrEntityId2, false);
        ForceCharacterDeath(chrEntityId3, false);
        EndEvent();
    }
L0:
    DisableCharacter(chrEntityId);
    DisableCharacter(chrEntityId2);
    DisableCharacter(chrEntityId3);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterCollision(chrEntityId2);
    DisableCharacterCollision(chrEntityId3);
    DisableCharacterAI(chrEntityId);
    DisableCharacterAI(chrEntityId2);
    DisableCharacterAI(chrEntityId3);
    flag = EventFlag(7515) && (EventFlag(eventFlagId) || EventFlag(eventFlagId2));
    WaitFor(EventFlag(eventFlagId3));
    SpawnOneshotSFX(TargetEntityType.Character, chrEntityId, 900, 690047);
    WaitFixedTimeSeconds(4);
    EnableCharacter(chrEntityId);
    EnableCharacter(chrEntityId3);
    EnableCharacterCollision(chrEntityId);
    EnableCharacterCollision(chrEntityId3);
    EnableCharacterAI(chrEntityId);
    EnableCharacterAI(chrEntityId3);
    ForceAnimationPlayback(49290800, 20026, false, false, false);
    ForceAnimationPlayback(49290810, 20026, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId);
    DisableCharacterHPBarDisplay(49290810);
    EnableCharacterAI(chrEntityId);
    EnableCharacterAI(chrEntityId3);
    SetNetworkUpdateRate(48600800, true, CharacterUpdateFrequency.AlwaysUpdate);
    SetNetworkUpdateRate(48600810, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 1, nameId);
    DisplayBossHealthBar(Enabled, 49290810, 0, 905810000);
    WaitFor(CharacterHasSpEffect(chrEntityId, 10583));
    SpawnOneshotSFX(TargetEntityType.Character, 49290811, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290812, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290813, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290814, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290815, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290816, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290817, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290818, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290819, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290820, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290821, 900, 600940);
    SpawnOneshotSFX(TargetEntityType.Character, 49290822, 900, 600940);
    WaitFixedTimeSeconds(1.5);
    EnableCharacter(chrEntityId2);
    EnableCharacterCollision(chrEntityId2);
    EnableCharacterAI(chrEntityId2);
});

$Event(49292910, Restart, function(chrEntityId, value, eventFlagId, eventFlagId2) {
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    if (value != 1) {
        if (value != 2) {
            EndEvent();
        }
    }
    if (value == 1) {
        flag &= EventFlag(7501);
    }
    if (value == 2) {
        flag &= EventFlag(7506);
    }
    flag &= EventFlag(eventFlagId);
    WaitFor(flag);
    ForceAnimationPlayback(49290880, 30026, true, false, false);
    ForceAnimationPlayback(49290881, 30026, true, false, false);
    ForceAnimationPlayback(49290882, 30026, true, false, false);
    ForceAnimationPlayback(49290883, 30026, true, false, false);
    ForceAnimationPlayback(49290884, 30026, true, false, false);
    ForceAnimationPlayback(49290885, 30026, true, false, false);
    ForceAnimationPlayback(49290886, 30026, true, false, false);
    ForceAnimationPlayback(49290887, 30026, true, false, false);
    ForceAnimationPlayback(49290888, 30026, true, false, false);
    ForceAnimationPlayback(49290889, 30026, true, false, false);
    WaitFor(InArea(20000, 49292200) || ElapsedSeconds(60));
    PlaySE(49292200, SoundType.CharacterMotion, 999997310);
    WaitFixedTimeSeconds(2);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    ForceAnimationPlayback(49290880, 20026, false, false, false);
    ForceAnimationPlayback(49290881, 20026, false, false, false);
    ForceAnimationPlayback(49290882, 20026, false, false, false);
    ForceAnimationPlayback(49290883, 20026, false, false, false);
    ForceAnimationPlayback(49290884, 20026, false, false, false);
    ForceAnimationPlayback(49290885, 20026, false, false, false);
    ForceAnimationPlayback(49290886, 20026, false, false, false);
    ForceAnimationPlayback(49290887, 20026, false, false, false);
    ForceAnimationPlayback(49290888, 20026, false, false, false);
    ForceAnimationPlayback(49290889, 20026, false, false, false);
    WaitFixedTimeSeconds(60);
    SetEventFlagID(eventFlagId2, ON);
});

$Event(49292911, Restart, function(chrEntityId, value, eventFlagId, eventFlagId2, eventFlagId3) {
    if (value != 1) {
        if (value != 2) {
            EndEvent();
        }
    }
    EndIf(!EventFlag(eventFlagId));
    EndIf(EventFlag(eventFlagId3));
    if (value == 1) {
        flagTimeChr &= EventFlag(7501);
    }
    if (value == 2) {
        flagTimeChr &= EventFlag(7506);
    }
    flagTimeChr &= PlayAreaCurrentTimeInRange(23, 59, 0, 23, 59, 59)
        && (CharacterRatioDead(chrEntityId) || EventFlag(eventFlagId2));
    WaitFor(flagTimeChr);
    SetNetworkconnectedEventFlagID(eventFlagId3, ON);
    if (value == 1) {
        SetNetworkconnectedEventFlagID(7504, ON);
    }
    if (value == 2) {
        SetNetworkconnectedEventFlagID(7509, ON);
    }
});

$Event(49292920, Restart, function(eventFlagId) {
    EndIf(!EventFlag(7700) && !EventFlag(7720));
    EndIf(EventFlag(8035));
    WaitFor(EventFlag(8035));
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
});


