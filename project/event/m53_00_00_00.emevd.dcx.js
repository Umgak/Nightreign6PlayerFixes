// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    // Gladius invasion event
    // He does *something* with PlayerNo, and frankly I don't care what.
    // This event is a goddamn disaster and nobody likes it anyway
    // Players would celebrate if I patched it out of the game.
    $InitializeEvent(0, 53005220, 8210, 1, 53002600, 53000200, 53000201, 53000202);
    $InitializeEvent(1, 53005220, 8211, 2, 53002600, 53000200, 53000201, 53000202);
    $InitializeEvent(0, 53005230, 53000200, 8215);
    $InitializeEvent(1, 53005230, 53000201, 8216);
    $InitializeEvent(2, 53005230, 53000202, 8217);
    $InitializeCommonEvent(0, 90035220, 53000800, 53000200, 8226);
    $InitializeCommonEvent(0, 90035221, 53000801, 53000200, 53000210, 10002, 1, 53004801, 1, 20025);
    $InitializeCommonEvent(0, 90035221, 53000802, 53000200, 53000210, 10002, 1, 53004802, 2, 20029);
    $InitializeCommonEvent(0, 90035227, 53000801, 10002, 30, 1, 30, 53000220, 53004801, 1);
    $InitializeCommonEvent(0, 90035227, 53000802, 10002, 30, 1, 30, 53000230, 53004802, 2);
    $InitializeCommonEvent(0, 90035225, 53000800, 8215, 8226);
    $InitializeCommonEvent(0, 90015000, 8077, 53000800, 907500001, 50, 0, 8226);
    $InitializeCommonEvent(0, 90015030, 8077, 53000800, 50, 750020, 8226);
    $InitializeCommonEvent(0, 90015002, 0, 53000200, 8215, 53000800, 1020, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035223, 53000200, 53000800, 8215);
    $InitializeCommonEvent(0, 90035224, 53000800, 53005800, 53000200, 8226);
    $InitializeCommonEvent(0, 90035228, 53000200, 53000800, 8215, 9370, 100, 200);
    $InitializeCommonEvent(0, 90035229, 53000200, 53000801, 53000210, 53002800, 10002, 53000221, 53000222, 53000223, 53000220, 53000226, 53000227, 53000228, 53000225, 53004801, 1);
    $InitializeCommonEvent(0, 90035229, 53000200, 53000802, 53000210, 53002801, 10002, 53000231, 53000232, 53000233, 53000230, 53000236, 53000237, 53000238, 53000235, 53004802, 2);
    $InitializeCommonEvent(0, 90035270, 53000800, 53000200);
    $InitializeCommonEvent(0, 90035272, 53000200, 53000800, 8226);
    $InitializeCommonEvent(0, 90035273, 53000200, 8226);
    $InitializeCommonEvent(0, 90035220, 53000810, 53000201, 8227);
    $InitializeCommonEvent(0, 90035221, 53000811, 53000201, 53000211, 10003, 2, 53004811, 1, 20025);
    $InitializeCommonEvent(0, 90035221, 53000812, 53000201, 53000211, 10003, 2, 53004812, 2, 20029);
    $InitializeCommonEvent(0, 90035227, 53000811, 10003, 30, 2, 30, 53000240, 53004811, 1);
    $InitializeCommonEvent(0, 90035227, 53000812, 10003, 30, 2, 30, 53000250, 53004812, 2);
    $InitializeCommonEvent(0, 90035225, 53000810, 8216, 8227);
    $InitializeCommonEvent(0, 90015000, 8077, 53000810, 907500002, 50, 0, 8227);
    $InitializeCommonEvent(0, 90015030, 8077, 53000810, 50, 750020, 8227);
    $InitializeCommonEvent(0, 90015002, 0, 53000201, 8216, 53000810, 1020, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035223, 53000201, 53000810, 8216);
    $InitializeCommonEvent(0, 90035224, 53000810, 53005810, 53000201, 8227);
    $InitializeCommonEvent(0, 90035228, 53000201, 53000810, 8216, 9371, 100, 200);
    $InitializeCommonEvent(0, 90035229, 53000201, 53000811, 53000211, 53002810, 10003, 53000241, 53000242, 53000243, 53000240, 53000246, 53000247, 53000248, 53000245, 53004811, 1);
    $InitializeCommonEvent(0, 90035229, 53000201, 53000812, 53000211, 53002811, 10003, 53000251, 53000252, 53000253, 53000250, 53000256, 53000257, 53000258, 53000255, 53004812, 2);
    $InitializeCommonEvent(0, 90035270, 53000810, 53000201);
    $InitializeCommonEvent(0, 90035272, 53000201, 53000810, 8227);
    $InitializeCommonEvent(0, 90035273, 53000201, 8227);
    $InitializeCommonEvent(0, 90035220, 53000820, 53000202, 8228);
    $InitializeCommonEvent(0, 90035221, 53000821, 53000202, 53000212, 10004, 3, 53004821, 1, 20025);
    $InitializeCommonEvent(0, 90035221, 53000822, 53000202, 53000212, 10004, 3, 53004822, 2, 20029);
    $InitializeCommonEvent(0, 90035227, 53000821, 10004, 30, 3, 30, 53000260, 53004821, 1);
    $InitializeCommonEvent(0, 90035227, 53000822, 10004, 30, 3, 30, 53000270, 53004822, 2);
    $InitializeCommonEvent(0, 90035225, 53000820, 8217, 8228);
    $InitializeCommonEvent(0, 90015000, 8077, 53000820, 907500003, 50, 0, 8228);
    $InitializeCommonEvent(0, 90015030, 8077, 53000820, 50, 750020, 8228);
    $InitializeCommonEvent(0, 90015002, 0, 53000202, 8217, 53000820, 1020, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035223, 53000202, 53000820, 8217);
    $InitializeCommonEvent(0, 90035224, 53000820, 53005820, 53000202, 8228);
    $InitializeCommonEvent(0, 90035228, 53000202, 53000820, 8217, 9372, 100, 200);
    $InitializeCommonEvent(0, 90035229, 53000202, 53000821, 53000212, 53002820, 10004, 53000261, 53000262, 53000263, 53000260, 53000266, 53000267, 53000268, 53000265, 53004821, 1);
    $InitializeCommonEvent(0, 90035229, 53000202, 53000822, 53000212, 53002821, 10004, 53000271, 53000272, 53000273, 53000270, 53000276, 53000277, 53000278, 53000275, 53004822, 2);
    $InitializeCommonEvent(0, 90035270, 53000820, 53000202);
    $InitializeCommonEvent(0, 90035272, 53000202, 53000820, 8228);
    $InitializeCommonEvent(0, 90035273, 53000202, 8228);
});

