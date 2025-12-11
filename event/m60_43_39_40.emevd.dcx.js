// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015150, 1039400300, 75063);
    $InitializeCommonEvent(0, 90015151, 1039400300, 76023);
    $InitializeCommonEvent(0, 90015152, 1039400300, 76023);
    $InitializeCommonEvent(0, 90015150, 1039400301, 75064);
    $InitializeCommonEvent(0, 90015151, 1039400301, 76024);
    $InitializeCommonEvent(0, 90015152, 1039400301, 76024);
    $InitializeCommonEvent(0, 90015150, 1039400302, 75054);
    $InitializeCommonEvent(0, 90015151, 1039400302, 76014);
    $InitializeCommonEvent(0, 90015152, 1039400302, 76014);
    $InitializeEvent(0, 1039402010);
    $InitializeCommonEvent(0, 91005503, 1039401250);
    $InitializeEvent(0, 1039402530, 1039402501);
    $InitializeCommonEvent(0, 90015009, 1039404700, 1039401510, 0, 1);
    $InitializeCommonEvent(0, 90015208, 9328, 1039404700, 9040);
    $InitializeCommonEvent(0, 90005920, 1039404700);
    $InitializeCommonEvent(0, 90005921, 1039404700);
    $InitializeCommonEvent(0, 90015440, 1039401520, 1037400268, 1037400328, 1037400298);
    $InitializeCommonEvent(0, 90015440, 1039401521, 1037400277, 1037400337, 1037400307);
    $InitializeCommonEvent(0, 90015140, 1039401300, 200, 9109, 1039408300);
    $InitializeEvent(0, 1039402540);
});

$Event(1039402010, Default, function() {
    if (EventFlag(1039400500)) {
        DisableAsset(1039401500);
        DisableAsset(1039401501);
        ChangeAssetEnableStateUnknown200510(1039401503, Disabled, 0);
        ChangeAssetEnableStateUnknown200510(1039401504, Disabled, 0);
        DisableAsset(1039401502);
        EnableHit(1039404200);
        EndEvent();
    }
L0:
    CreateAssetfollowingSFX(1039401502, 101, 1510);
    WaitFor(ActionButtonInArea(109212, 1039401500));
    RequestAssetDestruction(1039401500, 0);
    RequestAssetDestruction(1039401501, 0);
    ChangeAssetEnableStateUnknown200510(1039401503, Disabled, 3);
    ChangeAssetEnableStateUnknown200510(1039401504, Disabled, 3);
    DeleteAssetfollowingSFX(1039401502, true);
    DisableAsset(1039401502);
    PlaySE(1039401502, SoundType.SFX, 1500);
    EnableHit(1039404200);
    WaitFixedTimeSeconds(2);
    SetNetworkconnectedEventFlagID(1039400500, ON);
    WaitFixedTimeSeconds(1.2);
    RecordUserDispLog(110225, 1039401500, LogObjectType.None, -1);
});

$Event(1039402520, Default, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 98251);
    SetSpEffect(20000, 6999600);
    ActivateGparamOverride(12, 3);
    WaitFor(!InArea(20000, areaEntityId));
    ClearSpEffect(20000, 98250);
    ClearSpEffect(20000, 6999600);
    DeactivateGparamOverride(3);
    WaitFixedTimeFrames(1);
    RestartEvent();
});

$Event(1039402530, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 98217);
    RestartEvent();
});

$Event(1039402540, Default, function() {
    EndIf(EventFlag(75104));
    WaitFor(InArea(10000, 1039402650));
    SetNetworkconnectedEventFlagID(75104, ON);
});

$Event(200, Default, function() {
    $InitializeCommonEvent(0, 90015449, 1039402550);
});


