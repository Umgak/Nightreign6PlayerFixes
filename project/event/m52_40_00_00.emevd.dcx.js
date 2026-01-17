// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (940210 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52400800, 52402800, 30, 905320000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52400800, 52402800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52400800, 52402800, 30, 905320000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52400800, 52402800, 30, 940210, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52400800, 52400800, 1030, 940210, 11200, 905320000, 52400800, 2);
    $InitializeCommonEvent(0, 90015006, 52401500, 52400500, 52400800, 5);
    $InitializeCommonEvent(0, 90015005, 52401500, 52402800, 52400800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940210 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52400800, 940000, 52400800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52400800, 940210, 52400800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52400800, 8175);
    if (940210 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52400810, 52402810, 30, 905312000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52400810, 52402810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52400810, 52402810, 30, 905312000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52400810, 52402810, 30, 940210, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52400810, 52400810, 1030, 940210, 11200, 905312000, 52400810, 3);
    $InitializeCommonEvent(0, 90015006, 52401510, 52400510, 52400810, 5);
    $InitializeCommonEvent(0, 90015005, 52401510, 52402810, 52400810);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 940210 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52400810, 940000, 52400810, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 52400810, 940210, 52400810, 0, 0);
S5:
    $InitializeCommonEvent(0, 90015050, 52400810, 8175);
    $InitializeEvent(0, 52402800);
    $InitializeEvent(0, 52402801);
    $InitializeCommonEvent(0, 90035280, 52402491, 52400700, 52400701, 52400702, 8060, 0, 52400800, 52400810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52402491, 52400700, 52400701, 52400702, 80010, 0, 52400800, 52400810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52402491, 52400700, 52400701, 52400702, 80011, 1, 52400800, 52400810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035281, 52402491, 52400700, 52400701, 52400702, 80011, 52400800, 52400810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52400490, 52402490, 52400700, 52400701, 52400702, 52400703);
    $InitializeCommonEvent(0, 90035283, 52400490, 52402491, 52401690, 52400700, 52400701, 52400702, 52400704, 52400705, 52400706);
    $InitializeCommonEvent(0, 90035284, 52405490, 52405491, 52400700, 52400702, 52400705, 52400706);
    $InitializeCommonEvent(0, 90035285, 52400490, 52400700, 52400701, 52400702, 52400705, 52400706);
    $InitializeCommonEvent(0, 90035286, 52400490, 52402491, 52400700, 52400701, 52400702, 52400705, 52400706);
    $InitializeCommonEvent(0, 90035288, 52402491, 52400700, 52400702, 52400705, 52400706);
    $InitializeCommonEvent(0, 90015000, 52400704, 52400490, 907640001, 50, 0, 52400706);
    $InitializeCommonEvent(0, 90015025, 8081, 52400704, 52400705, 52400490, 1020, 0, -1, -1, 52400490, 0);
    $InitializeCommonEvent(0, 90015310, 52400050, 52400051, 1, 52400200, 52400202, 52400203, 52402405, 52402406, 52402407, 52402410, 52402411, 52402412, 52402415, 52402416, 52402417, 0, 1, 2, 52402400);
    $InitializeCommonEvent(0, 90015301, 52405300, 52400200, 52400201, 52400202, 52400203, 1);
    $InitializeCommonEvent(0, 90015306, 1036406500);
    $InitializeCommonEvent(0, 90025010, 1036402800, 9025, 2);
    $InitializeCommonEvent(0, 90015304, 52400050, 52400200, 52400202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52400051, 52400200, 52400203);
    }
    $InitializeEvent(0, 52402500, 52400830, 570, 52402430, 110230, 52400810, 9030);
});

$Event(52402800, Default, function() {
    EndIf(EventFlag(52400810));
    EndIf(EventFlag(52400210));
    DisableCharacterAI(52400810);
    DisableCharacter(52405810);
    WaitFor(InArea(20000, 52402811));
    SetNetworkconnectedEventFlagID(52400210, ON);
    ForceAnimationPlayback(52400810, 3025, false, false, false);
    EnableCharacterAI(52400810);
    WaitFor(ElapsedSeconds(0.5));
    EnableCharacter(52405810);
    ForceAnimationPlayback(52400811, 1830, false, false, false);
    ForceAnimationPlayback(52400812, 1830, false, false, false);
    ForceAnimationPlayback(52400813, 1830, false, false, false);
    ForceAnimationPlayback(52400814, 1830, false, false, false);
    ForceAnimationPlayback(52400815, 1830, false, false, false);
    ForceAnimationPlayback(52400816, 1830, false, false, false);
});

$Event(52402801, Restart, function() {
    if (EventFlag(52400810)) {
        ForceCharacterDeath(52400811, false);
        ForceCharacterDeath(52400812, false);
        ForceCharacterDeath(52400813, false);
        ForceCharacterDeath(52400814, false);
        ForceCharacterDeath(52400815, false);
        ForceCharacterDeath(52400816, false);
        EndEvent();
    }
    WaitFor(CharacterHPValue(52400810) <= 0);
    ForceCharacterDeath(52400811, false);
    ForceCharacterDeath(52400812, false);
    ForceCharacterDeath(52400813, false);
    ForceCharacterDeath(52400814, false);
    ForceCharacterDeath(52400815, false);
    ForceCharacterDeath(52400816, false);
});

$Event(52402500, Default, function(chrEntityId, operationGuideParamId, entityId, userDispLogParamId, eventFlagId, eventFlagId2) {
    DisableNetworkSync();
    if (EventFlag(eventFlagId2)) {
        SetCharacterBackreadState(chrEntityId, true);
        HideFloatingMessage(operationGuideParamId, entityId);
        EndEvent();
    }
L0:
    if (!EventFlag(eventFlagId)) {
        DisableCharacter(chrEntityId);
        ShowFloatingMessage(operationGuideParamId, entityId);
        WaitFor(EventFlag(eventFlagId));
        RecordUserDispLog(userDispLogParamId, chrEntityId, LogObjectType.None, -1);
    }
L1:
    EnableCharacter(chrEntityId);
    HideFloatingMessage(operationGuideParamId, entityId);
});

