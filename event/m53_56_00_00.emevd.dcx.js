// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015465, 53560200, 0, 8270, 53560209);
    $InitializeEvent(0, 53562500, 53560201, 53562200);
    $InitializeEvent(1, 53562500, 53560202, 53562200);
    $InitializeEvent(2, 53562500, 53560203, 53562200);
    $InitializeEvent(3, 53562500, 53560204, 53562200);
});

$Event(53562500, Restart, function(chrEntityId, areaEntityId) {
    EndIf(ThisEventSlot());
    SetSpEffect(chrEntityId, 98350);
    WaitFor(InArea(10000, areaEntityId));
    SetNetworkconnectedThisEventSlot(ON);
    ClearSpEffect(chrEntityId, 98350);
});


