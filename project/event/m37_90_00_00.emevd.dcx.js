// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(37901950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 37901950, 37900950);
    $InitializeEvent(0, 1037902200);
    $InitializeCommonEvent(0, 91005550, 37902200, 37902201, 37900202);
    $InitializeCommonEvent(0, 90015500, 37902300);
});

$Event(1037902200, Default, function() {
    SetSpEffect(37900201, 19050);
    EndEvent();
});

