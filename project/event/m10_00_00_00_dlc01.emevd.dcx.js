// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 1000000010);
    $InitializeEvent(0, 1000000011);
    $InitializeEvent(0, 1000000020);
    $InitializeEvent(0, 1000002310);
    $InitializeEvent(0, 1000002311);
    $InitializeEvent(0, 1000002312);
    $InitializeEvent(0, 1000000030);
    $InitializeEvent(0, 1000000040);
    $InitializeEvent(0, 1000000041);
    $InitializeEvent(0, 1000002317);
    $InitializeEvent(0, 1000002318);
    $InitializeEvent(0, 1000002313);
    $InitializeEvent(0, 1000002314);
    $InitializeEvent(0, 1000002315);
    $InitializeEvent(0, 1000002316);
    $InitializeEvent(0, 1000000042);
    $InitializeEvent(0, 100009500);
    $InitializeEvent(0, 100009507);
    $InitializeEvent(0, 100009530);
    $InitializeEvent(0, 100009531);
    $InitializeEvent(0, 100009532);
    $InitializeEvent(0, 100009533);
    $InitializeEvent(0, 100009534);
    $InitializeEvent(0, 100009535);
    $InitializeEvent(0, 100009536);
    $InitializeEvent(0, 100009537);
    $InitializeEvent(0, 100009538);
    $InitializeEvent(0, 100009510, 10000302, 10003022, 0.1, 10003040);
    $InitializeEvent(1, 100009510, 10000303, 10003023, 0.1, 10003041);
    $InitializeEvent(2, 100009510, 10000304, 10003023, 0.1, 10003042);
    $InitializeEvent(3, 100009510, 10000305, 10003024, 0.1, 10003043);
    $InitializeEvent(4, 100009510, 10000306, 10003025, 0.1, 10003044);
    $InitializeEvent(0, 100009520, 10000307, 10003025, 7);
    $InitializeEvent(0, 100009501);
    $InitializeEvent(0, 100009502);
    $InitializeEvent(0, 100009503);
    $InitializeEvent(0, 100009504);
    $InitializeEvent(0, 100009539);
    $InitializeEvent(0, 100009540);
    $InitializeEvent(0, 100009541);
    $InitializeEvent(0, 100009600);
    $InitializeEvent(0, 100009620, 10000802, 10003550, 30020, 0);
    $InitializeEvent(2, 100009620, 10000823, 10003583, 30020, 0);
    $InitializeEvent(0, 100009630, 10000808, 10003553, 30020);
    $InitializeEvent(1, 100009620, 10000812, 10003555, 30020, 0);
    $InitializeEvent(0, 100009631);
    $InitializeEvent(4, 100009620, 10000817, 10003573, 90101, 1);
    $InitializeEvent(0, 100009601);
    $InitializeEvent(0, 100009602);
    $InitializeEvent(0, 100009603);
    $InitializeEvent(0, 100009604);
    $InitializeEvent(0, 100009605);
    $InitializeEvent(0, 100009606);
    $InitializeEvent(0, 100009608);
    $InitializeEvent(0, 100009640);
    $InitializeEvent(0, 100009607);
    $InitializeEvent(0, 100009641);
    $InitializeEvent(0, 100009642);
    $InitializeEvent(0, 100009643);
    $InitializeEvent(0, 10009410);
    $InitializeEvent(0, 10009411);
    $InitializeEvent(0, 10009412);
    $InitializeEvent(0, 10009413);
    $InitializeEvent(0, 100003150, 1029710, ScenarioSection.Undertaker, 10001056, 10001058);
    $InitializeEvent(1, 100003150, 1029711, ScenarioSection.Undertaker, 10001057, 10001059);
    $InitializeEvent(2, 100003150, 1029870, ScenarioSection.Scholar, 10001067, 10001064);
    $InitializeEvent(3, 100003150, 1029871, ScenarioSection.Scholar, 10001068, 10001065);
    $InitializeEvent(4, 100003150, 1029872, ScenarioSection.Scholar, 10001069, 10001066);
    $InitializeEvent(0, 100004220, ScenarioSection.Undertaker, 1001);
    $InitializeEvent(1, 100004220, ScenarioSection.Scholar, 901);
    $InitializeEvent(2, 100004220, ScenarioSection.Scholar, 902);
    $InitializeEvent(0, 100003435, 1029940);
    $InitializeEvent(1, 100003435, 1019240);
});

$Event(1000000010, Restart, function() {
    EndIf(EventFlag(10001961));
    DisableAsset(10005920);
    EnableAsset(10005930);
    ResetCharacterPosition(10000580);
    DisableCharacterGravity(10000580);
    WaitFor(CurrentScenarioSection(ScenarioSection.None) && EventFlag(6951) && EventFlag(110));
    SetEventFlagID(10002070, ON);
    EnableAsset(10005920);
    DisableAsset(10005930);
    IssueShortWarpRequest(10000580, TargetEntityType.Area, 10002230, -1);
    DisableCharacterGravity(10000580);
    WaitFixedTimeFrames(1);
    DisableAsset(10002051);
    DisableAsset(10002052);
    EnableAsset(10002050);
    EnableAsset(10002053);
    ForceAnimationPlayback(10000580, 30029, false, false, false);
    WaitFixedTimeFrames(1);
    EnableAsset(10005910);
    DisableAsset(10005931);
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10001969) || EventFlag(1109101));
    WaitFixedTimeFrames(1);
    WaitFor(ActionButtonInArea(7100, 10001360) || ActionButtonInArea(7100, 10001361));
    SetEventFlagID(10003516, ON);
    UnknownTalk2003120(3);
    FadeToBlack(0, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    WaitFixedTimeFrames(1);
    WaitFor(!EventFlag(10003516));
    if (EntityInRadiusOfEntity(10000, 10003073, 10, 1)) {
        IssueShortWarpRequest(10000, TargetEntityType.Area, 10003073, -1);
    }
    if (EntityInRadiusOfEntity(10000, 10003074, 10, 1)) {
        IssueShortWarpRequest(10000, TargetEntityType.Area, 10003074, -1);
    }
    ForceAnimationPlayback(10000, 60010, true, false, false);
    PlaySE(10000, SoundType.EnvironmentalSound, 105090030);
    SetEventFlagID(10002071, ON);
    SetEventFlagID(1109100, ON);
    SetEventFlagID(1109101, ON);
    WaitFixedTimeSeconds(0.5);
    FadeToBlack(1, 1.8, true, 0);
    WaitFixedTimeSeconds(9);
    WarpPlayerToScenarioBattle(16, 11, 0, 0, 0, 0);
    EndEvent();
});

$Event(1000000011, Restart, function() {
    WaitFor(EventFlag(10001961));
    EnableAsset(10005920);
    DisableAsset(10005930);
    IssueShortWarpRequest(10000580, TargetEntityType.Area, 10002230, -1);
    DisableCharacterGravity(10000580);
});

$Event(1000000020, Restart, function() {
    WaitFor(
        CurrentScenarioSection(ScenarioSection.None)
            && EventFlag(6951)
            && EventFlag(110)
            && !EventFlag(10001961)
            && EventFlag(1109101));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(1109101));
    WaitFixedTimeFrames(1);
    WaitFor(
        EntityInRadiusOfEntity(10001360, 10000, 3, 1)
            || EntityInRadiusOfEntity(10001361, 10000, 3, 1));
    if (!EventFlag(10002071)) {
        PlaySE(10002231, SoundType.EnvironmentalSound, 105090040);
    }
    WaitFor(RandomElapsedSeconds(8, 10));
    RestartEvent();
});

