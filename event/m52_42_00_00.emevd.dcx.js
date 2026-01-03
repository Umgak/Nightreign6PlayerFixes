// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (920310 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52420800, 52422800, 30, 905860000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52420800, 52422800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52420800, 52422800, 30, 905860000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52420800, 52422800, 30, 920310, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52420800, 52420800, 1030, 920310, 11200, 905860000, 52420800, 2);
    $InitializeCommonEvent(0, 90015006, 52421500, 52420500, 52420800, 5);
    $InitializeCommonEvent(0, 90015005, 52421500, 52422800, 52420800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 920310 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52420800, 940000, 52420800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52420800, 920310, 52420800, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52420800, 8175);
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 52420810, 52422810, 30, 904140200, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52420810, 52422810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 52420810, 52422810, 30, 904140200, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 52420810, 52422810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015025, 0, 0, 52420810, 52420810, 1030, 940000, 11200, 904140200, 52420810, 3);
    $InitializeCommonEvent(0, 90015006, 52421510, 52420510, 52420810, 5);
    $InitializeCommonEvent(0, 90015005, 52421510, 52422810, 52420810);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52420810, 940000, 52420810, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 52420810, 940000, 52420810, 0, 0);
S5:
    $InitializeCommonEvent(0, 90045050, 52420810, 52425801, 52422850, 52422851, 52422852, 52422853, 52422854, 52422855, 52422856, 52422857, 52422858, 52422859, 52420200, 52420201, 52420202, 52420203, 52420204, 52420205, 52420206, 52420207, 52420208, 52420209);
    $InitializeCommonEvent(0, 90045051, 52420810, 52425801, 52423810, 52422860);
    $InitializeCommonEvent(0, 90015050, 52420810, 8175);
    $InitializeCommonEvent(0, 90035280, 52422491, 52420700, 52420701, 52420702, 8060, 0, 52420800, 52420810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52422491, 52420700, 52420701, 52420702, 80010, 0, 52420800, 52420810, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 52422491, 52420700, 52420701, 52420702, 80011, 1, 52420800, 52420810, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 52422491, 52420700, 52420701, 52420702, 80011, 52420800, 52420810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52420490, 52422490, 52420700, 52420701, 52420702, 52420703);
    $InitializeCommonEvent(0, 90035283, 52420490, 52422491, 52421690, 52420700, 52420701, 52420702, 52420704, 52420705, 52420706);
    $InitializeCommonEvent(0, 90035284, 52425490, 52425491, 52420700, 52420702, 52420705, 52420706);
    $InitializeCommonEvent(0, 90035285, 52420490, 52420700, 52420701, 52420702, 52420705, 52420706);
    $InitializeCommonEvent(0, 90035286, 52420490, 52422491, 52420700, 52420701, 52420702, 52420705, 52420706);
    $InitializeCommonEvent(0, 90035288, 52422491, 52420700, 52420702, 52420705, 52420706);
    $InitializeCommonEvent(0, 90015000, 52420704, 52420490, 907640001, 50, 0, 52420706);
    $InitializeCommonEvent(0, 90015025, 8081, 52420704, 52420705, 52420490, 1020, 0, -1, -1, 52420490, 0);
    $InitializeCommonEvent(0, 90015310, 52420050, 52420051, 1, 52420200, 52420202, 52420203, 52422405, 52422406, 52422407, 52422410, 52422411, 52422412, 52422415, 52422416, 52422417, 0, 1, 2, 52422400);
    $InitializeCommonEvent(0, 90015301, 52425300, 52420200, 52420201, 52420202, 52420203, 1);
    $InitializeCommonEvent(0, 90015306, 1036406500);
    $InitializeCommonEvent(0, 90025010, 1036402800, 9025, 2);
    $InitializeCommonEvent(0, 90015305, 52422430, 52422431, 52422432, 52422433);
    $InitializeCommonEvent(0, 90015304, 52420050, 52420200, 52420202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52420051, 52420200, 52420203);
    }
    $InitializeEvent(0, 52422500, 52420830, 570, 52422430, 110230, 52420810, 9030);
});

