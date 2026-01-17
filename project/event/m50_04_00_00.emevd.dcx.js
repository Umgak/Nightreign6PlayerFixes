// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015000, 0, 50040800, 903800600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50040800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50040800, 903800600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50040800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50040800, 50040800, 1030, 940000, 11200, 903800600, 50040800);
    $InitializeCommonEvent(0, 90015006, 50041500, 50040500, 50040800, 5);
    $InitializeCommonEvent(0, 90015005, 50041500, 50042800, 50040800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50040800, 940000, 50040800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50040800, 940000, 50040800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90005250, 50040800, 50042800, 0, -1);
    $InitializeCommonEvent(0, 90035280, 50042491, 50040710, 50040711, 50040712, 8060, 0, 50040800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50042491, 50040710, 50040711, 50040712, 80010, 0, 50040800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50042491, 50040710, 50040711, 50040712, 80011, 1, 50040800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035281, 50042491, 50040710, 50040711, 50040712, 80011, 50040800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 50040490, 50042490, 50040710, 50040711, 50040712, 50040713);
    $InitializeCommonEvent(0, 90035283, 50040490, 50042491, 50041690, 50040710, 50040711, 50040712, 50040714, 50040715, 50040716);
    $InitializeCommonEvent(0, 90035284, 50045490, 50045491, 50040710, 50040712, 50040715, 50040716);
    $InitializeCommonEvent(0, 90035285, 50040490, 50040710, 50040711, 50040712, 50040715, 50040716);
    $InitializeCommonEvent(0, 90035286, 50040490, 50042491, 50040710, 50040711, 50040712, 50040715, 50040716);
    $InitializeCommonEvent(0, 90035288, 50042491, 50040710, 50040712, 50040715, 50040716);
    $InitializeCommonEvent(0, 90015000, 50040714, 50040490, 907640001, 50, 0, 50040716);
    $InitializeCommonEvent(0, 90015025, 8081, 50040714, 50040715, 50040490, 1020, 0, -1, -1, 50040490, 0);
    $InitializeCommonEvent(0, 90015310, 50040050, 50040051, 2, 50040200, 50040202, 50040203, 50042405, 50042406, 50042407, 0, 1, 2, 0, 1, 2, 0, 1, 2, 50042400);
    $InitializeCommonEvent(0, 90015301, 50045300, 50040200, 50040201, 50040202, 50040203, 2);
    $InitializeCommonEvent(0, 90015306, 50046500);
    $InitializeCommonEvent(0, 90015303, 50042401);
    $InitializeCommonEvent(0, 90015305, 50042430, 50042431, 50042432, 50042433);
    $InitializeCommonEvent(0, 90015304, 50040050, 50040200, 50040202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50040051, 50040200, 50040203);
    }
    $InitializeCommonEvent(0, 90005250, 50040205, 50042210, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040206, 50042210, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040209, 50042210, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040213, 50042200, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50040214, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040215, 50042200, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50040218, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040219, 50042210, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50040220, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040221, 50042200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040222, 50042200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50040223, 50042200, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50040224, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50040225, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50040226, 0, -1);
    $InitializeEvent(0, 50042700);
    $InitializeEvent(0, 50042720);
    $InitializeEvent(0, 50042710);
    $InitializeCommonEvent(0, 90015060, 50042705);
    $InitializeEvent(0, 50042500, 50040800);
    $InitializeCommonEvent(0, 90045030, 50042500, 98210, 98211);
    $InitializeCommonEvent(0, 90085040, 901, 8526, 50040700);
    $InitializeCommonEvent(0, 90085020, 901, 8526, 8526, 8525, 50040250, 99850, 50040700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085023, 901, 8526, 8525, 50040250, 7120, 50040700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085900, 50040700, 50041250);
    $InitializeCommonEvent(0, 90085041, 901, 8525, 50040700, Hero.Scholar);
});

$Event(50042500, Restart, function(chrEntityId) {
    WaitFor(CharacterDead(chrEntityId));
    SetNetworkconnectedEventFlagID(50040600, ON);
});

$Event(50042510, Restart, function(areaEntityId) {
    DisableNetworkSync();
    if (!CharacterHasSpEffect(20000, 98210)) {
        WaitFor(InArea(20000, areaEntityId));
        SetSpEffect(20000, 98210);
        WaitFixedTimeSeconds(0.1);
    }
L0:
    WaitFor(!InArea(20000, areaEntityId));
    ClearSpEffect(20000, 98210);
    WaitFixedTimeSeconds(0.1);
    RestartEvent();
});

$Event(50042700, Restart, function() {
    if (!EventFlag(50042711)) {
        ForceAnimationPlayback(50041200, 0, true, false, false);
        EndEvent();
    }
L0:
    ForceAnimationPlayback(50041200, 2, true, false, false);
    EndEvent();
});

$Event(50042710, Restart, function() {
    if (!EventFlag(50042711)) {
        WaitFor(InArea(20000, 50042820));
        EndIf(EventFlag(50042711));
        ForceAnimationPlayback(50041210, 1, false, true, false);
        SetNetworkconnectedEventFlagID(50042711, ON);
    }
    ForceAnimationPlayback(50041210, 2, true, false, false);
});

$Event(50042720, End, function() {
    WaitFor(EventFlag(50042711));
    ForceAnimationPlayback(50041200, 1, false, false, false);
});

