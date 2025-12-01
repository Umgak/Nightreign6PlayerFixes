// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.1
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90035219, 45520820, 9055, 45520800, 907540001);
    $InitializeCommonEvent(0, 90015030, 45520820, 45520800, 50, 754020, 8062);
    $InitializeCommonEvent(0, 90015002, 8076, 45520820, 45520800, 45520800, 1020, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90035050, 45520800, 45520820);
    $InitializeCommonEvent(0, 90035210, 45521200, 45520820, 8060, 200);
    $InitializeCommonEvent(0, 90035210, 45521200, 45520820, 8092, 400);
    $InitializeCommonEvent(0, 90035210, 45521200, 45520820, 8093, 600);
    $InitializeCommonEvent(0, 90035210, 45521200, 45520820, 8094, 800);
    $InitializeCommonEvent(0, 9005211, 45520820);
    $InitializeCommonEvent(0, 90035212, 45520800, 45521200, 45520820);
    $InitializeCommonEvent(0, 90035213, 45525810, 45526201, 45520810, 45520811, 45520812, 45520813, 45520814, 45520815, 45521210, 45521211, 45521212, 45521213, 45521214, 45521215, 45522800, 45520820); // NR6PF: Added new c0100 instances for players 4-6 to be targeted by, including an edit to m45_52_00_00.msb
    $InitializeCommonEvent(0, 90035214, 45525810, 45520200, 45520201, 45520202, 45520820);
    if (IsPlayerNo(1)) {
        $InitializeCommonEvent(0, 90035215, 45520800, 45522800, 45522801, 45525810, 45520200, 45520820);
    }
    if (IsPlayerNo(2)) {
        $InitializeCommonEvent(0, 90035215, 45520800, 45522800, 45522801, 45525810, 45520201, 45520820);
    }
    if (IsPlayerNo(3)) {
        $InitializeCommonEvent(0, 90035215, 45520800, 45522800, 45522801, 45525810, 45520202, 45520820);
    }
    $InitializeCommonEvent(0, 90035216, 45522800, 45520820);
    $InitializeCommonEvent(0, 90035217, 45520800, 45521200, 45522800, 45520800, 45520820);
});

$Event(45522834, Restart, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(chrEntityId, 45613));
    if (CharacterHasSpEffect(45520820, 5039)) {
        WarpCharacterAndCopyFloor(45520820, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520820, 5907);
    } else if (CharacterHasSpEffect(45520821, 5039)) {
        WarpCharacterAndCopyFloor(45520821, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520821, 5907);
    } else if (CharacterHasSpEffect(45520822, 5039)) {
        WarpCharacterAndCopyFloor(45520822, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520822, 5907);
    } else if (CharacterHasSpEffect(45520823, 5039)) {
        WarpCharacterAndCopyFloor(45520823, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520823, 5907);
    } else if (CharacterHasSpEffect(45520824, 5039)) {
        WarpCharacterAndCopyFloor(45520824, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520824, 5907);
    } else if (CharacterHasSpEffect(45520825, 5039)) {
        WarpCharacterAndCopyFloor(45520825, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520825, 5907);
    } else if (CharacterHasSpEffect(45520826, 5039)) {
        WarpCharacterAndCopyFloor(45520826, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520826, 5907);
    } else if (CharacterHasSpEffect(45520827, 5039)) {
        WarpCharacterAndCopyFloor(45520827, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520827, 5907);
    } else if (CharacterHasSpEffect(45520828, 5039)) {
        WarpCharacterAndCopyFloor(45520828, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520828, 5907);
    } else if (CharacterHasSpEffect(45520829, 5039)) {
        WarpCharacterAndCopyFloor(45520829, TargetEntityType.Character, chrEntityId, 221, chrEntityId);
        SetSpEffect(45520829, 5907);
        Goto(L0);
    }
L0:
    WaitFixedTimeSeconds(0.1);
    RestartEvent();
});


