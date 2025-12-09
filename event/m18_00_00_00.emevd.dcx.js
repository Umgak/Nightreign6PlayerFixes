// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90075700, 18005800, 18000810);
    $InitializeCommonEvent(0, 90075701, 18000801, 18002800);
    $InitializeCommonEvent(0, 90075704, 18000800, 18002800);
    $InitializeCommonEvent(0, 90075901, 18000800, 758000, 907580001);
    $InitializeCommonEvent(0, 90075902, 18005800, 0, 0);
    $InitializeCommonEvent(0, 90015012, 18000801, 7511);
    $InitializeCommonEvent(0, 90015020, 7511, 18000200);
    $InitializeCommonEvent(0, 90015012, 18000800, 18000201);
    $InitializeCommonEvent(0, 90015020, 18000201, 18002800);
    $InitializeCommonEvent(0, 90075702, 18000801, 18000201, 18002800);
    $InitializeCommonEvent(0, 90075703, 18000801, 18000800, 18000810, 18002820, 18002821, 18002822, 18002823, 18002824, 18002825, 18002810, 18000200, 18000201, 18002800); // NR6PF: Add targets for extra player teleports
    $InitializeCommonEvent(0, 90075705, 18000800, 18002830, 18000202, 46093, Weather.Type88, 18002400, 18002401, 18002800);
    $InitializeCommonEvent(0, 90075705, 18000800, 18002830, 18000203, 46094, Weather.Type20, 18002410, 18002411, 18002800);
    $InitializeCommonEvent(0, 90075705, 18000800, 18002830, 18000204, 46095, Weather.Type01, 18002420, 18002421, 18002800);
    $InitializeCommonEvent(0, 90075705, 18000800, 18002830, 18000205, 46096, Weather.Type10, 18002430, 18002431, 18002800);
    $InitializeCommonEvent(0, 90075705, 18000800, 18002830, 18000206, 46097, Weather.Type30, 18002440, 18002441, 18002800);
    $InitializeCommonEvent(0, 90075705, 18000800, 18002830, 18000207, 46098, Weather.Type11, 18002450, 18002451, 18002800);
    $InitializeCommonEvent(0, 90075705, 18000800, 18002830, 18000208, 46099, Weather.Type40, 18002460, 18002461, 18002800);
    $InitializeCommonEvent(0, 90075706, 18000801, 18000800, 18000201, 18002800);
    $InitializeEvent(0, 18002890);
    $InitializeEvent(0, 18002590);
    $InitializeEvent(0, 18002600);
    $InitializeEvent(0, 18002601);
    $InitializeEvent(0, 18002620);
    $InitializeEvent(0, 18002610);
    $InitializeCommonEvent(0, 90075930, 160, 9080);
    $InitializeCommonEvent(0, 90015200, 9314, 7);
    $InitializeCommonEvent(0, 90015201, 9315, 7, 160);
});

$Event(50, Default, function() {
    $InitializeEvent(0, 18002500);
});

$Event(18002500, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(18002500));
    EndIf(PlayerInMap(11, 0, 0, 0));
    WaitFor(EventFlag(12002001) && PlayerInMap(18, 0, 0, 0));
    FadeToBlack(1, 0, true, -1);
    WaitFixedTimeSeconds(2);
    FadeToBlack(0, 0.5, false, -1);
    EndEvent();
});

$Event(18002590, Default, function() {
    EndIf(IsPlayMode(0) || IsPlayMode(1));
    WaitFor(EventFlag(7512));
    DisplayTextEffectId(4000);
    WaitFixedTimeSeconds(15);
    SetEventFlagID(7000, ON);
});

$Event(18002600, Default, function() {
    WaitFor(
        EventFlag(18002800)
            && EventFlag(18002615)
            && !(CharacterHasSpEffect(20000, 9760) && IsHero(Hero.Wylder)));
    IssueShortWarpRequest(20000, TargetEntityType.Area, 18002600, -1);
    SetCameraAngle(0.84, 164.26);
    EnableAsset(18001900);
});