$Event(1000000030, Restart, function() {
    WaitFor(EventFlag(10001970) && !EventFlag(10001801) && EventFlag(162));
    PlayCutsceneToAll(10000200, CutscenePlayMode.Skippable);
    WaitFor(ElapsedFrames(1));
    WaitFor(CutsceneEnded());
    SetEventFlagID(10001801, ON);
    SuppressSE(SoundType.BGM, 0, false);
    if (EventFlag(6070)) {
        RecordUserDispLog(12100, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6071)) {
        RecordUserDispLog(12101, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6072)) {
        RecordUserDispLog(12102, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6073)) {
        RecordUserDispLog(12103, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6074)) {
        RecordUserDispLog(121000, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(10002161)) {
        SetEventFlagID(10002161, OFF);
        RecordUserDispLog(12110, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(10002162)) {
        SetEventFlagID(10002162, OFF);
        RecordUserDispLog(12111, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(10002163)) {
        SetEventFlagID(10002163, OFF);
        RecordUserDispLog(12112, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(10002164)) {
        SetEventFlagID(10002164, OFF);
        RecordUserDispLog(12113, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(10002169)) {
        SetEventFlagID(10002169, OFF);
        RecordUserDispLog(121010, 10000, LogObjectType.None, -1);
    }
});

$Event(1000000040, Restart, function() {
    WaitFor(EventFlag(10001961));
    WaitFor(!EventFlag(10001803));
    PlayCutsceneToAll(16110000, CutscenePlayMode.Skippable);
    WaitFor(ElapsedFrames(1));
    WaitFor(CutsceneEnded());
    SetEventFlagID(10001803, ON);
    SuppressSE(SoundType.BGM, 0, false);
});

$Event(1000000041, Restart, function() {
    WaitFor(ElapsedSeconds(1));
    WaitFor(EventFlag(10001802));
    SetEventFlagID(10001802, OFF);
});

$Event(1000000042, Restart, function() {
    WaitFor(CharacterHasSpEffect(10001821, 9752) && CurrentScenarioSection(ScenarioSection.None));
    ClearSpEffect(10001821, 9752);
});

$Event(100009500, Restart, function() {
    WaitFixedTimeFrames(3);
    EnableAsset(10002003);
    EnableAsset(10002004);
    DisableAsset(10002011);
    DisableAsset(10002012);
    RequestAssetRestoration(10002003);
    RequestAssetRestoration(10002004);
    DisableAsset(10002013);
    DisableAsset(10002014);
    DisableAsset(10002016);
    DisableAsset(10002017);
    DisableAsset(10002018);
    DisableAsset(10002024);
    HideFloatingMessage(550, 10002045);
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker));
    WaitFixedTimeFrames(1);
    EndIf(EventFlag(1029609));
    EndIf(EventFlag(1029608));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && EventFlag(4300));
    SetEventFlagID(10002265, ON);
    DisableAsset(10002003);
    DisableAsset(10002004);
    EnableAsset(10002011);
    EnableAsset(10002012);
    RequestAssetRestoration(10002011);
    RequestAssetRestoration(10002012);
    EnableAssetInvunerability(10002011);
    EnableAssetInvunerability(10002012);
    DisableCharacter(10000620);
    ShowFloatingMessage(550, 10002045);
    WaitFor(EventFlag(10003600));
    SetSpEffect(10000, 103420);
    SetCharacterTalkRange(10000301, 80);
    SetCharacterTeamType(10000301, TeamType.Enemy);
    DisableCharacterInvincibility(10000301);
    SetNetworkUpdateRate(10000301, true, CharacterUpdateFrequency.AlwaysUpdate);
    ForceAnimationPlayback(10000301, 20024, true, false, false);
    EnableAsset(10002013);
    EnableAsset(10002014);
    EnableAsset(10002016);
    EnableAsset(10002017);
    EnableAsset(10002018);
    EnableAsset(10002024);
    DisableCharacter(10000500);
    DisableCharacter(10000520);
    DisableCharacter(10000540);
    DisableCharacter(10000560);
    DisableCharacter(10000640);
    DisableCharacter(10000660);
    DisableCharacter(10000600);
    SetEventFlagID(10001964, OFF);
    SetEventFlagID(10003122, ON);
    WaitFixedTimeSeconds(1.8);
    DisableAssetInvunerability(10002011);
    DisableAssetInvunerability(10002012);
    WaitFixedTimeSeconds(1);
    SetBossBGM(920910, BossBGMState.Start);
    SetSpEffect(10000, 604000);
    SetSpEffect(10000, 604001);
    SetSpEffect(10000, 604002);
    SetSpEffect(10000, 604003);
    SetSpEffect(10000, 604004);
    SetSpEffect(10000, 604005);
    SetSpEffect(10000, 604006);
    SetSpEffect(10000, 604007);
    SetSpEffect(10000, 604008);
    SetSpEffect(10000, 604009);
    SetSpEffect(10000, 604010);
    SetSpEffect(10000, 604011);
    SetSpEffect(10000, 604012);
    SetSpEffect(10000, 604013);
    SetSpEffect(10000, 604014);
    SetSpEffect(10000, 604015);
    SetSpEffect(10000, 604016);
    SetEventFlagID(10003209, ON);
    SetSpEffect(10000, 9571);
    SetNetworkUpdateRate(10001821, true, CharacterUpdateFrequency.AlwaysUpdate);
    EnableCharacterDefaultBackread(10001821);
    SetAlwaysDrawCharacter(10001821, ON);
    SetSpEffect(10001821, 9752);
    ClearSpEffect(10000, 9752);
    ClearSpEffect(10000, 9621);
    SetSpEffect(10000, 9777);
    ClearSpEffect(10000, 103400);
    ClearSpEffect(10000, 103530);
    ClearSpEffect(10000, 103540);
    ClearSpEffect(10000, 103550);
    ClearSpEffect(10000, 103560);
    ClearSpEffect(10000, 103570);
    SetEventFlagID(10002410, ON);
    DisableAsset(10002000);
    DisableAsset(10002001);
    DisableAsset(10002005);
    DisableAsset(10002006);
    DisableAsset(10002007);
    DisableAsset(10002008);
    DisableAsset(10002025);
    CreateAssetfollowingSFX(10005950, 101, 806710);
    hp = CharacterHPValue(10000301) <= 0;
    hpChr = CharacterHPValue(10000) <= 0 || CharacterDead(10000);
    WaitFor(hp || hpChr);
    if (!hpChr.Passed) {
        SetEventFlagID(10002215, OFF);
        SetEventFlagID(10002265, OFF);
        WaitFixedTimeSeconds(3);
        hp2 = CharacterHPValue(10000302) <= 0
            && CharacterHPValue(10000303) <= 0
            && CharacterHPValue(10000304) <= 0
            && CharacterHPValue(10000305) <= 0
            && CharacterHPValue(10000306) <= 0
            && CharacterHPValue(10000307) <= 0;
        hpChr2 = CharacterHPValue(10000) <= 0 || CharacterDead(10000);
        WaitFor(hp2 || hpChr2);
        GotoIf(L10, hpChr2.Passed);
        SetEventFlagID(10003613, ON);
        WaitFixedTimeSeconds(5);
        WaitFor(InArea(10000, 10003026));
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        FadeToBlack(0, 0, true, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000, 90206, true, false, false);
        SetSpEffect(10000, 9968);
        WaitFixedTimeSeconds(2);
        SetEventFlagID(10003209, OFF);
        WaitFor(CharacterHasSpEffect(10000, 9937));
        SetEventFlagID(10003600, OFF);
        SetEventFlagID(10003601, OFF);
        SetEventFlagID(10003606, OFF);
        SetEventFlagID(10003602, ON);
        SetEventFlagID(1029646, ON);
        WaitFor(CharacterHasSpEffect(10000, 9936));
        WaitFixedTimeFrames(1);
        ClearSpEffect(10000, 103420);
        SetSpEffect(10000, 9573);
        PlaySE(10000, SoundType.EnvironmentalSound, 105090050);
        Unknown200494();
        SetEventFlagID(10003626, ON);
        WaitFor(ElapsedFrames(1));
        DisableCharacter(10000301);
        DisableAsset(10002013);
        DisableAsset(10002014);
        DisableAsset(10002016);
        DisableAsset(10002017);
        DisableAsset(10002018);
        DisableAsset(10002024);
        DeleteAssetfollowingSFX(10005950, true);
        HideFloatingMessage(550, 10002045);
        EnableCharacter(10000500);
        EnableCharacter(10000520);
        EnableCharacter(10000540);
        EnableCharacter(10000560);
        EnableCharacter(10000620);
        EnableCharacter(10000640);
        EnableCharacter(10000660);
        EnableCharacter(10000600);
        WaitFixedTimeSeconds(0.3);
        SetEventFlagID(10002410, OFF);
        ClearSpEffect(10000, 9968);
    } else {
L10:
        NoOp();
    }
L11:
    WaitFor(EventFlag(1029609));
    FadeToBlack(0, 0, false, -1);
    UnknownTalk2003120(0);
    EndEvent();
});

$Event(100009501, Restart, function() {
    WaitFixedTimeFrames(3);
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    GotoIf(L0, EventFlag(4301));
    GotoIf(L0, EventFlag(4302));
    GotoIf(L1, AnyBatchEventFlags(4303, 4306));
    RequestAssetRestoration(10002019);
    EnableAssetInvunerability(10002019);
    DisableAsset(10002036);
    SetEventFlagID(10002310, ON);
    WaitFixedTimeFrames(1);
    WaitFor(EntityInRadiusOfEntity(10000, 10000300, 35, 1));
    ForceAnimationPlayback(10000300, 30016, true, false, false);
    WaitFixedTimeFrames(1);
    SetSpEffect(10000300, 9940);
    EnableCharacterInvincibility(10000300);
    DisableCharacter(10000300);
    WaitFor(EventFlag(10003626));
    ClearSpEffect(10000300, 9940);
    EnableCharacter(10000300);
    WaitFixedTimeFrames(1);
    GotoIf(L0, EventFlag(1029609) && !EventFlag(1029611));
    GotoIf(L1, EventFlag(1029609) && EventFlag(1029611));
    WaitFor(EventFlag(10003603));
    WaitFixedTimeFrames(1);
    WaitFor(CharacterHasSpEffect(10000, 9936));
    WaitFixedTimeSeconds(3.5);
    ForceAnimationPlayback(10000300, 20000, true, false, false);
    WaitFixedTimeSeconds(3);
    SetEventFlagID(1029609, ON);
    SetEventFlagID(10002310, OFF);
    SetEventFlagID(10003122, OFF);
    EndEvent();
L0:
    SetEventFlagID(10002310, OFF);
    SetEventFlagID(1029609, ON);
    WaitFor(EntityInRadiusOfEntity(10000, 10000300, 35, 1));
    EnableCharacter(10000300);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10000300, 30016, true, false, false);
    IssueShortWarpRequest(10000300, TargetEntityType.Area, 10003027, -1);
    EndEvent();
L1:
    DisableCharacter(10000300);
    SetEventFlagID(10002310, ON);
    RequestAssetRestoration(10002019);
    EnableAssetInvunerability(10002019);
    EndEvent();
});

$Event(100009502, Restart, function() {
    WaitFixedTimeFrames(3);
    EndIf(EventFlag(1029611));
    WaitFor(EventFlag(10003604));
    DisableCharacterAI(10000300);
    WaitFixedTimeSeconds(0.2);
    ForceAnimationPlayback(10000300, 20007, true, false, false);
    WaitFixedTimeFrames(1);
    FadeToBlack(0, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    WaitFixedTimeSeconds(0.5);
    PlaySE(10003027, SoundType.EnvironmentalSound, 105090190);
    WaitFixedTimeSeconds(1.5);
    FadeToBlack(1, 1, true, 0);
    WaitFixedTimeSeconds(1);
    DisableCharacter(10000300);
    SetEventFlagID(10002310, ON);
    if (CharacterHasSpEffect(10001821, 9752)) {
        ClearSpEffect(10001821, 9752);
        WaitFor(ElapsedFrames(1));
        SetSpEffect(10000, 9752);
        SetNetworkUpdateRate(10001821, false, CharacterUpdateFrequency.AlwaysUpdate);
        DisableCharacterDefaultBackread(10001821);
        SetAlwaysDrawCharacter(10001821, OFF);
    }
    WaitFixedTimeSeconds(3);
    FadeToBlack(0, 1, true, -1);
    WaitFixedTimeSeconds(1);
    SetEventFlagID(10003621, ON);
    SetEventFlagID(1029611, ON);
    WaitFor(EventFlag(10003622));
    FadeToBlack(0, 0, false, -1);
    UnknownTalk2003120(0);
    SetEventFlagID(10002310, ON);
    SetBossBGM(10000000, BossBGMState.Start);
    SetEventFlagID(1029646, OFF);
});

$Event(100009503, Restart, function() {
    WaitFixedTimeFrames(1);
    if (!(EventFlag(10003627) && CurrentScenarioSection(ScenarioSection.Undertaker))) {
        DeleteAssetfollowingSFX(10000325, true);
        DeleteAssetfollowingSFX(10002032, true);
        DeleteAssetfollowingSFX(10002038, true);
        WaitFixedTimeFrames(1);
        WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker));
        DisableCharacter(10000311);
        SetSpEffect(10000311, 9940);
        DeleteAssetfollowingSFX(10000325, true);
        DeleteAssetfollowingSFX(10002032, true);
        DisableCharacterCollision(10000331);
        SetCharacterMaphit(10000331, false);
        DisableCharacterGravity(10000331);
        if (!EventFlag(1029627)) {
            SetEventFlagID(10002337, ON);
        }
        WaitFixedTimeFrames(1);
        EndIf(EventFlag(1029650));
        GotoIf(L14, EventFlag(1029640));
        if (EventFlag(4303) && !EventFlag(1029611)) {
            SetEventFlagID(1029611, ON);
        }
        WaitFor(EventFlag(1029611));
        WaitFixedTimeFrames(1);
        GotoIf(L10, EventFlag(1029643));
        CreateAssetfollowingSFX(10002032, 90, 807450);
        WaitFor(ActionButtonInArea(7101, 10002010));
        FadeToBlack(0, 0, true, -1);
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        WaitFixedTimeFrames(1);
        FadeToBlack(1, 1, true, -1);
        WaitFixedTimeSeconds(1);
        UnknownHero200490();
        IssueShortWarpRequest(10000, TargetEntityType.Area, 10003054, -1);
        WaitFixedTimeSeconds(1);
        ForceAnimationPlayback(10000, 90201, true, false, false);
        SetCameraAngle(15.01, -151.05);
        FadeToBlack(0, 1, true, -1);
        WaitFixedTimeSeconds(1);
        WarpAssetToCharacter(10002038, 10000, 705);
        WaitFor(CharacterHasSpEffect(10000, 9933));
        DeleteAssetfollowingSFX(10002032, true);
        ForceAnimationPlayback(10000331, 20010, false, false, false);
        ForceAnimationPlayback(10002033, 10, false, false, false);
        CreateAssetfollowingSFX(10002038, 90, 807451);
        SetEventFlagID(10003517, ON);
L3:
        WaitFor(CharacterHasSpEffect(10000, 9600));
        WaitFixedTimeSeconds(3);
        FadeToBlack(0, 0, false, 0);
        UnknownTalk2003120(0);
        SetEventFlagID(1029643, ON);
        DeleteAssetfollowingSFX(10002032, true);
        WaitFixedTimeFrames(1);
        Goto(L13);
L10:
        GotoIf(L11, !EventFlag(10003517));
        Goto(L13);
L11:
        EnableCharacterDefaultBackread(10000317);
        WaitFor(EntityInRadiusOfEntity(10000, 10003030, 40, 1));
        WaitFixedTimeFrames(3);
        EnableCharacter(10000317);
        WaitFixedTimeFrames(5);
        ForceAnimationPlayback(10000331, 20010, false, false, false);
        ForceAnimationPlayback(10002033, 10, false, false, false);
        WarpAssetToCharacter(10002038, 10000317, 705);
        CreateAssetfollowingSFX(10002038, 90, 807451);
        WaitFixedTimeFrames(3);
        DisableCharacter(10000317);
        WaitFixedTimeFrames(3);
        SetCharacterBackreadState(10000317, true);
        Goto(L13);
    }
L12:
    SetEventFlagID(10003627, OFF);
    WaitFixedTimeFrames(1);
    Goto(L13);
L13:
    WaitFor(EventFlag(10003618) || EventFlag(10003619));
    if (!EventFlag(10003619)) {
        FadeToBlack(0, 0, true, 0);
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        WaitFixedTimeFrames(1);
        WaitFor(EventFlag(10003617) || EventFlag(10003619));
        if (!EventFlag(10003619)) {
            ForceAnimationPlayback(10000, 90202, true, false, false);
            IssueShortWarpRequest(10000, TargetEntityType.Area, 10003030, -1);
            WaitFixedTimeSeconds(5);
            WaitFixedTimeSeconds(6);
            EnableCharacter(10000311);
            ClearSpEffect(10000311, 9940);
            SetNetworkUpdateRate(10000311, true, CharacterUpdateFrequency.AlwaysUpdate);
            WaitFixedTimeFrames(1);
            RotateCharacter(10000311, 10003031, -1, true);
            RotateCharacter(10000311, 10003031, 90006, false);
            PlaySE(10000311, SoundType.EnvironmentalSound, 105090020);
            WaitFixedTimeSeconds(1);
            ForceAnimationPlayback(10000, 90203, true, false, false);
            WaitFor(InArea(10000311, 10003031));
            SetSpEffect(10000311, 9940);
            WaitFixedTimeSeconds(0.5);
            ForceAnimationPlayback(10000311, 0, true, false, false);
            ClearSpEffect(10000311, 9940);
            WaitFixedTimeFrames(1);
            WarpCharacterAndCopyFloor(10000311, TargetEntityType.Area, 10003029, -1, 0);
            WaitFixedTimeFrames(1);
            ForceAnimationPlayback(10000311, 90100, true, false, false);
            WaitFixedTimeSeconds(0.5);
            CreateAssetfollowingSFX(10000325, 90, 810045);
            EnableAsset(10002036);
            WaitFixedTimeSeconds(5);
            SetEventFlagID(1029640, ON);
            SetEventFlagID(10003620, ON);
            WaitFor(EventFlag(1029644));
            FadeToBlack(0, 0, false, 0);
            UnknownTalk2003120(0);
            Goto(L16);
L14:
            EnableCharacter(10000311);
            ClearSpEffect(10000311, 9940);
            WaitFixedTimeFrames(1);
            ForceAnimationPlayback(10000311, 0, true, false, false);
            WaitFixedTimeFrames(1);
            WarpCharacterAndCopyFloor(10000311, TargetEntityType.Area, 10003029, -1, 0);
            WaitFixedTimeFrames(1);
            ForceAnimationPlayback(10000311, 90100, true, false, false);
            CreateAssetfollowingSFX(10000325, 90, 810045);
            EnableAsset(10002036);
            WaitFixedTimeFrames(1);
            WaitFor(EntityInRadiusOfEntity(10000, 10003030, 40, 1));
            WaitFixedTimeFrames(1);
            ForceAnimationPlayback(10000331, 20010, false, false, false);
            ForceAnimationPlayback(10002033, 10, false, false, false);
            WarpAssetToCharacter(10002038, 10000317, 705);
            CreateAssetfollowingSFX(10002038, 90, 807451);
            WaitFixedTimeFrames(3);
            DisableCharacter(10000317);
            Goto(L16);
        }
    }
L15:
    FadeToBlack(0, 0, false, 0);
    UnknownTalk2003120(0);
    WaitFixedTimeFrames(1);
    SetEventFlagID(10003618, OFF);
    SetEventFlagID(10003619, OFF);
    SetEventFlagID(10003627, ON);
    WaitFixedTimeFrames(1);
    RestartEvent();
L16:
    WaitFor(EventFlag(1029628));
    DeleteAssetfollowingSFX(10000325, true);
    DeleteAssetfollowingSFX(10002032, true);
    EndEvent();
});

