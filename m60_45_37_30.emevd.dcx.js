// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1057301955, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1057301955, 1057300955);
    $InitializeCommonEvent(0, 90005580, 1057301956, 1057300956, 7669);
    $InitializeCommonEvent(0, 90065901, 1057304890);
    $InitializeCommonEvent(0, 90015150, 1057300290, 73091);
    $InitializeCommonEvent(0, 90015151, 1057300290, 74051);
    $InitializeCommonEvent(0, 90015152, 1057300290, 74051);
    $InitializeCommonEvent(0, 90015150, 1057300291, 73092);
    $InitializeCommonEvent(0, 90015151, 1057300291, 74052);
    $InitializeCommonEvent(0, 90015152, 1057300291, 74052);
    $InitializeCommonEvent(0, 90005251, 1057300236, 10, 0, 0);
    $InitializeCommonEvent(0, 90005251, 1057300237, 10, 0, 0);
    $InitializeCommonEvent(0, 90005251, 1057300238, 10, 0, 0);
    $InitializeCommonEvent(0, 90005910, 1057301805, 7694);
    $InitializeCommonEvent(0, 91005505, 1057302500, 7694);
    $InitializeCommonEvent(0, 90065901, 1057304890);
    $InitializeEvent(0, 1057302500);
    $InitializeEvent(0, 1057302505);
    $InitializeEvent(0, 1057302510);
    $InitializeEvent(0, 1057302529);
    $InitializeEvent(0, 1057302800);
    $InitializeEvent(0, 1057302840);
});

$Event(1057302500, Restart, function() {
    DisableObjAct(1057301585, 99095);
});

$Event(1057302505, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(1057300590));
    WaitFor(EntityInRadiusOfEntity(20000, 1057301580, 100, 1));
    WaitFor(ElapsedSeconds(0.1));
    EndIf(EventFlag(1046300590));
    EndIf(EventFlag(1047300590));
    EnableAsset(1057301580);
    EnableAsset(1057301585);
    EnableAsset(1057301586);
});

$Event(1057302507, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(9192));
    WaitFor(EventFlag(1057300590));
    SetEventFlagID(9192, ON);
});

$Event(1057302510, Restart, function() {
    DisableNetworkSync();
    WaitFor(
        EventFlag(1057300590)
            && EventFlag(1057302505)
            && !EventFlag(1057302840)
            && InArea(20000, 1057302582));
    EnableAsset(1057301580);
    EnableAsset(1057301585);
    EnableAsset(1057301586);
    CreateAssetfollowingSFX(1057301582, 100, 641961);
    CreateAssetfollowingSFX(1057301582, 100, 6410);
    EnableObjAct(1057301585, 99095);
    WaitFor(!InArea(20000, 1057302582));
    DeleteAssetfollowingSFX(1057301582, true);
    RestartEvent();
});

$Event(1057302529, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(7603) && InArea(20000, 1057302529));
    SetSpEffect(20000, 99130);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(1057302530, Restart, function(eventFlagId, assetEntityId) {
    DisableNetworkSync();
    if (EventFlag(eventFlagId)) {
        DisableAsset(assetEntityId);
        EndEvent();
    }
    WaitFor(ActionButtonInArea(9030, assetEntityId));
    SetSpEffect(20000, 8971310);
    DisableAsset(assetEntityId);
    SetEventFlagID(eventFlagId, ON);
});

$Event(1057302700, Restart, function(entityId) {
    CreateBulletOwner(1057300600);
    DisableNetworkSync();
    WaitFor(ActionButtonInArea(7810, entityId));
    SpawnOneshotSFX(TargetEntityType.Asset, entityId, 90, 803200);
    ShootBullet(1057300600, entityId, -1, 180070, 0, 0, 0);
    WaitFor(ElapsedSeconds(30));
    RestartEvent();
});

$Event(1057302800, Restart, function() {
    if (!EventFlag(1057302830)) {
        DisableCharacter(1045375800);
        DisableCharacterAI(1045375800);
        DisableObjAct(1045371585, 99095);
    }
L0:
    EndEvent();
});

$Event(1057302801, Restart, function() {
    if (!EventFlag(1057302830)) {
        WaitFor(EventFlag(1057300590) && EventFlag(1057302800));
        EnableCharacter(1045375800);
        EnableCharacter(1045375801);
    }
L0:
    EndEvent();
});

$Event(1057302810, Restart, function() {
    if (!EventFlag(1057302830)) {
        WaitFor(
            EventFlag(1057302801)
                && (InArea(10002, 1045372800)
                    || InArea(10003, 1045372800)
                    || InArea(10004, 1045372800)
                    || InArea(20000, 1045372800)));
        EnableGenerator(1045371810);
        EnableCharacterAI(1045375800);
        WaitFor(ElapsedFrames(1));
        CreateReferredDamagePair(1045375800, 1045370890);
    }
L0:
    EndEvent();
});

$Event(1057302811, Restart, function() {
    DisableNetworkSync();
    if (!EventFlag(1057302830)) {
        WaitFor(EventFlag(1057302810) && EntityInRadiusOfEntity(20000, 1057300890, 80, 1));
        DisplayBossHealthBar(Enabled, 1045370890, 0, 909830000);
        SetSpEffect(20000, 99825);
        WaitFor(EventFlag(1057302801) && !EntityInRadiusOfEntity(20000, 1045370890, 80, 1));
        DisplayBossHealthBar(Disabled, 1045370890, 0, 909830000);
        ClearSpEffect(20000, 99825);
        RestartEvent();
    }
L0:
    EndEvent();
});

$Event(1057302820, Default, function() {
    if (!EventFlag(1057302830)) {
        WaitFor(EventFlag(1057302810));
        SetSpEffect(0, 0);
    }
L0:
    EndEvent();
});

$Event(1057302830, Restart, function() {
    WaitFor(EventFlag(1057302820) && !EventFlag(1057302830) && CharacterHPValue(1045370890) <= 0);
    EnableObjAct(1057301585, 99095);
    DisableGenerator(1057301810);
    PlaySE(1057300890, SoundType.SFX, 888880000);
    HandleMinibossDefeat(1057300890);
    SetNetworkconnectedEventFlagID(1057300800, ON);
    DisplayBossHealthBar(Disabled, 1057300890, 0, 909830000);
    WaitFor(ElapsedFrames(1));
    ForceCharacterDeath(1057305800, true);
});

$Event(1057302840, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(9192));
    WaitFor(EventFlag(1057302800) && EventFlag(1057300590));
    CreateAssetfollowingSFX(1057301585, 100, 807035);
    WaitFor(EventFlag(1057300590) && ActionButtonInArea(4313, 1057300585));
    DisplayTextEffectId(2200);
    SetEventFlagID(7603, ON);
    SetEventFlagID(9192, ON);
    DeleteAssetfollowingSFX(1057301582, true);
    DeleteAssetfollowingSFX(1057301585, true);
});


