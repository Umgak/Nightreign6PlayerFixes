// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    // NR6PF: I rearranged this for my sanity.
    // It's the same (functionally) as vanilla until you reach the bottom.
    // But instead of putting all of the events for dog 1, then all of the events for dog 2, then all of the events for dog 3
    // it's all of each step for each dog, then all of the next step, etc.
    // instead of 123123123 it's 111222333 etc
    // nobody's reading this.
    $InitializeEvent(0, 53005220, 8210, 1, 53002600, 53000200, 53000201, 53000202); // doggo raid early init
    $InitializeEvent(1, 53005220, 8211, 2, 53002600, 53000200, 53000201, 53000202); // doggo raid late init
    $InitializeEvent(0, 53005230, 53000200, 8215); // manage map icon for doggo (with sword!!) raid
    $InitializeEvent(1, 53005230, 53000201, 8216); // manage map icon for doggo raid
    $InitializeEvent(2, 53005230, 53000202, 8217); // manage map icon for doggo raid
    $InitializeCommonEvent(0, 90035220, 53000800, 53000200, 8226); // INIT DOG (BIG, has sword!!)
    $InitializeCommonEvent(0, 90035220, 53000810, 53000201, 8227); // INIT DOG (BIG)
    $InitializeCommonEvent(0, 90035220, 53000820, 53000202, 8228); // INIT DOG (BIG)
    $InitializeCommonEvent(0, 90035225, 53000800, 8215, 8226); // Track if big dog (with sword!!) died
    $InitializeCommonEvent(0, 90035225, 53000810, 8216, 8227); // Track if big dog died
    $InitializeCommonEvent(0, 90035225, 53000820, 8217, 8228); // Track if big dog died
    $InitializeCommonEvent(0, 90015000, 8077, 53000800, 907500001, 50, 0, 8226); // generic event for all raids
    $InitializeCommonEvent(0, 90015000, 8077, 53000810, 907500002, 50, 0, 8227); // generic event for all raids
    $InitializeCommonEvent(0, 90015000, 8077, 53000820, 907500003, 50, 0, 8228); // generic event for all raids
    $InitializeCommonEvent(0, 90015030, 8077, 53000800, 50, 750020, 8226); // generic event for all raids
    $InitializeCommonEvent(0, 90015030, 8077, 53000810, 50, 750020, 8227); // generic event for all raids
    $InitializeCommonEvent(0, 90015030, 8077, 53000820, 50, 750020, 8228); // generic event for all raids
    $InitializeCommonEvent(0, 90015002, 0, 53000200, 8215, 53000800, 1020, 0, 0, 0, 0);  // generic event for all raids, increment boss kill counter and display text effects
    $InitializeCommonEvent(0, 90015002, 0, 53000201, 8216, 53000810, 1020, 0, 0, 0, 0);  // generic event for all raids, increment boss kill counter and display text effects
    $InitializeCommonEvent(0, 90015002, 0, 53000202, 8217, 53000820, 1020, 0, 0, 0, 0);  // generic event for all raids, increment boss kill counter and display text effects
    $InitializeCommonEvent(0, 90035223, 53000200, 53000800, 8215); // mark event as failed if dog still has hp when event is over
    $InitializeCommonEvent(0, 90035223, 53000201, 53000810, 8216); // mark event as failed if dog still has hp when event is over
    $InitializeCommonEvent(0, 90035223, 53000202, 53000820, 8217); // mark event as failed if dog still has hp when event is over
    // (entityId2 is a GROUP ID! This is the only place it's used, should be safe to leave extra dogs in same groupids)
    $InitializeCommonEvent(0, 90035224, 53000800, 53005800, 53000200, 8226); // kill dogs after raid is over 
    $InitializeCommonEvent(0, 90035224, 53000810, 53005810, 53000201, 8227); // kill dogs after raid is over
    $InitializeCommonEvent(0, 90035224, 53000820, 53005820, 53000202, 8228); // kill dogs after raid is over
    $InitializeCommonEvent(0, 90035228, 53000200, 53000800, 8215, 9370, 100, 200); // track player radius of dog (big)
    $InitializeCommonEvent(0, 90035228, 53000201, 53000810, 8216, 9371, 100, 200); // track player radius of dog (big)
    $InitializeCommonEvent(0, 90035228, 53000202, 53000820, 8217, 9372, 100, 200); // track player radius of dog (big)
    $InitializeCommonEvent(0, 90035270, 53000800, 53000200); // enable dog (big, with sword!!) gravity when players near, disable otherwise
    $InitializeCommonEvent(0, 90035270, 53000810, 53000201); // enable dog (big) gravity when players near, disable otherwise
    $InitializeCommonEvent(0, 90035270, 53000820, 53000202); // enable dog (big) gravity when players near, disable otherwise
    $InitializeCommonEvent(0, 90035272, 53000200, 53000800, 8226); // strengthening buff as big dogs die
    $InitializeCommonEvent(0, 90035272, 53000201, 53000810, 8227); // strengthening buff as big dogs die
    $InitializeCommonEvent(0, 90035272, 53000202, 53000820, 8228); // strengthening buff as big dogs die
    $InitializeCommonEvent(0, 90035273, 53000200, 8226); // manage overwriting player respawn point if player is in raid area and ring is not closing yet
    $InitializeCommonEvent(0, 90035273, 53000201, 8227); // manage overwriting player respawn point if player is in raid area and ring is not closing yet
    $InitializeCommonEvent(0, 90035273, 53000202, 8228); // manage overwriting player respawn point if player is in raid area and ring is not closing yet
    // NR6PF: Puppers are down here now! Thank you sanity!
    // I left them in sections by player since it makes it easier to see what I have to modify.
    // meanwhile up above I change *nothing* so... who cares
    // I will have to piggyback off of P1-3's ins flags for some of these events, it's fine (namely the 5300020x flags)
    // $Event(90035221, Default, function(chrEntityId, eventFlagId, eventFlagId2, chrEntityId2, playerNo, eventFlagId3, value, animationId) {});
    // $Event(90035227, Default, function(chrEntityId, chrEntityId2, targetDistance, playerNo, targetDistance2, eventFlagId, eventFlagId2, value) {});
    // $Event(90035229, Default, function(eventFlagId, chrEntityId, eventFlagId2, generatorEntityId, chrEntityId2, eventFlagId3, eventFlagId4, eventFlagId5, eventFlagId6, eventFlagId7, eventFlagId8, eventFlagId9, eventFlagId10, eventFlagId11, value) {};
    // P1
    $InitializeCommonEvent(0, 90035221, 53000801, 53000200, 53000210, 10002, 1, 53004801, 1, 20025); // Enable first pupper (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035221, 53000802, 53000200, 53000210, 10002, 1, 53004802, 2, 20029); // Enable second pupper (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035227, 53000801, 10002, 30, 1, 30, 53000220, 53004801, 1); // first pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1) (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035227, 53000802, 10002, 30, 1, 30, 53000230, 53004802, 2); // second pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1) (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035229, 53000200, 53000801, 53000210, 53002800, 10002, 53000221, 53000222, 53000223, 53001221, 53001222, 5301223, 53000220, 53000226, 53000227, 53000228, 53001226, 53001227, 53001228, 53000225, 53004801, 1); // player-dependent pupper enemy generator, added new event IDs
    $InitializeCommonEvent(0, 90035229, 53000200, 53000802, 53000210, 53002801, 10002, 53000231, 53000232, 53000233, 53001231, 53001232, 5301233, 53000230, 53000236, 53000237, 53000238, 53001236, 53001237, 53001238, 53000235, 53004802, 2); // player-dependent pupper enemy generator, added new event IDs
    // P2
    $InitializeCommonEvent(0, 90035221, 53000811, 53000201, 53000211, 10003, 2, 53004811, 1, 20025); // Enable first pupper (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035221, 53000812, 53000201, 53000211, 10003, 2, 53004812, 2, 20029); // Enable second pupper (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035227, 53000811, 10003, 30, 2, 30, 53000240, 53004811, 1); // first pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1) (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035227, 53000812, 10003, 30, 2, 30, 53000250, 53004812, 2); // second pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1) (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035229, 53000201, 53000811, 53000211, 53002810, 10003, 53000241, 53000242, 53000243, 53001241, 53001242, 53001243, 53000240, 53000246, 53000247, 53000248, 53001246, 53001247, 53001248, 53000245, 53004811, 1); // player-dependent pupper enemy generator, lotta stuff in here, gonna need a lot more event ids (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035229, 53000201, 53000812, 53000211, 53002811, 10003, 53000251, 53000252, 53000253, 53001251, 53001252, 53001253, 53000250, 53000256, 53000257, 53000258, 53001256, 53001257, 53001258, 53000255, 53004812, 2); // player-dependent pupper enemy generator, lotta stuff in here, gonna need a lot more event ids (needs copy for P4-6)
    // P3
    $InitializeCommonEvent(0, 90035221, 53000821, 53000202, 53000212, 10004, 3, 53004821, 1, 20025); // Enable first pupper (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035221, 53000822, 53000202, 53000212, 10004, 3, 53004822, 2, 20029); // Enable second pupper (needs copy for P4-6)
    $InitializeCommonEvent(0, 90035227, 53000821, 10004, 30, 3, 30, 53000260, 53004821, 1); // first pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035227, 53000822, 10004, 30, 3, 30, 53000270, 53004822, 2); // second pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035229, 53000202, 53000821, 53000212, 53002820, 10004, 53000261, 53000262, 53000263, 53001261, 53001262, 53001263, 53000260, 53000266, 53000267, 53000268, 53001266, 53001267, 53001268, 53000265, 53004821, 1); // player-dependent pupper enemy generator, lotta stuff in here, gonna need a lot more event ids
    $InitializeCommonEvent(0, 90035229, 53000202, 53000822, 53000212, 53002821, 10004, 53000271, 53000272, 53000273, 53001271, 53001272, 53001273, 53000270, 53000276, 53000277, 53000278, 53001276, 53001277, 53001278, 53000275, 53004822, 2); // player-dependent pupper enemy generator, lotta stuff in here, gonna need a lot more event ids
    // P4
    $InitializeCommonEvent(0, 90035221, 53000831, 53000200, 53000213, 10005, 4, 53004831, 1, 20025); // Enable first pupper
    $InitializeCommonEvent(0, 90035221, 53000832, 53000200, 53000213, 10005, 4, 53004832, 2, 20029); // Enable second pupper
    $InitializeCommonEvent(0, 90035227, 53000831, 10005, 30, 4, 30, 53000280, 53004831, 1); // first pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035227, 53000832, 10005, 30, 4, 30, 53000290, 53004832, 2); // second pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035229, 53000200, 53000831, 53000213, 53002830, 10005, 53000281, 53000282, 53000283, 53001281, 53001282, 53001283, 53000280, 53000286, 53000287, 53000288, 53001286, 53001287, 53001288, 53000285, 53004831, 1); // player-dependent pupper enemy generator
    $InitializeCommonEvent(0, 90035229, 53000200, 53000832, 53000213, 53002831, 10005, 53000291, 53000292, 53000293, 53001291, 53001292, 53001293, 53000290, 53000296, 53000297, 53000298, 53001296, 53001297, 53001298, 53000295, 53004832, 2); // player-dependent pupper enemy generator
    // P5
    $InitializeCommonEvent(0, 90035221, 53000841, 53000201, 53000214, 10006, 5, 53004841, 1, 20025); // Enable first pupper
    $InitializeCommonEvent(0, 90035221, 53000842, 53000201, 53000214, 10006, 5, 53004842, 2, 20029); // Enable second pupper
    $InitializeCommonEvent(0, 90035227, 53000841, 10006, 30, 5, 30, 53000300, 53004841, 1); // first pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035227, 53000842, 10006, 30, 5, 30, 53000310, 53004842, 2); // second pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035229, 53000201, 53000841, 53000214, 53002840, 10006, 53000301, 53000302, 53000303, 53001301, 53001302, 53001303, 53000300, 53000306, 53000307, 53000308, 53001306, 53001307, 53001308, 53000305, 53004841, 1); // player-dependent pupper enemy generator
    $InitializeCommonEvent(0, 90035229, 53000201, 53000842, 53000214, 53002841, 10006, 53000311, 53000312, 53000313, 53001311, 53001312, 53001313, 53000310, 53000316, 53000317, 53000318, 53001316, 53001317, 53001318, 53000315, 53004842, 2); // player-dependent pupper enemy generator
    // P6
    $InitializeCommonEvent(0, 90035221, 53000851, 53000202, 53000215, 10007, 6, 53004851, 1, 20025); // Enable first pupper
    $InitializeCommonEvent(0, 90035221, 53000852, 53000202, 53000215, 10007, 6, 53004852, 2, 20029); // Enable second pupper
    $InitializeCommonEvent(0, 90035227, 53000851, 10007, 30, 6, 30, 53000320, 53004851, 1); // first pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035227, 53000852, 10007, 30, 6, 30, 53000330, 53004852, 2); // second pupper tracker/catchup script, probably bugged due to CharacterHasSpEffect(51225, -1)
    $InitializeCommonEvent(0, 90035229, 53000202, 53000851, 53000215, 53002850, 10007, 53000321, 53000322, 53000323, 53001321, 53001322, 53001323, 53000320, 53000326, 53000327, 53000328, 53001326, 53001327, 53001328, 53000325, 53004851, 1); // player-dependent pupper enemy generator
    $InitializeCommonEvent(0, 90035229, 53000202, 53000852, 53000215, 53002851, 10007, 53000331, 53000332, 53000333, 53001331, 53001332, 53001333, 53000330, 53000336, 53000337, 53000338, 53001336, 53001337, 53001338, 53000335, 53004852, 2); // player-dependent pupper enemy generator
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

