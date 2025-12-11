// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1037401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1037401950, 1037400950);
    $InitializeCommonEvent(0, 90015150, 1037400300, 75057);
    $InitializeCommonEvent(0, 90015151, 1037400300, 76017);
    $InitializeCommonEvent(0, 90015152, 1037400300, 76017);
    $InitializeCommonEvent(0, 90015150, 1037400301, 75058);
    $InitializeCommonEvent(0, 90015151, 1037400301, 76018);
    $InitializeCommonEvent(0, 90015152, 1037400301, 76018);
    $InitializeCommonEvent(0, 90015150, 1037400302, 75059);
    $InitializeCommonEvent(0, 90015151, 1037400302, 76019);
    $InitializeCommonEvent(0, 90015152, 1037400302, 76019);
    $InitializeCommonEvent(0, 90015150, 1037400303, 75060);
    $InitializeCommonEvent(0, 90015151, 1037400303, 76020);
    $InitializeCommonEvent(0, 90015152, 1037400303, 76020);
    $InitializeCommonEvent(0, 90015440, 1037401200, 1037400253, 1037400313, 1037400283);
    $InitializeCommonEvent(0, 90015440, 1037401201, 1037400254, 1037400314, 1037400284);
    $InitializeCommonEvent(0, 90015440, 1037401202, 1037400255, 1037400315, 1037400285);
    $InitializeCommonEvent(0, 90015440, 1037401203, 1037400272, 1037400332, 1037400302);
    $InitializeCommonEvent(0, 90015440, 1037401204, 1037400276, 1037400336, 1037400306);
    $InitializeCommonEvent(0, 90015140, 1037401300, 200, 9105, 1037408300);
    $InitializeCommonEvent(1, 90015140, 1037401301, 200, 9106, 1037408301);
    $InitializeCommonEvent(0, 90005931, 1037400390, 1037401291, 0, 1037401292);
    $InitializeCommonEvent(0, 91005503, 1037401250);
});

$Event(200, Default, function() {
    $InitializeEvent(0, 1037402210);
    $InitializeEvent(0, 1037402211);
    $InitializeEvent(0, 1037402206, 1, 2, 3, 1060001600);
    $InitializeEvent(0, 1037402205, 1, 2, 3, 4, 1060001600);
});

$Event(1037402205, Restart, function(thresholdValue, thresholdValue2, thresholdValue3, thresholdValue4, assetEntityId) {
    DisableNetworkSync();
    EndIf(HasMultiplayerState(MultiplayerState.Singleplayer));
    if (EventFlag(1037400205)) {
        ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 1);
        ChangeAssetEnableStateUnknown200510(1060001601, Enabled, 1);
        EndEvent();
    }
    if (EventValue(1037400200, 5) >= thresholdValue4) {
        ReproduceAssetAnimation(assetEntityId, 41);
    } else if (EventValue(1037400200, 5) >= thresholdValue3) {
        ReproduceAssetAnimation(assetEntityId, 31);
    } else {
        if (EventValue(1037400200, 5) >= thresholdValue2) {
            ReproduceAssetAnimation(assetEntityId, 21);
        } else {
            if (EventValue(1037400200, 5) >= thresholdValue) {
                ReproduceAssetAnimation(assetEntityId, 11);
            } else {
                WaitFor(EventValue(1037400200, 5) >= thresholdValue);
                WaitFixedTimeSeconds(2);
                ForceAnimationPlayback(assetEntityId, 10, false, false, false);
                WaitFor(ElapsedSeconds(4));
                ForceAnimationPlayback(assetEntityId, 11, true, false, false);
            }
L2:
            WaitFor(EventValue(1037400200, 5) >= thresholdValue2);
            WaitFixedTimeSeconds(2);
            ForceAnimationPlayback(assetEntityId, 20, false, false, false);
            WaitFor(ElapsedSeconds(4));
            ForceAnimationPlayback(assetEntityId, 21, true, false, false);
        }
L3:
        WaitFor(EventValue(1037400200, 5) >= thresholdValue3);
        WaitFixedTimeSeconds(2);
        ForceAnimationPlayback(assetEntityId, 30, false, false, false);
        WaitFor(ElapsedSeconds(4));
        ForceAnimationPlayback(assetEntityId, 31, true, false, false);
    }
L5:
    WaitFor(EventValue(1037400200, 5) >= thresholdValue4);
    WaitFixedTimeSeconds(2);
    ForceAnimationPlayback(assetEntityId, 50, false, false, false);
    WaitFixedTimeSeconds(3);
    ChangeAssetEnableStateUnknown200510(1060001601, Enabled, 2);
    WaitFixedTimeSeconds(4);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 2.5);
    RecordUserDispLog(110211, assetEntityId, LogObjectType.None, -1);
    SetNetworkconnectedEventFlagID(1037400205, ON);
});

