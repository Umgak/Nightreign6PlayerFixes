// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (921210 == 0) {
        $InitializeCommonEvent(0, 90015000, 0, 50105800, 902140610, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50105800, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50105800, 902140610, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50105800, 30, 921210, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50100800, 50105800, 1030, 921210, 11200, 902140610, 50100500);
    $InitializeCommonEvent(0, 90015006, 50101500, 50100500, 50100800, 5);
    $InitializeCommonEvent(0, 90015005, 50101500, 50102800, 50100800);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 921210 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50100800, 940000, 50105800, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 50100800, 921210, 50105800, 0, 0);
S2:
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015000, 0, 50100820, 905081000, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50100820, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50100820, 905081000, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50100820, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50100820, 50100820, 1030, 940000, 11200, 905081000, 50100820);
    $InitializeCommonEvent(0, 90015006, 50101520, 50100520, 50100820, 5);
    $InitializeCommonEvent(0, 90015005, 50101520, 50102820, 50100820);
    GotoIf(S3, Signed(0) != 0);
    GotoIf(S3, 0 != 0);
    Goto(S5);
S3:
    GotoIf(S4, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50100820, 940000, 50100820, 0, 0);
    Goto(S5);
S4:
    $InitializeCommonEvent(0, 90015008, 0, 50100820, 940000, 50100820, 0, 0);
