// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_DFLT_11000_44_9_15
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfireOld(1045390000, 1045391950, 0, 0, 0, 5);
    InitializeCommonEvent(0, 90005590, 1045391950, 1045390950);
    InitializeCommonEvent(0, 9005810, 1045390800, 1045390001, 1045390951, 1045391951, 1084227584);
    InitializeCommonEvent(0, 90005595, 1045391951, 1045390951, 1045390800);
    InitializeCommonEvent(0, 9005810, 1045390805, 1045390001, 1045390951, 1045391951, 1084227584);
    InitializeCommonEvent(0, 90005595, 1045391951, 1045390951, 1045390805);
    InitializeCommonEvent(0, 9005810, 1045390810, 1045390001, 1045390951, 1045391951, 1084227584);
    InitializeCommonEvent(0, 90005595, 1045391951, 1045390951, 1045390810);
    $InitializeCommonEvent(0, 90005870, 1045390800, 902100300, 11);
    $InitializeEvent(0, 1045392800, 1045390800);
    $InitializeCommonEvent(0, 90005872, 1045390800, 11, 0);
    $InitializeCommonEvent(0, 90005870, 1045390805, 902100300, 11);
    $InitializeEvent(0, 1045392805, 1045390805);
    $InitializeCommonEvent(0, 90005872, 1045390805, 11, 0);
    $InitializeEvent(0, 1045392810, 1045390810, 1045390815);
    $InitializeEvent(0, 1045392811, 1045390810);
    $InitializeEvent(0, 1045392812, 1045390815);
    $InitializeCommonEvent(0, 90005870, 1045390810, 902140000, 11);
    $InitializeCommonEvent(0, 90005872, 1045390810, 11, 0);
    $InitializeCommonEvent(0, 90005870, 1045390815, 902140001, 11);
    $InitializeCommonEvent(0, 90005872, 1045390815, 11, 0);
    InitializeCommonEvent(0, 90005417, 1045395500, 5004, 1045395200, 1045395201, 1045392500);
    InitializeCommonEvent(0, 90005418, 1045390700, 1045392570, 5000);
    InitializeCommonEvent(0, 90005419, 1045390700, 1045392570, 5000, 1045391572);
    InitializeCommonEvent(0, 91005500, 1045392750);
    InitializeCommonEvent(0, 91005501, 1045391650);
    $InitializeEvent(4, 1044362600, 7320, 1045395600);
    $InitializeEvent(0, 1044362600, 7321, 1045395600);
    $InitializeEvent(1, 1044362600, 7322, 1045395600);
    $InitializeEvent(2, 1044362600, 7323, 1045395600);
    $InitializeEvent(3, 1044362600, 7324, 1045395600);
});

$Event(1045392200, Restart, function(eventFlagId, eventFlagId2) {
    if (!EventFlag(eventFlagId)) {
        SetEventFlagID(eventFlagId2, ON);
        WaitFixedTimeSeconds(1);
        RestartEvent();
    }
L0:
    SetEventFlagID(eventFlagId2, OFF);
    EndEvent();
});

$Event(1045392210, Restart, function(eventFlagId, eventFlagId2) {
    EndIf(EventFlag(eventFlagId2));
    WaitFor(EventFlag(eventFlagId));
    SetEventFlagID(eventFlagId2, ON);
    EndEvent();
});

$Event(1044362600, Default, function(eventFlagId, chrEntityId) {
    DisableCharacter(chrEntityId);
    WaitFor(EventFlag(eventFlagId));
    EnableCharacter(chrEntityId);
    EndEvent();
});

$Event(1045392800, Restart, function(chrEntityId) {
    EndIf(EventFlag(chrEntityId));
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    WaitFixedTimeSeconds(4);
    PlaySE(chrEntityId, SoundType.SFX, 888880000);
    WaitFor(CharacterDead(chrEntityId));
    HandleMinibossDefeat(chrEntityId);
    SetEventFlagID(chrEntityId, ON);
    SetEventFlagID(9217, ON);
    if (PlayerIsInOwnWorld()) {
        SetEventFlagID(61217, ON);
    }
});

$Event(1045392805, Restart, function(chrEntityId) {
    EndIf(EventFlag(chrEntityId));
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    WaitFixedTimeSeconds(4);
    PlaySE(chrEntityId, SoundType.SFX, 888880000);
    WaitFor(CharacterDead(chrEntityId));
    HandleMinibossDefeat(chrEntityId);
    SetEventFlagID(chrEntityId, ON);
    SetEventFlagID(9217, ON);
    if (PlayerIsInOwnWorld()) {
        SetEventFlagID(61217, ON);
    }
});

$Event(1045392810, Restart, function(chrEntityId, chrEntityId2) {
    EndIf(EventFlag(chrEntityId));
    WaitFor(CharacterDead(chrEntityId) && CharacterDead(chrEntityId2));
    WaitFixedTimeSeconds(3);
    HandleMinibossDefeat(chrEntityId);
    SetEventFlagID(chrEntityId, ON);
    SetEventFlagID(9217, ON);
    if (PlayerIsInOwnWorld()) {
        SetEventFlagID(61217, ON);
    }
});

$Event(1045392811, Restart, function(chrEntityId) {
    EndIf(EventFlag(chrEntityId));
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    WaitFixedTimeSeconds(4);
    PlaySE(chrEntityId, SoundType.SFX, 888880000);
});

$Event(1045392812, Restart, function(chrEntityId) {
    EndIf(EventFlag(chrEntityId));
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    WaitFixedTimeSeconds(4);
    PlaySE(chrEntityId, SoundType.SFX, 888880000);
});

$Event(200, Default, function() {
    $InitializeEvent(0, 1045392200, 1045390950, 1045390990);
    $InitializeEvent(0, 1045392210, 1045392500, 62900);
    InitializeCommonEvent(0, 90005415, 1045392600, 7320, 7321);
});


