// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 11002500);
    $InitializeEvent(0, 11002550);
    $InitializeEvent(0, 11002700);
    $InitializeEvent(0, 11002800);
    $InitializeEvent(0, 11002810);
    $InitializeEvent(0, 11002600);
    $InitializeEvent(0, 11002604);
    $InitializeEvent(0, 11002601);
    $InitializeEvent(0, 11002602);
    $InitializeEvent(0, 11002603);
});

$Event(11002500, Default, function() {
    EndIf(EventFlag(11002550));
    DisableAsset(11006500);
    DisableHit(11001550);
    DisableMapPart(11001555);
    DisableCharacter(11000600);
});

$Event(11002550, Default, function() {
    WaitFor(EventFlag(18002800) && EventFlag(18002615));
    EnableAsset(11006500);
    EnableHit(11001550);
    EnableMapPart(11001555);
    ChangeWeather(Weather.Type85, -1, true);
    EnableCharacterImmortality(20000);
    EnableCharacter(11000600);
});

$Event(11002600, Default, function() {
    WaitFor(EventFlag(11002550));
    WaitFor(EventFlag(11002599));
    UnknownTalk2003120(1);
    PlayCutsceneToPlayer(11000010, CutscenePlayMode.Skippable, 10000);
    WaitFixedTimeFrames(1);
    FadeToBlack(1, 0, false, -1);
    SetEventFlagID(960, ON);
    AwardAchievement(6);
    SetEventFlagID(20, ON);
});

$Event(11002601, Default, function() {
    WaitFor(EventFlag(11002550));
    WaitFor(EventFlag(11002598));
    UnknownTalk2003120(1);
    FadeToBlack(1, 1, true, -1);
    WaitFixedTimeSeconds(1);
    GotoIf(L5, ShowBlood(1));
    PlayCutsceneToPlayer(11000031, CutscenePlayMode.SkippableWithFadeOutSkip, 10000);
    FadeToBlack(0, 1, true, -1);
    WaitFixedTimeFrames(1);
    SetEventFlagID(963, ON);
    FadeToBlack(1, 0, false, -1);
    SetEventFlagID(22, ON);
    EndEvent();
L5:
    PlayCutsceneToPlayer(11000030, CutscenePlayMode.SkippableWithFadeOutSkip, 10000);
    FadeToBlack(0, 1, true, -1);
    WaitFixedTimeFrames(1);
    SetEventFlagID(963, ON);
    FadeToBlack(1, 0, false, -1);
    SetEventFlagID(22, ON);
});

$Event(11002602, Default, function() {
    DisableAsset(11001600);
    DisableAsset(11001603);
    DisableAsset(11001400);
    WaitFor(EventFlag(11002550));
    WaitFor(IsHero(Hero.Recluse));
    WaitFor(PlayerHasItem(ItemType.Antique, 17002));
    WaitFor(ElapsedFrames(1));
    EnableAsset(11001401);
    EnableAsset(11001400);
    SetSpEffect(10000, 9826);
    EnableAsset(11001600);
    DisableAsset(11001601);
    DisableAsset(11001602);
    EnableAsset(11001603);
    ForceAnimationPlayback(11001400, 0, false, false, false);
    flag = EventFlag(1179110);
    GotoIf(L1, !flag);
    GotoIf(L2, flag);
L1:
    WaitFor(ActionButtonInArea(6751, 11001400));
    SetSpEffect(10000, 9826);
    WaitFor(ElapsedFrames(1));
    IssueShortWarpRequest(10000, TargetEntityType.Area, 11002220, -1);
    ForceAnimationPlayback(11001400, 1, false, false, false);
    ForceAnimationPlayback(10000, 90200, false, false, false);
    UnknownTalk2003120(30);
    UnknownSound201014(7);
    timeSp |= ElapsedSeconds(17) || CharacterHasSpEffect(10000, 9791);
    WaitFor(timeSp);
    Goto(L0);
L2:
    WaitFor(ActionButtonInArea(6751, 11001400));
    SetSpEffect(10000, 9826);
    WaitFor(ElapsedFrames(1));
    IssueShortWarpRequest(10000, TargetEntityType.Area, 11002220, -1);
    ForceAnimationPlayback(11001400, 1, false, false, false);
    ForceAnimationPlayback(10000, 90200, false, false, false);
    UnknownTalk2003120(30);
    UnknownSound201014(7);
    timeSp |= ElapsedSeconds(17) || CharacterHasSpEffect(10000, 9791);
    WaitFor(timeSp);
    Goto(L0);
L0:
    WaitFixedTimeFrames(1);
    FadeToBlack(1, 3, true, 0);
    WaitFor(ElapsedSeconds(7));
    SuppressSE(SoundType.BGM, 0, true);
    WaitFor(ElapsedSeconds(3));
    SetEventFlagID(962, ON);
    SetEventFlagID(1179111, ON);
    SetEventFlagID(23, ON);
});