$Event(18002601, Default, function() {
    DisableCharacter(18000890);
    DisableNetworkSync();
    WaitFor(
        EventFlag(18002800)
            && EventFlag(18002615)
            && (CharacterHasSpEffect(20000, 9760) && IsHero(Hero.Wylder)));
    IssueShortWarpRequest(20000, TargetEntityType.Area, 18002601, -1);
    SetCameraAngle(15.985, -76.26);
    EnableCharacter(18000890);
    SetCharacterTeamType(18000890, TeamType.FriendlyNPC);
    DisableCharacterFadeOnEnable(18000890);
    EnableCharacterDefaultBackread(18000890);
    DisableCharacterGravity(18000890);
    WaitFor(ElapsedFrames(5));
    WaitFor(CharacterBackreadStatus(18000890));
    ForceAnimationPlayback(18000890, 30000, false, false, false);
    WaitFor(ActionButtonInArea(6750, 18000890));
    UnknownTalk2003120(1);
    FadeToBlack(1, 1, true, -1);
    WaitFixedTimeSeconds(1);
    PlayCutsceneToPlayer(18000000, CutscenePlayMode.SkippableWithFadeOutSkip, 10000);
    FadeToBlack(0, 1, true, -1);
    WaitFixedTimeFrames(1);
    SetEventFlagID(961, ON);
    FadeToBlack(1, 0, false, -1);
    WaitFixedTimeFrames(1);
    SetEventFlagID(21, ON);
});

$Event(18002610, Default, function() {
    EndIf(EventFlag(6020));
    EndIf(IsPlayMode(2));
    WaitFor(EventFlag(18002800));
    SetEventFlagID(9017, OFF);
    WaitFixedTimeSeconds(10);
    SpawnOneshotSFX(TargetEntityType.Area, 18002650, -1, 807190);
    PlaySE(20000, SoundType.EnvironmentalSound, 180000010);
    WaitFixedTimeSeconds(3);
    FadeToWhite(0, 0, false, 0);
    WaitFixedTimeFrames(1);
    FadeToWhite(1, 0.5, true, 0);
    WaitFixedTimeSeconds(0.5);
    ChangeWeather(Weather.Type85, -1, true);
    SetEventFlagID(18002615, ON);
    DisableAsset(18001510);
    WaitFixedTimeSeconds(0.8);
    FadeToWhite(0, 1.2, true, 0);
    WaitFixedTimeSeconds(1.2);
    FadeToBlack(0, 3, false, 2);
});

$Event(18002620, Default, function() {
    EndIf(EventFlag(6020));
    EndIf(IsPlayMode(2));
    WaitFor(EventFlag(18002800) && EventFlag(18002615));
    SetEventFlagID(6020, ON);
    FinalizeExpedition();
});

$Event(18002800, Default, function(chrEntityId) {
    if (!EventFlag(18002800)) {
        WaitFor(HPRatio(chrEntityId) <= 0);
        WaitFixedTimeSeconds(5);
        DisplayBossHealthBar(Disabled, 18000800, 0, 0);
        DisplayTextEffectId(1040);
        SetBossBGM(758000, BossBGMState.Stop2);
        IncrementTeamBossesKilled(1);
        SetNetworkconnectedEventFlagID(7512, ON);
        DisplayNetworkconnectedPermanentBuffPopup(130);
        SetSpEffect(20000, 9730);
        SetNetworkconnectedEventFlagID(18002800, ON);
    }
L1:
    NoOp();
});

$Event(18002801, Restart, function(chrEntityId, nameId, chrEntityId2, nameId2) {
    if (EventFlag(18002800)) {
        DisableCharacter(chrEntityId2);
        DisableCharacterCollision(chrEntityId2);
        ForceCharacterDeath(chrEntityId2, false);
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        ForceCharacterDeath(chrEntityId, false);
        EndEvent();
    }
L0:
    DisableCharacterAI(chrEntityId2);
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    DisableCharacterCollision(18000810);
    DisableCharacterAI(18000810);
    EnableCharacterImmortality(18000810);
    ForceAnimationPlayback(chrEntityId2, 30029, true, false, false);
    WaitFor(
        InArea(10000, 18002801)
            || HasDamageType(chrEntityId2, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId2, 436)
            || CharacterHasStateInfo(chrEntityId2, 2)
            || CharacterHasStateInfo(chrEntityId2, 5)
            || CharacterHasStateInfo(chrEntityId2, 6)
            || CharacterHasStateInfo(chrEntityId2, 260));
    SetNetworkconnectedEventFlagID(7511, ON);
    ForceAnimationPlayback(chrEntityId2, 20029, false, false, false);
    DisableCharacterHPBarDisplay(chrEntityId2);
    EnableCharacterAI(chrEntityId2);
    SetNetworkUpdateRate(chrEntityId2, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId2, 0, nameId2);
    SetBossBGM(758000, BossBGMState.Start);
    DisplayBossHealthBar(Disabled, chrEntityId, 0, nameId);
});

