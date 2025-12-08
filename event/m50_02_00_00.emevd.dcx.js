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
        $InitializeCommonEvent(0, 90015000, 0, 50020800, 904421600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50020800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50020800, 904421600, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50020800, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50020800, 50020800, 1030, 940000, 11200, 904421600, 50020800);
    $InitializeCommonEvent(0, 90015006, 50021500, 50020500, 50020800, 5);
    $InitializeCommonEvent(0, 90015005, 50021500, 50022800, 50020800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50020800, 940000, 50020800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50020800, 940000, 50020800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90005200, 50020800, 30001, 20001, 50022800, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50022491, 50020700, 50020701, 50020702, 8060, 0, 50020800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 50022491, 50020700, 50020701, 50020702, 80010, 0, 50020800, 0, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 50022491, 50020700, 50020701, 50020702, 80011, 1, 50020800, 0, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 50022491, 50020700, 50020701, 50020702, 80011, 50020800, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 50020490, 50022490, 50020700, 50020701, 50020702, 50020703);
    $InitializeCommonEvent(0, 90035283, 50020490, 50022491, 50021690, 50020700, 50020701, 50020702, 50020704, 50020705, 50020706);
    $InitializeCommonEvent(0, 90035284, 50025490, 50025491, 50020700, 50020702, 50020705, 50020706);
    $InitializeCommonEvent(0, 90035285, 50020490, 50020700, 50020701, 50020702, 50020705, 50020706);
    $InitializeCommonEvent(0, 90035286, 50020490, 50022491, 50020700, 50020701, 50020702, 50020705, 50020706);
    $InitializeCommonEvent(0, 90035288, 50022491, 50020700, 50020702, 50020705, 50020706);
    $InitializeCommonEvent(0, 90015000, 50020704, 50020490, 907640001, 50, 0, 50020706);
    $InitializeCommonEvent(0, 90015025, 8081, 50020704, 50020705, 50020490, 1020, 0, -1, -1, 50020490, 0);
    $InitializeCommonEvent(0, 90015310, 50020050, 50020051, 1, 50020200, 50020202, 50020203, 50022405, 50022406, 50022407, 0, 1, 2, 0, 1, 2, 0, 1, 2, 50022400);
    $InitializeCommonEvent(0, 90015301, 50025300, 50020200, 50020201, 50020202, 50020203, 1);
    $InitializeCommonEvent(0, 90015306, 50026500);
    $InitializeCommonEvent(0, 90015303, 50022401);
    $InitializeCommonEvent(0, 90015305, 50022430, 50022431, 50022432, 50022433);
    $InitializeCommonEvent(0, 90015304, 50020050, 50020200, 50020202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50020051, 50020200, 50020203);
    }
    $InitializeCommonEvent(0, 90005251, 50020208, 8, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50020209, 8, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50020221, 50022301, 0, -1);
    $InitializeCommonEvent(0, 90005260, 50020222, 50022301, 12, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50020290, 10, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50020301, 50022301, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50020302, 50022301, 0, -1);
    $InitializeEvent(0, 50022700);
    $InitializeEvent(0, 50022720);
    $InitializeEvent(0, 50022710);
    $InitializeEvent(0, 50022500, 50020800);
    $InitializeCommonEvent(0, 90045030, 50022500, 98210, 98211);
    $InitializeEvent(0, 50022550, 50022550, 98200, 98201);
    $InitializeEvent(0, 50022560, 50022550, 98202, 0.4);
    $InitializeCommonEvent(0, 90085040, 901, 8526, 50020700);
    $InitializeCommonEvent(0, 90085020, 901, 8526, 8526, 8525, 50020250, 99850, 50020700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085023, 901, 8526, 8525, 50020250, 7120, 50020700, Hero.Scholar);
    $InitializeCommonEvent(0, 90085900, 50020700, 50021250);
    $InitializeCommonEvent(0, 90085041, 901, 8525, 50020700, Hero.Scholar);
});

$Event(50022500, Restart, function(chrEntityId) {
    WaitFor(CharacterDead(chrEntityId));
    SetNetworkconnectedEventFlagID(50020600, ON);
});

$Event(50022550, Restart, function(areaEntityId, spEffectId, spEffectId2) {
    DisableNetworkSync();
    SetSpEffect(20000, spEffectId2);
    WaitFixedTimeSeconds(0.1);
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, spEffectId);
    WaitFixedTimeSeconds(0.1);
    WaitFor(!InArea(20000, areaEntityId));
    RestartEvent();
});

$Event(50022560, Restart, function(areaEntityId, spEffectId, timeSeconds) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, spEffectId);
    WaitFixedTimeSeconds(timeSeconds);
    RestartEvent();
});

$Event(50022700, Restart, function() {
    if (!EventFlag(50022711)) {
        ForceAnimationPlayback(50021200, 0, true, false, false);
        EndEvent();
    }
L0:
    ForceAnimationPlayback(50021200, 2, true, false, false);
    EndEvent();
});

$Event(50022710, Restart, function() {
    if (!EventFlag(50022711)) {
        WaitFor(InArea(20000, 50022820));
        EndIf(EventFlag(50022711));
        ForceAnimationPlayback(50021210, 1, false, true, false);
        SetNetworkconnectedEventFlagID(50022711, ON);
    }
    ForceAnimationPlayback(50021210, 2, true, false, false);
});

$Event(50022720, End, function() {
    WaitFor(EventFlag(50022711));
    ForceAnimationPlayback(50021200, 1, false, false, false);
});

