// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 13002800);
    $InitializeEvent(0, 13002801);
    $InitializeEvent(0, 13002802);
    $InitializeEvent(0, 13002803);
    $InitializeEvent(0, 13002810);
    $InitializeEvent(0, 13002820);
    $InitializeEvent(0, 13002811);
    $InitializeEvent(0, 13002900);
});

$Event(13002800, Restart, function() {
    if (!EventFlag(1189056)) {
        WaitFor(CharacterHPValue(13000800) == 1);
        DisableCharacterAI(13000800);
        SetEventFlagID(10003408, ON);
        SetBossBGM(100800, BossBGMState.Stop2);
        SetSpEffect(13000800, 604000);
        SetSpEffect(13000800, 604001);
        SetSpEffect(13000800, 604002);
        SetSpEffect(13000800, 604003);
        SetSpEffect(13000800, 604004);
        SetSpEffect(13000800, 604005);
        SetSpEffect(13000800, 604006);
        SetSpEffect(13000800, 604007);
        SetSpEffect(13000800, 604008);
        SetSpEffect(13000800, 604009);
        SetSpEffect(13000800, 604010);
        SetSpEffect(13000800, 604011);
        SetSpEffect(13000800, 604012);
        SetSpEffect(13000800, 604013);
        SetSpEffect(13000800, 604014);
        ForceAnimationPlayback(13000800, 90201, false, true, false);
        WaitFor(ElapsedFrames(60));
        DisplayBossHealthBar(Disabled, 13000800, 0, 911000000);
        WaitFor(ElapsedFrames(30));
        SetEventFlagID(10003409, ON);
        WaitFor(ElapsedFrames(40));
        ForceAnimationPlayback(13000800, 90102, true, false, false);
        SetSpEffect(13000800, 604000);
        SetSpEffect(13000800, 604001);
        SetSpEffect(13000800, 604002);
        SetSpEffect(13000800, 604003);
        SetSpEffect(13000800, 604004);
        SetSpEffect(13000800, 604005);
        SetSpEffect(13000800, 604006);
        SetSpEffect(13000800, 604007);
        SetSpEffect(13000800, 604008);
        SetSpEffect(13000800, 604009);
        SetSpEffect(13000800, 604010);
        SetSpEffect(13000800, 604011);
        SetSpEffect(13000800, 604012);
        SetSpEffect(13000800, 604013);
        SetSpEffect(13000800, 604014);
        WaitFor(CharacterHasSpEffect(13000800, 9924));
        WaitFor(ElapsedSeconds(2));
        SpawnMapSFX(13002110);
        DisableAsset(13001800);
        DisableHit(13004200);
        WaitFor(InArea(10000, 13002111));
        DeleteMapSFX(13002110, true);
    }
L10:
    ChangeAssetEnableStateUnknown200510(13006810, Enabled, 1);
    WaitFor(ElapsedSeconds(0.6));
    SetSpEffect(10000, 9780);
    SpawnOneshotSFX(TargetEntityType.Area, 13002111, -1, 813061);
    ActivateGparamOverride(7, 1);
    EnableCharacter(13000820);
    WaitFor(ElapsedSeconds(0.4));
    EnableCharacter(13000810);
    EnableCharacter(13000811);
    DisableAsset(13001800);
    DisableHit(13004200);
    WaitFor(ElapsedFrames(10));
    ForceAnimationPlayback(13000811, 90107, true, false, true);
    WaitFor(ActionButtonInArea(6117, 13000810));
    ForceAnimationPlayback(13000810, 20026, false, false, false);
    UnknownTalk2003120(12);
    FadeToBlack(0, 0, true, 0);
    WaitFor(ElapsedSeconds(8));
    FadeToBlack(1, 1.5, true, 0);
    WaitFor(ElapsedSeconds(5.5));
    SetEventFlagID(1189057, ON);
    WaitFixedTimeFrames(1);
    SetEventFlagID(1189058, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(13002801, Restart, function() {
    DisableCharacter(13000800);
    DisableCharacter(13000810);
    DisableCharacter(13000811);
    DisableCharacter(13000820);
    SetCharacterTalkRange(13000800, 9999);
    EndIf(EventFlag(1189056));
    WaitFor(IsHero(Hero.Executor));
    UnknownHero200490();
    DisableCharacterFadeOnEnable(10000);
    DisableCharacterFadeOnEnable(13000800);
    SetSpEffect(10000, 9772);
    ForceAnimationPlayback(10000, 29211, false, false, false);
    IssueShortWarpRequest(10000, TargetEntityType.Area, 13002100, -1);
    PlayCutsceneToPlayer(13000000, CutscenePlayMode.SkippableWithFadeOutSkip, 10000);
    EnableCharacter(13000800);
    DisableCharacterHPBarDisplay(13000800);
    SetNetworkUpdateRate(13000800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, 13000800, 0, 911000000);
    EnableCharacterImmortality(13000800);
    ClearSpEffect(13000800, 9821);
    SetSpEffect(13000800, 9827);
    EnableCharacterAI(13000800);
    EnableAsset(13001800);
    ChangeAssetEnableStateUnknown200510(13006810, Disabled, 0);
    SetEventFlagID(10003407, ON);
    WaitFixedTimeFrames(1);
    SetBossBGM(100800, BossBGMState.Start);
});

$Event(13002802, Restart, function() {
    WaitFor(CharacterHPValue(13000800) == 1);
    SetSpEffect(13000800, 360);
    SetCharacterTeamType(13000800, TeamType.FriendlyNPC);
});

$Event(13002803, Restart, function() {
    WaitFor(EventFlag(72100));
    SetEventFlagID(1189058, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(13002810, Restart, function() {
    WaitFor(CharacterDead(10000));
    WaitFor(ElapsedSeconds(3));
    SetEventFlagID(1189058, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(13002811, End, function() {
    EndIf(!EventFlag(1189056));
    UnknownHero200490();
    DisableCharacterFadeOnEnable(10000);
    ForceAnimationPlayback(10000, 29211, false, false, false);
    IssueShortWarpRequest(10000, TargetEntityType.Area, 13002200, -1);
    SetSpEffect(10000, 9772);
});

$Event(13002820, Restart, function() {
    WaitFor(InArea(10000, 13002120));
    SetSpEffect(10000, 9621);
    WaitFor(!InArea(10000, 13002120));
    ClearSpEffect(10000, 9621);
    WaitFor(ElapsedFrames(1));
    RestartEvent();
});

$Event(13002900, Restart, function() {
    WaitFor(EventFlag(114));
    ChangeAssetEnableStateUnknown200510(13006810, Disabled, 0);
    DisableCharacter(13000810);
    DisableCharacter(13000811);
    SpawnMapSFX(13002110);
    DisableAsset(13001800);
    DisableHit(13004200);
    WaitFor(InArea(10000, 13002111));
    DeleteMapSFX(13002110, true);
    ChangeAssetEnableStateUnknown200510(13006810, Enabled, 1);
    WaitFor(ElapsedSeconds(0.2));
    SetSpEffect(10000, 9780);
    SpawnOneshotSFX(TargetEntityType.Area, 13002111, -1, 813061);
    ActivateGparamOverride(7, 1);
    EnableCharacter(13000820);
    WaitFor(ElapsedSeconds(0.8));
    EnableCharacter(13000810);
    EnableCharacter(13000811);
    DisableAsset(13001800);
    DisableHit(13004200);
    WaitFor(ElapsedFrames(10));
    ForceAnimationPlayback(13000811, 90107, true, false, true);
    WaitFor(ActionButtonInArea(6117, 13000810));
    ForceAnimationPlayback(13000810, 20026, false, false, false);
    UnknownTalk2003120(12);
    FadeToBlack(0, 0, false, 0);
    WaitFor(ElapsedSeconds(9.5));
    FadeToBlack(1, 1, false, 0);
    WaitFor(ElapsedSeconds(5));
    SetEventFlagID(1189057, ON);
    WaitFixedTimeFrames(1);
    SetEventFlagID(1189058, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