$Event(52422800, Restart, function() {
    EndIf(EventFlag(52420810));
    WaitFor(CharacterHPValue(52420810) <= 0);
    ForceCharacterDeath(52420811, false);
    ForceCharacterDeath(52420812, false);
    ForceCharacterDeath(52420813, false);
    ForceCharacterDeath(52420814, false);
    ForceCharacterDeath(52420815, false);
    ForceCharacterDeath(52420816, false);
    ForceCharacterDeath(52420817, false);
    ForceCharacterDeath(52420818, false);
    ForceCharacterDeath(52420819, false);
    ForceCharacterDeath(52420820, false);
    ForceCharacterDeath(52420821, false);
    ForceCharacterDeath(52420822, false);
    ForceCharacterDeath(52420823, false);
    ForceCharacterDeath(52420824, false);
    ForceCharacterDeath(52420825, false);
    DisableGenerator(52420810);
    DisableGenerator(52420811);
    DisableGenerator(52420812);
    DisableGenerator(52420813);
    DisableGenerator(52420814);
    DisableGenerator(52420815);
});

$Event(52423810, Restart, function() {
    if (EventFlag(52420810)) {
        DisableGenerator(52420810);
        DisableGenerator(52420811);
        DisableGenerator(52420812);
        DisableGenerator(52420813);
        DisableGenerator(52420814);
        DisableGenerator(52420815);
        EndEvent();
    }
L0:
    if (!EventFlag(52423800)) {
        DisableCharacterAI(52420810);
        ForceAnimationPlayback(52420810, 30013, false, false, false);
        WaitFor(InArea(20000, 52422811));
        EnableCharacterAI(52420810);
        BatchSetNetworkconnectedEventFlags(52423832, 52423839, OFF);
        SetNetworkconnectedEventFlagID(52423822, ON);
        SetNetworkconnectedEventFlagID(52423839, ON);
        WaitFixedTimeSeconds(1.2);
        SetEventFlagID(52423800, ON);
        InvokeEnemyGenerator(52423810);
        ForceAnimationPlayback(52420810, 20005, false, false, false);
    }
L1:
    EndEvent();
});

$Event(52422831, Restart, function() {
    EndIf(EventFlag(52420810));
    WaitFor(CharacterHasSpEffect(52420810, 15046) && EventFlag(52423839));
    GotoIf(L0, HPRatio(52420810) >= 0.9);
    GotoIf(L0, EventFlag(52423822));
    GotoIf(L1, EventFlag(52423823));
    GotoIf(L1, EventFlag(52423824));
    GotoIf(L1, EventFlag(52423825));
    GotoIf(L2, EventFlag(52423826));
    GotoIf(L2, EventFlag(52423827));
    GotoIf(L2, EventFlag(52423828));
    GotoIf(L3, EventFlag(52423829));
    GotoIf(L3, EventFlag(52423830));
    GotoIf(L3, EventFlag(52423831));
    GotoIf(L4, EventFlag(52423832));
    GotoIf(L4, EventFlag(52423833));
    GotoIf(L4, EventFlag(52423834));
L0:
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L1:
    BatchSetNetworkconnectedEventFlags(52423823, 52423834, OFF);
    RandomlySetEventFlagInRange(52423829, 52423832, ON);
    SetNetworkconnectedEventFlagID(52423839, OFF);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L2:
    BatchSetNetworkconnectedEventFlags(52423823, 52423834, OFF);
    RandomlySetEventFlagInRange(52423829, 52423832, ON);
    SetNetworkconnectedEventFlagID(52423839, OFF);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L3:
    BatchSetNetworkconnectedEventFlags(52423823, 52423834, OFF);
    RandomlySetEventFlagInRange(52423823, 52423828, ON);
    SetNetworkconnectedEventFlagID(52423839, OFF);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L4:
    BatchSetNetworkconnectedEventFlags(52423823, 52423834, OFF);
    RandomlySetEventFlagInRange(52423823, 52423828, ON);
    SetNetworkconnectedEventFlagID(52423839, OFF);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
});

$Event(52422838, Default, function() {
    EndIf(EventFlag(52420810));
    WaitFor(
        AnyBatchEventFlags(52423823, 52423834)
            && !EventFlag(52423839)
            && CharacterHasSpEffect(52420810, 15046));
    GotoIf(L0, EventFlag(52423822));
    GotoIf(L1, EventFlag(52423823));
    GotoIf(L2, EventFlag(52423824));
    GotoIf(L3, EventFlag(52423825));
    GotoIf(L4, EventFlag(52423826));
    GotoIf(L5, EventFlag(52423827));
    GotoIf(L6, EventFlag(52423828));
    GotoIf(L7, EventFlag(52423829));
    GotoIf(L8, EventFlag(52423830));
    GotoIf(L9, EventFlag(52423831));
    GotoIf(L10, EventFlag(52423832));
    GotoIf(L11, EventFlag(52423833));
    GotoIf(L12, EventFlag(52423834));
L0:
    SetNetworkconnectedEventFlagID(52423839, ON);
    SetNetworkconnectedEventFlagID(52423822, OFF);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L1:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422850, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L2:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422851, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L3:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422852, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L4:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422853, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L5:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422854, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L6:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422855, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L7:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422856, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L8:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422857, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L9:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422858, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L10:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422859, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L11:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422854, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
L12:
    IssueShortWarpRequest(52420810, TargetEntityType.Area, 52422855, -1);
    SetNetworkconnectedEventFlagID(52423839, ON);
    WaitFor(!CharacterHasSpEffect(52420810, 15046));
    RestartEvent();
});

