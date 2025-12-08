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
        $InitializeCommonEvent(0, 90015007, 0, 50115820, 50112820, 30, 903400600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115820, 50112820, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 50115820, 50112820, 30, 903400600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115820, 50112820, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50110820, 50115820, 1030, 940000, 11200, 903400600, 50110520);
    $InitializeCommonEvent(0, 90015006, 50111520, 50110520, 50110820, 5);
    $InitializeCommonEvent(0, 90015005, 50111520, 50112820, 50110820);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50110820, 940000, 50115820, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50110820, 940000, 50115820, 0, 0);
S2:
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 50115830, 50112830, 30, 903901600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115830, 50112830, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 50115830, 50112830, 30, 903901600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115830, 50112830, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50110830, 50115830, 1030, 940000, 11200, 903901600, 50110530);
    $InitializeCommonEvent(0, 90015006, 50111530, 50110530, 50110830, 5);
    $InitializeCommonEvent(0, 90015005, 50111530, 50112830, 50110830);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50110830, 940000, 50115830, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 50110830, 940000, 50115830, 0, 0);
S5:
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 50115840, 50112840, 30, 904820700, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115840, 50112840, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 50115840, 50112840, 30, 904820700, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115840, 50112840, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50110840, 50115840, 1030, 940000, 11200, 904820700, 50110540);
    $InitializeCommonEvent(0, 90015006, 50111540, 50110540, 50110840, 5);
    $InitializeCommonEvent(0, 90015005, 50111540, 50112840, 50110840);
    GotoIf(S6, Signed(0) != 0);
    GotoIf(S6, 0 != 0);
    Goto(S8);
S6:
    GotoIf(S7, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50110840, 940000, 50115840, 0, 0);
    Goto(S8);
S7:
    $InitializeCommonEvent(0, 90015008, 0, 50110840, 940000, 50115840, 0, 0);
S8:
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 50115860, 50112860, 30, 903360600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115860, 50112860, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 50115860, 50112860, 30, 903360600, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 50115860, 50112860, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50110860, 50115860, 1030, 940000, 11200, 903360600, 50110560);
    $InitializeCommonEvent(0, 90015006, 50111560, 50110560, 50110860, 5);
    $InitializeCommonEvent(0, 90015005, 50111560, 50112860, 50110860);
    GotoIf(S9, Signed(0) != 0);
    GotoIf(S9, 0 != 0);
    Goto(S11);
S9:
    GotoIf(S10, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50110860, 940000, 50115860, 0, 0);
    Goto(S11);
S10:
    $InitializeCommonEvent(0, 90015008, 0, 50110860, 940000, 50115860, 0, 0);
