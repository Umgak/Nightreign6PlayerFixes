// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1045381950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1045381950, 1045380950);
    RegisterBonfire(1045381951, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1045381951, 1045380951);
    $InitializeCommonEvent(0, 90015150, 1045380200, 73077);
    $InitializeCommonEvent(0, 90015151, 1045380200, 74037);
    $InitializeCommonEvent(0, 90015152, 1045380200, 74037);
    $InitializeCommonEvent(0, 90005931, 1045380200, 1045381200, 0, 1045381201);
    $InitializeCommonEvent(0, 1045382910, 1045388203, 1045380210);
    $InitializeCommonEvent(1, 1045382910, 1045388204, 1045380211);
    $InitializeEvent(0, 1045382900);
    $InitializeCommonEvent(0, 90015501, 1045382300, 73997);
});

$Event(1045382900, Restart, function() {
    WaitFor(SmallBaseAttached(1045382999, 30300000));
    EnableAsset(1045381900);
    EnableAsset(1045381901);
});

$Event(1045382910, Restart, function(eventFlagId, chrEntityId) {
    EndIf(EventFlag(eventFlagId));
    WaitFor(EventFlag(eventFlagId));
    ForceCharacterTreasure(chrEntityId);
});