$Event(52422845, Restart, function() {
    EndIf(EventFlag(52420810));
    WaitFor(HPRatio(52420810) < 0.9);
    SetNetworkconnectedEventFlagID(52423822, OFF);
    SetNetworkconnectedEventFlagID(52423834, ON);
});

$Event(52422890, Restart, function() {
    EndIf(EventFlag(52420810));
    if (!EventFlag(52423801)) {
        WaitFor(CharacterRatioDead(52425801));
        WaitFixedTimeSeconds(1);
        SetSpEffect(52420810, 15044);
        GotoIf(S0, HPRatio(52420810) < 0.9);
        BatchSetNetworkconnectedEventFlags(52422822, 52422839, OFF);
        SetNetworkconnectedEventFlagID(52422822, ON);
        SetNetworkconnectedEventFlagID(52422839, ON);
        Goto(L0);
S0:
        SetNetworkconnectedEventFlagID(52422822, OFF);
        SetNetworkconnectedEventFlagID(52423801, ON);
    } else {
L1:
        if (!EventFlag(52423802)) {
            WaitFor(CharacterRatioDead(52425802));
            WaitFixedTimeSeconds(1);
            SetSpEffect(52420810, 15044);
            SetNetworkconnectedEventFlagID(52423802, ON);
        } else {
L2:
            if (!EventFlag(52423803)) {
                WaitFor(CharacterRatioDead(52425803));
                WaitFixedTimeSeconds(1);
                SetSpEffect(52420810, 15044);
                SetNetworkconnectedEventFlagID(52423803, ON);
            } else {
L10:
                if (!EventFlag(52423804)) {
                    WaitFor(CharacterRatioDead(52425804));
                    WaitFixedTimeSeconds(1);
                    SetSpEffect(52420810, 15044);
                    SetNetworkconnectedEventFlagID(52423804, ON);
                } else {
L11:
                    if (!EventFlag(52423805)) {
                        WaitFor(CharacterRatioDead(52425805));
                        WaitFixedTimeSeconds(1);
                        SetSpEffect(52420810, 15044);
                        SetNetworkconnectedEventFlagID(52423805, ON);
                    } else {
L12:
                        WaitFor(CharacterRatioDead(52425806));
                        WaitFixedTimeSeconds(1);
                        SetSpEffect(52420810, 15044);
                    }
                }
            }
        }
    }
L0:
    WaitFor(CharacterHasSpEffect(52420810, 15007));
    if (EventFlag(52423805)) {
        InvokeEnemyGenerator(52423815);
        WaitFor(!CharacterRatioDead(52425806));
        SetSpEffect(52420810, 15045);
        RestartEvent();
    }
L9:
    if (EventFlag(52423804)) {
        InvokeEnemyGenerator(52423814);
        WaitFor(!CharacterRatioDead(52425805));
        SetSpEffect(52420810, 15045);
        RestartEvent();
    }
L8:
    if (EventFlag(52423803)) {
        InvokeEnemyGenerator(52423813);
        WaitFor(!CharacterRatioDead(52425804));
        SetSpEffect(52420810, 15045);
        RestartEvent();
    }
L4:
    if (EventFlag(52423802)) {
        InvokeEnemyGenerator(52423812);
        SetEventFlagID(52422860, ON);
        WaitFor(!CharacterRatioDead(52425803));
        SetSpEffect(52420810, 15045);
        RestartEvent();
    }
L5:
    if (EventFlag(52423801)) {
        InvokeEnemyGenerator(52423811);
        WaitFor(!CharacterRatioDead(52425802));
        SetSpEffect(52420810, 15045);
        RestartEvent();
    }
L6:
    if (EventFlag(52423800)) {
        InvokeEnemyGenerator(52423810);
        WaitFor(!CharacterRatioDead(52425801));
        SetSpEffect(52420810, 15045);
        RestartEvent();
    }
L7:
    NoOp();
});

$Event(52422500, Default, function(chrEntityId, operationGuideParamId, entityId, userDispLogParamId, eventFlagId, eventFlagId2) {
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