$Event(1037402206, Restart, function(thresholdValue, thresholdValue2, thresholdValue3, assetEntityId) {
    DisableNetworkSync();
    EndIf(HasMultiplayerState(MultiplayerState.Multiplayer));
    if (EventFlag(1037400205)) {
        ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 1);
        ChangeAssetEnableStateUnknown200510(1060001601, Enabled, 1);
        EndEvent();
    }
    if (EventValue(1037400200, 5) >= thresholdValue3) {
        ReproduceAssetAnimation(assetEntityId, 41);
    } else if (EventValue(1037400200, 5) >= thresholdValue2) {
        ReproduceAssetAnimation(assetEntityId, 31);
    } else {
        if (EventValue(1037400200, 5) >= thresholdValue) {
            ReproduceAssetAnimation(assetEntityId, 11);
        } else {
            WaitFor(EventValue(1037400200, 5) >= thresholdValue);
            WaitFixedTimeSeconds(2);
            ForceAnimationPlayback(assetEntityId, 10, false, false, false);
            WaitFor(ElapsedSeconds(4));
            ForceAnimationPlayback(assetEntityId, 11, true, false, false);
        }
L3:
        WaitFor(EventValue(1037400200, 5) >= thresholdValue2);
        WaitFixedTimeSeconds(2);
        ForceAnimationPlayback(assetEntityId, 30, false, false, false);
        WaitFor(ElapsedSeconds(4));
        ForceAnimationPlayback(assetEntityId, 31, true, false, false);
    }
L5:
    WaitFor(EventValue(1037400200, 5) >= thresholdValue3);
    WaitFixedTimeSeconds(2);
    ForceAnimationPlayback(assetEntityId, 50, false, false, false);
    WaitFixedTimeSeconds(3);
    ChangeAssetEnableStateUnknown200510(1060001601, Enabled, 2);
    WaitFixedTimeSeconds(4);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 2.5);
    RecordUserDispLog(110211, assetEntityId, LogObjectType.None, -1);
    SetNetworkconnectedEventFlagID(1037400205, ON);
});