$Event(100009504, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029641));
    WaitFor(EventFlag(10003616));
    FadeToBlack(0, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    ForceAnimationPlayback(10000, 90330, false, false, false);
    IssueShortWarpRequest(10000, TargetEntityType.Area, 10003034, -1);
    WaitFixedTimeSeconds(1);
    WaitFor(EventFlag(1029641));
    ForceAnimationPlayback(10000, 90332, true, false, false);
    FadeToBlack(0, 0, false, 0);
    UnknownTalk2003120(0);
    SetEventFlagID(10003607, ON);
    SetCharacterTalkRange(10000310, 17);
});

$Event(100009507, Restart, function() {
    EndIf(EventFlag(1029608));
    WaitFor(EventFlag(10003600));
    PlayBGM(0, 0, 0, 0, 0);
    SetBossBGM(101000, BossBGMState.Start);
    WaitFor(EventFlag(1029608));
    SetBossBGM(10000001, BossBGMState.Start);
});

$Event(100009510, Restart, function(chrEntityId, areaEntityId, timeSeconds, entityId) {
    WaitFixedTimeFrames(4);
    DisableCharacter(chrEntityId);
    EnableCharacterFadeOnEnable(chrEntityId);
    WaitFixedTimeFrames(1);
    EndIf(EventFlag(1029608));
    WaitFor(
        EventFlag(10003601)
            || (EventFlag(10003606) && EntityInRadiusOfEntity(10000, entityId, 4, 1)));
    WaitFixedTimeFrames(1);
    EnableCharacter(chrEntityId);
    SetCharacterBackreadState(chrEntityId, false);
    WaitFixedTimeFrames(1);
    WaitFor(CharacterBackreadStatus(chrEntityId));
    WaitFixedTimeFrames(1);
    dmg = HasDamageType(chrEntityId, 10000, DamageType.Any);
    WaitFor(EntityInRadiusOfEntity(10000, chrEntityId, 5, 1) || InArea(10000, areaEntityId) || dmg);
    if (!dmg.Passed) {
        WaitFixedTimeSeconds(timeSeconds);
    }
    SetCharacterTeamType(chrEntityId, TeamType.Enemy);
    DisableCharacterInvincibility(chrEntityId);
    DisableCharacterImmortality(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 0, false, false, false);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    WaitFixedTimeFrames(1);
    RequestCharacterAIReplan(chrEntityId);
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    WaitFixedTimeSeconds(10);
    DisableCharacter(chrEntityId);
    EndEvent();
});

$Event(100009520, Restart, function(chrEntityId, areaEntityId, targetTimeSeconds) {
    WaitFixedTimeFrames(4);
    SetSpEffect(chrEntityId, 9940);
    DisableCharacter(chrEntityId);
    WaitFixedTimeFrames(1);
    EndIf(EventFlag(1029608));
    WaitFor(EventFlag(10003601) && InArea(10000, areaEntityId));
    WaitFixedTimeFrames(1);
    WaitFor(CharacterHPValue(10000306) <= 0 || ElapsedSeconds(targetTimeSeconds));
    ClearSpEffect(chrEntityId, 9940);
    EnableCharacter(chrEntityId);
    WaitFixedTimeFrames(1);
    SetCharacterTeamType(chrEntityId, TeamType.Enemy);
    DisableCharacterInvincibility(chrEntityId);
    DisableCharacterImmortality(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 0, false, false, false);
    SetNetworkUpdateRate(chrEntityId, true, CharacterUpdateFrequency.AlwaysUpdate);
    WaitFixedTimeFrames(1);
    RequestCharacterAIReplan(chrEntityId);
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    WaitFixedTimeSeconds(10);
    DisableCharacter(chrEntityId);
    EndEvent();
});

$Event(100009530, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000700, 9940);
    DisableCharacter(10000700);
    SetEventFlagID(10002301, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000700, 9940);
    EnableCharacter(10000700);
    SetEventFlagID(10002301, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000700, 40, 1));
L0:
    ForceAnimationPlayback(10000700, 90102, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10000700, TargetEntityType.Area, 10003912, -1);
    EndEvent();
});

$Event(100009531, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000760, 9940);
    DisableCharacter(10000760);
    SetEventFlagID(10002302, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000760, 9940);
    EnableCharacter(10000760);
    SetEventFlagID(10002302, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000760, 40, 1));
L1:
    if (AnyBatchEventFlags(10003455, 10003457)) {
        ForceAnimationPlayback(10000760, 90107, true, false, false);
        EndEvent();
    }
    if (EventFlag(10003458)) {
        ForceAnimationPlayback(10000760, 90105, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000760, TargetEntityType.Area, 10003920, -1);
        EndEvent();
    }
    if (EventFlag(10003459)) {
        ForceAnimationPlayback(10000760, 90106, true, false, false);
        EndEvent();
    }
});

$Event(100009532, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000750, 9940);
    DisableCharacter(10000750);
    SetEventFlagID(10002303, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000750, 9940);
    EnableCharacter(10000750);
    SetEventFlagID(10002303, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000750, 40, 1));
L2:
    ForceAnimationPlayback(10000750, 90108, true, false, false);
    EndEvent();
});

$Event(100009533, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000720, 9940);
    DisableCharacter(10000720);
    SetEventFlagID(10002305, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000720, 9940);
    EnableCharacter(10000720);
    SetEventFlagID(10002305, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000720, 40, 1));
L3:
    if (AnyBatchEventFlags(10003470, 10003472)) {
        ForceAnimationPlayback(10000720, 90103, true, false, false);
        EndEvent();
    }
    if (EventFlag(10003473)) {
        ForceAnimationPlayback(10000720, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000720, TargetEntityType.Area, 10003950, -1);
        EndEvent();
    }
    if (EventFlag(10003474)) {
        ForceAnimationPlayback(10000720, 90108, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000720, TargetEntityType.Area, 10003951, -1);
        EndEvent();
    }
});

$Event(100009534, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000770, 9940);
    DisableCharacter(10000770);
    SetEventFlagID(10002306, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000770, 9940);
    EnableCharacter(10000770);
    SetEventFlagID(10002306, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000770, 40, 1));
L4:
    ForceAnimationPlayback(10000770, 90106, true, false, false);
    EndEvent();
});

$Event(100009535, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000740, 9940);
    DisableCharacter(10000740);
    SetEventFlagID(10002307, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000740, 9940);
    EnableCharacter(10000740);
    SetEventFlagID(10002307, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000740, 40, 1));
L5:
    if (AnyBatchEventFlags(10003480, 10003482)) {
        ForceAnimationPlayback(10000740, 90106, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000740, TargetEntityType.Area, 10003901, -1);
        EndEvent();
    }
    if (EventFlag(10003483)) {
        ForceAnimationPlayback(10000740, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000740, TargetEntityType.Area, 10003970, -1);
        EndEvent();
    }
    if (EventFlag(10003484)) {
        ForceAnimationPlayback(10000740, 90101, true, false, false);
        EndEvent();
    }
});

$Event(100009536, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000730, 9940);
    DisableCharacter(10000730);
    SetEventFlagID(10002308, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000730, 9940);
    EnableCharacter(10000730);
    SetEventFlagID(10002308, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000730, 40, 1));
L6:
    ForceAnimationPlayback(10000730, 90106, true, false, false);
    EndEvent();
});

$Event(100009537, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003600));
    SetSpEffect(10000580, 9940);
    DisableCharacter(10000580);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000580, 9940);
    EnableCharacter(10000580);
    SetEventFlagID(10001964, ON);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000580, 40, 1));
    ForceAnimationPlayback(10000580, 30016, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10000580, TargetEntityType.Area, 10002230, -1);
});

$Event(100009538, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029609));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && AnyBatchEventFlags(4300, 4306));
    SetSpEffect(10000308, 9940);
    DisableCharacter(10000308);
    SetEventFlagID(10002304, ON);
    WaitFor(EventFlag(1029609));
    ClearSpEffect(10000308, 9940);
    EnableCharacter(10000308);
    SetEventFlagID(10002304, OFF);
    WaitFixedTimeFrames(5);
    WaitFor(EntityInRadiusOfEntity(10000, 10000308, 40, 1));
    ForceAnimationPlayback(10000308, 90100, true, false, false);
});

$Event(100009539, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029608));
    WaitFor(CurrentScenarioSection(ScenarioSection.Undertaker) && EventFlag(4300));
    WarpCharacterAndSetFloor(10000, TargetEntityType.Area, 10003037, -1, 0, false);
    SetCameraAngle(2.38, 50.71);
});