$Event(18002802, Restart, function(chrEntityId, nameId, chrEntityId2, nameId2) {
    EndIf(EventFlag(18002800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, 46082));
    SetCharacterTeamType(chrEntityId2, TeamType.Object);
    WaitFixedTimeSeconds(10);
    FadeToBlack(1, 1, true, -1);
    WarpCharacterAndCopyFloorUnknown200489(10000, TargetEntityType.Area, 18002820, -1, 10000, -1, -1);
    WaitFixedTimeSeconds(1);
    EnableCharacter(chrEntityId);
    WaitFixedTimeFrames(1);
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, 18002810, -1, chrEntityId2);
    ForceAnimationPlayback(chrEntityId, 20011, false, false, false);
    WaitFixedTimeFrames(1);
    EnableCharacterCollision(chrEntityId);
    EnableCharacterAI(chrEntityId);
    SetCharacterEventTarget(chrEntityId, 18000810);
    ChangeWeather(Weather.Type87, -1, true);
    DisplayBossHealthBar(Disabled, chrEntityId2, 0, nameId2);
    WaitFixedTimeSeconds(2);
    SetCameraAngle(5.42, 0);
    FadeToBlack(0, 2, false, 1);
    WaitFixedTimeSeconds(2);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
});

$Event(18002803, Restart, function(chrEntityId, chrEntityId2) {
    EndIf(EventFlag(18002800));
    WaitFor(CharacterHasSpEffect(chrEntityId, 46085));
    DisableCharacterCollision(chrEntityId2);
    DisableCharacter(chrEntityId2);
});

$Event(18002804, Restart, function(chrEntityId) {
    EndIf(EventFlag(18002800));
    WaitFor(CharacterHasSpEffect(chrEntityId, 46089));
    ChangeWeather(Weather.Type88, -1, true);
});

$Event(18002805, Restart, function(eventFlagId, bgmBossConvParamId, eventFlagId2, eventFlagId3, value, value2) {
    DisableNetworkSync();
    if (EventFlag(eventFlagId)) {
        EndEvent();
    }
L0:
    WaitFor(EventFlag(eventFlagId2));
    WaitFixedTimeFrames(1);
    if (!EventFlag(eventFlagId3)) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Start);
    }
    WaitFor(EventFlag(eventFlagId3) || EventFlag(eventFlagId));
    if (!EventFlag(eventFlagId)) {
        WaitFixedTimeFrames(1);
        if (Signed(value) != 0) {
        }
        SetBossBGM(bgmBossConvParamId, BossBGMState.HeatUp);
        WaitFor(EventFlag(eventFlagId));
    }
L1:
    if (Signed(value2) != 1) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Stop2);
        EndEvent();
    }
    SetBossBGM(bgmBossConvParamId, BossBGMState.Stop1);
});

$Event(18002810, Restart, function(chrEntityId) {
    EndIf(EventFlag(18002800));
    if (!EventFlag(18002810)) {
        WaitFor(CharacterHasSpEffect(chrEntityId, 46089));
        ForceAnimationPlayback(18001510, 100, false, true, false);
    }
    ForceAnimationPlayback(18001510, 101, true, false, false);
});

$Event(18002850, Restart, function(eventFlagId, eventFlagId2, bgmBossConvParamId, chrEntityId, spEffectId, targetAmount, state) {
    EndIf(EventFlag(eventFlagId2));
    if (eventFlagId != 0) {
        WaitFor(EventFlag(eventFlagId));
    }
    if (Signed(0) != spEffectId) {
        WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId, GreaterOrEqual, 1));
    } else {
        WaitFor(CharacterRatioHPRatio(chrEntityId, NotEqual, 0) <= targetAmount);
    }
    SetBossBGM(bgmBossConvParamId, state);
});

$Event(18002890, Restart, function() {
    WaitFor(EventFlag(7512));
    SetNetworkconnectedEventFlagID(18000800, ON);
    SetNetworkconnectedEventFlagID(18002800, ON);
});

