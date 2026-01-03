// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(41001950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 41001950, 41000950);
    $InitializeEvent(0, 41002500, 41001500, 200, 803600);
    $InitializeCommonEvent(0, 90085000, 201, Hero.Guardian, 8351, 41002920, 41000280, 4351);
    if (1 == 4) {
        $InitializeCommonEvent(0, 90085002, 201, 8350, 8351, 41002920, 41005900, 41000281, 0, 0, 0, 20026);
    }
    if (2 == 4) {
        $InitializeCommonEvent(0, 90085002, 201, 8350, 8351, 41002920, 41005900, 41000281, 41000282, 0, 0, 20026);
    }
    if (3 == 4) {
        $InitializeCommonEvent(0, 90085002, 201, 8350, 8351, 41002920, 41005900, 41000281, 41000282, 41000283, 0, 20026);
    }
    if (4 == 4) {
        $InitializeCommonEvent(0, 90085002, 201, 8350, 8351, 41002920, 41005900, 41000281, 41000282, 41000283, 41000284, 20026);
    }
    $InitializeCommonEvent(0, 90085003, 201, 8350, 8351, 41002920, 41005900);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9140, 9160);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9141, 9161);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9142, 9162);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9145, 9165);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9146, 9166);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9147, 9167);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9148, 9168);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9150, 9170);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9152, 9172);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9153, 9173);
    $InitializeCommonEvent(0, 90085008, 201, Hero.Guardian, 8351, 9154, 9174);
    $InitializeCommonEvent(0, 90015009, 41004700, 41001501, 0, 1);
    $InitializeCommonEvent(0, 90015208, 9328, 41004700, 9040);
    $InitializeEvent(0, 41002510);
    $InitializeEvent(0, 41002520);
    $InitializeCommonEvent(0, 90015500, 41002300);
});

$Event(41002500, Restart, function(entityId, dummypolyId, sfxId) {
    SpawnOneshotSFX(TargetEntityType.Asset, entityId, dummypolyId, sfxId);
});

$Event(41002510, Default, function() {
    DisableNetworkSync();
    WaitFor(EventFlag(41004700));
    SetWorldMapPointFlag(7, ON);
    SetWorldMapPointFlag(8, OFF);
});

$Event(41002520, Default, function() {
    DisableNetworkSync();
    EndIf(EventFlag(41004700));
    WaitFor(EventFlag(41004700));
    ForceAnimationPlayback(20000, 60071, false, false, false);
    SetSpEffect(20000, 99270);
});

$Event(41002910, Restart, function() {
    WaitFor(MissionActive(201));
    EndIf(EventFlag(41002920));
    SetSpEffect(41000280, 99840);
    WaitFor(ActionButtonInArea(4351, 41000280));
    ClearSpEffect(41000280, 99840);
    SetCharacterBackreadState(41005900, false);
});

$Event(41002920, Restart, function() {
    WaitFor(MissionActive(201) && EventFlag(41002910));
    WaitFor(
        CharacterDead(41000281)
            && CharacterDead(41000282)
            && CharacterDead(41000283)
            && CharacterDead(41000284));
    SetEventFlagID(8350, ON);
});

