// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1047301955, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1047301955, 1047300955);
    $InitializeCommonEvent(0, 90015150, 1047300290, 73089);
    $InitializeCommonEvent(0, 90015151, 1047300290, 74049);
    $InitializeCommonEvent(0, 90015152, 1047300290, 74049);
    $InitializeCommonEvent(0, 90005251, 1047300230, 10, 0, 0);
    $InitializeCommonEvent(0, 90005251, 1047300231, 10, 0, 0);
    $InitializeCommonEvent(0, 90005251, 1047300232, 10, 0, 0);
    $InitializeEvent(0, 1047302500);
    $InitializeEvent(0, 1047302505);
    $InitializeEvent(0, 1047302510);
    $InitializeEvent(0, 1047302529);
    $InitializeEvent(0, 1047302800);
    $InitializeEvent(0, 1047302840);
});

$Event(1047302500, Restart, function() {
    DisableObjAct(1047301585, 99095);
});

$Event(1047302505, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(1047300590));
    WaitFor(EntityInRadiusOfEntity(20000, 1047301580, 100, 1));
    WaitFor(ElapsedSeconds(0.1));
    EndIf(EventFlag(1057300590));
    EndIf(EventFlag(1046300590));
    EnableAsset(1047301580);
    EnableAsset(1047301585);
    EnableAsset(1047301586);
});

$Event(1047302507, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(9192));
    WaitFor(EventFlag(1047300590) && EventFlag(1047308590));
    SetEventFlagID(9192, ON);
});

$Event(1047302510, Restart, function() {
    DisableNetworkSync();
    WaitFor(
        EventFlag(1047300590)
            && EventFlag(1047302505)
            && !EventFlag(1047302840)
            && InArea(20000, 1047302582));
    EnableAsset(1047301580);
    EnableAsset(1047301585);
    EnableAsset(1047301586);
    CreateAssetfollowingSFX(1047301582, 100, 641961);
    CreateAssetfollowingSFX(1047301582, 100, 6410);
    EnableObjAct(1047301585, 99095);
    WaitFor(!InArea(20000, 1047302582));
    DeleteAssetfollowingSFX(1047301582, true);
    RestartEvent();
});

$Event(1047302529, Restart, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(7603) && InArea(20000, 1047302529));
    SetSpEffect(20000, 99130);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(1047302530, Restart, function(eventFlagId, assetEntityId) {
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

$Event(1047302700, Restart, function(entityId) {
    CreateBulletOwner(1047300600);
    DisableNetworkSync();
    WaitFor(ActionButtonInArea(7810, entityId));
    SpawnOneshotSFX(TargetEntityType.Asset, entityId, 90, 803200);
    ShootBullet(1044370600, entityId, -1, 180070, 0, 0, 0);
    WaitFor(ElapsedSeconds(30));
    RestartEvent();
});

$Event(1047302800, Restart, function() {
    if (!EventFlag(1047302830)) {
        DisableCharacter(1047305800);
        DisableCharacter(1047305801);
        DisableCharacterAI(1047305800);
        DisableObjAct(1047301585, 99095);
    }
L0:
    EndEvent();
});

$Event(1047302801, Restart, function() {
    if (!EventFlag(1047302830)) {
        WaitFor(EventFlag(1047300590));
        EnableCharacter(1047305800);
        EnableCharacter(1047305810);
        ForceAnimationPlayback(1047305800, 700, true, false, false);
    }
L0:
    EndEvent();
});

$Event(1047302810, Restart, function() {
    if (!EventFlag(1047302830)) {
        WaitFor(
            EventFlag(1047302801)
                && (InArea(10002, 1046302890)
                    || InArea(10003, 1046302890)
                    || InArea(10004, 1046302890)
                    || InArea(20000, 1057302800)));
        EnableCharacter(1047305800);
        EnableCharacter(1047305801);
        EnableGenerator(1047301810);
        ForceAnimationPlayback(1047305800, 1700, false, false, false);
        CreateReferredDamagePair(1047305800, 1047300890);
        EnableCharacterAI(1047305800);
    }
L0:
    EndEvent();
});

$Event(1047302811, Restart, function() {
    DisableNetworkSync();
    if (!EventFlag(1047302830)) {
        WaitFor(EventFlag(1047302810) && EntityInRadiusOfEntity(20000, 1044370890, 80, 1));
        DisplayBossHealthBar(Enabled, 1044370890, 0, 909840000);
        SetSpEffect(20000, 99825);
        WaitFor(EventFlag(1047302810) && !EntityInRadiusOfEntity(20000, 1044370890, 80, 1));
        DisplayBossHealthBar(Disabled, 1044370890, 0, 909840000);
        ClearSpEffect(20000, 99825);
        RestartEvent();
    }
L0:
    EndEvent();
});

$Event(1047302820, Restart, function() {
    if (!EventFlag(1047302830)) {
        WaitFor(EventFlag(1047302810));
        SetSpEffect(0, 0);
    }
L0:
    EndEvent();
});

$Event(1047302830, Restart, function() {
    WaitFor(!EventFlag(1047302830) && EventFlag(1047302820) && CharacterHPValue(1044370890) <= 0);
    DisableGenerator(1044371810);
    PlaySE(1044370890, SoundType.SFX, 888880000);
    HandleMinibossDefeat(1044370890);
    DisplayBossHealthBar(Disabled, 1044370890, 0, 909840000);
    ForceCharacterDeath(1044375800, true);
    ForceCharacterDeath(1044375810, true);
    SetNetworkconnectedEventFlagID(1047300800, ON);
    EnableObjAct(1044371585, 99095);
});

$Event(1047302840, Restart, function() {
    DisableNetworkSync();
    EndIf(EventFlag(9192));
    WaitFor(EventFlag(1047302800) && EventFlag(1047300590));
    CreateAssetfollowingSFX(1047301585, 100, 807035);
    WaitFor(EventFlag(1047300590) && ActionButtonInArea(4313, 1047300585));
    DisplayTextEffectId(2200);
    SetEventFlagID(7603, ON);
    SetEventFlagID(9192, ON);
    DeleteAssetfollowingSFX(1047301582, true);
    DeleteAssetfollowingSFX(1047301585, true);
});