$Event(1037402210, Restart, function() {
    EndIf(EventFlag(1037400210));
    EndIf(!PlayerIsInOwnWorld());
    WaitFor(EventFlag(7500));
    if (!EventFlag(9999)) {
        RandomlySetNetworkconnectedEventFlagInRange(1037400211, 1037400214, ON);
    }
    WaitFor(AnyBatchEventFlags(1037400211, 1037400219));
    if (EventFlag(1037400211)) {
        SetNetworkconnectedEventFlagID(1037400250, ON);
        SetNetworkconnectedEventFlagID(1037400253, ON);
        SetNetworkconnectedEventFlagID(1037400256, ON);
        SetNetworkconnectedEventFlagID(1037400261, ON);
        SetNetworkconnectedEventFlagID(1037400264, ON);
        SetNetworkconnectedEventFlagID(1037400266, ON);
        SetNetworkconnectedEventFlagID(1037400267, ON);
        SetNetworkconnectedEventFlagID(1037400271, ON);
    }
L1:
    if (EventFlag(1037400212)) {
        SetNetworkconnectedEventFlagID(1037400250, ON);
        SetNetworkconnectedEventFlagID(1037400255, ON);
        SetNetworkconnectedEventFlagID(1037400262, ON);
        SetNetworkconnectedEventFlagID(1037400270, ON);
        SetNetworkconnectedEventFlagID(1037400272, ON);
        SetNetworkconnectedEventFlagID(1037400275, ON);
        SetNetworkconnectedEventFlagID(1037400276, ON);
        SetNetworkconnectedEventFlagID(1037400278, ON);
    }
L2:
    if (EventFlag(1037400213)) {
        SetNetworkconnectedEventFlagID(1037400251, ON);
        SetNetworkconnectedEventFlagID(1037400259, ON);
        SetNetworkconnectedEventFlagID(1037400266, ON);
        SetNetworkconnectedEventFlagID(1037400267, ON);
        SetNetworkconnectedEventFlagID(1037400270, ON);
        SetNetworkconnectedEventFlagID(1037400272, ON);
        SetNetworkconnectedEventFlagID(1037400277, ON);
        SetNetworkconnectedEventFlagID(1037400278, ON);
    }
L3:
    if (EventFlag(1037400214)) {
        SetNetworkconnectedEventFlagID(1037400253, ON);
        SetNetworkconnectedEventFlagID(1037400256, ON);
        SetNetworkconnectedEventFlagID(1037400261, ON);
        SetNetworkconnectedEventFlagID(1037400262, ON);
        SetNetworkconnectedEventFlagID(1037400273, ON);
        SetNetworkconnectedEventFlagID(1037400274, ON);
        SetNetworkconnectedEventFlagID(1037400276, ON);
        SetNetworkconnectedEventFlagID(1037400279, ON);
    }
L4:
    if (EventFlag(1037400215)) {
        SetNetworkconnectedEventFlagID(1037400220, ON);
    }
L5:
    if (EventFlag(1037400216)) {
        SetNetworkconnectedEventFlagID(1037400220, ON);
    }
L6:
    if (EventFlag(1037400217)) {
        SetNetworkconnectedEventFlagID(1037400220, ON);
    }
L7:
    if (EventFlag(1037400218)) {
        SetNetworkconnectedEventFlagID(1037400220, ON);
    }
L8:
    if (EventFlag(1037400219)) {
        SetNetworkconnectedEventFlagID(1037400250, ON);
        SetNetworkconnectedEventFlagID(1037400251, ON);
        SetNetworkconnectedEventFlagID(1037400252, ON);
        SetNetworkconnectedEventFlagID(1037400253, ON);
        SetNetworkconnectedEventFlagID(1037400254, ON);
        SetNetworkconnectedEventFlagID(1037400255, ON);
        SetNetworkconnectedEventFlagID(1037400256, ON);
        SetNetworkconnectedEventFlagID(1037400257, ON);
        SetNetworkconnectedEventFlagID(1037400258, ON);
        SetNetworkconnectedEventFlagID(1037400259, ON);
        SetNetworkconnectedEventFlagID(1037400260, ON);
        SetNetworkconnectedEventFlagID(1037400261, ON);
        SetNetworkconnectedEventFlagID(1037400262, ON);
        SetNetworkconnectedEventFlagID(1037400263, ON);
        SetNetworkconnectedEventFlagID(1037400264, ON);
        SetNetworkconnectedEventFlagID(1037400265, ON);
        SetNetworkconnectedEventFlagID(1037400266, ON);
        SetNetworkconnectedEventFlagID(1037400267, ON);
        SetNetworkconnectedEventFlagID(1037400268, ON);
        SetNetworkconnectedEventFlagID(1037400269, ON);
        SetNetworkconnectedEventFlagID(1037400270, ON);
        SetNetworkconnectedEventFlagID(1037400271, ON);
        SetNetworkconnectedEventFlagID(1037400272, ON);
        SetNetworkconnectedEventFlagID(1037400273, ON);
        SetNetworkconnectedEventFlagID(1037400274, ON);
        SetNetworkconnectedEventFlagID(1037400275, ON);
        SetNetworkconnectedEventFlagID(1037400276, ON);
        SetNetworkconnectedEventFlagID(1037400277, ON);
        SetNetworkconnectedEventFlagID(1037400278, ON);
        SetNetworkconnectedEventFlagID(1037400279, ON);
    }
L9:
    SetNetworkconnectedEventFlagID(1037400210, ON);
});

$Event(1037402211, Restart, function() {
    EndIf(EventFlag(7505));
    WaitFor(EventFlag(7505));
    WaitFor(ElapsedSeconds(5));
    SetNetworkconnectedEventFlagID(1037400280, ON);
    SetNetworkconnectedEventFlagID(1037400281, ON);
    SetNetworkconnectedEventFlagID(1037400282, ON);
    SetNetworkconnectedEventFlagID(1037400283, ON);
    SetNetworkconnectedEventFlagID(1037400284, ON);
    SetNetworkconnectedEventFlagID(1037400285, ON);
    SetNetworkconnectedEventFlagID(1037400286, ON);
    SetNetworkconnectedEventFlagID(1037400287, ON);
    SetNetworkconnectedEventFlagID(1037400288, ON);
    SetNetworkconnectedEventFlagID(1037400289, ON);
    SetNetworkconnectedEventFlagID(1037400290, ON);
    SetNetworkconnectedEventFlagID(1037400291, ON);
    SetNetworkconnectedEventFlagID(1037400292, ON);
    SetNetworkconnectedEventFlagID(1037400293, ON);
    SetNetworkconnectedEventFlagID(1037400294, ON);
    SetNetworkconnectedEventFlagID(1037400295, ON);
    SetNetworkconnectedEventFlagID(1037400296, ON);
    SetNetworkconnectedEventFlagID(1037400297, ON);
    SetNetworkconnectedEventFlagID(1037400298, ON);
    SetNetworkconnectedEventFlagID(1037400299, ON);
    SetNetworkconnectedEventFlagID(1037400300, ON);
    SetNetworkconnectedEventFlagID(1037400301, ON);
    SetNetworkconnectedEventFlagID(1037400302, ON);
    SetNetworkconnectedEventFlagID(1037400303, ON);
    SetNetworkconnectedEventFlagID(1037400304, ON);
    SetNetworkconnectedEventFlagID(1037400305, ON);
    SetNetworkconnectedEventFlagID(1037400306, ON);
    SetNetworkconnectedEventFlagID(1037400307, ON);
    SetNetworkconnectedEventFlagID(1037400308, ON);
    SetNetworkconnectedEventFlagID(1037400309, ON);
    EndIf(EventFlag(1037400205));
    RecordUserDispLog(110212, 20000, LogObjectType.None, -1);
});

