// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 1029402200);
    $InitializeCommonEvent(0, 90005201, 1029400210, 30000, 20000, 2, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400211, 30000, 20000, 2, 2, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400212, 30000, 20000, 2, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400213, 30000, 20000, 2, 2, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400214, 30000, 20000, 2, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400215, 30000, 20000, 2, 2, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400216, 30000, 20000, 2, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400218, 30006, 20006, 1, 4, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400219, 30006, 20006, 1, 4, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 1029400220, 30006, 20006, 1, 4, 0, 0, 0, 0);
    $InitializeEvent(0, 1029404700);
    $InitializeEvent(0, 1029404701);
    $InitializeEvent(0, 1029404702);
    $InitializeEvent(0, 1029404703);
    $InitializeEvent(0, 1029404704);
    $InitializeEvent(0, 1029404705);
    $InitializeCommonEvent(0, 90085020, 1001, 8536, 8536, 8537, 1029400720, 99854, 8536, Hero.Undertaker);
    $InitializeCommonEvent(0, 90085023, 1001, 8536, 8537, 1029400720, 6870, 8536, Hero.Undertaker);
    $InitializeCommonEvent(0, 90085950, 1001, 1029401720, 1029400720, 8536);
    $InitializeCommonEvent(0, 90085951, 1001, 8537, 1029404730, 1029404731, 8535);
    $InitializeCommonEvent(0, 90085952, 1001, 1029401800);
});

$Event(1029402200, Default, function() {
    ForceCharacterDeath(1029405200, false);
});

$Event(1029404700, Default, function() {
    DisableNetworkSync();
    DisableCharacter(1029400700);
    DisableCharacter(1029405700);
    WaitFor(IsRequestGameMode(3));
    DisableAsset(1029406710);
    DisableCharacter(1029405710);
    DisableCharacter(53625800);
    DisableCharacter(53545800);
    DisableCharacter(53505800);
    DisableAsset(1029401720);
    EnableAsset(1029406700);
    DisableAsset(1029401705);
    CreateAssetfollowingSFX(1029406700, 101, 806710);
    EnableCharacter(1029400700);
    DeleteAssetfollowingSFX(1029401705, true);
    EnableCharacter(1029405700);
    EnableCharacter(1029400715);
    UnknownHero200490();
    SetSpEffect(10000, 9572);
    EnableAssetInvunerability(1029401710);
    IssueShortWarpRequest(10000, TargetEntityType.Area, 1029402730, -1);
    UnknownTalk2003120(3);
    FadeToBlack(1, 0, true, 0);
    IssueShortWarpRequest(1029400710, TargetEntityType.Area, 1029402712, -1);
    IssueShortWarpRequest(1029400711, TargetEntityType.Area, 1029402711, -1);
    IssueShortWarpRequest(1029400712, TargetEntityType.Area, 1029402710, -1);
    IssueShortWarpRequest(1029400713, TargetEntityType.Area, 1029402713, -1);
    PlaySE(10000, SoundType.EnvironmentalSound, 105090065);
    DisableCharacter(1029400720);
    AddEstusCharge();
    RefillEstus();
    SetCameraAngle(8.26, 150);
    WaitFixedTimeSeconds(2);
    FadeToBlack(0, 1, false, 1);
    SetSpEffect(1029400715, 9940);
    DisableCharacterCollision(1029400715);
    EnableCharacterInvincibility(1029400715);
    WaitFixedTimeSeconds(1);
});

$Event(1029404701, Default, function() {
    DisableNetworkSync();
    WaitFor(IsRequestGameMode(3));
    WaitFixedTimeFrames(1);
    WaitFor(IsRequestGameMode(3) && ActionButtonInArea(7121, 1029400700));
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    FadeToBlack(0, 0, true, 0);
    ForceAnimationPlayback(1029400715, 30011, true, false, false);
    WaitFixedTimeSeconds(0.5);
    ClearSpEffect(1029400715, 9940);
    WaitFixedTimeSeconds(0.3);
    SetEventFlagID(1029404724, ON);
    WaitFor(EventFlag(1029404725));
    SetSpEffect(1029400715, 9940);
    SetSpEffect(10000, 9828);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10000, 90200, false, true, false);
    WaitFixedTimeSeconds(0.5);
    ForceAnimationPlayback(1029400715, 0, true, false, false);
    WaitFixedTimeSeconds(6);
    FadeToBlack(1, 2, true, 0);
    SetEventFlagID(1029899, ON);
    WaitFixedTimeSeconds(2);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(1029404702, Default, function() {
    DisableNetworkSync();
    WaitFor(IsRequestGameMode(3));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(72100));
    WaitFixedTimeFrames(1);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(1029404703, Default, function() {
    DisableNetworkSync();
    WaitFor(IsRequestGameMode(3));
    WaitFixedTimeFrames(1);
    WaitFor(CharacterDead(10000));
    WaitFor(ElapsedSeconds(3));
    WaitFixedTimeFrames(1);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(1029404704, Default, function() {
    DisableNetworkSync();
    WaitFor(IsRequestGameMode(3));
    WaitFor(ElapsedSeconds(1));
    DisableCharacter(1029405710);
    WaitFor(InArea(10000, 1029402721));
    EnableCharacter(1029405710);
    SetNetworkUpdateRate(1029400730, true, CharacterUpdateFrequency.AlwaysUpdate);
    WaitFor(ElapsedFrames(1));
    PlaySE(1029400730, SoundType.EnvironmentalSound, 105090080);
    SetSpEffect(1029400716, 9600);
    WaitFor(HPRatio(1029400730) < 1 || EntityInRadiusOfEntity(10000, 1029400730, 20, 1));
    DisplayBossHealthBar(Enabled, 1029405720, 0, 912000110);
    SetBossBGM(356030, BossBGMState.Start);
    WaitFor(CharacterRatioDead(1029405720));
    WaitFor(ElapsedSeconds(1));
    DisplayBossHealthBar(Disabled, 1029405720, 0, 912000110);
    DisplayTextEffectId(1100);
    RecordUserDispLog(120010, 10000, LogObjectType.None, -1);
    SetBossBGM(356030, BossBGMState.Stop2);
    ForceAnimationPlayback(1029401800, 2, false, false, false);
});

$Event(1029404705, Default, function() {
    DisableNetworkSync();
    WaitFor(IsRequestGameMode(3));
    ShowFloatingMessage(560, 1029402720);
    WaitFor(HPRatio(1029400730) == 0);
    HideFloatingMessage(560, 1029402720);
});

