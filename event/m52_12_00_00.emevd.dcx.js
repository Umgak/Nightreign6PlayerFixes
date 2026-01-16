// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90065250, 52120310, 52120312);
    $InitializeCommonEvent(0, 90065251, 52120300, 52125201, 52120301, 52125202, 0, 0, 52120320, 52122200);
    $InitializeCommonEvent(0, 90065251, 52120301, 52125202, 52120302, 52125203, 52120310, 0, 52120320, 52122200);
    $InitializeCommonEvent(0, 90065251, 52120302, 52125203, 52120303, 52125204, 52120311, 52120310, 52120320, 52122200);
    $InitializeCommonEvent(0, 90065251, 52120303, 52125204, 52120304, 52125205, 52120312, 52120311, 52120320, 52122200);
    if (IsMapVariation(0)) {
        $InitializeCommonEvent(0, 90065252, 52125201, 2, 52122200, 52120201, 52120320);
        $InitializeCommonEvent(0, 90065253, 52120320, 2, 52120201, 52120200);
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52120200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52122200, 52120200);
    }
    $InitializeCommonEvent(0, 90065254, 52120200, 52120205, 52120800, 772000, 0, 52125210, 52120800, 907720600);
    $InitializeCommonEvent(0, 90065911, 52120200, 52120800, 772000, 52125210, 52120800, 907720600, 0, 0, 0, 0, 0);
    if (!IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90065900, 52120800, 2, 0, 0, 1070, 772000, 907720600, 52120800);
    }
    $InitializeCommonEvent(0, 90015012, 52125210, 52120200);
    $InitializeCommonEvent(1, 90015012, 0, 52120200);
    $InitializeCommonEvent(0, 90015020, 52120200, 52120800);
    $InitializeCommonEvent(0, 90015008, 52120205, 52120800, 772000, 52120800, -1, 0);
    $InitializeCommonEvent(0, 90065255, 52120800, 52120200, 52120800);
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 52122200, 52120800);
        $InitializeCommonEvent(0, 90015023, 52120200, 40, 0, 52125210, 52120800, 907720600, 0, 0, 0, 0);
        $InitializeCommonEvent(0, 90015030, 52120200, 52125210, 40, 772000, 0);
        $InitializeCommonEvent(0, 90015002, 0, 52120200, 52120800, 52120800, 1070, 772000, 110320, 907720600, 52120800);
        $InitializeCommonEvent(0, 90015446, 52125210, 52120200, 52120800, 52122200);
        $InitializeCommonEvent(0, 90015460, 52122200, 52120800);
    }
    $InitializeCommonEvent(0, 90035001, 52120800);
});

