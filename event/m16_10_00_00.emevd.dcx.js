// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 16102500);
    $InitializeEvent(0, 16102590);
    $InitializeCommonEvent(0, 90075751, 16100800);
    $InitializeCommonEvent(0, 90075904, 16100800, 761000, 907630001, 7, 60517, 4);
    $InitializeCommonEvent(0, 90075902, 16100800, 0, 0);
    $InitializeCommonEvent(0, 90015012, 16100800, 7511);
    $InitializeCommonEvent(0, 90015020, 7511, 7512);
    $InitializeCommonEvent(0, 90075750, 16100800, 16105810, 16100890);
    $InitializeCommonEvent(0, 90075752, 16100800, 16100220);
    $InitializeCommonEvent(0, 90075758);
    $InitializeCommonEvent(0, 90075755, 16100800, 16105810, 16103810, 16103840, 1, 16100200, 16100220);
    $InitializeCommonEvent(0, 90075755, 16100800, 16105810, 16103811, 0, 0.8, 16100201, 16100220);
    $InitializeCommonEvent(0, 90075755, 16100800, 16105810, 16103812, 16103842, 0.6, 16100202, 16100220);
    $InitializeCommonEvent(0, 90075755, 16100800, 16105810, 16103813, 16103843, 0.4, 16100203, 16100220);
    $InitializeCommonEvent(0, 90075755, 16100800, 16105810, 16103814, 0, 0.2, 16100204, 16100220);
    $InitializeCommonEvent(0, 90075756, 16100800, 16103820, 16100820, 16103830, 16100830, 0.6, 16100210, 16100220);
    $InitializeCommonEvent(0, 90075756, 16100800, 16103821, 16100821, 16103831, 16100831, 0.4, 16100211, 16100220);
    $InitializeCommonEvent(0, 90075756, 16100800, 16103822, 16100822, 16103832, 16100832, 0.2, 16100212, 16100220);
    $InitializeCommonEvent(0, 90075757, 16100800, 16105810, 16100220);
    $InitializeCommonEvent(0, 90075760, 16100800);
    $InitializeCommonEvent(0, 90075770, 16100800, 16102810, 16102820, 16102821, 16102822, 16100220);
    $InitializeCommonEvent(0, 90075771, 16100800, 16106800, 16100220);
    $InitializeCommonEvent(0, 90075780, 16100800, 16100220);
    $InitializeCommonEvent(0, 90075772, 16100800, 16105810, 16100220);
    $InitializeCommonEvent(0, 90075773, 16100800, 16100220);
    $InitializeCommonEvent(0, 90075774, 16100800, 16102890);
    $InitializeCommonEvent(0, 90075930, 162, 9082);
    $InitializeCommonEvent(0, 90085027, 902, 9, 9281, Hero.Scholar);
    $InitializeEvent(0, 16102830);
});

$Event(16102500, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(16102500));
    WaitFor(EventFlag(12002001) && PlayerInMap(16, 10, 0, 0));
    FadeToBlack(1, 0, true, -1);
    WaitFixedTimeSeconds(4);
    chrTime = CharacterBackreadStatus(16100800) || ElapsedSeconds(5);
    FadeToBlack(0, 0.5, false, -1);
    EndEvent();
});

$Event(16102590, Default, function() {
    WaitFor(EventFlag(7512));
    DisplayTextEffectId(4000);
    if (MissionActive(902)) {
        WaitFixedTimeSeconds(4);
    }
    WaitFixedTimeSeconds(15);
    SetEventFlagID(7000, ON);
});

$Event(16102800, Restart, function(chrEntityId) {
    DisableNetworkSync();
    EnableCharacterDefaultBackread(chrEntityId);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisableCharacterHPBarDisplay(chrEntityId);
    WaitFor(PlayerInMap(16, 10, 0, 0));
    WaitFor(ElapsedFrames(1));
    ChangeCamera(7610);
});

$Event(16102810, Restart, function(chrEntityId, bgmBossConvParamId, nameId) {
    if (EventFlag(7512)) {
        ForceCharacterDeath(chrEntityId, false);
        EndEvent();
    }
    if (EventFlag(7511)) {
        EnableCharacter(chrEntityId);
        EnableCharacterAI(chrEntityId);
        DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
        LinkToBossHealthBar(Disabled, nameId, 0);
        LinkToBossHealthBar(Enabled, nameId, chrEntityId);
        SetBossBGM(bgmBossConvParamId, BossBGMState.Start);
        EndEvent();
    }
    EnableCharacter(chrEntityId);
    DisableCharacterAI(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 30029, true, false, false);
    WaitFor(EventFlag(7511));
    SetBossBGM(bgmBossConvParamId, BossBGMState.Start);
    ForceAnimationPlayback(chrEntityId, 20029, false, false, false);
    EnableCharacterAI(chrEntityId);
    LinkToBossHealthBar(Disabled, nameId, 0);
    LinkToBossHealthBar(Enabled, nameId, chrEntityId);
    WaitFor(ElapsedSeconds(4));
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(16102820, Restart, function(chrEntityId) {
    EndIf(EventFlag(7512));
    EndIf(EventFlag(7511));
    WaitFor(
        InArea(10000, 16102801)
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260)
            || EventFlag(7511));
    SetNetworkconnectedEventFlagID(7511, ON);
});

$Event(16102830, Default, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(136));
    WaitFor(EventFlag(7512));
    SetEventFlagID(10001970, ON);
});