S5:
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90045040, 2, 50100400);
        $InitializeCommonEvent(0, 90045041, 2, 50100400, 50105200, 50105201);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90045040, 2, 50100401);
        $InitializeCommonEvent(0, 90045041, 2, 50100401, 50105210, 50105211);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90045040, 2, 50100402);
        $InitializeCommonEvent(0, 90045041, 2, 50100402, 50105220, 50105221);
    }
    if (942010 == 0) {
        $InitializeCommonEvent(0, 90015000, 0, 50100830, 905070010, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50100830, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50100830, 905070010, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50100830, 30, 942010, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50100830, 50100830, 1030, 942010, 11200, 905070010, 50100830);
    $InitializeCommonEvent(0, 90015006, 50101530, 50100530, 50100830, 5);
    $InitializeCommonEvent(0, 90015005, 50101530, 50102830, 50100830);
    GotoIf(S6, Signed(0) != 0);
    GotoIf(S6, 0 != 0);
    Goto(S8);
S6:
    GotoIf(S7, 942010 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50100830, 940000, 50100830, 0, 0);
    Goto(S8);
S7:
    $InitializeCommonEvent(0, 90015008, 0, 50100830, 942010, 50100830, 0, 0);
S8:
    if (940000 == 0) {
        $InitializeCommonEvent(0, 90015000, 0, 50100840, 905250610, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50100840, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015000, 0, 50100840, 905250610, 30, 0, 0);
        $InitializeCommonEvent(0, 90015030, 0, 50100840, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 50100840, 50100840, 1030, 940000, 11200, 905250610, 50100840);
    $InitializeCommonEvent(0, 90015006, 50101540, 50100540, 50100840, 5);
    $InitializeCommonEvent(0, 90015005, 50101540, 50102840, 50100840);
    GotoIf(S9, Signed(0) != 0);
    GotoIf(S9, 0 != 0);
    Goto(S11);
S9:
    GotoIf(S10, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 50100840, 940000, 50100840, 0, 0);
    Goto(S11);
S10:
    $InitializeCommonEvent(0, 90015008, 0, 50100840, 940000, 50100840, 0, 0);
S11:
    $InitializeCommonEvent(0, 90005250, 50100840, 50102840, 0, -1);
    $InitializeCommonEvent(0, 90035280, 50102491, 50100700, 50100701, 50100702, 8060, 0, 50100800, 50100810, 50100820, 50100830, 50100840);
    $InitializeCommonEvent(0, 90035280, 50102491, 50100700, 50100701, 50100702, 80010, 0, 50100800, 50100810, 50100820, 50100830, 50100840);
    $InitializeCommonEvent(0, 90035280, 50102491, 50100700, 50100701, 50100702, 80011, 1, 50100800, 50100810, 50100820, 50100830, 50100840);
    $InitializeCommonEvent(0, 90035281, 50102491, 50100700, 50100701, 50100702, 80011, 50100800, 50100810, 50100820, 50100830, 50100840);
    $InitializeCommonEvent(0, 90035282, 50100490, 50102490, 50100700, 50100701, 50100702, 50100703);
    $InitializeCommonEvent(0, 90035283, 50100490, 50102491, 50101690, 50100700, 50100701, 50100702, 50100704, 50100705, 50100706);
    $InitializeCommonEvent(0, 90035284, 50105490, 50105491, 50100700, 50100702, 50100705, 50100706);
    $InitializeCommonEvent(0, 90035285, 50100490, 50100700, 50100701, 50100702, 50100705, 50100706);
    $InitializeCommonEvent(0, 90035286, 50100490, 50102491, 50100700, 50100701, 50100702, 50100705, 50100706);
    $InitializeCommonEvent(0, 90035288, 50102491, 50100700, 50100702, 50100705, 50100706);
    $InitializeCommonEvent(0, 90015000, 50100704, 50100490, 907640001, 50, 0, 50100706);
    $InitializeCommonEvent(0, 90015025, 8081, 50100704, 50100705, 50100490, 1020, 0, -1, -1, 50100490, 0);
    $InitializeCommonEvent(0, 90015310, 50100050, 50100051, 2, 50100200, 50100202, 50100203, 50102405, 50102406, 50102407, 50102410, 50102411, 50102412, 50102415, 50102416, 50102417, 50102420, 50102421, 50102422, 50102400);
    $InitializeCommonEvent(0, 90015301, 50105300, 50100200, 50100201, 50100202, 50100203, 2);
    $InitializeCommonEvent(0, 90015306, 50106500);
    $InitializeCommonEvent(0, 90015303, 50102401);
    $InitializeCommonEvent(0, 90015305, 50102430, 50102431, 50102432, 50102433);
    $InitializeCommonEvent(0, 90015304, 50100050, 50100200, 50100202);
    if (2 >= 2) {
        $InitializeCommonEvent(0, 90015304, 50100051, 50100200, 50100203);
    }
    $InitializeEvent(0, 50102500, 50100820, 50102820, 0, -1);
    $InitializeEvent(1, 50102500, 50100200, 50102820, 0, -1);
    $InitializeEvent(2, 50102500, 50100201, 50102820, 0, -1);
    $InitializeEvent(3, 50102500, 50100202, 50102820, 0, -1);
    $InitializeEvent(4, 50102500, 50100203, 50102820, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100212, 50102212, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100215, 9, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100216, 50102217, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100217, 50102217, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100218, 20, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100219, 50102219, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100221, 9, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100222, 12, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100280, 50102290, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100281, 50102290, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100282, 50102291, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100283, 50102291, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100284, 50102292, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100285, 50102292, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100290, 50102290, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100291, 50102291, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100292, 50102292, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100306, 20, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100307, 50102219, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100308, 50102219, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100334, 15, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100335, 15, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100336, 12, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100353, 50102217, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100354, 50102217, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100355, 50102217, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100360, 50102360, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100361, 50102360, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100401, 50102401, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100404, 50102217, 0, -1);
    $InitializeCommonEvent(0, 90005221, 50100417, 30001, 20001, 0, 0);
    $InitializeCommonEvent(0, 90005221, 50100418, 30001, 20001, 0, 0);
    $InitializeCommonEvent(0, 90005221, 50100419, 30001, 20001, 0, 0);
    $InitializeCommonEvent(0, 90005221, 50100420, 30001, 20001, 0, 0);
    $InitializeCommonEvent(0, 90005221, 50100422, 30001, 20001, 0, 0);
    $InitializeCommonEvent(0, 90005221, 50100423, 30001, 20001, 0, 0);
    $InitializeCommonEvent(0, 90005251, 50100602, 8, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100603, 8, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100604, 8, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100605, 7, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100606, 7, 0, -1);
    $InitializeCommonEvent(0, 90005261, 50100617, 50102617, 15, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100634, 7, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100635, 7, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100636, 7, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100639, 7, 0, -1);
    $InitializeCommonEvent(0, 90005251, 50100640, 7, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100626, 50102217, 0, -1);
    $InitializeCommonEvent(0, 90005250, 50100674, 50102674, 0, -1);
    $InitializeCommonEvent(0, 90045020, 50103500, 50103509);
    $InitializeCommonEvent(0, 90045021, 50103500, 50101600, 50101601, 50101602, 50100350, 50100351, 50100352);
    $InitializeCommonEvent(0, 90045021, 50103501, 50101600, 50101601, 50101603, 50100350, 50100351, 50100353);
    $InitializeCommonEvent(0, 90045021, 50103502, 50101600, 50101601, 50101604, 50100350, 50100351, 50100354);
    $InitializeCommonEvent(0, 90045021, 50103503, 50101600, 50101602, 50101603, 50100350, 50100352, 50100353);
    $InitializeCommonEvent(0, 90045021, 50103504, 50101600, 50101602, 50101604, 50100350, 50100352, 50100354);
    $InitializeCommonEvent(0, 90045021, 50103505, 50101600, 50101603, 50101604, 50100350, 50100353, 50100354);
    $InitializeCommonEvent(0, 90045021, 50103506, 50101601, 50101602, 50101603, 50100351, 50100352, 50100353);
    $InitializeCommonEvent(0, 90045021, 50103507, 50101601, 50101602, 50101604, 50100351, 50100352, 50100354);
    $InitializeCommonEvent(0, 90045021, 50103508, 50101601, 50101603, 50101604, 50100351, 50100353, 50100354);
    $InitializeCommonEvent(0, 90045021, 50103509, 50101602, 50101603, 50101604, 50100352, 50100353, 50100354);
    $InitializeCommonEvent(0, 90045022, 50101600, 50100300, 50100350, 50100310);
    $InitializeCommonEvent(0, 90045022, 50101601, 50100301, 50100351, 50100310);
    $InitializeCommonEvent(0, 90045022, 50101602, 50100302, 50100352, 50100310);
    $InitializeCommonEvent(0, 90045022, 50101603, 50100303, 50100353, 50100310);
    $InitializeCommonEvent(0, 90045022, 50101604, 50100304, 50100354, 50100310);
    $InitializeCommonEvent(0, 90045023, 50100310, 50100300, 50100304, 50101610);
    $InitializeCommonEvent(0, 90045024, 50101610, 50100310, 50104311, 50104312);
    $InitializeCommonEvent(0, 90045025, 50100310, 50102500);
});