S11:
    $InitializeEvent(0, 50110220, 50110860, 30004, 20004, 0, 0, 0, 0, 50110870);
    $InitializeEvent(1, 50110220, 50110861, 30004, 20004, 0, 0, 0, 0, 50110870);
    $InitializeEvent(2, 50110220, 50110862, 30004, 20004, 0, 0, 0, 0, 50110871);
    $InitializeEvent(3, 50110220, 50110863, 30004, 20004, 0, 0, 0, 0, 50110871);
    $InitializeCommonEvent(0, 90035280, 50112491, 50110700, 50110701, 50110702, 8060, 0, 50110820, 50110830, 50110840, 50110860, 0);
    $InitializeCommonEvent(0, 90035280, 50112491, 50110700, 50110701, 50110702, 80010, 0, 50110820, 50110830, 50110840, 50110860, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 50112491, 50110700, 50110701, 50110702, 80011, 1, 50110820, 50110830, 50110840, 50110860, 0);
    }
    $InitializeCommonEvent(0, 90035281, 50112491, 50110700, 50110701, 50110702, 80011, 50110820, 50110830, 50110840, 50110860, 0);
    $InitializeCommonEvent(0, 90035282, 50110490, 50112490, 50110700, 50110701, 50110702, 50110703);
    $InitializeCommonEvent(0, 90035283, 50110490, 50112491, 50111690, 50110700, 50110701, 50110702, 50110704, 50110705, 50110706);
    $InitializeCommonEvent(0, 90035284, 50115490, 50115491, 50110700, 50110702, 50110705, 50110706);
    $InitializeCommonEvent(0, 90035285, 50110490, 50110700, 50110701, 50110702, 50110705, 50110706);
    $InitializeCommonEvent(0, 90035286, 50110490, 50112491, 50110700, 50110701, 50110702, 50110705, 50110706);
    $InitializeCommonEvent(0, 90035288, 50112491, 50110700, 50110702, 50110705, 50110706);
    $InitializeCommonEvent(0, 90015000, 50110704, 50110490, 907640001, 50, 0, 50110706);
    $InitializeCommonEvent(0, 90015025, 8081, 50110704, 50110705, 50110490, 1020, 0, -1, -1, 50110490, 0);
    $InitializeCommonEvent(0, 90005250, 50110203, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110204, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110205, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110206, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110207, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110208, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110209, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110233, 50112200, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50110213, 7, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50110214, 10, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110230, 50112230, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110231, 50112230, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110232, 50112230, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110300, 50112300, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110301, 50112301, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110303, 50112305, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110304, 50112305, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110305, 50112305, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110332, 50112305, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110333, 50112305, 0, -1);
    $InitializeCommonEvent(0, 90005200, 50110306, 30000, 20000, 50112310, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50110307, 30000, 20000, 50112310, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50110338, 30000, 20000, 50112340, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50110339, 30000, 20000, 50112340, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50110340, 30000, 20000, 50112340, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50110341, 30000, 20000, 50112340, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 50110342, 30000, 20000, 50112340, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005250, 50110411, 50112413, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110412, 50112413, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110413, 50112413, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110414, 50112413, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50110415, 50112413, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50110432, 4, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50110433, 4, 0, -1);
    $InitializeCommonEvent(0, 90015310, 50110050, 50110051, 2, 50110200, 50110202, 50110203, 50112405, 50112406, 50112407, 50112410, 50112411, 50112412, 50112415, 50112416, 50112417, 0, 1, 2, 50112400);
    $InitializeCommonEvent(0, 90015301, 50115300, 50110200, 50110201, 50110202, 50110203, 2);
    $InitializeCommonEvent(0, 90015306, 50116500);
    $InitializeCommonEvent(0, 90015303, 50112401);
    $InitializeCommonEvent(0, 90015305, 50112430, 50112431, 50112432, 50112433);
    $InitializeCommonEvent(0, 90015304, 50110050, 50110200, 50110202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50110051, 50110200, 50110203);
    }
    $InitializeCommonEvent(0, 90045020, 50113500, 50113509);
    $InitializeCommonEvent(0, 90045021, 50113500, 50111600, 50111601, 50111602, 50110350, 50110351, 50110352);
    $InitializeCommonEvent(0, 90045021, 50113501, 50111600, 50111601, 50111603, 50110350, 50110351, 50110353);
    $InitializeCommonEvent(0, 90045021, 50113502, 50111600, 50111601, 50111604, 50110350, 50110351, 50110354);
    $InitializeCommonEvent(0, 90045021, 50113503, 50111600, 50111602, 50111603, 50110350, 50110352, 50110353);
    $InitializeCommonEvent(0, 90045021, 50113504, 50111600, 50111602, 50111604, 50110350, 50110352, 50110354);
    $InitializeCommonEvent(0, 90045021, 50113505, 50111600, 50111603, 50111604, 50110350, 50110353, 50110354);
    $InitializeCommonEvent(0, 90045021, 50113506, 50111601, 50111602, 50111603, 50110351, 50110352, 50110353);
    $InitializeCommonEvent(0, 90045021, 50113507, 50111601, 50111602, 50111604, 50110351, 50110352, 50110354);
    $InitializeCommonEvent(0, 90045021, 50113508, 50111601, 50111603, 50111604, 50110351, 50110353, 50110354);
    $InitializeCommonEvent(0, 90045021, 50113509, 50111602, 50111603, 50111604, 50110352, 50110353, 50110354);
    $InitializeCommonEvent(0, 90045022, 50111600, 50110300, 50110350, 50110310);
    $InitializeCommonEvent(0, 90045022, 50111601, 50110301, 50110351, 50110310);
    $InitializeCommonEvent(0, 90045022, 50111602, 50110302, 50110352, 50110310);
    $InitializeCommonEvent(0, 90045022, 50111603, 50110303, 50110353, 50110310);
    $InitializeCommonEvent(0, 90045022, 50111604, 50110304, 50110354, 50110310);
    $InitializeCommonEvent(0, 90045023, 50110310, 50110300, 50110304, 50111610);
    $InitializeCommonEvent(0, 90045024, 50111610, 50110310, 50110311, 50110312);
    $InitializeCommonEvent(0, 90045025, 50110310, 50112500);
});

