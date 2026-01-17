// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90005211, 31900250, 30010, 20010, 31902597, 4.5, 0, 0, 0, 0, 0);
    $InitializeEvent(0, 31902265);
    $InitializeEvent(0, 31902240, 1210, 9940);
    $InitializeEvent(6, 31902200, 31902591, 1120, 9870);
    $InitializeEvent(0, 31902290, 31902592, 1130, 9880);
    $InitializeEvent(0, 31902241, 1100, 9860);
    $InitializeEvent(0, 31902270, 31902591, 1125, 9875, 31902206);
    $InitializeEvent(1, 31902270, 31902592, 1135, 9885, 31902290);
    $InitializeEvent(0, 31902250, 0, 1215, 9945, 31902240);
    $InitializeCommonEvent(0, 90005934, 9940, 1210);
    $InitializeCommonEvent(0, 90005934, 9875, 1125);
    $InitializeCommonEvent(0, 90005934, 9880, 1130);
    $InitializeCommonEvent(0, 90005934, 9860, 1100);
    $InitializeCommonEvent(0, 90005934, 9875, 1125);
    $InitializeCommonEvent(0, 90005934, 9885, 1135);
    $InitializeCommonEvent(0, 90005934, 9945, 1215);
    $InitializeCommonEvent(0, 9005810, 6011, 31900950, 31901950, 5);
    $InitializeCommonEvent(0, 90015005, 31901950, 31900950, 6011);
    $InitializeEvent(0, 31902200, 31902596, 1180, 9920);
    $InitializeCommonEvent(0, 90005211, 31900201, 30010, 20010, 31902592, 5, 0, 0, 0, 0, 0);
    $InitializeCommonEvent(0, 90005211, 31900203, 30002, 20002, 31902592, 5, 1, 0, 0, 0, 0);
    $InitializeEvent(0, 90002000);
    $InitializeEvent(0, 31902260, 31902500, 1043382580);
    $InitializeEvent(0, 31902310);
});

$Event(90002000, Default, function() {
    SetSpEffect(1090002200, 8085);
});

$Event(31902200, Restart, function(areaEntityId, tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && InArea(10000, areaEntityId) && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(31902230, Restart, function(chrEntityId, tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && CharacterDead(chrEntityId) && PlayerIsInOwnWorld());
    WaitFixedTimeSeconds(1);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(31902240, Restart, function(tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(
        !EventFlag(eventFlagId)
            && PlayerIsInOwnWorld()
            && (PlayerHasItem(ItemType.Weapon, 5030000)
                || PlayerHasItem(ItemType.Weapon, 21100000)
                || PlayerHasItem(ItemType.Weapon, 23040000)));
    WaitFixedTimeSeconds(1);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(31902241, Restart, function(tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(6013));
    WaitFor(
        !EventFlag(eventFlagId)
            && PlayerIsInOwnWorld()
            && (PlayerHasItem(ItemType.Goods, 300)
                || PlayerHasItem(ItemType.Goods, 1410)
                || PlayerHasItem(ItemType.Goods, 3310)));
    WaitFixedTimeSeconds(1);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(31902250, Restart, function(chrEntityId, tutorialParamId, eventFlagId, eventFlagId2) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && EventFlag(eventFlagId2) && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    WaitFor(EventFlag(9870));
    ShowTutorialPopup(tutorialParamId, false, true);
    ClearSpEffect(chrEntityId, 0);
});

$Event(31902260, Restart, function(areaEntityId, entityId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6013));
    WaitFor(InArea(20000, areaEntityId));
    WarpCharacterAndCopyFloorWithFadeout(20000, TargetEntityType.Area, entityId, -1, 0, false, true);
    WaitFixedTimeFrames(1);
    RestartEvent();
});

$Event(31902265, Restart, function() {
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6013));
    SetSpEffect(20000, 102130);
    SetSpEffect(20000, 99822);
    SetCameraAngle(-8.4, 120.3);
});

$Event(31902270, Restart, function(areaEntityId, tutorialParamId, eventFlagId, eventFlagId2) {
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
});

$Event(31902280, Restart, function(eventFlagId, tutorialParamId, areaEntityId, areaEntityId2, areaEntityId3, areaEntityId4, areaEntityId5, areaEntityId6, areaEntityId7, areaEntityId8, areaEntityId9, areaEntityId10, eventFlagId2) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(
        (InArea(20000, areaEntityId)
            || InArea(20000, areaEntityId2)
            || InArea(20000, areaEntityId3)
            || InArea(20000, areaEntityId4)
            || InArea(20000, areaEntityId5)
            || InArea(20000, areaEntityId6)
            || InArea(20000, areaEntityId7)
            || InArea(20000, areaEntityId8)
            || InArea(20000, areaEntityId9)
            || InArea(20000, areaEntityId10))
            && EventFlag(eventFlagId));
    ShowTutorialPopup(tutorialParamId, false, true);
    if (eventFlagId2 != 0) {
        SetEventFlagID(eventFlagId2, ON);
    }
});

$Event(31902290, Restart, function(areaEntityId, tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && InArea(10000, areaEntityId) && PlayerIsInOwnWorld());
    WaitFixedTimeSeconds(0.3);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(31902310, Restart, function() {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6013));
    EnableAsset(31901960);
});

