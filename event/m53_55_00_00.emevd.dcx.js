// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015465, 53550200, 0, 8270, 53550209);
    $InitializeEvent(0, 53552500, 53550201, 53552200);
    $InitializeEvent(1, 53552500, 53550202, 53552200);
    $InitializeEvent(2, 53552500, 53550203, 53552200);
    $InitializeCommonEvent(0, 90005201, 53550204, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 53550205, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 53550206, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005201, 53550207, 30000, 20000, 5, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005250, 53550210, 53552210, 0, 0);
    $InitializeEvent(0, 53552510, 53550211, 53552210);
});

$Event(53552500, Restart, function(chrEntityId, areaEntityId) {
    EndIf(ThisEventSlot());
    SetSpEffect(chrEntityId, 98350);
    WaitFor(InArea(10000, areaEntityId));
    SetNetworkconnectedThisEventSlot(ON);
    ClearSpEffect(chrEntityId, 98350);
});

$Event(53552510, Restart, function(chrEntityId, areaEntityId) {
    EndIf(ThisEventSlot());
    SetSpEffect(chrEntityId, 8081);
    WaitFor(
        InArea(20000, areaEntityId)
            || CharacterAIState(chrEntityId, AIStateType.Combat, GreaterOrEqual, 1));
    SetNetworkconnectedThisEventSlot(ON);
    ClearSpEffect(chrEntityId, 8081);
});


