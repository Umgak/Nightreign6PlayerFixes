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
        $InitializeCommonEvent(0, 90015000, 0, 50005800, 903810600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50005800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50005800, 903810600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50005800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50000800, 50005800, 1030, 940000, 11200, 903810600, 50000500);
    $InitializeCommonEvent(0, 90015006, 50001500, 50000500, 50000800, 5);
    $InitializeCommonEvent(0, 90015005, 50001500, 50002800, 50000800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50000800, 940000, 50005800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50000800, 940000, 50005800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90005250, 50000800, 50002800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000801, 50002800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000802, 50002800, 0, -1);
    $InitializeCommonEvent(0, 90035280, 50002491, 50000700, 50000701, 50000702, 8060, 0, 50000800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50002491, 50000700, 50000701, 50000702, 80010, 0, 50000800, 0, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 50002491, 50000700, 50000701, 50000702, 80011, 1, 50000800, 0, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 50002491, 50000700, 50000701, 50000702, 80011, 50000800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 50000490, 50002490, 50000700, 50000701, 50000702, 50000703);
    $InitializeCommonEvent(0, 90035283, 50000490, 50002491, 50001690, 50000700, 50000701, 50000702, 50000704, 50000705, 50000706);
    $InitializeCommonEvent(0, 90035284, 50005490, 50005491, 50000700, 50000702, 50000705, 50000706);
    $InitializeCommonEvent(0, 90035285, 50000490, 50000700, 50000701, 50000702, 50000705, 50000706);
    $InitializeCommonEvent(0, 90035286, 50000490, 50002491, 50000700, 50000701, 50000702, 50000705, 50000706);
    $InitializeCommonEvent(0, 90035288, 50002491, 50000700, 50000702, 50000705, 50000706);
    $InitializeCommonEvent(0, 90015000, 50000704, 50000490, 907640001, 50, 0, 50000706);
    $InitializeCommonEvent(0, 90015025, 8081, 50000704, 50000705, 50000490, 1020, 0, -1, -1, 50000490, 0);
    $InitializeCommonEvent(0, 90005250, 50000202, 50002210, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000212, 50002210, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000206, 50002200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000207, 50002200, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50000216, 12, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50000217, 12, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000318, 50002200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000319, 50002200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000320, 50002200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000321, 50002200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000311, 50002800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000312, 50002800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000313, 50002800, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50000314, 50002800, 0, -1);
    $InitializeCommonEvent(0, 90015310, 50000050, 50000051, 1, 50000200, 50000202, 50000203, 50002405, 50002406, 50002407, 0, 1, 2, 0, 1, 2, 0, 1, 2, 50002400);
    $InitializeCommonEvent(0, 90015301, 50005300, 50000200, 50000201, 50000202, 50000203, 1);
    $InitializeCommonEvent(0, 90015306, 50006500);
    $InitializeCommonEvent(0, 90015303, 50002401);
    $InitializeCommonEvent(0, 90015305, 50002430, 50002431, 50002432, 50002433);
    $InitializeCommonEvent(0, 90015304, 50000050, 50000200, 50000202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50000051, 50000200, 50000203);
    }
    $InitializeEvent(0, 50002700);
    $InitializeEvent(0, 50002720);
    $InitializeEvent(0, 50002710);
    $InitializeEvent(0, 50002500, 50000800, 50000801, 50000802);
    $InitializeCommonEvent(0, 90045030, 50002500, 98210, 98211);
    $InitializeCommonEvent(0, 90085040, 901, 8526, 50000700);
    $InitializeCommonEvent(0, 90085020, 901, 8526, 8526, 8525, 50000250, 99850, 50000700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085023, 901, 8526, 8525, 50000250, 7120, 50000700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085900, 50000700, 50001250);
    $InitializeCommonEvent(0, 90085041, 901, 8525, 50000700, Hero.Scholar);
});

$Event(50002500, Restart, function(chrEntityId, chrEntityId2, chrEntityId3) {
    WaitFor(
        CharacterDead(chrEntityId) && CharacterDead(chrEntityId2) && CharacterDead(chrEntityId3));
    SetNetworkconnectedEventFlagID(50000600, ON);
});

$Event(50002700, Restart, function() {
    if (!EventFlag(50002711)) {
        ForceAnimationPlayback(50001200, 0, true, false, false);
        EndEvent();
    }
L0:
    ForceAnimationPlayback(50001200, 2, true, false, false);
    EndEvent();
});

$Event(50002710, Restart, function() {
    if (!EventFlag(50002711)) {
        WaitFor(InArea(20000, 50002820));
        EndIf(EventFlag(50002711));
        ForceAnimationPlayback(50001210, 1, false, true, false);
        SetNetworkconnectedEventFlagID(50002711, ON);
    }
    ForceAnimationPlayback(50001210, 2, true, false, false);
});

$Event(50002720, End, function() {
    WaitFor(EventFlag(50002711));
    ForceAnimationPlayback(50001200, 1, false, false, false);
});

