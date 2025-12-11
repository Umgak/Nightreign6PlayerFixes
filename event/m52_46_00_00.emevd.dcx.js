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
        $InitializeCommonEvent(0, 90015007, 52460210, 52465810, 52462810, 30, 903320110, 0, 0);
        $InitializeCommonEvent(0, 90015031, 52460210, 52465810, 52462810, 30, 940000, 0);
    } else {
        $InitializeCommonEvent(0, 90015007, 52460210, 52465810, 52462810, 30, 903320110, 0, 0);
        $InitializeCommonEvent(0, 90015031, 52460210, 52465810, 52462810, 30, 940000, 0);
    }
    $InitializeCommonEvent(0, 90015002, 0, 0, 52460810, 52465810, 1030, 940000, 11200, 903320110, 52460510);
    $InitializeCommonEvent(0, 90015025, 0, 0, 52460810, 52465810, 1030, 940000, 11200, 903320110, 52460510, 3);
    $InitializeCommonEvent(0, 90015006, 52461510, 52460510, 52460810, 5);
    $InitializeCommonEvent(0, 90015005, 52461510, 52462810, 52460810);
    GotoIf(S0, Signed(0) != 0);
    GotoIf(S0, 0 != 0);
    Goto(S2);
S0:
    GotoIf(S1, 940000 != 0);
    $InitializeCommonEvent(0, 90015008, 0, 52460810, 940000, 52465810, 0, 0);
    Goto(S2);
S1:
    $InitializeCommonEvent(0, 90015008, 0, 52460810, 940000, 52465810, 0, 0);
S2:
    $InitializeCommonEvent(0, 90015050, 52460810, 8175);
    $InitializeEvent(0, 52462810, 52460810, 52460811, 52462811, 52460211, 52460210);
    $InitializeEvent(1, 52462810, 52460812, 52460813, 52462812, 52460212, 52460210);
    $InitializeEvent(0, 52462815, 52460810, 52460811, 52460211);
    $InitializeEvent(1, 52462815, 52460812, 52460813, 52460212);
    $InitializeCommonEvent(0, 90035280, 52462491, 52460700, 52460701, 52460702, 8060, 0, 52460800, 52460810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035280, 52462491, 52460700, 52460701, 52460702, 80010, 0, 52460800, 52460810, 0, 0, 0);
    if (!IsPlayerCount(1)) {
        $InitializeCommonEvent(0, 90035280, 52462491, 52460700, 52460701, 52460702, 80011, 1, 52460800, 52460810, 0, 0, 0);
    }
    $InitializeCommonEvent(0, 90035281, 52462491, 52460700, 52460701, 52460702, 80011, 52460800, 52460810, 0, 0, 0);
    $InitializeCommonEvent(0, 90035282, 52460490, 52462490, 52460700, 52460701, 52460702, 52460703);
    $InitializeCommonEvent(0, 90035283, 52460490, 52462491, 52461690, 52460700, 52460701, 52460702, 52460704, 52460705, 52460706);
    $InitializeCommonEvent(0, 90035284, 52465490, 52465491, 52460700, 52460702, 52460705, 52460706);
    $InitializeCommonEvent(0, 90035285, 52460490, 52460700, 52460701, 52460702, 52460705, 52460706);
    $InitializeCommonEvent(0, 90035286, 52460490, 52462491, 52460700, 52460701, 52460702, 52460705, 52460706);
    $InitializeCommonEvent(0, 90035288, 52462491, 52460700, 52460702, 52460705, 52460706);
    $InitializeCommonEvent(0, 90015000, 52460704, 52460490, 907640001, 50, 0, 52460706);
    $InitializeCommonEvent(0, 90015025, 8081, 52460704, 52460705, 52460490, 1020, 0, -1, -1, 52460490, 0);
    $InitializeCommonEvent(0, 90015310, 52460050, 52460051, 1, 52460200, 52460202, 52460203, 52462405, 52462406, 52462407, 52462410, 52462411, 52462412, 0, 1, 2, 0, 1, 2, 52462400);
    $InitializeCommonEvent(0, 90015301, 52465300, 52460200, 52460201, 52460202, 52460203, 1);
    $InitializeCommonEvent(0, 90015306, 1058406500);
    $InitializeCommonEvent(0, 90025010, 52462401, 9025, 4);
    $InitializeCommonEvent(0, 90015305, 52462430, 52462431, 52462432, 52462433);
    $InitializeCommonEvent(0, 90015304, 52460050, 52460200, 52460202);
    if (1 >= 2) {
        $InitializeCommonEvent(0, 90015304, 52460051, 52460200, 52460203);
    }
    $InitializeCommonEvent(0, 90005200, 52460200, 30000, 20000, 52462200, 1.2, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 52460201, 30000, 20000, 52462200, 0.3, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 52460202, 30000, 20000, 52462200, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 52460203, 30000, 20000, 52462200, 2.5, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005200, 52460204, 30000, 20000, 52462200, 0.9, 0, 0, 0, 0);
});

$Event(52462810, Restart, function(chrEntityId, chrEntityId2, areaEntityId, eventFlagId, eventFlagId2) {
    if (CharacterDead(chrEntityId2)) {
        DisableCharacter(chrEntityId);
        EndEvent();
    }
    if (EventFlag(eventFlagId)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        EndEvent();
    }
    DisableCharacter(chrEntityId2);
    DisableCharacterCollision(chrEntityId2);
    WaitFor(CharacterHasSpEffect(chrEntityId, 16309));
    EnableCharacter(chrEntityId2);
    EnableCharacterCollision(chrEntityId2);
    DisableCharacterCollision(chrEntityId);
    WaitFixedTimeFrames(10);
    WarpCharacterAndCopyFloor(chrEntityId2, TargetEntityType.Character, chrEntityId, 900, chrEntityId);
    ForceAnimationPlayback(chrEntityId2, 20015, false, false, true);
    SetSpEffect(chrEntityId2, 16316);
    WaitFixedTimeSeconds(5.2);
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    SetCharacterHome(chrEntityId2, areaEntityId);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    SetNetworkconnectedEventFlagID(eventFlagId2, ON);
});

$Event(52462815, Restart, function(chrEntityId, chrEntityId2, eventFlagId) {
    EndIf(CharacterDead(chrEntityId2));
    EndIf(EventFlag(eventFlagId));
    WaitFor(CharacterHPValue(chrEntityId) <= 0 || EventFlag(eventFlagId));
    EndIf(EventFlag(eventFlagId));
    WarpCharacterAndCopyFloor(chrEntityId2, TargetEntityType.Character, chrEntityId, 900, chrEntityId);
    WaitFor(CharacterDead(chrEntityId) && ElapsedSeconds(2));
    ForceCharacterDeath(chrEntityId2, true);
});


