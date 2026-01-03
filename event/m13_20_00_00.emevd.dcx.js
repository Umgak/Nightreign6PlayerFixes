// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 132002800);
    $InitializeEvent(0, 132002801);
    $InitializeEvent(0, 132002802);
    $InitializeEvent(0, 132002810);
});

$Event(132002800, Restart, function() {
    DisableCharacter(13200700);
    DisableCharacter(13200800);
    DisableCharacter(13200801);
    DisableCharacter(13200802);
    DisableCharacter(13200803);
    WaitFor(IsHero(Hero.Raider));
    IssueShortWarpRequest(10000, TargetEntityType.Area, 13202100, -1);
    ForceAnimationPlayback(10000, 29211, false, false, false);
    SetCameraAngle(15, 0);
    UnknownHero200490();
    if (!EventFlag(3517)) {
        GotoIf(L2, EventFlag(3518));
        if (!EventFlag(3512)) {
            GotoIf(L1, EventFlag(3513));
            if (!EventFlag(3504)) {
            }
L0:
            EnableCharacter(13200800);
            DisableCharacterHPBarDisplay(13200800);
            SetNetworkUpdateRate(13200800, true, CharacterUpdateFrequency.AlwaysUpdate);
            DisableCharacterAI(13200800);
            SetSpEffect(20000, 9767);
            PlaySE(13202100, SoundType.EnvironmentalSound, 999990055);
            WaitFor(InArea(10000, 13202110) || ElapsedSeconds(1.7) || HPRatio(13200800) < 1);
            DisplayTextEffectId(1200);
            WaitFor(ElapsedSeconds(0.4));
            DisplayBossHealthBar(Enabled, 13200800, 0, 911000050);
            SetBossBGM(100500, BossBGMState.Start);
            EnableCharacterAI(13200800);
            Goto(L3);
        }
L1:
        EnableCharacter(13200801);
        DisableCharacterHPBarDisplay(13200801);
        DisableCharacterAI(13200801);
        SetNetworkUpdateRate(13200801, true, CharacterUpdateFrequency.AlwaysUpdate);
        SetSpEffect(20000, 9768);
        AddEstusCharge();
        RefillEstus();
        PlaySE(13202100, SoundType.EnvironmentalSound, 999990056);
        WaitFor(InArea(10000, 13202110) || ElapsedSeconds(1.7) || HPRatio(13200801) < 1);
        DisplayTextEffectId(1200);
        WaitFor(ElapsedSeconds(0.4));
        DisplayBossHealthBar(Enabled, 13200801, 0, 911000060);
        SetBossBGM(100510, BossBGMState.Start);
        EnableCharacterAI(13200801);
    } else {
L2:
        EnableCharacter(13200700);
        EnableCharacter(13200802);
        EnableCharacter(13200803);
        DisableCharacterHPBarDisplay(13200700);
        DisableCharacterHPBarDisplay(13200802);
        DisableCharacterHPBarDisplay(13200803);
        DisableCharacterAI(13200802);
        SetNetworkUpdateRate(13200802, true, CharacterUpdateFrequency.AlwaysUpdate);
        SetNetworkUpdateRate(13200803, true, CharacterUpdateFrequency.AlwaysUpdate);
        SetNetworkUpdateRate(13200700, true, CharacterUpdateFrequency.AlwaysUpdate);
        SetSpEffect(20000, 9769);
        AddEstusCharge();
        RefillEstus();
        PlaySE(13202100, SoundType.EnvironmentalSound, 999990057);
        WaitFor(InArea(10000, 13202110) || ElapsedSeconds(1.7) || HPRatio(13200802) < 1);
        DisplayTextEffectId(1200);
        WaitFor(ElapsedSeconds(0.4));
        CreateReferredDamagePair(13205800, 13200700);
        DisplayBossHealthBar(Enabled, 13200700, 0, 911000070);
        SetBossBGM(100520, BossBGMState.Start);
        EnableCharacterAI(13200802);
        Goto(L3);
    }
L3:
    SetSpEffect(10000, 9766);
});

$Event(132002801, Restart, function() {
    if (!EventFlag(3517)) {
        if (!EventFlag(3518)) {
            if (!EventFlag(3512)) {
                if (!EventFlag(3513)) {
                    if (!EventFlag(3504)) {
                    }
L0:
                    WaitFor(CharacterDead(13200800));
                    WaitFixedTimeSeconds(2);
                    DisplayBossHealthBar(Disabled, 13200800, 0, 911000050);
                    DisplayTextEffectId(1201);
                    SetEventFlagID(1159081, ON);
                    SetBossBGM(100500, BossBGMState.Stop2);
                    WaitFixedTimeSeconds(3);
                    DisplayNetworkconnectedPermanentBuffPopup(134);
                    SetSpEffect(10000, 9734);
                    WaitFixedTimeSeconds(5);
                    SetEventFlagID(1159086, ON);
                    WarpPlayer(10, 0, 0, 0, 0, 0);
                }
            }
L1:
            WaitFor(CharacterDead(13200801));
            WaitFixedTimeSeconds(2);
            DisplayBossHealthBar(Disabled, 13200801, 0, 911000060);
            DisplayTextEffectId(1201);
            SetEventFlagID(1159083, ON);
            SetBossBGM(100510, BossBGMState.Stop2);
            WaitFixedTimeSeconds(5);
            SetEventFlagID(1159086, ON);
            WarpPlayer(10, 0, 0, 0, 0, 0);
        }
    }
L2:
    WaitFor(CharacterHasSpEffect(13200802, 9760));
    ForceAnimationPlayback(13200803, 30005, false, false, false);
    IssueShortWarpRequest(13200803, TargetEntityType.Character, 13200802, 220);
    ForceAnimationPlayback(13200803, 20005, false, false, false);
    WaitFor(CharacterHasSpEffect(13200803, 9760));
    DisableCharacter(13200802);
    WaitFor(HPRatio(13200700) <= 0 || HPRatio(13200803) <= 0);
    ForceCharacterDeath(13200803, true);
    WaitFixedTimeSeconds(2);
    DisplayBossHealthBar(Disabled, 13200700, 0, 911000070);
    DisplayTextEffectId(1060);
    SetEventFlagID(1159085, ON);
    SetBossBGM(100520, BossBGMState.Stop2);
    WaitFixedTimeSeconds(3);
    DisplayNetworkconnectedPermanentBuffPopup(136);
    SetSpEffect(10000, 9736);
    WaitFixedTimeSeconds(5);
    SetEventFlagID(1159086, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(132002802, Restart, function() {
    WaitFor(EventFlag(72100));
    SetEventFlagID(1159086, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(132002810, Restart, function() {
    WaitFor(CharacterDead(10000));
    WaitFixedTimeSeconds(3);
    SetEventFlagID(1159086, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

