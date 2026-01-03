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
        $InitializeCommonEvent(0, 90015000, 0, 50035800, 904352600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50035800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50035800, 904352600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50035800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50030800, 50035800, 1030, 940000, 11200, 904352600, 50030500);
    $InitializeCommonEvent(0, 90015006, 50031500, 50030500, 50030800, 5);
    $InitializeCommonEvent(0, 90015005, 50031500, 50032800, 50030800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50030800, 940000, 50035800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50030800, 940000, 50035800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90035280, 50032491, 50030700, 50030701, 50030702, 8060, 0, 50030800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50032491, 50030700, 50030701, 50030702, 80010, 0, 50030800, 0, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 50032491, 50030700, 50030701, 50030702, 80011, 1, 50030800, 0, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 50032491, 50030700, 50030701, 50030702, 80011, 50030800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 50030490, 50032490, 50030700, 50030701, 50030702, 50030703);
    $InitializeCommonEvent(0, 90035283, 50030490, 50032491, 50031690, 50030700, 50030701, 50030702, 50030704, 50030705, 50030706);
    $InitializeCommonEvent(0, 90035284, 50035490, 50035491, 50030700, 50030702, 50030705, 50030706);
    $InitializeCommonEvent(0, 90035285, 50030490, 50030700, 50030701, 50030702, 50030705, 50030706);
    $InitializeCommonEvent(0, 90035286, 50030490, 50032491, 50030700, 50030701, 50030702, 50030705, 50030706);
    $InitializeCommonEvent(0, 90035288, 50032491, 50030700, 50030702, 50030705, 50030706);
    $InitializeCommonEvent(0, 90015000, 50030704, 50030490, 907640001, 50, 0, 50030706);
    $InitializeCommonEvent(0, 90015025, 8081, 50030704, 50030705, 50030490, 1020, 0, -1, -1, 50030490, 0);
    $InitializeCommonEvent(0, 90005250, 50030211, 50032204, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030212, 50032204, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030213, 50032204, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50030209, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50030210, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50030215, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50030216, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50030217, 0, -1);
    $InitializeCommonEvent(0, 90005271, 50030218, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030230, 50032230, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030231, 50032230, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030232, 50032230, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030233, 50032230, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030304, 50032204, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030305, 50032204, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030306, 50032204, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030312, 50032310, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030314, 50032310, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030315, 50032310, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030800, 50032200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50030801, 50032200, 0, -1);
    $InitializeCommonEvent(0, 90015310, 50030050, 50030051, 1, 50030200, 50030202, 50030203, 50032405, 50032406, 50032407, 0, 1, 2, 0, 1, 2, 0, 1, 2, 50032400);
    $InitializeCommonEvent(0, 90015301, 50035300, 50030200, 50030201, 50030202, 50030203, 1);
    $InitializeCommonEvent(0, 90015306, 50036500);
    $InitializeCommonEvent(0, 90015303, 50032401);
    $InitializeCommonEvent(0, 90015305, 50032430, 50032431, 50032432, 50032433);
    $InitializeCommonEvent(0, 90015304, 50030050, 50030200, 50030202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50030051, 50030200, 50030203);
    }
    $InitializeCommonEvent(0, 90015010, 50031600, 50030600, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031601, 50030601, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031602, 50030602, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031603, 50030603, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031604, 50030604, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031605, 50030605, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031606, 50030606, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031607, 50030607, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031608, 50030608, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031609, 50030609, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031610, 50030610, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031611, 50030611, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031612, 50030612, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031613, 50030613, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031614, 50030614, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031617, 50030617, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031618, 50030618, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031619, 50030619, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031620, 50030620, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031621, 50030621, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031622, 50030622, 50030600, 100, 803400000, 0);
    $InitializeCommonEvent(0, 90015010, 50031623, 50030623, 50030600, 100, 803400000, 0);
    $InitializeEvent(0, 50032700);
    $InitializeEvent(0, 50032720);
    $InitializeEvent(0, 50032710);
    $InitializeCommonEvent(0, 90015060, 50032705);
    $InitializeEvent(0, 50032500, 50030800, 50030801);
    $InitializeCommonEvent(0, 90045030, 50032500, 98210, 98211);
    $InitializeCommonEvent(0, 90085040, 901, 8526, 50030700);
    $InitializeCommonEvent(0, 90085020, 901, 8526, 8526, 8525, 50030250, 99850, 50030700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085023, 901, 8526, 8525, 50030250, 7120, 50030700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085900, 50030700, 50031250);
    $InitializeCommonEvent(0, 90085041, 901, 8525, 50030700, Hero.Scholar);
});

$Event(50032500, Restart, function(chrEntityId, chrEntityId2) {
    WaitFor(CharacterDead(chrEntityId) && CharacterDead(chrEntityId2));
    SetNetworkconnectedEventFlagID(50030600, ON);
});

$Event(50032510, Restart, function(areaEntityId) {
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

$Event(50032700, Restart, function() {
    if (!EventFlag(50032711)) {
        ForceAnimationPlayback(50031200, 0, true, false, false);
        EndEvent();
    }
L0:
    ForceAnimationPlayback(50031200, 2, true, false, false);
    EndEvent();
});

$Event(50032710, Restart, function() {
    if (!EventFlag(50032711)) {
        WaitFor(InArea(20000, 50032820));
        EndIf(EventFlag(50032711));
        ForceAnimationPlayback(50031210, 1, false, true, false);
        SetNetworkconnectedEventFlagID(50032711, ON);
    }
    ForceAnimationPlayback(50031210, 2, true, false, false);
});

$Event(50032720, End, function() {
    WaitFor(EventFlag(50032711));
    ForceAnimationPlayback(50031200, 1, false, false, false);
});