$Event(11002603, Default, function() {
    WaitFor(IsHero(Hero.Recluse) && PlayerHasItem(ItemType.Antique, 17002));
    if (!CharacterHasSpEffect(10000, 9790)) {
        area = InArea(10000, 11002200) || InArea(10000, 11002202) || InArea(10000, 11002214);
        area2 = InArea(10000, 11002201) || InArea(10000, 11002203);
        area3 = InArea(10000, 11002204) || InArea(10000, 11002206);
        if (!area3) {
            if (!area2) {
                if (!area) {
L3:
                    GotoIf(L2, area3);
                    GotoIf(L1, area2);
                    if (!area) {
                        WaitFor(ElapsedSeconds(2));
                        RestartEvent();
                    }
                }
L0:
                PlaySE(11002212, SoundType.EnvironmentalSound, 101191000);
                WaitFor(ElapsedSeconds(2));
                RestartEvent();
            }
L1:
            PlaySE(11001400, SoundType.EnvironmentalSound, 101190000);
            WaitFor(ElapsedSeconds(2));
            RestartEvent();
        }
L2:
        PlaySE(11002211, SoundType.EnvironmentalSound, 101192000);
        WaitFor(ElapsedSeconds(2));
        RestartEvent();
    }
L4:
    NoOp();
});

$Event(11002604, Restart, function() {
    WaitFor(EventFlag(11002590));
    SetEventFlagID(11002599, ON);
});

$Event(11002620, Default, function() {
    WaitFor(EventFlag(951));
    PlayCutsceneToPlayer(11000100, CutscenePlayMode.SkippableWithFadeOutSkip, 10000);
    FadeToBlack(0, 0, false, -1);
    WaitFixedTimeFrames(1);
    SetEventFlagID(951, OFF);
    SetEventFlagID(120, ON);
    FadeToBlack(1, 0, false, -1);
    SetEventFlagID(7000, ON);
});

$Event(11002700, Restart, function() {
    EnableAsset(18001900);
    WaitFor(EventFlag(18002800) && EventFlag(18002615) && InArea(10000, 11002100));
    DisableAsset(18001900);
    WaitFor(!InArea(10000, 11002100) && EventFlag(18002800) && EventFlag(18002615));
    EnableAsset(18001900);
    RestartEvent();
});

$Event(11002800, Restart, function() {
    WaitFor(InArea(10000, 11002800) && EventFlag(18002800) && EventFlag(18002615));
    ActivateGparamOverride(3, 5);
    WaitFor(!InArea(10000, 11002800) && EventFlag(18002800) && EventFlag(18002615));
    DeactivateGparamOverride(5);
    RestartEvent();
});

$Event(11002810, Restart, function() {
    WaitFor(InArea(10000, 11002801) && EventFlag(18002800) && EventFlag(18002615));
    DeactivateGparamOverride(0);
    WaitFor(!InArea(10000, 11002801) && EventFlag(18002800) && EventFlag(18002615));
    ActivateGparamOverride(3, 0);
    RestartEvent();
});