$Event(53005220, Default, function(eventFlagId, value, entityId, eventFlagId2, eventFlagId3, eventFlagId4) {
    DisableNetworkSync();
    EndIf(!EventFlag(8077));
    EndIf(EventFlag(eventFlagId));
    WaitFor(EventFlag(eventFlagId) && PlayerIsInOwnWorld());
    WaitFor(RandomElapsedFrames(1, 10));
    EndIf(EventFlag(8214));
    EndIf(EventFlag(eventFlagId2));
    EndIf(EventFlag(eventFlagId3));
    EndIf(EventFlag(eventFlagId4));
    if (value == 1) {
        EndIf(!InsidePlayAreaByTime(entityId, 0, 16, 9, 0));
    }
    if (value == 2) {
        EndIf(!InsidePlayAreaByTime(entityId, 0, 14, 20, 0));
    }
    if (!EventFlag(8212)) {
        SetNetworkconnectedEventFlagID(eventFlagId2, ON);
        SetNetworkconnectedEventFlagID(8212, ON);
        EndEvent();
    }
    if (!EventFlag(8213)) {
        SetNetworkconnectedEventFlagID(eventFlagId3, ON);
        SetNetworkconnectedEventFlagID(8213, ON);
        EndEvent();
    }
    if (!EventFlag(8214)) {
        SetNetworkconnectedEventFlagID(eventFlagId4, ON);
        SetNetworkconnectedEventFlagID(8214, ON);
        EndEvent();
    }
});

$Event(53005230, Default, function(eventFlagId, eventFlagId2) {
    if ((EventFlag(eventFlagId) && EventFlag(eventFlagId2)) || EventFlag(8062)) {
        SetWorldMapPointFlag(0, OFF);
        EndEvent();
    }
L0:
    WaitFor((EventFlag(eventFlagId) && EventFlag(8061)) || EventFlag(8062));
    GotoIf(S0, EventFlag(eventFlagId2));
    GotoIf(S0, EventFlag(8062));
    Goto(S1);
S0:
    SetWorldMapPointFlag(0, OFF);
    EndEvent();
S1:
    SetWorldMapPointFlag(0, ON);
    WaitFor(EventFlag(eventFlagId2) || EventFlag(8062));
    SetWorldMapPointFlag(0, OFF);
});

