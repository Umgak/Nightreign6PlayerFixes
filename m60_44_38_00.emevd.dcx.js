// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 91005506, 1044385210);
    RegisterBonfire(1044381950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1044381950, 1044380950);
    RegisterBonfire(1044381952, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1044381952, 1044380952);
    $InitializeCommonEvent(0, 90015150, 1044380210, 73070);
    $InitializeCommonEvent(0, 90015151, 1044380210, 74030);
    $InitializeCommonEvent(0, 90015152, 1044380210, 74030);
    $InitializeCommonEvent(0, 90015150, 1044380211, 73071);
    $InitializeCommonEvent(0, 90015151, 1044380211, 74031);
    $InitializeCommonEvent(0, 90015152, 1044380211, 74031);
    $InitializeCommonEvent(0, 91005504, 1044381510, 7601, 0, 0, 0);
    $InitializeCommonEvent(0, 91005504, 1044381500, 7600, 7602, 7603, 7605);
    $InitializeCommonEvent(0, 90015140, 1044381210, 200, 9106, 1044388210);
    $InitializeEvent(0, 1044382900);
    $InitializeEvent(0, 1044382910);
    $InitializeEvent(0, 1044382920);
    $InitializeCommonEvent(0, 90085001, 801, Hero.Executor, 9253, 9253, 1044381260);
    if (1 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9263, 9253, 9253, 1044385260, 1044380260, 0, 0, 0, 20026);
    }
    if (2 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9263, 9253, 9253, 1044385260, 1044380260, 1044380261, 0, 0, 20026);
    }
    if (3 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9263, 9253, 9253, 1044385260, 1044380260, 1044380261, 1044380262, 0, 20026);
    }
    if (4 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9263, 9253, 9253, 1044385260, 1044380260, 1044380261, 1044380262, 1044380263, 20026);
    }
    $InitializeCommonEvent(0, 90085802, 801, 9263, 1044385260);
    $InitializeEvent(0, 1044382350, 1044380300, 1044380301, 1044381600);
    $InitializeCommonEvent(0, 90035075, 1044380230, 1044381200);
    $InitializeCommonEvent(0, 90035076, 1044380230, 1044381201);
    $InitializeCommonEvent(0, 90035077, 1044380230, 1044382800, 1044382801, 1044382802, 1044382803);
    $InitializeCommonEvent(0, 90035077, 1044380230, 1044382804, 1044382805, 1044382806, 1044382807);
    $InitializeCommonEvent(0, 90035077, 1044380230, 1044382808, 1044382809, 1044382810, 1044382811);
    $InitializeCommonEvent(0, 90035078, 1044380230, 1044386900);
    $InitializeCommonEvent(0, 90035079, 1044380230, 1044382700, 1044381200);
    $InitializeCommonEvent(0, 90035070, 0, 0, 1044385200, 1044380230);
    $InitializeCommonEvent(0, 90035085, 1044380230, 1044382710);
    $InitializeCommonEvent(0, 90035080, 1044380230, 1044385900, 1044382890);
    $InitializeCommonEvent(0, 90035081, 1044380230);
    $InitializeCommonEvent(0, 90035082, 1044380230, 1044380200, 1044380205, 1044380206);
    $InitializeCommonEvent(0, 90035083, 1044380230, 1);
    $InitializeCommonEvent(0, 90035083, 1044380230, 2);
    $InitializeCommonEvent(0, 90035083, 1044380230, 3);
    $InitializeCommonEvent(0, 90035084, 1044380230, 1044381200, 1044380200, 1);
    $InitializeCommonEvent(0, 90035084, 1044380230, 1044381200, 1044380205, 2);
    $InitializeCommonEvent(0, 90035084, 1044380230, 1044381200, 1044380206, 3);
    $InitializeCommonEvent(0, 90035087, 1044380230, 1044381200);
    $InitializeCommonEvent(0, 90035088, 1044380230, 1044380204);
    $InitializeCommonEvent(0, 90035088, 1044380230, 1044380207);
    $InitializeCommonEvent(0, 90015501, 1044382300, 73996);
});

$Event(50, Default, function() {
    $InitializeCommonEvent(0, 90035072, 1044380200);
});

$Event(1044382350, Restart, function(eventFlagId, eventFlagId2, entityId) {
    DisableNetworkSync();
    if (EventFlag(eventFlagId2)) {
        ForceAnimationPlayback(entityId, 2, true, false, false);
        EndEvent();
    }
L0:
    WaitFor(ActionButtonInArea(9390, entityId) || EventFlag(eventFlagId));
    if (!EventFlag(eventFlagId)) {
        if (!PlayerHasItem(ItemType.Goods, 8005)) {
            DisplayGenericDialog(4080, PromptType.OKCANCEL, NumberofOptions.NoButtons, entityId, 10);
            WaitFixedTimeSeconds(3);
            RestartEvent();
        }
        RecordUserDispLog(11330, 10000, LogObjectType.None, -1);
        ForceAnimationPlayback(10000, 60010, false, false, false);
        SetNetworkconnectedEventFlagID(eventFlagId, ON);
        SetNetworkconnectedEventFlagID(73900, ON);
        RemoveItemFromPlayer(ItemType.Goods, 8005, 1);
        SetEventFlagID(6300, ON);
        SaveRequest();
    }
L1:
    ForceAnimationPlayback(entityId, 1, false, true, false);
    SetNetworkconnectedEventFlagID(eventFlagId2, ON);
    EndEvent();
});

$Event(1044382360, Restart, function() {
    WaitFor(EventFlag(1044382601));
L0:
    ForceAnimationPlayback(1044381600, 2, true, false, false);
    EndEvent();
});

$Event(1044382370, Restart, function() {
    EndIf(EventFlag(1044382601));
    WaitFor(EventFlag(1044382600));
    ForceAnimationPlayback(1044381600, 1, false, true, false);
    SetNetworkconnectedEventFlagID(1044382601, ON);
});

$Event(1044382900, Restart, function() {
    WaitFor(SmallBaseAttached(1044382999, 30300000));
    EnableAsset(1044381900);
});

$Event(1044382910, Restart, function() {
    WaitFor(SmallBaseAttached(1044382998, 34100000));
    EnableAsset(1044381910);
});

$Event(1044382920, Restart, function() {
    WaitFor(SmallBaseAttached(1044382601, 30300000));
    EnableAsset(1044381900);
});