$Event(100009540, Restart, function() {
    WaitFixedTimeFrames(3);
    WaitFor(EventFlag(10003623) || EventFlag(10003629));
    FadeToBlack(0, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    WaitFixedTimeSeconds(1);
    IssueShortWarpRequest(10001809, TargetEntityType.Character, 10000, 13);
    WaitFor(EventFlag(10003624));
    WaitFixedTimeSeconds(0.5);
    FadeToBlack(0, 0, false, 0);
    UnknownTalk2003120(0);
});

$Event(100009541, Restart, function() {
    WaitFixedTimeFrames(3);
    WaitFor(CurrentScenarioSection(ScenarioSection.None) && EventFlag(1029646));
    SuppressSE(SoundType.BGM, 0, false);
    SetBossBGM(10000000, BossBGMState.Start);
    SetEventFlagID(1029646, OFF);
});

$Event(100009600, Restart, function() {
    WaitFixedTimeFrames(3);
    DeleteAssetfollowingSFX(10002320, true);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    WaitFixedTimeFrames(1);
    DisableCharacterGravity(10000801);
    DisableCharacterGravity(10000807);
    DisableCharacterGravity(10000811);
    DisableCharacterGravity(10000816);
    SetCharacterMaphit(10000801, false);
    SetCharacterMaphit(10000807, false);
    SetCharacterMaphit(10000811, false);
    SetCharacterMaphit(10000816, false);
    ResetCharacterPosition(10000801);
    ResetCharacterPosition(10000807);
    ResetCharacterPosition(10000811);
    ResetCharacterPosition(10000816);
    EndIf(EventFlag(4220));
    if (!AnyBatchEventFlags(4240, 4241)) {
        CreateAssetfollowingSFX(10002320, 90, 810045);
        WaitFor(EventFlag(10003574));
        DeleteAssetfollowingSFX(10002320, true);
        FadeToBlack(0, 0, true, 0);
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        ForceAnimationPlayback(10000, 90320, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000, TargetEntityType.Area, 10003050, -1);
        WaitFixedTimeSeconds(0.5);
        WaitFor(EventFlag(10003571));
        ForceAnimationPlayback(10000, 90322, true, false, false);
        WaitFor(CharacterHasSpEffect(10000, 9935));
        if (!(EventFlag(10003553) && !EventFlag(1029802))) {
            FadeToBlack(0, 0, false, 0);
            UnknownTalk2003120(0);
            SetEventFlagID(10003571, OFF);
            SetEventFlagID(10003570, OFF);
            RestartEvent();
        }
        WaitFixedTimeFrames(1);
        WaitFor(EventFlag(1029802));
        FadeToBlack(0, 0, false, 0);
        UnknownTalk2003120(0);
        SetEventFlagID(10003571, OFF);
        SetEventFlagID(10003570, OFF);
        SetEventFlagID(10003553, OFF);
        RestartEvent();
    }
L10:
    DisableCharacter(10000816);
    WaitFor(EventFlag(4242));
    EnableCharacter(10000816);
    RestartEvent();
});

$Event(100009601, Restart, function() {
    WaitFixedTimeFrames(2);
    DisableCharacterCollision(10000332);
    SetCharacterMaphit(10000332, false);
    DisableCharacterGravity(10000332);
    DisableCharacterCollision(10000333);
    SetCharacterMaphit(10000333, false);
    DisableCharacterGravity(10000333);
    DeleteAssetfollowingSFX(10002038, true);
    WaitFixedTimeFrames(1);
    ResetCharacterPosition(10000332);
    ResetCharacterPosition(10000333);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    WaitFixedTimeFrames(1);
    if (TalkNPCEnabled(10000805)) {
        SetCharacterTalkRange(10000805, 30);
    }
    EndIf(!AnyBatchEventFlags(4210, 4215));
    RequestAssetDestruction(10002920, 0);
    RequestAssetDestruction(10002921, 0);
    RequestAssetDestruction(10002040, 0);
    RequestAssetDestruction(10002080, 0);
    RequestAssetDestruction(10002081, 0);
    RequestAssetDestruction(10002082, 0);
    RequestAssetDestruction(10002083, 0);
    RequestAssetDestruction(10002035, 0);
    DisableAsset(10002081);
    RequestAssetDestruction(10002070, 0);
    RequestAssetDestruction(10002071, 0);
    RequestAssetDestruction(10002072, 0);
    RequestAssetDestruction(10002073, 0);
    RequestAssetDestruction(10002074, 0);
    RequestAssetDestruction(10002075, 0);
    RequestAssetDestruction(10002076, 0);
    RequestAssetDestruction(10002077, 0);
    RequestAssetDestruction(10002078, 0);
    RequestAssetDestruction(10002079, 0);
    RequestAssetDestruction(10002090, 0);
    RequestAssetDestruction(10002091, 0);
    RequestAssetDestruction(10002092, 0);
    RequestAssetDestruction(10002093, 0);
    RequestAssetDestruction(10002094, 0);
    RequestAssetDestruction(10002095, 0);
    RequestAssetDestruction(10002096, 0);
    RequestAssetDestruction(10002097, 0);
    RequestAssetDestruction(10002098, 0);
    RequestAssetDestruction(10002099, 0);
    EnableAsset(10002050);
    DisableAsset(10002051);
    DisableCharacterCollision(10000331);
    SetCharacterMaphit(10000331, false);
    DisableCharacterGravity(10000331);
    EnableCharacterDefaultBackread(10000805);
    EnableCharacterDefaultBackread(10000806);
    WaitFixedTimeFrames(1);
    if (AnyBatchEventFlags(4210, 4211)) {
        DisableCharacter(10000806);
        EnableCharacterFadeOnEnable(10000806);
        SetEventFlagID(10002310, ON);
    }
    WaitFixedTimeFrames(1);
    ResetCharacterPosition(10000331);
    WaitFixedTimeSeconds(2);
    ForceAnimationPlayback(10000331, 20010, false, false, false);
    ForceAnimationPlayback(10002033, 10, false, false, false);
    WaitFixedTimeFrames(1);
    WaitFor(EntityInRadiusOfEntity(10000, 10003030, 40, 1));
    IssueShortWarpRequest(10000805, TargetEntityType.Area, 10003054, -1);
    WaitFixedTimeFrames(1);
    WarpAssetToCharacter(10002038, 10000805, 705);
    WaitFixedTimeFrames(3);
    IssueShortWarpRequest(10000805, TargetEntityType.Area, 10003030, -1);
    CreateAssetfollowingSFX(10002038, 90, 807451);
    if (!EventFlag(1029823)) {
        if (!EventFlag(1029824)) {
            ForceAnimationPlayback(10000805, 90105, true, false, false);
            DisableCharacterAI(10000805);
            SetEventFlagID(1029821, OFF);
            SetEventFlagID(1029822, OFF);
            WaitFixedTimeSeconds(0.2);
            WaitFor(EventFlag(10003559));
            FadeToBlack(0, 0, true, 0);
            UnknownTalk2003121();
            UnknownTalk2003120(9999);
            EnableCharacter(10000806);
            SetCharacterTalkRange(10000806, 30);
            SetNetworkUpdateRate(10000806, true, CharacterUpdateFrequency.AlwaysUpdate);
            SetSpEffect(10000806, 9940);
            SetEventFlagID(10003560, ON);
            WaitFixedTimeFrames(1);
            WaitFor(EventFlag(10003551));
            IssueShortWarpRequest(10000806, TargetEntityType.Area, 10003051, -1);
            WaitFixedTimeFrames(1);
            PlaySE(10003052, SoundType.EnvironmentalSound, 101190300);
            ForceAnimationPlayback(10000806, 20001, true, false, false);
            ClearSpEffect(10000806, 9940);
            SetEventFlagID(10002310, OFF);
            WaitFixedTimeSeconds(3);
            SetEventFlagID(10003567, ON);
            WaitFor(EventFlag(10003584));
            WaitFixedTimeSeconds(1);
            SetEventFlagID(10003561, ON);
            WaitFor(EventFlag(10003562));
            FadeToBlack(0, 0, false, 0);
            UnknownTalk2003120(0);
            SetEventFlagID(10003560, OFF);
            SetEventFlagID(1029824, ON);
            WaitFixedTimeSeconds(1);
        }
L0:
        if (!EventFlag(10003561)) {
            IssueShortWarpRequest(10000805, TargetEntityType.Area, 10003053, -1);
            ForceAnimationPlayback(10000805, 90108, true, false, false);
            ForceAnimationPlayback(10000806, 0, true, false, false);
            WaitFixedTimeFrames(1);
            WarpCharacterAndCopyFloor(10000806, TargetEntityType.Area, 10003052, -1, 0);
            WaitFixedTimeFrames(1);
            ForceAnimationPlayback(10000806, 30016, true, false, false);
        }
        WaitFor(EventFlag(1029822));
        FadeToBlack(0, 0, true, 0);
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        DisableCharacterAI(10000806);
        WaitFixedTimeSeconds(0.5);
        ForceAnimationPlayback(10000806, 20007, true, false, false);
        if (!EventFlag(10003581)) {
            WaitFixedTimeSeconds(1.7);
        }
        WaitFixedTimeSeconds(0.3);
        FadeToBlack(1, 1, true, 0);
        WaitFixedTimeSeconds(1);
        PlaySE(10003052, SoundType.EnvironmentalSound, 105090180);
        SetSpEffect(10000806, 9955);
        ForceAnimationPlayback(10000806, 0, true, false, false);
        WaitFixedTimeFrames(1);
        WarpCharacterAndCopyFloor(10000806, TargetEntityType.Area, 10003056, -1, 0);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000806, 30018, true, false, false);
        EnableCharacterAI(10000806);
        WaitFixedTimeFrames(1);
        RequestCharacterAIReplan(10000805);
        SetEventFlagID(10003552, OFF);
        EnableCharacterAI(10000805);
        WaitFixedTimeFrames(1);
        RequestCharacterAIReplan(10000805);
        ForceAnimationPlayback(10000805, 90108, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000805, TargetEntityType.Area, 10003053, -1);
        WaitFixedTimeSeconds(4);
        FadeToBlack(0, 1, false, -1);
        UnknownTalk2003120(0);
        SetEventFlagID(1029823, ON);
        SetEventFlagID(10003560, OFF);
        EndEvent();
    }
L10:
    if (!EventFlag(1029802)) {
        IssueShortWarpRequest(10000805, TargetEntityType.Area, 10003053, -1);
        ForceAnimationPlayback(10000805, 90108, true, false, false);
        SetSpEffect(10000806, 9955);
        ForceAnimationPlayback(10000806, 0, true, false, false);
        WaitFixedTimeFrames(1);
        WarpCharacterAndCopyFloor(10000806, TargetEntityType.Area, 10003056, -1, 0);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000806, 30018, true, false, false);
        EndEvent();
    }
L11:
    IssueShortWarpRequest(10000805, TargetEntityType.Area, 10003059, -1);
    ForceAnimationPlayback(10000805, 90108, true, false, false);
    SetSpEffect(10000806, 9955);
    ForceAnimationPlayback(10000806, 0, true, false, false);
    WaitFixedTimeFrames(1);
    WarpCharacterAndCopyFloor(10000806, TargetEntityType.Area, 10003056, -1, 0);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10000806, 30018, true, false, false);
    EndEvent();
});

$Event(100009602, Restart, function() {
    WaitFixedTimeFrames(3);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    EndIf(EventFlag(1029833));
    if (!(EventFlag(1029838) && !EventFlag(1029833))) {
        WaitFor(EventFlag(10003564));
        FadeToBlack(0, 0, true, 0);
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        IssueShortWarpRequest(10001809, TargetEntityType.Character, 10000, 13);
        WaitFixedTimeFrames(1);
        DeleteAssetfollowingSFX(10002320, true);
        WaitFor(EventFlag(1029833));
        WaitFixedTimeSeconds(0.5);
        FadeToBlack(0, 0, false, 0);
        UnknownTalk2003120(0);
        EndEvent();
    }
L10:
    SetEventFlagID(1029833, ON);
    SetEventFlagID(10003582, ON);
    EndEvent();
});

