// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1046301955, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1046301955, 1046300955);
    $InitializeCommonEvent(0, 90005580, 1046301956, 1046300956, 7668);
    $InitializeCommonEvent(0, 90065901, 1046304890);
    $InitializeCommonEvent(0, 90005211, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90015150, 1046300290, 73090);
    $InitializeCommonEvent(0, 90015151, 1046300290, 74050);
    $InitializeCommonEvent(0, 90015152, 1046300290, 74050);
    $InitializeEvent(0, 1046302230);
    $InitializeCommonEvent(0, 90005251, 1046300233, 10, 0, 0);
    $InitializeCommonEvent(0, 90005251, 1046300234, 10, 0, 0);
    $InitializeCommonEvent(0, 90005251, 1046300235, 10, 0, 0);
    $InitializeCommonEvent(0, 91005503, 1046301550);
    $InitializeCommonEvent(0, 90005910, 1046301805, 7693);
    $InitializeCommonEvent(0, 91005505, 1046302500, 7693);
    $InitializeCommonEvent(0, 90065901, 1046304890);
    $InitializeEvent(0, 1046302500);
    $InitializeEvent(0, 1046302505);
    $InitializeEvent(0, 1046302510);
    $InitializeEvent(0, 1046302529);
    $InitializeEvent(0, 1046302800);
    $InitializeEvent(0, 1046302840);
});

$Event(1046302230, Restart, function() {
    SetSpEffect(1046300233, 10113);
    SetSpEffect(1046300234, 10113);
    SetSpEffect(1046300235, 10113);
    SetSpEffect(1046300233, 13177);
    SetSpEffect(1046300234, 13177);
    SetSpEffect(1046300235, 13177);
});

$Event(1046302500, Restart, function() {
    DisableObjAct(1046301585, 99095);
});

$Event(1046302505, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(1046300590) && EntityInRadiusOfEntity(20000, 1046301580, 100, 1));
    EndIf(EventFlag(1057300590));
    EndIf(EventFlag(1047300590));
    EnableAsset(1046301580);
    EnableAsset(1046301585);
    EnableAsset(1046301586);
});

$Event(1046302510, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(1046300590) && !EventFlag(1046302840) && InArea(20000, 1046302582));
    EnableAsset(1046301580);
    EnableAsset(1046301585);
    EnableAsset(1046301586);
    CreateAssetfollowingSFX(1046301582, 100, 641961);
    CreateAssetfollowingSFX(1046301582, 100, 6410);
    EnableObjAct(1046301585, 99095);
    WaitFor(!InArea(20000, 1046302582));
    DeleteAssetfollowingSFX(1046301582, true);
    RestartEvent();
});

$Event(1046302507, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(9192));
    WaitFor(EventFlag(1046300590) && EventFlag(1046308590));
    SetEventFlagID(9192, ON);
});

$Event(1046302529, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(7603) && InArea(20000, 1046302529));
    SetSpEffect(20000, 99130);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(1046302530, Restart, function(chrEntityId, entityId) {
    CreateBulletOwner(chrEntityId);
    WaitFor(ActionButtonInArea(9030, entityId));
    ShootBullet(chrEntityId, entityId, 90, 180070, 0, 0, 0);
    SpawnOneshotSFX(TargetEntityType.Asset, entityId, 90, 0);
});

$Event(1046302700, Restart, function(entityId) {
    CreateBulletOwner(1046300600);
    DisableNetworkSync();
    WaitFor(ActionButtonInArea(7810, entityId));
    SpawnOneshotSFX(TargetEntityType.Asset, entityId, 90, 803200);
    ShootBullet(1046300600, entityId, -1, 180070, 0, 0, 0);
    WaitFor(ElapsedSeconds(30));
    RestartEvent();
});

$Event(1046302800, Restart, function() {
    if (!EventFlag(1046302830)) {
        DisableCharacter(1046305810);
        DisableCharacter(1046305811);
        DisableObjAct(1046301585, 99095);
    }
L0:
    EndEvent();
});

$Event(1046302801, Restart, function() {
    if (!EventFlag(1046302830)) {
        WaitFor(EventFlag(1046300590));
        SetSpEffect(0, 0);
    }
L0:
    EndEvent();
});

$Event(1046302810, Restart, function() {
    // Let extra players trigger linked boss in rotted woods
    if (!EventFlag(1046302830)) {
        WaitFor(
            EventFlag(1046302801)
                && (InArea(10002, 1046302891)
                    || InArea(10003, 1046302891)
                    || InArea(10004, 1046302891)
                    // NR6PF: Extra checks
                    || InArea(10005, 1046302891)
                    || InArea(10006, 1046302891)
                    || InArea(10007, 1046302891)
                    || InArea(20000, 1057302800))); // vanilla typo? m60_45_37_30 has this id, but not m60_44_36_30
        EnableCharacter(1044365810);
        EnableGenerator(1044361850);
        CreateReferredDamagePair(1044365810, 1044360890);
        DisplayBossHealthBar(Enabled, 1044360890, 0, 909850000);
    }
L0:
    EndEvent();
});

$Event(1046302811, Restart, function() {
    DisableNetworkSync();
    if (!EventFlag(1046302830)) {
        WaitFor(EventFlag(1046302810) && !EntityInRadiusOfEntity(20000, 1044360890, 80, 1));
        DisplayBossHealthBar(Disabled, 1044360890, 0, 909850000);
        ClearSpEffect(20000, 99825);
        WaitFor(EventFlag(1046302810) && EntityInRadiusOfEntity(20000, 1044360890, 80, 1));
        DisplayBossHealthBar(Enabled, 1044360890, 0, 909850000);
        SetSpEffect(20000, 99825);
        RestartEvent();
    }
L0:
    EndEvent();
});

$Event(1046302820, Restart, function() {
    if (!EventFlag(1046302830)) {
        WaitFor(EventFlag(1046302810) && !EventFlag(1046302830) && HPRatio(1044360890) <= 0.5);
        EnableCharacter(1044365811);
        EnableGenerator(1044361851);
        CreateReferredDamagePair(1044365811, 1044360890);
    }
L0:
    EndEvent();
});

$Event(1046302830, Restart, function() {
    WaitFor(!EventFlag(1046302830) && EventFlag(1046302820) && CharacterHPValue(1044360890) <= 0);
    DisableGenerator(1044361850);
    DisableGenerator(1044361851);
    PlaySE(1044360890, SoundType.SFX, 888880000);
    HandleMinibossDefeat(1044370890);
    DisplayBossHealthBar(Disabled, 1044360890, 0, 909850000);
    ForceCharacterDeath(1044365810, true);
    ForceCharacterDeath(1044365811, true);
    SetNetworkconnectedEventFlagID(1046300800, ON);
    EnableObjAct(1044361585, 99095);
});

$Event(1046302840, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(9192));
    WaitFor(EventFlag(1046302800) && EventFlag(1046300590));
    CreateAssetfollowingSFX(1046301585, 100, 807035);
    WaitFor(EventFlag(1046300590) && ActionButtonInArea(4313, 1046300585));
    DisplayTextEffectId(2200);
    SetEventFlagID(7603, ON);
    SetEventFlagID(9192, ON);
    DeleteAssetfollowingSFX(1046301582, true);
    DeleteAssetfollowingSFX(1046301585, true);
});

