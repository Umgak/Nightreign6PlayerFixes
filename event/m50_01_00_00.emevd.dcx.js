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
        $InitializeCommonEvent(0, 90015000, 0, 50015810, 905192000, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50015810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50015810, 905192000, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50015810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50010810, 50015810, 1030, 940000, 11200, 905192000, 50010510);
    $InitializeCommonEvent(0, 90015006, 50011510, 50010510, 50010810, 5);
    $InitializeCommonEvent(0, 90015005, 50011510, 50012810, 50010810);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50010810, 940000, 50015810, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50010810, 940000, 50015810, 0, 0);
S2:
    $InitializeCommonEvent(0, 90005250, 50010810, 50012800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50010811, 50012800, 0, -1);
    $InitializeCommonEvent(0, 90035280, 50012491, 50010700, 50010701, 50010702, 8060, 0, 50010810, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50012491, 50010700, 50010701, 50010702, 80010, 0, 50010810, 0, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 50012491, 50010700, 50010701, 50010702, 80011, 1, 50010810, 0, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 50012491, 50010700, 50010701, 50010702, 80011, 50010810, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 50010490, 50012490, 50010700, 50010701, 50010702, 50010703);
    $InitializeCommonEvent(0, 90035283, 50010490, 50012491, 50011690, 50010700, 50010701, 50010702, 50010704, 50010705, 50010706);
    $InitializeCommonEvent(0, 90035284, 50015490, 50015491, 50010700, 50010702, 50010705, 50010706);
    $InitializeCommonEvent(0, 90035285, 50010490, 50010700, 50010701, 50010702, 50010705, 50010706);
    $InitializeCommonEvent(0, 90035286, 50010490, 50012491, 50010700, 50010701, 50010702, 50010705, 50010706);
    $InitializeCommonEvent(0, 90035288, 50012491, 50010700, 50010702, 50010705, 50010706);
    $InitializeCommonEvent(0, 90015000, 50010704, 50010490, 907640001, 50, 0, 50010706);
    $InitializeCommonEvent(0, 90015025, 8081, 50010704, 50010705, 50010490, 1020, 0, -1, -1, 50010490, 0);
    $InitializeCommonEvent(0, 90015310, 50010050, 50010051, 1, 50010200, 50010202, 50010203, 50012405, 50012406, 50012407, 0, 1, 2, 0, 1, 2, 0, 1, 2, 50012400);
    $InitializeCommonEvent(0, 90015301, 50015300, 50010200, 50010201, 50010202, 50010203, 1);
    $InitializeCommonEvent(0, 90015306, 50016500);
    $InitializeCommonEvent(0, 90015303, 50012401);
    $InitializeCommonEvent(0, 90015305, 50012430, 50012431, 50012432, 50012433);
    $InitializeCommonEvent(0, 90015304, 50010050, 50010200, 50010202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50010051, 50010200, 50010203);
    }
    $InitializeCommonEvent(0, 90005200, 50010203, 30001, 20001, 50012203, 1.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010204, 30001, 20001, 50012203, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010205, 30001, 20001, 50012203, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010206, 30001, 20001, 50012203, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010207, 30001, 20001, 50012203, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010208, 30001, 20001, 50012203, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010209, 30001, 20001, 50012203, 2, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010216, 30000, 20000, 50012216, 1, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010217, 30000, 20000, 50012216, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010218, 30000, 20000, 50012216, 0.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010219, 30000, 20000, 50012216, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010220, 30000, 20000, 50012216, 2, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50010221, 30000, 20000, 50012216, 1.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005250, 50010303, 50012303, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50010304, 50012303, 0, -1);
    $InitializeEvent(0, 50012700);
    $InitializeEvent(0, 50012720);
    $InitializeEvent(0, 50012710);
});

$Event(50012700, Restart, function() {
    if (!EventFlag(50012711)) {
        ForceAnimationPlayback(50011200, 0, true, false, false);
        EndEvent();
    }
L0:
    ForceAnimationPlayback(50011200, 2, true, false, false);
    EndEvent();
});

$Event(50012710, Restart, function() {
    if (!EventFlag(50012711)) {
        WaitFor(InArea(20000, 50012820));
        EndIf(EventFlag(50012711));
        ForceAnimationPlayback(50011210, 1, false, true, false);
        SetNetworkconnectedEventFlagID(50012711, ON);
    }
    ForceAnimationPlayback(50011210, 2, true, false, false);
});

$Event(50012720, End, function() {
    WaitFor(EventFlag(50012711));
    ForceAnimationPlayback(50011200, 1, false, false, false);
});