$Event(100009603, Restart, function() {
    WaitFixedTimeFrames(3);
    EndIf(EventFlag(1029840));
    EndIf(EventFlag(10003515));
    WaitFor(
        CurrentScenarioSection(ScenarioSection.Scholar) && EventFlag(4211) && !EventFlag(1029840));
    if (!EventFlag(1029842)) {
        FadeToBlack(0, 0, true, 0);
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        WaitFixedTimeSeconds(1.5);
        PlaySE(10003030, SoundType.EnvironmentalSound, 105090015);
        WaitFixedTimeSeconds(3);
        SetEventFlagID(10003576, ON);
        WaitFor(EventFlag(1029840));
        FadeToBlack(0, 0, false, 0);
        UnknownTalk2003120(0);
        EndEvent();
    }
L10:
    FadeToBlack(1, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    SetEventFlagID(1029842, OFF);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(0.25);
    IssueShortWarpRequest(10000, TargetEntityType.Area, 10004000, -1);
    SetCameraAngle(0, -180);
    FadeToBlack(0, 1.8, true, 0);
    WaitFixedTimeSeconds(0.5);
    WaitFixedTimeSeconds(1.5);
    PlaySE(10003030, SoundType.EnvironmentalSound, 105090015);
    WaitFixedTimeSeconds(3);
    SetEventFlagID(10003576, ON);
    WaitFor(EventFlag(1029840));
    FadeToBlack(0, 0, false, 0);
    UnknownTalk2003120(0);
    EndEvent();
});

$Event(100009604, Restart, function() {
    WaitFixedTimeFrames(3);
    EndIf(EventFlag(1029899));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003575));
    FadeToBlack(0, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    WaitFixedTimeSeconds(5);
    FadeToBlack(1, 2, true, 0);
    PlaySE(10000580, SoundType.EnvironmentalSound, 105090060);
    WaitFixedTimeSeconds(8);
    WarpPlayerUnknown2003130(810000, 60, 42, 39, 40, 0, 0);
});

$Event(100009605, Restart, function() {
    WaitFixedTimeFrames(3);
    EndIf(EventFlag(1029817));
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003577));
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    FadeToBlack(0, 0, true, -1);
    if (!EntityInRadiusOfEntity(10000, 10003057, 0.4, 1)) {
        RotateCharacter(10000, 10003057, -1, true);
        RotateCharacter(10000, 10003057, 90006, false);
        Goto(L8);
L8:
        WaitFixedTimeFrames(1);
        time = ElapsedSeconds(2);
        area = EntityInRadiusOfEntity(10000, 10003057, 0.4, 1);
        WaitFor(time || area);
        if (!area.Passed) {
            SetEventFlagID(10003579, ON);
            WaitFixedTimeFrames(5);
            ForceAnimationPlayback(10000, 0, false, false, false);
            FadeToBlack(0, 0, false, -1);
            UnknownTalk2003120(0);
            RestartEvent();
        }
    }
L9:
    RotateCharacter(10000, 10003057, 0, true);
    IssueShortWarpRequest(10000, TargetEntityType.Area, 10003057, -1);
    SetEventFlagID(10003578, ON);
    UnknownSound201014(9);
    IssueShortWarpRequest(10001809, TargetEntityType.Character, 10000815, 13);
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003585));
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10000, 90202, true, false, false);
    WaitFixedTimeFrames(1);
    WaitFor(CharacterHasSpEffect(10000, 9932));
    ForceAnimationPlayback(10000815, 90204, true, false, false);
    WaitFixedTimeSeconds(1);
    SetEventFlagID(10003585, OFF);
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003588));
    ForceAnimationPlayback(10000815, 90340, false, false, false);
    SetSpEffect(10000815, 9969);
    WaitFixedTimeSeconds(1.5);
    SetEventFlagID(10003588, OFF);
    WaitFor(EventFlag(1029817));
    FadeToBlack(0, 0, false, -1);
    UnknownTalk2003120(0);
    DisableCharacter(10000816);
    SetEventFlagID(10003569, ON);
    ForceAnimationPlayback(10000815, 90342, true, false, false);
    EndEvent();
});

$Event(100009606, Restart, function() {
    WaitFixedTimeFrames(4);
    WaitFor(
        CurrentScenarioSection(ScenarioSection.Scholar)
            && EventFlag(1029891)
            && !AnyBatchEventFlags(4200, 4215));
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    FadeToBlack(1, 0, true, -1);
    WaitFixedTimeSeconds(3);
    Unknown2003123();
    SetEventFlagID(1029891, OFF);
    SetEventFlagID(1029890, ON);
    SetEventFlagID(1029892, ON);
    WaitFixedTimeSeconds(5);
});

$Event(100009607, Restart, function() {
    WaitFixedTimeFrames(5);
    EndIf(EventFlag(1029830));
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar) && EventFlag(4200));
    WarpCharacterAndSetFloor(10000, TargetEntityType.Area, 10003063, -1, 0, false);
    SetCameraAngle(15.98, 91.91);
});

$Event(100009608, Restart, function() {
    WaitFixedTimeFrames(3);
    WaitFor(CurrentScenarioSection(ScenarioSection.None) && EventFlag(1029892));
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    FadeToBlack(1, 0, true, -1);
    WaitFixedTimeSeconds(2);
    SetEventFlagID(1029892, OFF);
    UnknownTalk2003120(0);
    FadeToBlack(0, 1, false, -1);
});

$Event(100009610, Restart, function(eventFlagId) {
    WaitFixedTimeFrames(3);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(eventFlagId));
    WaitFixedTimeSeconds(0.5);
    SetEventFlagID(10003570, ON);
    WaitFor(EventFlag(10003571));
    WaitFixedTimeFrames(1);
    SetEventFlagID(eventFlagId, OFF);
    SetEventFlagID(10003570, OFF);
    SetEventFlagID(10003571, OFF);
    RestartEvent();
});

$Event(100009620, Restart, function(chrEntityId, entityId, animationId, value) {
    WaitFixedTimeFrames(3);
    SetSpEffect(chrEntityId, 9940);
    DisableCharacterCollision(chrEntityId);
    EnableCharacterInvincibility(chrEntityId);
    if (Signed(value) == 1) {
        DeleteAssetfollowingSFX(10002321, true);
    }
    if (Signed(value) == 2) {
        DeleteAssetfollowingSFX(10002322, true);
    }
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(entityId));
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(entityId, animationId, true, false, false);
    WaitFixedTimeSeconds(0.5);
    ClearSpEffect(chrEntityId, 9940);
    if (Signed(value) == 1) {
        CreateAssetfollowingSFX(10002321, 90, 803281);
    }
    if (Signed(value) == 2) {
        CreateAssetfollowingSFX(10002322, 90, 803281);
    }
    WaitFixedTimeSeconds(1.5);
    SetEventFlagID(10003570, ON);
    WaitFor(EventFlag(10003571));
    WaitFixedTimeFrames(1);
    SetSpEffect(chrEntityId, 9940);
    SetEventFlagID(entityId, OFF);
    SetEventFlagID(10003570, OFF);
    SetEventFlagID(10003571, OFF);
    if (Signed(value) == 1) {
        DeleteAssetfollowingSFX(10002321, true);
    }
    if (Signed(value) == 2) {
        DeleteAssetfollowingSFX(10002322, true);
    }
    WaitFixedTimeSeconds(0.5);
    RestartEvent();
});

$Event(100009630, Restart, function(chrEntityId, eventFlagId, animationId) {
    WaitFixedTimeFrames(3);
    SetSpEffect(chrEntityId, 9940);
    DisableCharacterCollision(chrEntityId);
    EnableCharacterInvincibility(chrEntityId);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(eventFlagId));
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(chrEntityId, animationId, true, false, false);
    WaitFixedTimeSeconds(0.5);
    ClearSpEffect(chrEntityId, 9940);
    WaitFixedTimeSeconds(1.5);
    SetEventFlagID(10003570, ON);
    WaitFor(EventFlag(10003571));
    WaitFixedTimeFrames(1);
    SetSpEffect(chrEntityId, 9940);
    if (EventFlag(1029802)) {
        SetEventFlagID(eventFlagId, OFF);
    }
    SetEventFlagID(10003570, OFF);
    SetEventFlagID(10003571, OFF);
    RestartIf(EventFlag(1029802));
    WaitFixedTimeSeconds(0.5);
    ForceAnimationPlayback(10000805, 90205, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10000805, TargetEntityType.Area, 10003059, -1);
    SetEventFlagID(10003554, ON);
    RestartEvent();
});

$Event(100009631, Restart, function() {
    WaitFixedTimeFrames(3);
    SetSpEffect(10000822, 9940);
    DisableCharacterCollision(10000822);
    EnableCharacterInvincibility(10000822);
    SetSpEffect(10000813, 9940);
    DisableCharacterCollision(10000813);
    EnableCharacterInvincibility(10000813);
    DeleteAssetfollowingSFX(10002321, true);
    DeleteAssetfollowingSFX(10002322, true);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003556));
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10000822, 30015, true, false, false);
    ForceAnimationPlayback(10000813, 90100, true, false, false);
    WaitFixedTimeSeconds(0.5);
    ClearSpEffect(10000822, 9940);
    CreateAssetfollowingSFX(10002321, 90, 803281);
    WaitFixedTimeSeconds(1.5);
    SetEventFlagID(10003570, ON);
    WaitFor(EventFlag(10003557));
    WaitFixedTimeSeconds(0.5);
    ClearSpEffect(10000813, 9940);
    CreateAssetfollowingSFX(10002322, 90, 803281);
    WaitFixedTimeSeconds(1);
    WaitFor(EventFlag(10003571));
    WaitFixedTimeFrames(1);
    SetSpEffect(10000822, 9940);
    SetSpEffect(10000813, 9940);
    DeleteAssetfollowingSFX(10002321, true);
    DeleteAssetfollowingSFX(10002322, true);
    SetEventFlagID(10003556, OFF);
    SetEventFlagID(10003557, OFF);
    SetEventFlagID(10003570, OFF);
    SetEventFlagID(10003571, OFF);
    WaitFixedTimeSeconds(0.5);
    RestartEvent();
});

$Event(100009640, Restart, function() {
    WaitFixedTimeFrames(3);
    DeleteAssetfollowingSFX(10002066, true);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar) && AnyBatchEventFlags(4230, 4235));
    WaitFixedTimeFrames(2);
    if (EventFlag(4235)) {
        SetEventFlagID(10003582, ON);
    }
    CreateAssetfollowingSFX(10002066, 90, 810045);
    EnableCharacter(10000811);
    DisableCharacter(10001077);
    EnableAssetInvunerability(10002037);
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003582));
    DisableCharacter(10000811);
    EnableCharacter(10001077);
    WaitFixedTimeFrames(3);
    WaitFor(!EventFlag(10003582));
    EnableCharacter(10000811);
    DisableCharacter(10001077);
});

$Event(100009641, Restart, function() {
    WaitFixedTimeFrames(3);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar) && EventFlag(10003586));
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    FadeToBlack(0, 0, true, -1);
    WaitFixedTimeFrames(1);
    RotateCharacter(10000, 10001077, -1, true);
    RotateCharacter(10000, 10001077, 90006, false);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10000, 0, false, false, false);
    WaitFixedTimeSeconds(0.5);
    ForceAnimationPlayback(10000, 0, true, false, false);
    WaitFixedTimeSeconds(0.5);
    SetEventFlagID(10003586, OFF);
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(1029841));
    UnknownTalk2003120(0);
    FadeToBlack(0, 1, false, -1);
    CreateAssetfollowingSFX(10002320, 90, 810045);
});

