// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90005933, 1043390200, 9856, 9860);
    $InitializeCommonEvent(0, 91005506, 1043395200);
    $InitializeEvent(0, 1043392202, 1043395201);
    $InitializeEvent(0, 1043392203, 1043392594, 1040, 9830);
    $InitializeEvent(1, 1043392220, 1043392590, 1050, 9835, 1043395202);
    $InitializeEvent(0, 1043392260, 9850, 4, 1080);
    $InitializeEvent(3, 1043392203, 1043392593, 1095, 9856);
    $InitializeEvent(0, 1043392230, 1043392593, 1090, 9855, 1043392206);
    $InitializeCommonEvent(0, 90005934, 9830, 1040);
    $InitializeCommonEvent(0, 90005934, 9835, 1050);
    $InitializeCommonEvent(0, 90005934, 9845, 1070);
    $InitializeCommonEvent(0, 90005934, 9930, 1195);
    $InitializeCommonEvent(0, 90005934, 9856, 1095);
    $InitializeCommonEvent(0, 90005934, 9855, 1090);
    $InitializeCommonEvent(0, 90015150, 1043390200, 73066);
    $InitializeCommonEvent(0, 90015151, 1043390200, 74026);
    $InitializeCommonEvent(0, 90015152, 1043390200, 74026);
    $InitializeCommonEvent(0, 90015150, 1043390201, 73067);
    $InitializeCommonEvent(0, 90015151, 1043390201, 74027);
    $InitializeCommonEvent(0, 90015152, 1043390201, 74027);
    $InitializeCommonEvent(0, 91005503, 1043391500);
    $InitializeCommonEvent(0, 90015140, 1043391200, 200, 9101, 1043398200);
    $InitializeEvent(0, 1043392900);
    $InitializeEvent(0, 1043392910);
    $InitializeEvent(0, 1043392920);
    $InitializeCommonEvent(0, 90085001, 801, Hero.Executor, 9252, 9252, 1043391260);
    if (1 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9262, 9252, 9252, 1043395260, 1043390260, 0, 0, 0, 20026);
    }
    if (2 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9262, 9252, 9252, 1043395260, 1043390260, 1043390261, 0, 0, 20026);
    }
    if (3 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9262, 9252, 9252, 1043395260, 1043390260, 1043390261, 1043390262, 0, 20026);
    }
    if (4 == 3) {
        $InitializeCommonEvent(0, 90085002, 801, 9262, 9252, 9252, 1043395260, 1043390260, 1043390261, 1043390262, 1043390263, 20026);
    }
    $InitializeCommonEvent(0, 90085802, 801, 9262, 1043395260);
    $InitializeCommonEvent(0, 90015501, 1043392300, 73994);
});

$Event(1043392200, Default, function(eventFlagId) {
    EndIf(!EventFlag(6011));
    SetEventFlagID(eventFlagId, ON);
});

$Event(1043392201, Restart, function(assetEntityId) {
    EndIf(!EventFlag(6011));
    DisableCharacter(assetEntityId);
    DisableAsset(assetEntityId);
    SetEventFlagID(1043390951, ON);
    SetEventFlagID(1044391500, ON);
});

$Event(1043392202, Restart, function(assetEntityId) {
    EndIf(EventFlag(6011));
    DisableCharacter(assetEntityId);
    DisableAsset(assetEntityId);
});

$Event(1043392203, Restart, function(areaEntityId, tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && InArea(10000, areaEntityId) && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(1043392220, Default, function(areaEntityId, tutorialParamId, eventFlagId, chrEntityId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && InArea(10000, areaEntityId) && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    WaitFor(CharacterRatioDead(chrEntityId));
    ShowTutorialPopup(tutorialParamId, false, true);
});

$Event(1043392230, Restart, function(areaEntityId, tutorialParamId, eventFlagId, eventFlagId2) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(
        !EventFlag(eventFlagId)
            && EventFlag(eventFlagId2)
            && InArea(10000, areaEntityId)
            && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    WaitFor(InArea(20000, 1044392501));
    WaitFixedTimeSeconds(2);
    ShowTutorialPopup(tutorialParamId, false, true);
});

$Event(1043392260, Restart, function(eventFlagId, timeSeconds, tutorialParamId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(PlayerIsInOwnWorld() && !EventFlag(eventFlagId) && CharacterRatioDead(1043395202));
    WaitFixedTimeSeconds(timeSeconds);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    WaitFor(EventFlag(9856));
    ShowTutorialPopup(tutorialParamId, false, true);
});

$Event(1043392900, Restart, function() {
    WaitFor(SmallBaseAttached(1043392998, 30300000));
    EnableAsset(1043391900);
});

$Event(1043392910, Restart, function() {
    WaitFor(SmallBaseAttached(1043392999, 30300000));
    EnableAsset(1043391910);
    EnableAsset(1043391911);
    EnableAsset(1043391912);
});

$Event(1043392920, Restart, function() {
    WaitFor(SmallBaseAttached(1043392998, 38000000));
    EnableAsset(1043391920);
    EnableAsset(1043391921);
    EnableAsset(1043391922);
});

