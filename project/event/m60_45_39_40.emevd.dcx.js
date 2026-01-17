// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1059401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1059401950, 1059400950);
    $InitializeCommonEvent(0, 90015440, 1059401200, 1037400264, 1037400324, 1037400294);
    $InitializeCommonEvent(0, 91005503, 1059401250);
    $InitializeEvent(0, 1059402200);
});

$Event(200, Default, function() {
    $InitializeEvent(0, 1059402201);
});

$Event(1059402200, Restart, function() {
    if (!AnyBatchEventFlags(8000, 8003)) {
        DisableCharacter(1059400210);
        DisableCharacter(1059400550);
        SetCharacterBackreadState(1059400210, true);
        SetCharacterBackreadState(1059400550, true);
        ChangeAssetEnableStateUnknown200510(1059401500, Disabled, 1);
        ChangeAssetEnableStateUnknown200510(1059401501, Disabled, 1);
        DisableAsset(1059401502);
        EndEvent();
    }
    if (EventFlag(7505)) {
        SetCharacterBackreadState(1059400210, false);
        EnableCharacter(1059400210);
        EndEvent();
    }
    DisableCharacter(1059400210);
    WaitFor(EventFlag(7505));
    SetCharacterBackreadState(1059400210, false);
    EnableCharacter(1059400210);
});

$Event(1059402201, Restart, function() {
    if (!AnyBatchEventFlags(8000, 8003)) {
        SetNetworkconnectedEventFlagID(73999, OFF);
        EndEvent();
    }
    if (EventFlag(7505)) {
        SetNetworkconnectedEventFlagID(73999, ON);
        EndEvent();
    }
    WaitFor(EventFlag(7505));
    SetNetworkconnectedEventFlagID(73999, ON);
});