$Event(100009642, Restart, function() {
    WaitFixedTimeFrames(5);
    WaitFor(CurrentScenarioSection(ScenarioSection.Scholar) && AnyBatchEventFlags(4240, 4245));
    DisableCharacter(10001072);
    DisableCharacter(10000816);
    if (!EventFlag(1029839)) {
        WaitFixedTimeFrames(1);
        DeleteAssetfollowingSFX(10002320, true);
        WaitFixedTimeFrames(1);
        WaitFor(EventFlag(1029817));
        EnableCharacter(10001072);
        CreateAssetfollowingSFX(10002320, 90, 810045);
        WaitFixedTimeFrames(1);
        WaitFor(EventFlag(10003587));
        UnknownTalk2003121();
        UnknownTalk2003120(9999);
        FadeToBlack(0, 0, true, -1);
        WaitFixedTimeFrames(1);
        FadeToBlack(1, 1, true, -1);
        WaitFixedTimeSeconds(1);
        IssueShortWarpRequest(10000, TargetEntityType.Area, 10003050, -1);
        WaitFixedTimeSeconds(0.1);
        SetSpEffect(10000, 9957);
        PlaySE(10000, SoundType.EnvironmentalSound, 105090070);
        ChangeHeroCharacter(10000, 50830);
        WaitFixedTimeSeconds(2);
        ForceAnimationPlayback(10000, 90204, true, false, false);
        WaitFixedTimeSeconds(2);
        SetCameraAngle(3.6, 60.59);
        DisableAsset(10001078);
        FadeToBlack(0, 1, true, -1);
        WaitFixedTimeSeconds(4);
        SetEventFlagID(10003587, OFF);
        WaitFixedTimeFrames(1);
        WaitFor(EventFlag(1029839));
        UnknownTalk2003120(0);
        FadeToBlack(0, 1, false, -1);
        ChangeHeroGarbMenuSelection(Hero.Scholar, 50830);
        WaitFixedTimeSeconds(0.1);
        DisableCharacter(10001072);
        EnableCharacter(10000816);
        CreateAssetfollowingSFX(10002320, 90, 810045);
        SetEventFlagID(10003569, OFF);
        WaitFixedTimeSeconds(3);
        ClearSpEffect(10000, 9957);
        EndEvent();
    }
L10:
    EnableCharacter(10000816);
    DisableAsset(10001078);
    EndEvent();
});

$Event(100009643, Restart, function() {
    WaitFixedTimeFrames(3);
    EndIf(EventFlag(1029806));
    WaitFor(EventFlag(10003563));
    FadeToBlack(0, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    SetSpEffect(10000, 9969);
    WaitFixedTimeFrames(1);
    RotateCharacter(10000, 10000805, -1, true);
    RotateCharacter(10000, 10000805, 90006, false);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10000, 0, false, false, false);
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(10003589) || !EventFlag(10003563));
    if (EventFlag(10003563)) {
        ForceAnimationPlayback(10000, 90201, false, false, false);
        WaitFor(EventFlag(1029806) || !EventFlag(10003563));
    }
L0:
    FadeToBlack(0, 0, false, 0);
    UnknownTalk2003120(0);
    RestartIf(!EventFlag(1029806));
    WaitFixedTimeSeconds(5);
    ClearSpEffect(10000, 9969);
});

$Event(100003150, Restart, function(eventFlagId, section, assetEntityId, chrEntityId) {
    DisableAsset(assetEntityId);
    DisableCharacter(chrEntityId);
    SetEventFlagID(10002335, ON);
    WaitFor(EventFlag(eventFlagId) && CurrentScenarioSection(section));
    WaitFixedTimeFrames(1);
    EnableAsset(assetEntityId);
    EnableCharacter(chrEntityId);
    SetEventFlagID(10002335, OFF);
    EndEvent();
});

$Event(100004220, Restart, function(section, missionId) {
    if (!EventFlag(10002332)) {
        SetEventFlagID(10002332, ON);
    }
    WaitFor(CurrentScenarioSection(section) && HasMissionState(missionId, 1));
    WaitFixedTimeFrames(1);
    SetEventFlagID(10002332, OFF);
    SetEventFlagID(10002232, ON);
    EndEvent();
});

$Event(1000002310, Restart, function() {
    WaitFixedTimeFrames(1);
    EndIf(!EventFlag(110));
    EndIf(!EventFlag(6951));
    GotoIf(L0, AnyBatchEventFlags(1109100, 1109101));
    EndIf(AllBatchEventFlags(1109100, 1109101));
    if (!(EventFlag(3003) && !EventFlag(1109031))) {
        if (!(EventFlag(3005) && !EventFlag(1109032))) {
            if (!EventFlag(10003506)) {
                if (!EventFlag(10003507)) {
                    EnableCharacterDefaultBackread(10000780);
                    WaitFor(
                        CurrentScenarioSection(ScenarioSection.None)
                            && EventFlag(6951)
                            && EventFlag(110)
                            && !EventFlag(10001961));
                    GotoIf(L10, !InArea(10000, 10003058));
                    FadeToBlack(0, 0, true, -1);
                    WaitFixedTimeFrames(1);
                    FadeToBlack(0, 1, true, -1);
                    SetEventFlagID(10003502, ON);
                    DisableCharacterFadeOnEnable(10000780);
                    WaitFixedTimeFrames(1);
                    if (EventFlag(10002405) || EventFlag(10003511)) {
                        WaitFixedTimeSeconds(0.5);
                    }
                    WaitFixedTimeSeconds(0.7);
                    SetEventFlagID(10003500, ON);
                    WaitFor(EventFlag(10003501));
                    FadeToBlack(0, 0, false, -1);
                    SetEventFlagID(1109101, ON);
                    SetEventFlagID(10003502, OFF);
                    EndEvent();
L0:
                    SetEventFlagID(1109101, ON);
                    EndEvent();
                }
            }
        }
    }
L10:
    SetEventFlagID(10003505, ON);
    DisableCharacterFadeOnEnable(10000780);
    WaitFixedTimeFrames(1);
    WaitFor(EntityInRadiusOfEntity(10000, 10000780, 4, 1));
    SetEventFlagID(10003500, ON);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    FadeToBlack(0, 0, true, -1);
    WaitFixedTimeFrames(1);
    area = !EntityInRadiusOfEntity(10000, 10000780, 4.5, 1);
    WaitFor(EventFlag(10003501) || area);
    if (!area.Passed) {
        FadeToBlack(0, 0, false, -1);
        UnknownTalk2003120(0);
        SetEventFlagID(1109101, ON);
        DisableCharacterDefaultBackread(10000780);
        EndEvent();
    }
L15:
    FadeToBlack(0, 0, false, -1);
    UnknownTalk2003120(0);
    SetEventFlagID(10003500, OFF);
    RestartEvent();
});

$Event(1000002311, Restart, function() {
    WaitFixedTimeFrames(3);
    EndIf(EventFlag(1109140));
    WaitFor(CurrentScenarioSection(ScenarioSection.None) && EventFlag(4103) && !EventFlag(1109140));
    WaitFixedTimeFrames(1);
    WaitFor(InArea(10000, 10003060));
    SetEventFlagID(10003513, ON);
    WaitFixedTimeFrames(1);
    WaitFor(ElapsedSeconds(3) || !InArea(10000, 10003060));
    if (InArea(10000, 10003060)) {
        UnknownTalk2003121();
        FadeToBlack(0, 0, true, 0);
        UnknownTalk2003120(0.5);
        WaitFor(ElapsedSeconds(0.5));
        if (InArea(10000, 10003060)) {
            PlaySE(20000, SoundType.EnvironmentalSound, 600020000);
            SetSpEffect(20000, 9574);
            UnknownTalk2003120(2);
            WaitFor(ElapsedSeconds(2));
            SetEventFlagID(10003503, ON);
            WaitFixedTimeFrames(1);
            WaitFor(EventFlag(10003509));
            SetEventFlagID(10003513, OFF);
            ClearSpEffect(20000, 9574);
            FadeToBlack(0, 0, false, 0);
            SetEventFlagID(1109140, ON);
            SetEventFlagID(135, ON);
            RecordUserDispLog(121020, 10000, LogObjectType.None, -1);
            SetEventFlagID(144, ON);
            BatchSetEventFlags(6070, 6074, OFF);
            SetEventFlagID(6074, ON);
            BatchSetEventFlags(6080, 6083, OFF);
            BatchSetEventFlags(6085, 6088, OFF);
            SetEventFlagID(10001904, ON);
            RecordUserDispLog(121000, 10000, LogObjectType.None, -1);
            UnknownText200722(3193);
            UnknownText200722(3194);
            UnknownText200722(3211);
            UnknownText200722(3460);
            WaitFixedTimeSeconds(5);
            if (EventFlag(10003518)) {
                SetEventFlagID(10003518, OFF);
                UnknownText200722(2910);
                RecordUserDispLog(121032, 10000, LogObjectType.None, -1);
            } else {
                RecordUserDispLog(121030, 10000, LogObjectType.None, -1);
            }
            EndEvent();
        }
    }
L15:
    SetEventFlagID(10003513, OFF);
    FadeToBlack(0, 0, false, 0);
    UnknownTalk2003120(0);
    RestartEvent();
});

$Event(1000002312, Restart, function() {
    EndIf(EventFlag(10001965));
    EndIf(
        !(CurrentScenarioSection(ScenarioSection.None)
            && EventFlag(6951)
            && EventFlag(161)
            && EventFlag(1109140)
            && EventFlag(6038)
            && EventFlag(6039)
            && !EventFlag(136)
            && !EventFlag(10001965)));
    EndIf(EventFlag(3005) && !EventFlag(1109032));
    FadeToBlack(1, 0, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    SetEventFlagID(10003512, ON);
    SetEventFlagID(10003513, ON);
    IssueShortWarpRequest(10000, TargetEntityType.Area, 10003070, -1);
    SetCameraAngle(-0.09, -45.92);
    WaitFixedTimeSeconds(1.5);
    DisableAsset(10002025);
    if (CharacterBackreadStatus(10001003)) {
        WarpCharacterAndSetFloor(10001003, TargetEntityType.Area, 10003056, -1, 0, false);
    }
    if (CharacterBackreadStatus(10001002)) {
        WarpCharacterAndSetFloor(10001002, TargetEntityType.Area, 10003056, -1, 0, false);
    }
    WaitFixedTimeSeconds(3);
    if (!IsHero(Hero.Scholar)) {
        chr = TalkNPCEnabled(10000790) && CharacterBackreadStatus(10000790);
        chr2 = TalkNPCEnabled(10001040) && CharacterBackreadStatus(10001040);
        chr3 = TalkNPCEnabled(10001041) && CharacterBackreadStatus(10001041);
        chr4 = TalkNPCEnabled(10001042) && CharacterBackreadStatus(10001042);
        chr5 = TalkNPCEnabled(10001043) && CharacterBackreadStatus(10001043);
        chr6 = chr || chr2 || chr3 || chr4 || chr5;
        if (chr) {
            ForceAnimationPlayback(10000790, 90205, true, false, false);
        }
        if (chr2) {
            ForceAnimationPlayback(10001040, 90205, true, false, false);
        }
        if (chr3) {
            ForceAnimationPlayback(10001041, 90205, true, false, false);
        }
        if (chr4) {
            ForceAnimationPlayback(10001042, 90205, true, false, false);
        }
        if (chr5) {
            ForceAnimationPlayback(10001043, 90205, true, false, false);
        }
        WaitFixedTimeSeconds(0.2);
    }
L0:
    FadeToBlack(0, 1.8, true, 0);
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    WaitFor(ElapsedSeconds(6) || EventFlag(10003519));
    WaitFixedTimeSeconds(3);
    FadeToBlack(0, 0, false, 0);
    UnknownTalk2003120(0);
    SetEventFlagID(10001965, ON);
    SetEventFlagID(136, ON);
    RecordUserDispLog(121021, 10000, LogObjectType.None, -1);
    SetEventFlagID(10003513, OFF);
    SetEventFlagID(1109109, OFF);
    if ((HasMissionState(901, 2) || HasMissionState(901, 3)) && !EventFlag(1029840)) {
        SetEventFlagID(1029842, ON);
    }
    if (EventFlag(10003518)) {
        EndEvent();
    }
    if (EventFlag(6070)) {
        RecordUserDispLog(12100, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6071)) {
        RecordUserDispLog(12101, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6072)) {
        RecordUserDispLog(12102, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6073)) {
        RecordUserDispLog(12103, 10000, LogObjectType.None, -1);
    }
    if (EventFlag(6074)) {
        RecordUserDispLog(121000, 10000, LogObjectType.None, -1);
    }
});

$Event(1000002313, Restart, function() {
    WaitFor(!EventFlag(6038));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(6038));
    ShowTutorialPopup(2100, true, true);
    PlaySE(10000, SoundType.MenuSE, 1100);
});