$Event(52122800, Restart, function(chrEntityId, value, areaEntityId, eventFlagId) {
    DisableCharacter(52125202);
    DisableCharacter(52125203);
    DisableCharacter(52125204);
    DisableCharacter(52125205);
    DisableCharacterAI(52125202);
    DisableCharacterAI(52125203);
    DisableCharacterAI(52125204);
    DisableCharacterAI(52125205);
    if (EventFlag(7510)) {
        DisableCharacter(chrEntityId);
        DisableCharacterAI(chrEntityId);
        EndEvent();
    }
    if (EventFlag(7506)) {
        EnableCharacter(chrEntityId);
        EnableCharacterAI(chrEntityId);
        WaitFor(ElapsedSeconds(120));
        SetEventFlagID(eventFlagId, ON);
        EndEvent();
    }
    EndIf(EventFlag(7506));
    if (value == 1) {
        flag |= !EventFlag(7505);
    }
    if (value == 2) {
        flag |= EventFlag(7505);
    }
    if (flag) {
        DisableCharacter(chrEntityId);
        DisableCharacterAI(chrEntityId);
    } else {
        DisableCharacter(chrEntityId);
        DisableCharacterAI(chrEntityId);
        if (value == 1) {
            flagTime &= !EventFlag(7505);
        }
        if (value == 2) {
            flagTime &= EventFlag(7505);
        }
        flagTime &= PlayAreaCurrentTimeInRange(0, 0, 0, 22, 59, 59);
        WaitFor(flagTime);
        WaitFor(ElapsedSeconds(30));
    }
L0:
    if (value == 1) {
        flagTimeArea &= !EventFlag(7505);
    }
    if (value == 2) {
        flagTimeArea &= EventFlag(7505);
    }
    flagTimeArea &= PlayAreaCurrentTimeInRange(23, 0, 0, 23, 59, 59)
        && (InArea(20000, areaEntityId) || PlayAreaCurrentTimeInRange(23, 59, 0, 23, 59, 59));
    WaitFor(flagTimeArea);
    if (value == 1) {
        SetNetworkconnectedEventFlagID(7501, ON);
    }
    if (value == 2) {
        SetNetworkconnectedEventFlagID(7506, ON);
    }
    PlaySE(areaEntityId, SoundType.CharacterMotion, 999997310);
    WaitFor(ElapsedSeconds(2));
    ForceAnimationPlayback(chrEntityId, 20026, false, false, false);
    EnableCharacter(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetEventFlagID(52120300, ON);
    WaitFor(ElapsedSeconds(120));
    SetEventFlagID(eventFlagId, ON);
});

$Event(52122801, Restart, function(eventFlagId, value, eventFlagId2, eventFlagId3) {
    if (value != 1) {
        if (value != 2) {
            EndEvent();
        }
    }
    EndIf(EventFlag(eventFlagId3));
    if (value == 1) {
        flagTime &= EventFlag(7501);
    }
    if (value == 2) {
        flagTime &= EventFlag(7506);
    }
    flagTime &= PlayAreaCurrentTimeInRange(23, 59, 0, 23, 59, 59)
        && (EventFlag(eventFlagId) || EventFlag(eventFlagId2));
    WaitFor(flagTime);
    SetNetworkconnectedEventFlagID(eventFlagId3, ON);
    if (value == 1) {
        SetNetworkconnectedEventFlagID(7504, ON);
    }
    if (value == 2) {
        SetNetworkconnectedEventFlagID(7509, ON);
    }
});

$Event(52122802, Restart, function() {
    WaitFor(
        EventFlag(52120300) && (EventFlag(52120310) || EventFlag(52120311) || EventFlag(52120312)));
    WaitFor(CharacterRatioDead(52125201, GreaterOrEqual, 0.7) && ElapsedSeconds(15));
    ForceAnimationPlayback(52125202, 20026, false, false, false);
    EnableCharacter(52125202);
    EnableCharacterAI(52125202);
    WaitFor(CharacterRatioDead(52125202, GreaterOrEqual, 0.7) && ElapsedSeconds(15));
    ForceAnimationPlayback(52125203, 20026, false, false, false);
    EnableCharacter(52125203);
    EnableCharacterAI(52125203);
    if (!EventFlag(52120310)) {
        WaitFor(CharacterRatioDead(52125203, GreaterOrEqual, 0.7) && ElapsedSeconds(15));
        ForceAnimationPlayback(52125204, 20026, false, false, false);
        EnableCharacter(52125204);
        EnableCharacterAI(52125204);
        if (!EventFlag(52120311)) {
            WaitFor(CharacterRatioDead(52125204, GreaterOrEqual, 0.7) && ElapsedSeconds(15));
            ForceAnimationPlayback(52125205, 20026, false, false, false);
            EnableCharacter(52125205);
            EnableCharacterAI(52125205);
        }
    }
L0:
    SetNetworkconnectedEventFlagID(52120320, ON);
});

$Event(52122803, Restart, function() {
    DisableNetworkSync();
    WaitFor(HasMultiplayerState(MultiplayerState.Host));
    EndIf(AnyBatchEventFlags(52120310, 52120312));
    RandomlySetNetworkconnectedEventFlagInRange(52120310, 52120312, ON);
});

$Event(52122804, Restart, function(eventFlagId, eventFlagId2, eventFlagId3, bgmBossConvParamId, sfxId, chrEntityId, chrEntityId2, nameId) {
    if (EventFlag(eventFlagId3)) {
        DisableCharacter(chrEntityId);
        DisableCharacterAI(chrEntityId);
        ForceCharacterDeath(chrEntityId, false);
        EndEvent();
    }
    if (EventFlag(eventFlagId2)) {
        SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
        DisableCharacterHPBarDisplay(chrEntityId);
        EnableCharacter(chrEntityId);
        EnableCharacterAI(chrEntityId);
        EndIf(IsMapVariation(2));
        SetBossBGM(bgmBossConvParamId, BossBGMState.Start);
        LinkToBossHealthBar(Disabled, nameId, 0);
        DisplayBossHealthBar(Enabled, chrEntityId2, 0, nameId);
        LinkToBossHealthBar(Enabled, nameId, chrEntityId2);
        EndEvent();
    }
L1:
    DisableCharacter(chrEntityId);
    DisableCharacterAI(chrEntityId);
    WaitFor(EventFlag(eventFlagId));
    if (!IsMapVariation(2)) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Start);
    }
    SpawnOneshotSFX(TargetEntityType.Character, chrEntityId2, 900, sfxId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisableCharacterHPBarDisplay(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 20026, false, false, false);
    EnableCharacter(chrEntityId);
    EnableCharacterAI(chrEntityId);
    WaitFor(ElapsedSeconds(4));
    if (!IsMapVariation(2)) {
        LinkToBossHealthBar(Disabled, nameId, 0);
    }
    if (!IsMapVariation(2)) {
        DisplayBossHealthBar(Enabled, chrEntityId2, 0, nameId);
        LinkToBossHealthBar(Enabled, nameId, chrEntityId2);
        Goto(L0);
    }
L0:
    SetNetworkconnectedEventFlagID(eventFlagId2, ON);
});

$Event(52122810, Restart, function(chrEntityId, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(eventFlagId2));
    if (CharacterHasSpEffect(chrEntityId, 60754)) {
        ActivateGparamOverride(14, 0);
    } else {
        WaitFor(EventFlag(eventFlagId));
        WaitFor(CharacterHasSpEffect(chrEntityId, 60754));
        ActivateGparamOverride(14, 5);
    }
L0:
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    DeactivateGparamOverride(3);
});

