// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(12001950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 12001950, 12000950);
    $InitializeEvent(0, 12002000);
    $InitializeEvent(0, 12002001);
    $InitializeEvent(0, 12002099);
    $InitializeEvent(0, 12002010, 120);
    // these are camera ids. ignore.
    $InitializeEvent(0, 12002020, 0, 12002500, 12002501, 0, 10002, 10003);
    $InitializeEvent(1, 12002020, 12002500, 12002501, 12002502, 10002, 10003, 10004);
    $InitializeEvent(2, 12002020, 12002501, 12002502, 12002503, 10003, 10004, 10005);
    $InitializeEvent(3, 12002020, 12002502, 12002503, 12002504, 10004, 10005, 10006);
    $InitializeEvent(4, 12002020, 12002503, 12002504, 0, 10005, 10006, 10007);
});

$Event(50, Default, function() {
    $InitializeEvent(0, 12002011);
});

$Event(12002000, Default, function() {
    EndIf(EventFlag(7523));
    DisableNetworkSync();
    WaitFor(PlayerInMap(12, 0, 0, 0));
    SetEventFlagID(9052, ON);
    BonfirelikeRecovery();
    RefillEstus();
    SetCameraAngle(0.42, 0.97);
    ForceAnimationPlayback(10000, 61001, false, false, false);
    FadeToBlack(1, 0, true, 0);
    WaitFixedTimeSeconds(1);
    FadeToBlack(0, 2, false, 1);
    WaitFixedTimeSeconds(2);
    if (HasMultiplayerState(MultiplayerState.Singleplayer)) {
        SetSpEffect(20000, 6999500);
    }
    DisplayTextEffectId(4101);
});

$Event(12002001, Default, function() {
    WaitFor(EventFlag(9052) && AllPlayersInArea(12002200));
    EnableHit(12004510);
    DisableCharacterDefaultBackread(12000950);
    DisableCharacterDefaultBackread(12000200);
    DisableCharacterDefaultBackread(12000201);
    WaitFixedTimeSeconds(1);
    GotoIf(L0, TargetingBoss(TargetBoss.Heolstor));
    GotoIf(L1, TargetingBoss(TargetBoss.Harmonia));
    GotoIf(L2, TargetingBoss(TargetBoss.Straghess));
    Goto(L3);
    WaitFixedTimeSeconds(0.1);
    RestartEvent();
L0:
    if (!EventFlag(7523)) {
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.Skippable, 18002200, 18000000, 20000, 0, false, true);
    }
    if (EventFlag(7523)) {
        FadeToBlack(0, 1, false, -1);
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.SkippableWithFadeOutSkip, 18002200, 18000000, 20000, 0, false, true);
    }
    ChangeCamera(-1);
    SetNetworkconnectedEventFlagID(7510, ON);
    EndEvent();
L1:
    if (!EventFlag(7523)) {
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.Skippable, 16002200, 16000000, 20000, 0, false, true);
    }
    if (EventFlag(7523)) {
        FadeToBlack(0, 1, false, -1);
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.SkippableWithFadeOutSkip, 16002200, 16000000, 20000, 0, false, true);
    }
    ChangeCamera(-1);
    SetNetworkconnectedEventFlagID(7510, ON);
    EndEvent();
L2:
    if (!EventFlag(7523)) {
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.Skippable, 16102200, 16100000, 20000, 0, false, true);
    }
    if (EventFlag(7523)) {
        FadeToBlack(0, 1, false, -1);
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.SkippableWithFadeOutSkip, 16102200, 16100000, 20000, 0, false, true);
    }
    ChangeCamera(-1);
    SetNetworkconnectedEventFlagID(7510, ON);
    EndEvent();
L3:
    if (!EventFlag(7523)) {
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.Skippable, 19002200, 19000000, 20000, 0, false, true);
    }
    if (EventFlag(7523)) {
        FadeToBlack(0, 1, false, -1);
        PlayCutsceneToPlayerAndWarp(12000010, CutscenePlayMode.SkippableWithFadeOutSkip, 19002200, 19000000, 20000, 0, false, true);
    }
    ChangeCamera(-1);
    SetNetworkconnectedEventFlagID(7510, ON);
    EndEvent();
});

$Event(12002010, Default, function(targetTimeSeconds) {
    EndIf(HasMultiplayerState(MultiplayerState.Singleplayer));
    EndIf(EventFlag(7510));
    EndIf(EventFlag(7523));
    if (!EventFlag(7522)) {
        WaitFor(EventFlag(9052));
        WaitFor(ElapsedSeconds(targetTimeSeconds) || EventFlag(7510) || EventFlag(7522));
        EndIf(EventFlag(7510));
        SetNetworkconnectedEventFlagID(7522, ON);
    }
L0:
    WaitFor(ActionButtonInArea(9292, 12000280) || EventFlag(7510));
    EndIf(EventFlag(7510));
    SetNetworkconnectedEventFlagID(7523, ON);
});

$Event(12002011, Default, function() {
    DisableNetworkSync();
    EndIf(!EventFlag(7523));
    FadeToBlack(1, 0, true, -1);
    WaitFixedTimeSeconds(1);
    FadeToBlack(0, 1, false, -1);
});

$Event(12002020, Default, function(areaEntityId, areaEntityId2, areaEntityId3, cameraId, cameraId2, cameraId3) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId2));
    ChangeCamera(cameraId2);
    WaitFor(!InArea(20000, areaEntityId2));
    GotoIf(S0, areaEntityId != 0);
    GotoIf(S1, !InArea(20000, areaEntityId3));
    Goto(S2);
S0:
    GotoIf(S2, !InArea(20000, areaEntityId));
S1:
    ChangeCamera(cameraId);
S2:
    GotoIf(S3, areaEntityId3 != 0);
    GotoIf(S4, !InArea(20000, areaEntityId));
    Goto(S5);
S3:
    GotoIf(S5, !InArea(20000, areaEntityId3));
S4:
    ChangeCamera(cameraId3);
S5:
    RestartEvent();
});

$Event(12002050, Default, function() {
    EndIf(HasMultiplayerState(MultiplayerState.Multiplayer));
    WaitFor(PlayerInMap(12, 0, 0, 0) && CharacterDead(20000));
    WaitFor(!CharacterDead(20000));
    MoveBloodstainAndDroppedItems(12002510, 12002511);
});

$Event(12002099, Default, function() {
    EndIf(!EventFlag(7510));
    WaitFor(InArea(10000, 12002200));
    WaitFixedTimeSeconds(1);
    FadeToBlack(0, 1, false, -1);
    GotoIf(L0, TargetingBoss(TargetBoss.Heolstor));
    GotoIf(L1, TargetingBoss(TargetBoss.Harmonia));
    GotoIf(L2, TargetingBoss(TargetBoss.Straghess));
    Goto(L3);
    WaitFixedTimeSeconds(0.1);
    RestartEvent();
    // NR6PF: All of these have new warp points defined for the extra players - should make it look a lil cleaner
L0:
    WarpPlayerWithPlayerNo(18, 0, 0, 0, 18002200);
    EndEvent();
L1:
    WarpPlayerWithPlayerNo(16, 0, 0, 0, 16002200);
    EndEvent();
L2:
    WarpPlayerWithPlayerNo(16, 10, 0, 0, 16102200);
    EndEvent();
L3:
    WarpPlayerWithPlayerNo(19, 0, 0, 0, 19002200);
    EndEvent();
});