$Event(1000002314, Restart, function() {
    WaitFor(!EventFlag(6039));
    WaitFixedTimeFrames(1);
    WaitFor(EventFlag(6039));
    ShowTutorialPopup(2110, true, true);
    PlaySE(10000, SoundType.MenuSE, 1100);
});

$Event(1000002315, Default, function() {
    WaitFor(EventFlag(6038));
    WaitFor(EventFlag(110));
    SetEventFlagID(6047, ON);
    WaitFor(EventFlag(6050) && EventFlag(161));
    SetEventFlagID(6053, ON);
    WaitFor(EventFlag(162));
    SetEventFlagID(6058, ON);
});

$Event(1000002316, Default, function() {
    WaitFor(EventFlag(6039));
    WaitFor(EventFlag(110));
    SetEventFlagID(6049, ON);
    WaitFor(EventFlag(6050) && EventFlag(161));
    SetEventFlagID(6054, ON);
    WaitFor(EventFlag(162));
    SetEventFlagID(6059, ON);
});

$Event(1000002317, Default, function() {
    EndIf(EventFlag(6038));
    WaitFor(EventFlag(6038));
    WaitFixedTimeFrames(1);
    if (!EventFlag(4103)) {
        WaitFor(EventFlag(1029940));
        WaitFixedTimeSeconds(1);
        WaitFixedTimeFrames(60);
        UnknownText200722(2910);
        RecordUserDispLog(121031, 10000, LogObjectType.None, -1);
        EndEvent();
    }
L0:
    SetEventFlagID(10003518, ON);
});

$Event(1000002318, Restart, function() {
    EndIf(EventFlag(136));
    EndIf(
        !((CurrentScenarioSection(ScenarioSection.Wylder)
            || CurrentScenarioSection(ScenarioSection.Guardian)
            || CurrentScenarioSection(ScenarioSection.Ironeye)
            || CurrentScenarioSection(ScenarioSection.Duchess)
            || CurrentScenarioSection(ScenarioSection.Raider)
            || CurrentScenarioSection(ScenarioSection.Revenant)
            || CurrentScenarioSection(ScenarioSection.Recluse)
            || CurrentScenarioSection(ScenarioSection.Executor)
            || CurrentScenarioSection(ScenarioSection.Scholar)
            || CurrentScenarioSection(ScenarioSection.Undertaker))
            && EventFlag(6951)
            && EventFlag(161)
            && EventFlag(1109140)
            && EventFlag(6038)
            && EventFlag(6039)
            && !EventFlag(136)
            && !EventFlag(10001965)));
    UnknownTalk2003121();
    UnknownTalk2003120(9999);
    FadeToBlack(1, 0, true, -1);
    SetEventFlagID(10003515, ON);
    SetEventFlagID(1109109, ON);
    WaitFixedTimeFrames(1);
    Unknown2003123();
});

$Event(10009410, Restart, function() {
    chr = TalkNPCEnabled(10000790) && CharacterBackreadStatus(10000790);
    chr2 = TalkNPCEnabled(10001040) && CharacterBackreadStatus(10001040);
    chr3 = TalkNPCEnabled(10001041) && CharacterBackreadStatus(10001041);
    chr4 = TalkNPCEnabled(10001042) && CharacterBackreadStatus(10001042);
    chr5 = TalkNPCEnabled(10001043) && CharacterBackreadStatus(10001043);
    WaitFor(chr || chr2 || chr3 || chr4 || chr5 || EventFlag(10003512));
    WaitFixedTimeFrames(1);
    GotoIf(L1, EventFlag(10000910));
    GotoIf(L2, EventFlag(10000911));
    GotoIf(L3, EventFlag(10000912));
    GotoIf(L11, CurrentScenarioSection(ScenarioSection.None) && EventFlag(10003512));
    GotoIf(L10, 
        CurrentScenarioSection(ScenarioSection.None)
            && EventFlag(10001961)
            && !EventFlag(1109110)
            && EventFlag(4102));
    GotoIf(L10, 
        CurrentScenarioSection(ScenarioSection.None)
            && EventFlag(161)
            && EventFlag(4105)
            && !EventFlag(1109114));
    BatchSetEventFlags(10003440, 10003444, OFF);
    RandomlySetEventFlagInRange(10003440, 10003444, ON);
    WaitFixedTimeFrames(1);
    GotoIf(L1, AnyBatchEventFlags(10003440, 10003442));
    GotoIf(L2, EventFlag(10003443));
    GotoIf(L3, EventFlag(10003444));
    EndEvent();
L1:
    if (chr.Passed) {
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003963, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000790, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003963, -1);
        ClearSpEffect(10000790, 9940);
        RequestCharacterAIReplan(10000790);
        EnableCharacterAI(10000790);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003963, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001040, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003963, -1);
        ClearSpEffect(10001040, 9940);
        RequestCharacterAIReplan(10001040);
        EnableCharacterAI(10001040);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003963, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001041, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003963, -1);
        ClearSpEffect(10001041, 9940);
        RequestCharacterAIReplan(10001041);
        EnableCharacterAI(10001041);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003963, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001042, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003963, -1);
        ClearSpEffect(10001042, 9940);
        RequestCharacterAIReplan(10001042);
        EnableCharacterAI(10001042);
        EndEvent();
    }
    GotoIf(S0, !chr5.Passed);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003963, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001043, 90101, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003963, -1);
    ClearSpEffect(10001043, 9940);
    RequestCharacterAIReplan(10001043);
    EnableCharacterAI(10001043);
    EndEvent();
S0:
L2:
    if (chr.Passed) {
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003964, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000790, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003964, -1);
        ClearSpEffect(10000790, 9940);
        DisableCharacterAI(10000790);
        EnableCharacterDefaultBackread(10000790);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003964, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001040, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003964, -1);
        ClearSpEffect(10001040, 9940);
        DisableCharacterAI(10001040);
        EnableCharacterDefaultBackread(10001040);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003964, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001041, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003964, -1);
        ClearSpEffect(10001041, 9940);
        DisableCharacterAI(10001041);
        EnableCharacterDefaultBackread(10001041);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003964, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001042, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003964, -1);
        ClearSpEffect(10001042, 9940);
        DisableCharacterAI(10001042);
        EnableCharacterDefaultBackread(10001042);
        EndEvent();
    }
    GotoIf(S1, !chr5.Passed);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003964, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001043, 90102, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003964, -1);
    ClearSpEffect(10001043, 9940);
    DisableCharacterAI(10001043);
    EnableCharacterDefaultBackread(10001043);
    EndEvent();
S1:
L3:
    if (chr.Passed) {
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003965, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000790, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003965, -1);
        ClearSpEffect(10000790, 9940);
        RequestCharacterAIReplan(10000790);
        EnableCharacterAI(10000790);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003965, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001040, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003965, -1);
        ClearSpEffect(10001040, 9940);
        RequestCharacterAIReplan(10001040);
        EnableCharacterAI(10001040);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003965, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001041, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003965, -1);
        ClearSpEffect(10001041, 9940);
        RequestCharacterAIReplan(10001041);
        EnableCharacterAI(10001041);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003965, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001042, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003965, -1);
        ClearSpEffect(10001042, 9940);
        RequestCharacterAIReplan(10001042);
        EnableCharacterAI(10001042);
        EndEvent();
    }
    GotoIf(S2, !chr5.Passed);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003965, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001043, 90103, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003965, -1);
    ClearSpEffect(10001043, 9940);
    RequestCharacterAIReplan(10001043);
    EnableCharacterAI(10001043);
    EndEvent();
S2:
L10:
    if (chr.Passed) {
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003061, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000790, 90100, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000790, TargetEntityType.Area, 10003061, -1);
        ClearSpEffect(10000790, 9940);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003061, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001040, 90100, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003061, -1);
        ClearSpEffect(10001040, 9940);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003061, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001041, 90100, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003061, -1);
        ClearSpEffect(10001041, 9940);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003061, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001042, 90100, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003061, -1);
        ClearSpEffect(10001042, 9940);
        EndEvent();
    }
    GotoIf(S3, !chr5.Passed);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003061, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001043, 90100, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003061, -1);
    ClearSpEffect(10001043, 9940);
    EndEvent();
S3:
L11:
    WaitFixedTimeFrames(3);
    EndIf(IsHero(Hero.Scholar));
    GotoIf(S4, !AnyBatchEventFlags(3005, 3008));
    EnableCharacterDefaultBackread(10001043);
    Goto(L15);
S4:
    GotoIf(S5, !AnyBatchEventFlags(3003, 3004));
    EnableCharacterDefaultBackread(10001042);
    Goto(L14);
S5:
    GotoIf(S6, !EventFlag(3002));
    EnableCharacterDefaultBackread(10001041);
    Goto(L13);
S6:
    GotoIf(S7, !AnyBatchEventFlags(3000, 3001));
    EnableCharacterDefaultBackread(10001040);
    Goto(L12);
S7:
    EndEvent();
L12:
    chr6 &= TalkNPCEnabled(10001040) && CharacterBackreadStatus(10001040);
    WaitFor(chr6);
    IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003071, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001040, -1, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001040, TargetEntityType.Area, 10003071, -1);
    ClearSpEffect(10001040, 9940);
    EndEvent();
L13:
    chr6 &= TalkNPCEnabled(10001041) && CharacterBackreadStatus(10001041);
    WaitFor(chr6);
    IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003071, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001041, -1, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001041, TargetEntityType.Area, 10003071, -1);
    ClearSpEffect(10001041, 9940);
    EndEvent();
L14:
    chr6 &= TalkNPCEnabled(10001042) && CharacterBackreadStatus(10001042);
    WaitFor(chr6);
    IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003071, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001042, -1, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001042, TargetEntityType.Area, 10003071, -1);
    ClearSpEffect(10001042, 9940);
    EndEvent();
L15:
    chr6 &= TalkNPCEnabled(10001043) && CharacterBackreadStatus(10001043);
    WaitFor(chr6);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003071, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001043, -1, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001043, TargetEntityType.Area, 10003071, -1);
    ClearSpEffect(10001043, 9940);
    EndEvent();
});

