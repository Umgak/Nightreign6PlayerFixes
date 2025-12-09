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
        if (EventFlag(52130000)) {
            $InitializeCommonEvent(0, 90055000, 52135200, 1, 52132200, 52130201);
            $InitializeCommonEvent(0, 90055001, 52135200, 1, 52130201, 52130200);
        }
        if (EventFlag(52130001)) {
            $InitializeCommonEvent(0, 90055000, 52135200, 2, 52132200, 52130201);
            $InitializeCommonEvent(0, 90055001, 52135200, 2, 52130201, 52130200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52130200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52132200, 52130200);
    }
    $InitializeCommonEvent(0, 90065211, 52130200, 52130205, 52130800, 52130800, 0, 20026, 907930615, 52030210, 52030211, 1);
    $InitializeCommonEvent(0, 90065211, 52130200, 52130205, 52130800, 52130801, 52135211, 20027, 907930610, 52030211, 52030210, 0);
    $InitializeCommonEvent(0, 90065911, 52130200, 52130800, 793000, 52135210, 52130800, 907930615, 52130801, 907930610, 0, 0, 52135211);
    $InitializeCommonEvent(0, 90065900, 52130800, 2, 0, 0, 1080, 793000, 907930615, 52130800);
    $InitializeCommonEvent(0, 90015012, 52135210, 52130200);
    $InitializeCommonEvent(1, 90015012, 0, 52130200);
    $InitializeCommonEvent(0, 90015020, 52130200, 52130800);
    $InitializeCommonEvent(0, 90015008, 52130205, 52130800, 793000, 52135210, 0, 1);
    $InitializeCommonEvent(0, 90065217, 52130800, 52130800, 52130205, 52030210);
    $InitializeCommonEvent(0, 90065217, 52130801, 52130800, 52130205, 52030211);
    $InitializeCommonEvent(0, 90065215, 52130801, 52130810, 52134800, 52130220, 52130200, 52130800);
    $InitializeCommonEvent(0, 90065215, 52130801, 52130811, 52134801, 52130221, 52130200, 52130800);
    $InitializeCommonEvent(0, 90065215, 52130801, 52130812, 52134802, 52130222, 52130200, 52130800);
    $InitializeCommonEvent(0, 90065215, 52130801, 52130813, 52134803, 52130223, 52130200, 52130800);
    $InitializeCommonEvent(0, 90065216, 52130801, 52130810, 52130220, 60821, 1, 0, 52130800);
    $InitializeCommonEvent(0, 90065216, 52130801, 52130811, 52130221, 60822, 2, 0, 52130800);
    $InitializeCommonEvent(0, 90065216, 52130801, 52130812, 52130222, 60827, 1, 0, 52130800);
    $InitializeCommonEvent(0, 90065216, 52130801, 52130813, 52130223, 60828, 2, 0, 52130800);
    $InitializeCommonEvent(0, 90065215, 52130801, 52130820, 52134810, 52130230, 52130200, 52130800);
    $InitializeCommonEvent(0, 90065216, 52130801, 52130820, 52130230, 60820, 100, 0, 52130800);
    $InitializeCommonEvent(0, 90035001, 52130800);
});

$Event(52132800, Default, function(chrEntityId, chrEntityId2, eventFlagId) {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(EventFlag(15000800));
    EndIf(EventFlag(15005803));
    WaitFor(
        PlayerIsInOwnWorld()
            && !CharacterDead(chrEntityId)
            && CharacterDead(chrEntityId2)
            && EventFlag(eventFlagId));
    SetNetworkconnectedEventFlagID(eventFlagId, OFF);
    RestartEvent();
});