$Event(1037402220, Restart, function() {
    SetEventLogLevel(2);
    WaitFor(EventFlag(7500));
    if (EventFlag(1026400300)) {
        SetNetworkconnectedEventFlagID(1037400286, ON);
        SetNetworkconnectedEventFlagID(1037400287, ON);
        SetNetworkconnectedEventFlagID(1037400288, ON);
        SetNetworkconnectedEventFlagID(1037400289, ON);
        SetNetworkconnectedEventFlagID(1037400290, ON);
        SetNetworkconnectedEventFlagID(1037400291, ON);
        SetNetworkconnectedEventFlagID(1037400292, ON);
        SetNetworkconnectedEventFlagID(1037400293, ON);
        SetNetworkconnectedEventFlagID(1037400294, ON);
        SetNetworkconnectedEventFlagID(1037400298, ON);
        SetNetworkconnectedEventFlagID(1037400299, ON);
    }
L0:
    if (EventFlag(1036400300)) {
        SetNetworkconnectedEventFlagID(1037400288, ON);
        SetNetworkconnectedEventFlagID(1037400289, ON);
        SetNetworkconnectedEventFlagID(1037400290, ON);
        SetNetworkconnectedEventFlagID(1037400291, ON);
        SetNetworkconnectedEventFlagID(1037400292, ON);
        SetNetworkconnectedEventFlagID(1037400293, ON);
        SetNetworkconnectedEventFlagID(1037400294, ON);
        SetNetworkconnectedEventFlagID(1037400298, ON);
        SetNetworkconnectedEventFlagID(1037400299, ON);
    }
L1:
    if (EventFlag(1059400300)) {
        SetNetworkconnectedEventFlagID(1037400280, ON);
        SetNetworkconnectedEventFlagID(1037400281, ON);
        SetNetworkconnectedEventFlagID(1037400282, ON);
        SetNetworkconnectedEventFlagID(1037400283, ON);
        SetNetworkconnectedEventFlagID(1037400284, ON);
        SetNetworkconnectedEventFlagID(1037400285, ON);
        SetNetworkconnectedEventFlagID(1037400286, ON);
        SetNetworkconnectedEventFlagID(1037400287, ON);
        SetNetworkconnectedEventFlagID(1037400291, ON);
        SetNetworkconnectedEventFlagID(1037400292, ON);
        SetNetworkconnectedEventFlagID(1037400295, ON);
        SetNetworkconnectedEventFlagID(1037400296, ON);
    }
L2:
    RecordUserDispLog(110212, 20000, LogObjectType.None, -1);
});

$Event(1037402290, Default, function(eventFlagId) {
    WaitFor(EventFlag(eventFlagId));
    CreateAssetfollowingSFX(1037401200, 200, 807535);
});

$Event(1037402291, Default, function(eventFlagId) {
    WaitFor(EventFlag(eventFlagId));
    RequestAssetDestruction(1037401200, 0);
    SpawnOneshotSFX(TargetEntityType.Asset, 1037401200, -1, 807536);
    WaitFixedTimeSeconds(1);
    WaitFor(!EventFlag(eventFlagId));
    RequestAssetRestoration(1037401200);
    RestartEvent();
});

$Event(1037402292, Default, function(eventFlagId) {
    WaitFor(EventFlag(eventFlagId));
    RequestAssetDestruction(1060001600, 0);
    SpawnOneshotSFX(TargetEntityType.Asset, 1060001600, -1, 807537);
    SetCameraVibration(180, TargetEntityType.Asset, 1060001600, -1, 100, 500);
    WaitFixedTimeSeconds(1);
    WaitFor(!EventFlag(eventFlagId));
    RequestAssetRestoration(1060001600);
    RestartEvent();
});