$Event(50102500, Restart, function(chrEntityId, areaEntityId, timeSeconds, animationId) {
    EndIf(ThisEventSlot());
    DisableCharacterAI(chrEntityId);
    area = InArea(10000, areaEntityId);
    WaitFor(
        HasDamageType(50100820, 0, DamageType.Any)
            || HasDamageType(50100200, 0, DamageType.Any)
            || HasDamageType(50100201, 0, DamageType.Any)
            || HasDamageType(50100202, 0, DamageType.Any)
            || HasDamageType(50100203, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260)
            || area
            || (CharacterHasSpEffect(chrEntityId, 481)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90110)
                && !CharacterHasSpEffect(chrEntityId, 90160))
            || (CharacterHasSpEffect(chrEntityId, 482)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90120)
                && !CharacterHasSpEffect(chrEntityId, 90160)
                && !CharacterHasSpEffect(chrEntityId, 90162))
            || (CharacterHasSpEffect(chrEntityId, 483)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90140)
                && !CharacterHasSpEffect(chrEntityId, 90160)
                && !CharacterHasSpEffect(chrEntityId, 90161))
            || (CharacterHasSpEffect(chrEntityId, 484)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90130)
                && !CharacterHasSpEffect(chrEntityId, 90161)
                && !CharacterHasSpEffect(chrEntityId, 90162))
            || (CharacterHasSpEffect(chrEntityId, 487)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90150)
                && !CharacterHasSpEffect(chrEntityId, 90160)));
    SetNetworkconnectedThisEventSlot(ON);
    if (area.Passed) {
        WaitFixedTimeSeconds(timeSeconds);
        if (Signed(animationId) != -1) {
            ForceAnimationPlayback(chrEntityId, animationId, true, false, false);
        }
    }
L1:
    EnableCharacterAI(chrEntityId);
});