$Event(52132810, Default, function(chrEntityId, chrEntityId2, eventFlagId, spEffectId, generatorEntityId, dummypolyId, value) {
    SetEventLogLevel(2);
    EndIf(EventFlag(15000800));
    EndIf(EventFlag(15005803));
    DisableCharacterGravity(chrEntityId2);
    WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId) && !EventFlag(eventFlagId));
    InvokeEnemyGenerator(generatorEntityId);
    WaitFixedTimeFrames(3);
    SetNetworkUpdateRate(chrEntityId2, true, CharacterUpdateFrequency.AlwaysUpdate);
    WarpCharacterAndCopyFloor(chrEntityId2, TargetEntityType.Character, chrEntityId, dummypolyId, chrEntityId);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    RequestCharacterAIReplan(chrEntityId2);
    if (Signed(1) == value) {
        SetCharacterEventTarget(chrEntityId2, chrEntityId);
    }
    WaitFixedTimeFrames(1);
    RestartEvent();
});

$Event(52132885, Restart, function(chrEntityId, chrEntityId2, chrEntityId3, chrEntityId4, chrEntityId5, chrEntityId6, chrEntityId7, nameId, value, eventFlagId) {
    DisableCharacter(chrEntityId6);
    DisableCharacterAI(chrEntityId6);
    DisableCharacter(chrEntityId7);
    DisableCharacterAI(chrEntityId7);
    EndIf(EventFlag(eventFlagId));
    ForceAnimationPlayback(chrEntityId7, 30026, false, false, false);
    EnableCharacterInvincibility(chrEntityId7);
    WaitFor(EventFlag(52139000));
    SetNetworkUpdateRate(chrEntityId7, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisableCharacterHPBarDisplay(chrEntityId7);
    WaitFor(ElapsedSeconds(4));
    DisableCharacterInvincibility(chrEntityId7);
    EnableCharacterAI(chrEntityId7);
    ForceAnimationPlayback(chrEntityId7, 20026, false, false, false);
    LinkToBossHealthBar(Disabled, nameId, 0);
    if (value == 0) {
        DisplayBossHealthBar(Enabled, chrEntityId7, 0, nameId);
        LinkToBossHealthBar(Enabled, nameId, chrEntityId7);
        Goto(L0);
    }
L0:
    SetSpEffect(chrEntityId, 0);
    SetSpEffect(chrEntityId2, 0);
    SetSpEffect(chrEntityId3, 0);
    SetSpEffect(chrEntityId4, 0);
    SetSpEffect(chrEntityId5, 0);
});

$Event(52132890, Restart, function(eventFlagId, eventFlagId2, bgmBossConvParamId, chrEntityId, chrEntityId2, nameId, chrEntityId3, nameId2, chrEntityId4, nameId3, chrEntityId5) {
    EndIf(EventFlag(eventFlagId2));
    WaitFor(EventFlag(eventFlagId));
    WaitFor(CharacterRatioHPRatio(chrEntityId) <= 0);
    ForceCharacterDeath(chrEntityId5, false);
    SetSpEffect(10000, 509);
    SetSpEffect(10001, 509);
    SetSpEffect(10002, 509);
    SetSpEffect(10003, 509);
    SetSpEffect(10004, 509);
    SetSpEffect(10005, 509);
    SetSpEffect(10006, 509);
    SetSpEffect(10007, 509);
    SetSpEffect(10008, 509);
    SetSpEffect(10009, 509);
    SetSpEffect(10010, 509);
    WaitFor(CharacterRatioDead(chrEntityId));
    WaitFixedTimeSeconds(4);
    SetNetworkconnectedEventFlagID(eventFlagId2, ON);
    if (BossBGMPlaying(bgmBossConvParamId)) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Stop2);
    }
    if (chrEntityId3 == 0) {
        DisplayBossHealthBar(Disabled, chrEntityId2, 0, nameId);
        EndEvent();
    }
    if (chrEntityId4 == 0) {
        DisplayBossHealthBar(Disabled, chrEntityId2, 1, nameId);
        DisplayBossHealthBar(Disabled, chrEntityId3, 0, nameId2);
        EndEvent();
    }
    DisplayBossHealthBar(Disabled, chrEntityId2, 2, nameId);
    DisplayBossHealthBar(Disabled, chrEntityId3, 1, nameId2);
    DisplayBossHealthBar(Disabled, chrEntityId4, 0, nameId3);
    EndEvent();
});

