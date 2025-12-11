// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (356010 == 0) {
        $InitializeCommonEvent(0, 90015007, 0, 53515800, 53512800, 30, 903575000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53515800, 53512800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 0, 53515800, 53512800, 30, 903575000, 0, 0);
        $InitializeCommonEvent(0, 90015031, 0, 53515800, 53512800, 30, 356010, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 53510800, 53515800, 1030, 356010, 11200, 903575000, 53510500);
    $InitializeCommonEvent(0, 90015006, 53511500, 53510500, 53510800, 5);
    $InitializeCommonEvent(0, 90015005, 53511500, 53512800, 53510800);
    GotoIf(S0, Signed(15451) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 356010 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 53510800, 940000, 53515800, 15451, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 53510800, 356010, 53515800, 15451, 0);
S2:
    $InitializeEvent(0, 53512000);
    $InitializeCommonEvent(0, 90015462, 8240, 8241, 8242, 53510810);
    $InitializeCommonEvent(0, 90015463, 8240, 8241, 53512200);
    $InitializeCommonEvent(0, 90015000, 8241, 53510810, 904770000, 30, 0, 8242);
    $InitializeCommonEvent(0, 90015030, 8241, 53510810, 30, 931010, 8242);
    $InitializeCommonEvent(0, 90015002, 0, 0, 53510810, 53510810, 1020, 931010, 110221, 904770000, 53510810);
    $InitializeCommonEvent(0, 9005810, 53510810, 53510510, 53511510, 5);
    $InitializeCommonEvent(0, 90015005, 53511510, 53512810, 53510810);
    $InitializeCommonEvent(0, 90015466, 53510810, 8242);
    $InitializeCommonEvent(0, 90015465, 53515800, 1, 8270, 53510809);
    $InitializeCommonEvent(0, 90015465, 53510200, 0, 8270, 53510208);
    $InitializeCommonEvent(0, 90015465, 53510201, 0, 8270, 53510209);
    $InitializeCommonEvent(0, 90015465, 53510210, 0, 8270, 53510218);
    $InitializeCommonEvent(0, 90015465, 53510211, 0, 8270, 53510219);
});

$Event(53512000, Default, function() {
    WaitFor(
        (CharacterRatioAIState(53515800, AIStateType.Combat, GreaterOrEqual, 1)
            && EntityInRadiusOfEntity(20000, 53515800, 30, 1))
            || CharacterRatioDead(53515800));
    SetEventFlagID(75101, ON);
});