$Event(50110220, Restart, function(chrEntityId, animationId, animationId2, timeSeconds, value, value2, value3, chrEntityId2) {
    EndIf(SpecialStandbyEndedFlag(chrEntityId));
    if (value != 0) {
        DisableCharacterGravity(chrEntityId);
        SetCharacterMaphit(chrEntityId, false);
    }
    ForceAnimationPlayback(chrEntityId, animationId, true, false, false);
    chrSp &= CharacterBackreadStatus(chrEntityId)
        && (CharacterHasSpEffect(chrEntityId, 5080) || CharacterHasSpEffect(chrEntityId, 5450));
    chr |= CharacterAIState(chrEntityId2, AIStateType.Combat);
    if (value2 != 0) {
        chr |= CharacterAIState(chrEntityId2, AIStateType.ActiveAlert);
    }
    if (value3 != 0) {
        chr |= CharacterAIState(chrEntityId2, AIStateType.PassiveAlert);
    }
L9:
    sp = CharacterHasSpEffect(chrEntityId, 481)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90110)
        && !CharacterHasSpEffect(chrEntityId, 90160);
    sp2 = CharacterHasSpEffect(chrEntityId, 482)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90120)
        && !CharacterHasSpEffect(chrEntityId, 90160)
        && !CharacterHasSpEffect(chrEntityId, 90162);
    sp3 = CharacterHasSpEffect(chrEntityId, 483)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90140)
        && !CharacterHasSpEffect(chrEntityId, 90160)
        && !CharacterHasSpEffect(chrEntityId, 90161);
    sp4 = CharacterHasSpEffect(chrEntityId, 484)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90130)
        && !CharacterHasSpEffect(chrEntityId, 90161)
        && !CharacterHasSpEffect(chrEntityId, 90162);
    sp5 = CharacterHasSpEffect(chrEntityId, 487)
        && !CharacterHasSpEffect(chrEntityId, 90100)
        && !CharacterHasSpEffect(chrEntityId, 90150)
        && !CharacterHasSpEffect(chrEntityId, 90160);
    chrSp &= chr && cond;
    WaitFor(
        chrSp
            || HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260)
            || CharacterDead(chrEntityId2)
            || sp
            || sp2
            || sp3
            || sp4
            || sp5);
    WaitFixedTimeSeconds(0.1);
    SetNetworkconnectedThisEventSlot(ON);
    SetSpecialStandbyEndedFlag(chrEntityId, ON);
    if (!(!CharacterHasSpEffect(chrEntityId, 5080) && !CharacterHasSpEffect(chrEntityId, 5450))) {
        WaitFixedTimeSeconds(timeSeconds);
        if (value != 0) {
            EnableCharacterGravity(chrEntityId);
            SetCharacterMaphit(chrEntityId, true);
        }
        ForceAnimationPlayback(chrEntityId, animationId2, true, false, false);
        EndEvent();
    }
L0:
    if (value != 0) {
        EnableCharacterGravity(chrEntityId);
        SetCharacterMaphit(chrEntityId, true);
    }
    EndEvent();
});

