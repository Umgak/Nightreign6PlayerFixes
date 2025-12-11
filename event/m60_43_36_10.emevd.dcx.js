// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 9005810, 1043360800, 1043360955, 1043361955, 5);
    $InitializeCommonEvent(0, 90015005, 1043361955, 1043360955, 1043360800);
    $InitializeCommonEvent(0, 90005580, 1043361952, 1043360952, 7653);
    $InitializeCommonEvent(0, 90005580, 1043361953, 1043360953, 7654);
    RegisterBonfire(1043361954, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1043361954, 1043360954);
    $InitializeCommonEvent(0, 90065901, 1043364890);
    $InitializeCommonEvent(0, 90065901, 1043364891);
    $InitializeCommonEvent(0, 90005910, 1043361800, 7678);
    $InitializeCommonEvent(1, 90005910, 1043361801, 7679);
    $InitializeCommonEvent(0, 91005505, 1043362500, 7678);
    $InitializeCommonEvent(0, 91005505, 1043362510, 7679);
    $InitializeCommonEvent(0, 90005221, 1044360207, 701, -1, 0, 0);
    $InitializeCommonEvent(0, 90015150, 1043360200, 73060);
    $InitializeCommonEvent(0, 90015151, 1043360200, 74020);
    $InitializeCommonEvent(0, 90015152, 1043360200, 74020);
    $InitializeCommonEvent(0, 90015150, 1043360202, 73061);
    $InitializeCommonEvent(0, 90015151, 1043360202, 74021);
    $InitializeCommonEvent(0, 90015152, 1043360202, 74021);
    $InitializeCommonEvent(0, 90015150, 1043360201, 73062);
    $InitializeCommonEvent(0, 90015151, 1043360201, 74022);
    $InitializeCommonEvent(0, 90015152, 1043360201, 74022);
    $InitializeCommonEvent(0, 90085612, 602, Hero.Revenant, 9242, 9222, 1043360280, 8457);
    if (1 == 3) {
        $InitializeCommonEvent(0, 90085002, 602, 9232, 9222, 9222, 1043365280, 1043360281, 0, 0, 0, 20026);
    }
    if (2 == 3) {
        $InitializeCommonEvent(0, 90085002, 602, 9232, 9222, 9222, 1043365280, 1043360281, 1043360282, 0, 0, 20026);
    }
    if (3 == 3) {
        $InitializeCommonEvent(0, 90085002, 602, 9232, 9222, 9222, 1043365280, 1043360281, 1043360282, 1043360283, 0, 20026);
    }
    if (4 == 3) {
        $InitializeCommonEvent(0, 90085002, 602, 9232, 9222, 9222, 1043365280, 1043360281, 1043360282, 1043360283, 1043360284, 20026);
    }
    $InitializeCommonEvent(0, 90085613, 602, 9232, 9222, 9222, 1043365280);
    $InitializeCommonEvent(0, 90085614, 602, 9232, 1043366280, 1043360280, 8457);
    $InitializeEvent(0, 1043362900);
});

$Event(1043362900, Restart, function() {
    WaitFor(SmallBaseAttached(1043362999, 30300000));
    EnableAsset(1043361900);
    EnableAsset(1043361901);
    EnableAsset(1043361902);
});