$Event(10009411, Restart, function() {
    DisableAssetInvunerability(10002922);
    chr = TalkNPCEnabled(10000795) && CharacterBackreadStatus(10000795);
    chr2 = TalkNPCEnabled(10001050) && CharacterBackreadStatus(10001050);
    chr3 = TalkNPCEnabled(10001051) && CharacterBackreadStatus(10001051);
    chr4 = TalkNPCEnabled(10001052) && CharacterBackreadStatus(10001052);
    chr5 = TalkNPCEnabled(10001053) && CharacterBackreadStatus(10001053);
    WaitFor(chr || chr2 || chr3 || chr4 || chr5 || EventFlag(10003512));
    WaitFixedTimeFrames(1);
    GotoIf(L1, EventFlag(10000910));
    GotoIf(L2, EventFlag(10000911));
    GotoIf(L3, EventFlag(10000912));
    GotoIf(L11, CurrentScenarioSection(ScenarioSection.None) && EventFlag(10003512));
    chrFlag &= IsHero(Hero.Wylder)
        && CurrentScenarioSection(ScenarioSection.Wylder)
        && AnyBatchEventFlags(3108, 3117);
    GotoIf(L2, chrFlag);
    chrFlag2 &= IsHero(Hero.Wylder)
        && CurrentScenarioSection(ScenarioSection.Wylder)
        && AnyBatchEventFlags(3118, 3119);
    GotoIf(L2, chrFlag2);
    chrFlag3 &= IsHero(Hero.Duchess)
        && CurrentScenarioSection(ScenarioSection.Duchess)
        && AnyBatchEventFlags(3408, 3410);
    GotoIf(L2, chrFlag3);
    GotoIf(L1, 
        IsHero(Hero.Guardian)
            && CurrentScenarioSection(ScenarioSection.Guardian)
            && (AnyBatchEventFlags(3206, 3213) || AnyBatchEventFlags(3215, 3219)));
    GotoIf(L2, 
        IsHero(Hero.Guardian)
            && CurrentScenarioSection(ScenarioSection.Guardian)
            && (AnyBatchEventFlags(3223, 3230) || EventFlag(3232)));
    GotoIf(L2, 
        IsHero(Hero.Raider)
            && CurrentScenarioSection(ScenarioSection.Raider)
            && AnyBatchEventFlags(3500, 3521));
    flagChr &= CurrentScenarioSection(ScenarioSection.None)
        && EventFlag(10001961)
        && !EventFlag(1109120)
        && EventFlag(4102);
    GotoIf(L10, flagChr);
    flagChr2 &= CurrentScenarioSection(ScenarioSection.None)
        && EventFlag(161)
        && EventFlag(4105)
        && !EventFlag(1109123);
    GotoIf(L10, flagChr2);
    BatchSetEventFlags(10003445, 10003449, OFF);
    RandomlySetEventFlagInRange(10003445, 10003449, ON);
    WaitFixedTimeFrames(1);
    GotoIf(L1, AnyBatchEventFlags(10003445, 10003447));
    GotoIf(L2, EventFlag(10003448));
    GotoIf(L3, EventFlag(10003449));
    EndEvent();
L1:
    if (chr.Passed) {
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003966, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000795, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003966, -1);
        ClearSpEffect(10000795, 9940);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003966, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001050, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003966, -1);
        ClearSpEffect(10001050, 9940);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003966, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001051, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003966, -1);
        ClearSpEffect(10001051, 9940);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003966, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001052, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003966, -1);
        ClearSpEffect(10001052, 9940);
        EndEvent();
    }
    GotoIf(S0, !chr5.Passed);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003966, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001053, 90101, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003966, -1);
    ClearSpEffect(10001053, 9940);
    EndEvent();
S0:
L2:
    if (chr.Passed) {
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003967, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000795, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003967, -1);
        ClearSpEffect(10000795, 9940);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003967, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001050, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003967, -1);
        ClearSpEffect(10001050, 9940);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003967, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001051, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003967, -1);
        ClearSpEffect(10001051, 9940);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003967, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001052, 90103, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003967, -1);
        ClearSpEffect(10001052, 9940);
        EndEvent();
    }
    GotoIf(S1, !chr5.Passed);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003967, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001053, 90103, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003967, -1);
    ClearSpEffect(10001053, 9940);
    EndEvent();
S1:
L3:
    RequestAssetRestoration(10002922);
    EnableAssetInvunerability(10002922);
    if (chr.Passed) {
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003968, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000795, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003968, -1);
        ClearSpEffect(10000795, 9940);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003968, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001050, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003968, -1);
        ClearSpEffect(10001050, 9940);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003968, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001051, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003968, -1);
        ClearSpEffect(10001051, 9940);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003968, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001052, 90102, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003968, -1);
        ClearSpEffect(10001052, 9940);
        EndEvent();
    }
    GotoIf(S2, !chr5.Passed);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003968, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001053, 90102, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003968, -1);
    ClearSpEffect(10001053, 9940);
    EndEvent();
S2:
L10:
    if (chr.Passed) {
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003062, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10000795, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10000795, TargetEntityType.Area, 10003062, -1);
        ClearSpEffect(10000795, 9940);
        EndEvent();
    }
    if (chr2.Passed) {
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003062, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001050, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003062, -1);
        ClearSpEffect(10001050, 9940);
        EndEvent();
    }
    if (chr3.Passed) {
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003062, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001051, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003062, -1);
        ClearSpEffect(10001051, 9940);
        EndEvent();
    }
    if (chr4.Passed) {
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003062, -1);
        WaitFixedTimeFrames(1);
        ForceAnimationPlayback(10001052, 90101, true, false, false);
        WaitFixedTimeFrames(1);
        IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003062, -1);
        ClearSpEffect(10001052, 9940);
        EndEvent();
    }
    GotoIf(S3, !chr5.Passed);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003062, -1);
    WaitFixedTimeFrames(1);
    ForceAnimationPlayback(10001053, 90101, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003062, -1);
    ClearSpEffect(10001053, 9940);
    EndEvent();
S3:
L11:
    WaitFixedTimeFrames(3);
    flagChr &= IsHero(Hero.Undertaker);
    EndIf(flagChr);
    chrFlag3 &= AnyBatchEventFlags(3005, 3008);
    GotoIf(S4, !chrFlag3);
    EnableCharacterDefaultBackread(10001053);
    Goto(L15);
S4:
    chrFlag2 &= AnyBatchEventFlags(3003, 3004);
    GotoIf(S5, !chrFlag2);
    EnableCharacterDefaultBackread(10001052);
    Goto(L14);
S5:
    chrFlag &= EventFlag(3002);
    GotoIf(S6, !chrFlag);
    EnableCharacterDefaultBackread(10001051);
    Goto(L13);
S6:
    GotoIf(S7, !AnyBatchEventFlags(3000, 3001));
    EnableCharacterDefaultBackread(10001050);
    Goto(L12);
S7:
    EndEvent();
L12:
    flagChr2 &= TalkNPCEnabled(10001050) && CharacterBackreadStatus(10001050);
    WaitFor(flagChr2);
    WaitFixedTimeFrames(5);
    IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003072, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001050, 90109, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001050, TargetEntityType.Area, 10003072, -1);
    ClearSpEffect(10001050, 9940);
    EndEvent();
L13:
    flagChr2 &= TalkNPCEnabled(10001051) && CharacterBackreadStatus(10001051);
    WaitFor(flagChr2);
    WaitFixedTimeFrames(5);
    IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003072, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001051, 90109, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001051, TargetEntityType.Area, 10003072, -1);
    ClearSpEffect(10001051, 9940);
    EndEvent();
L14:
    flagChr2 &= TalkNPCEnabled(10001052) && CharacterBackreadStatus(10001052);
    WaitFor(flagChr2);
    WaitFixedTimeFrames(5);
    IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003072, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001052, 90109, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001052, TargetEntityType.Area, 10003072, -1);
    ClearSpEffect(10001052, 9940);
    EndEvent();
L15:
    flagChr2 &= TalkNPCEnabled(10001053) && CharacterBackreadStatus(10001053);
    WaitFor(flagChr2);
    WaitFixedTimeFrames(5);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003072, -1);
    WaitFixedTimeFrames(5);
    ForceAnimationPlayback(10001053, 90109, true, false, false);
    WaitFixedTimeFrames(1);
    IssueShortWarpRequest(10001053, TargetEntityType.Area, 10003072, -1);
    ClearSpEffect(10001053, 9940);
    EndEvent();
});

$Event(10009412, Restart, function() {
    WaitFor(
        CharacterHasSpEffect(10000790, 9961)
            || CharacterHasSpEffect(10001040, 9961)
            || CharacterHasSpEffect(10001041, 9961)
            || CharacterHasSpEffect(10001042, 9961)
            || CharacterHasSpEffect(10001043, 9961));
    GotoIf(L0, 
        CharacterHasSpEffect(10000790, 9971)
            || CharacterHasSpEffect(10001040, 9971)
            || CharacterHasSpEffect(10001041, 9971)
            || CharacterHasSpEffect(10001042, 9971)
            || CharacterHasSpEffect(10001043, 9971));
    Goto(L1);
L0:
    WaitFor(
        !CharacterHasSpEffect(10000790, 9971)
            && !CharacterHasSpEffect(10001040, 9971)
            && !CharacterHasSpEffect(10001041, 9971)
            && !CharacterHasSpEffect(10001042, 9971)
            && !CharacterHasSpEffect(10001043, 9971));
    DisableCharacterAI(10000790);
    DisableCharacterAI(10001040);
    DisableCharacterAI(10001041);
    DisableCharacterAI(10001042);
    DisableCharacterAI(10001043);
    WaitFixedTimeFrames(1);
    RestartEvent();
L1:
    WaitFor(
        CharacterHasSpEffect(10000790, 9971)
            || CharacterHasSpEffect(10001040, 9971)
            || CharacterHasSpEffect(10001041, 9971)
            || CharacterHasSpEffect(10001042, 9971)
            || CharacterHasSpEffect(10001043, 9971));
    EnableCharacterAI(10000790);
    EnableCharacterAI(10001040);
    EnableCharacterAI(10001041);
    EnableCharacterAI(10001042);
    EnableCharacterAI(10001043);
    RequestCharacterAIReplan(10000790);
    RequestCharacterAIReplan(10001040);
    RequestCharacterAIReplan(10001041);
    RequestCharacterAIReplan(10001042);
    RequestCharacterAIReplan(10001043);
    WaitFixedTimeFrames(1);
    RestartEvent();
});

$Event(10009413, Restart, function() {
    WaitFixedTimeFrames(3);
    WaitFor(CurrentScenarioSection(ScenarioSection.None) && EventFlag(1029852));
    WaitFixedTimeFrames(1);
    area = EntityInRadiusOfEntity(10000, 10001073, 10, 1);
    area2 = EntityInRadiusOfEntity(10000, 10001074, 10, 1);
    area3 = EntityInRadiusOfEntity(10000, 10001075, 10, 1);
    area4 = EntityInRadiusOfEntity(10000, 10001076, 10, 1);
    WaitFor(area || area2 || area3 || area4);
    GotoIf(L1, area.Passed);
    GotoIf(L2, area2.Passed);
    GotoIf(L3, area3.Passed);
    GotoIf(L4, area4.Passed);
    EndEvent();
L1:
    SetCharacterMaphit(10001073, false);
    DisableCharacterGravity(10001073);
    DisableCharacterCollision(10001073);
    ResetCharacterPosition(10001073);
    EndEvent();
L2:
    SetCharacterMaphit(10001074, false);
    DisableCharacterGravity(10001074);
    DisableCharacterCollision(10001074);
    ResetCharacterPosition(10001074);
    EndEvent();
L3:
    SetCharacterMaphit(10001075, false);
    DisableCharacterGravity(10001075);
    DisableCharacterCollision(10001075);
    ResetCharacterPosition(10001075);
    EndEvent();
L4:
    SetCharacterMaphit(10001076, false);
    DisableCharacterGravity(10001076);
    DisableCharacterCollision(10001076);
    ResetCharacterPosition(10001076);
    EndEvent();
});

$Event(100003435, Default, function(eventFlagId) {
    if ((EventFlag(3003) && !EventFlag(1109031)) || (EventFlag(3005) && !EventFlag(1109032))) {
        WaitFor(EventFlag(10002018));
        WaitFixedTimeFrames(3);
    }
    cond &= CurrentScenarioSection(ScenarioSection.None);
    if (!cond) {
        WaitFor(EventFlag(eventFlagId));
        WaitFor(CurrentScenarioSection(ScenarioSection.None));
        WaitFor(EventFlag(10009001) || EventFlag(10009002));
    }
    WaitFor(EventFlag(eventFlagId) || !CurrentScenarioSection(ScenarioSection.None));
    RestartIf(!CurrentScenarioSection(ScenarioSection.None));
    WaitFixedTimeSeconds(1);
    if (!AnyBatchEventFlags(10002011, 10002012)) {
        WaitFixedTimeFrames(60);
    }
    EndIf(!EventFlag(eventFlagId));
    cond &= CurrentScenarioSection(ScenarioSection.None);
    RestartIf(!cond);
    if (CurrentScenarioSection(ScenarioSection.None)
        && EventFlag(6951)
        && EventFlag(161)
        && EventFlag(1109140)
        && EventFlag(6038)
        && EventFlag(6039)
        && !EventFlag(136)
        && !EventFlag(10001965)) {
        WaitFor(EventFlag(136));
    }
    if (EventFlag(10003510)) {
        WaitFor(EventFlag(10003509));
        WaitFixedTimeSeconds(5);
        SetEventFlagID(10003510, OFF);
    }
    RecordUserDispLog(12200, 10000, LogObjectType.None, -1);
    ShowTutorialPopup(2000, true, true);
    SetEventFlagID(eventFlagId, OFF);
    RestartEvent();
});

