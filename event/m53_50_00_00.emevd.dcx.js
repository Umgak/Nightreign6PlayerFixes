// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (920610 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 53500800, 53502800, 30, 905011000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53500800, 53502800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 53500800, 53502800, 30, 905011000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53500800, 53502800, 30, 920610, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 53500800, 53500800, 1030, 920610, 11200, 905011000, 53500800);
    $InitializeCommonEvent(0, 90015006, 53501500, 53500500, 53500800, 5);
    $InitializeCommonEvent(0, 90015005, 53501500, 53502800, 53500800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 920610 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 53500800, 940000, 53500800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 53500800, 920610, 53500800, 0, 0);
S2:
    $InitializeEvent(0, 53512000);
    $InitializeCommonEvent(0, 90015465, 53500800, 1, 8270, 53500809);
    $InitializeCommonEvent(0, 90015462, 8240, 8241, 8242, 53500810);
    $InitializeCommonEvent(0, 90015463, 8240, 8241, 53502230);
    $InitializeCommonEvent(0, 90015000, 8241, 53500810, 903251600, 30, 0, 8242);
    $InitializeCommonEvent(0, 90015030, 8241, 53500810, 30, 920210, 8242);
    $InitializeCommonEvent(0, 90015002, 0, 0, 53500810, 53500810, 1020, 920210, 110221, 903251600, 53500810);
    $InitializeCommonEvent(0, 9005810, 53500810, 53500510, 53501510, 5);
    $InitializeCommonEvent(0, 90015005, 53501510, 53502810, 53500810);
    $InitializeCommonEvent(0, 90015466, 53500810, 8242);
    $InitializeEvent(0, 53502500, 53500200, 53502220);
    $InitializeCommonEvent(0, 90015465, 53500200, 0, 8270, 53500207);
    $InitializeCommonEvent(0, 90015465, 53500201, 0, 8270, 53500208);
    $InitializeCommonEvent(0, 90015465, 53500202, 0, 8270, 53500209);
});

$Event(53512000, Default, function() {
    WaitFor(
        (CharacterAIState(53500800, AIStateType.Combat, GreaterOrEqual, 1)
            && EntityInRadiusOfEntity(20000, 53500800, 30, 1))
            || CharacterRatioDead(53500800));
    SetEventFlagID(75101, ON);
});

$Event(53502500, Restart, function(chrEntityId, areaEntityId) {
    EndIf(CharacterDead(chrEntityId));
    WaitFor(InArea(10000, areaEntityId));
    SetSpEffect(10000, 61339);
    WaitFixedTimeSeconds(2.5);
    RestartEvent();
});

