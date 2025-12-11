// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (IsMapVariation(0)) {
        if (EventFlag(52030000)) {
            $InitializeCommonEvent(0, 90055000, 52035200, 1, 52032200, 52030201);
            $InitializeCommonEvent(0, 90055001, 52035200, 1, 52030201, 52030200);
        }
        if (EventFlag(52030001)) {
            $InitializeCommonEvent(0, 90055000, 52035200, 2, 52032200, 52030201);
            $InitializeCommonEvent(0, 90055001, 52035200, 2, 52030201, 52030200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 52030200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 52032200, 52030200);
    }
    $InitializeCommonEvent(0, 90065201, 52030200, 52030205, 52030800, 793000, 690047, 52035210, 52030800, 907930605, 52030801, 907930600);
    $InitializeCommonEvent(0, 90065202, 52030200, 52030800, 793000, 52035210, 52030800, 907930605, 52030801, 907930600);
    $InitializeCommonEvent(0, 90065900, 52030800, 1, 0, 0, 1050, 793000, 907930605, 52030800);
    $InitializeCommonEvent(0, 90015012, 52035210, 52030200);
    $InitializeCommonEvent(1, 90015012, 0, 52030200);
    $InitializeCommonEvent(0, 90015020, 52030200, 52030800);
    $InitializeCommonEvent(0, 90015008, 52030205, 52030800, 793000, 52035210, -1, 0);
    $InitializeCommonEvent(0, 90065205, 52030800, 52030210, 52030211, 52030205);
    $InitializeCommonEvent(0, 90065205, 52030801, 52030211, 52030210, 52030205);
    $InitializeCommonEvent(0, 90065206, 52030800, 52030801, 52030210, 52030211, 52030205, 52030800);
    $InitializeCommonEvent(0, 90065207, 52030800, 52030801, 52030800, 52030205);
    $InitializeCommonEvent(0, 90035001, 52030800);
});

$Event(52032885, Default, function(chrEntityId, chrEntityId2) {
    EndIf(EventFlag(15000800));
    hp = CharacterHPValue(chrEntityId) == 1;
    hp2 = CharacterHPValue(chrEntityId2) == 1;
    WaitFor((hp || hp2) && PlayerIsInOwnWorld());
    if (!hp2.Passed) {
        SetSpEffect(chrEntityId, 60852);
        SetSpEffect(chrEntityId, 60864);
        SetSpEffect(chrEntityId2, 60864);
        SetSpEffect(chrEntityId2, 60861);
        WaitFixedTimeSeconds(3);
        ClearSpEffect(chrEntityId, 60840);
        ClearSpEffect(chrEntityId, 60826);
        EndEvent();
    }
L0:
    SetSpEffect(chrEntityId2, 60852);
    SetSpEffect(chrEntityId2, 60864);
    SetSpEffect(chrEntityId, 60864);
    SetSpEffect(chrEntityId, 60861);
    WaitFixedTimeSeconds(3);
    ClearSpEffect(chrEntityId2, 60840);
    ClearSpEffect(chrEntityId2, 60826);
});


