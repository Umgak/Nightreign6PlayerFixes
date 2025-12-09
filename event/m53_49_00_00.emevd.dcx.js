// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015465, 53490200, 0, 8270, 53490209);
});

$Event(53502500, Restart, function(chrEntityId, areaEntityId, spEffectId) {
    EndIf(CharacterDead(chrEntityId));
    WaitFor(InArea(10000, areaEntityId));
    SetSpEffect(10000, spEffectId);
    WaitFixedTimeSeconds(2.5);
    RestartEvent();
});

