// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90015150, 1048400300, 75070);
    $InitializeCommonEvent(0, 90015151, 1048400300, 76030);
    $InitializeCommonEvent(0, 90015152, 1048400300, 76030);
    $InitializeCommonEvent(0, 90015150, 1048400301, 75071);
    $InitializeCommonEvent(0, 90015151, 1048400301, 76031);
    $InitializeCommonEvent(0, 90015152, 1048400301, 76031);
    $InitializeCommonEvent(0, 90005931, 1056400390, 1056401291, 0, 1056401292);
    $InitializeCommonEvent(0, 91005503, 1056401250);
    $InitializeCommonEvent(0, 90015441, 1056402550, 6001, 1056400200);
    $InitializeCommonEvent(0, 90015441, 1056402551, 1056400201, 1056400205);
    $InitializeCommonEvent(0, 90015441, 1056402552, 1056400206, 1056400210);
    $InitializeCommonEvent(0, 9005811, 1056400201, 1056401500, 4, 0);
    $InitializeCommonEvent(0, 9005811, 1056400201, 1056401501, 4, 0);
    $InitializeCommonEvent(0, 9005811, 1056400206, 1056401502, 4, 0);
    $InitializeCommonEvent(0, 9005811, 1056400206, 1056401503, 4, 0);
    $InitializeCommonEvent(0, 9005811, 1056400211, 1056401504, 4, 0);
    $InitializeCommonEvent(0, 90015444, 1056401950, 1056400950, 1056400201);
    $InitializeCommonEvent(0, 90015444, 1056401951, 1056400951, 1056400206);
    $InitializeCommonEvent(0, 90015444, 1056401952, 1056400952, 1056400211);
    $InitializeCommonEvent(0, 90015447, 1056400201, 1056400206, 1056400211, 1056400251, 1056400252, 1056400253);
    $InitializeEvent(0, 1056402250, 807650, 1056400220);
    $InitializeEvent(1, 1056402250, 807651, 1056400221);
    $InitializeEvent(2, 1056402250, 807652, 1056400222);
    $InitializeEvent(3, 1056402250, 807653, 1056400223);
    $InitializeEvent(4, 1056402250, 807654, 1056400224);
    $InitializeEvent(5, 1056402250, 807655, 1056400225);
    $InitializeEvent(6, 1056402250, 807656, 1056400226);
    $InitializeEvent(7, 1056402250, 807657, 1056400227);
    $InitializeEvent(8, 1056402250, 807658, 1056400228);
    $InitializeEvent(9, 1056402250, 807659, 1056400229);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400220, 1056402560, 98260, 98279, 1056401370, 807600, 110300, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400221, 1056402560, 98261, 98279, 1056401370, 807601, 110301, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400222, 1056402560, 98262, 98279, 1056401370, 807602, 110302, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400223, 1056402560, 98263, 98279, 1056401370, 807603, 110303, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400224, 1056402560, 98264, 98279, 1056401370, 807604, 110304, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400225, 1056402560, 98265, 98279, 1056401370, 807605, 110305, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400226, 1056402560, 98266, 98279, 1056401370, 807606, 110306, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400227, 1056402560, 98267, 98279, 1056401370, 807607, 110307, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400228, 1056402560, 98268, 98279, 1056401370, 807608, 110308, 1056404000);
    $InitializeCommonEvent(0, 90015445, 1056400220, 1056400239, 1056400229, 1056402560, 98269, 98279, 1056401370, 807609, 110309, 1056404000);
    $InitializeCommonEvent(0, 90015448, 1056401200, 1056400211, 1056404010);
    $InitializeCommonEvent(0, 90015440, 1056401210, 1037400261, 1037400321, 1037400291);
});

$Event(200, Default, function() {
    $InitializeCommonEvent(0, 90015469, 1056400201, 98360, 98363, 98366);
    $InitializeCommonEvent(1, 90015469, 1056400206, 98361, 98364, 98367);
    $InitializeCommonEvent(2, 90015469, 1056400211, 98362, 98365, 98368);
});

$Event(1056402200, Default, function(sfxId, eventFlagId) {
    WaitFor(EventFlag(eventFlagId));
    CreateAssetfollowingSFX(1056401300, 200, sfxId);
    WaitFixedTimeSeconds(1);
    WaitFor(!EventFlag(eventFlagId));
    DeleteAssetfollowingSFX(1056401300, true);
    DeleteAssetfollowingSFX(1056401301, true);
    DeleteAssetfollowingSFX(1056401302, true);
    DeleteAssetfollowingSFX(1056401303, true);
    DeleteAssetfollowingSFX(1056401304, true);
    DeleteAssetfollowingSFX(1056401305, true);
    DeleteAssetfollowingSFX(1056401306, true);
    DeleteAssetfollowingSFX(1056401307, true);
    DeleteAssetfollowingSFX(1056401308, true);
    DeleteAssetfollowingSFX(1056401309, true);
    DeleteAssetfollowingSFX(1056401310, true);
    DeleteAssetfollowingSFX(1056401311, true);
    DeleteAssetfollowingSFX(1056401312, true);
    DeleteAssetfollowingSFX(1056401313, true);
    DeleteAssetfollowingSFX(1056401314, true);
    DeleteAssetfollowingSFX(1056401315, true);
    DeleteAssetfollowingSFX(1056401316, true);
    DeleteAssetfollowingSFX(1056401317, true);
    DeleteAssetfollowingSFX(1056401318, true);
    DeleteAssetfollowingSFX(1056401319, true);
    DeleteAssetfollowingSFX(1056401320, true);
    DeleteAssetfollowingSFX(1056401321, true);
    DeleteAssetfollowingSFX(1056401322, true);
    DeleteAssetfollowingSFX(1056401323, true);
    DeleteAssetfollowingSFX(1056401324, true);
    DeleteAssetfollowingSFX(1056401325, true);
    DeleteAssetfollowingSFX(1056401326, true);
    DeleteAssetfollowingSFX(1056401327, true);
    DeleteAssetfollowingSFX(1056401328, true);
    DeleteAssetfollowingSFX(1056401329, true);
    DeleteAssetfollowingSFX(1056401330, true);
    DeleteAssetfollowingSFX(1056401331, true);
    DeleteAssetfollowingSFX(1056401332, true);
    DeleteAssetfollowingSFX(1056401333, true);
    DeleteAssetfollowingSFX(1056401334, true);
    DeleteAssetfollowingSFX(1056401335, true);
    DeleteAssetfollowingSFX(1056401336, true);
    DeleteAssetfollowingSFX(1056401337, true);
    DeleteAssetfollowingSFX(1056401338, true);
    DeleteAssetfollowingSFX(1056401339, true);
    DeleteAssetfollowingSFX(1056401340, true);
    DeleteAssetfollowingSFX(1056401341, true);
    DeleteAssetfollowingSFX(1056401342, true);
    DeleteAssetfollowingSFX(1056401343, true);
    DeleteAssetfollowingSFX(1056401344, true);
    DeleteAssetfollowingSFX(1056401345, true);
    DeleteAssetfollowingSFX(1056401346, true);
    DeleteAssetfollowingSFX(1056401347, true);
    DeleteAssetfollowingSFX(1056401348, true);
    DeleteAssetfollowingSFX(1056401349, true);
    DeleteAssetfollowingSFX(1056401350, true);
    DeleteAssetfollowingSFX(1056401351, true);
    DeleteAssetfollowingSFX(1056401352, true);
    DeleteAssetfollowingSFX(1056401353, true);
    DeleteAssetfollowingSFX(1056401354, true);
    DeleteAssetfollowingSFX(1056401355, true);
    RestartEvent();
});

$Event(1056402210, Default, function() {
    CreateAssetfollowingSFX(1056401200, 90, 806920);
});

$Event(1056402250, Restart, function(sfxId, eventFlagId) {
    WaitFor(AnyBatchEventFlags(1056400220, 1056400239));
    EndIf(!EventFlag(eventFlagId));
    WaitFor(InArea(20000, 1056402560) || EventFlag(1056400250));
    SetNetworkconnectedEventFlagID(1056400250, ON);
    CreateAssetfollowingSFX(1056401300, 200, sfxId);
    CreateAssetfollowingSFX(1056401301, 200, sfxId);
    CreateAssetfollowingSFX(1056401302, 200, sfxId);
    CreateAssetfollowingSFX(1056401303, 200, sfxId);
    CreateAssetfollowingSFX(1056401304, 200, sfxId);
    CreateAssetfollowingSFX(1056401305, 200, sfxId);
    CreateAssetfollowingSFX(1056401306, 200, sfxId);
    CreateAssetfollowingSFX(1056401307, 200, sfxId);
    CreateAssetfollowingSFX(1056401308, 200, sfxId);
    CreateAssetfollowingSFX(1056401309, 200, sfxId);
    CreateAssetfollowingSFX(1056401310, 200, sfxId);
    CreateAssetfollowingSFX(1056401311, 200, sfxId);
    CreateAssetfollowingSFX(1056401312, 200, sfxId);
    CreateAssetfollowingSFX(1056401313, 200, sfxId);
    CreateAssetfollowingSFX(1056401314, 200, sfxId);
    CreateAssetfollowingSFX(1056401315, 200, sfxId);
    CreateAssetfollowingSFX(1056401316, 200, sfxId);
    CreateAssetfollowingSFX(1056401317, 200, sfxId);
    CreateAssetfollowingSFX(1056401318, 200, sfxId);
    CreateAssetfollowingSFX(1056401319, 200, sfxId);
    CreateAssetfollowingSFX(1056401320, 200, sfxId);
    CreateAssetfollowingSFX(1056401321, 200, sfxId);
    CreateAssetfollowingSFX(1056401322, 200, sfxId);
    CreateAssetfollowingSFX(1056401323, 200, sfxId);
    CreateAssetfollowingSFX(1056401324, 200, sfxId);
    CreateAssetfollowingSFX(1056401325, 200, sfxId);
    CreateAssetfollowingSFX(1056401326, 200, sfxId);
    CreateAssetfollowingSFX(1056401327, 200, sfxId);
    CreateAssetfollowingSFX(1056401328, 200, sfxId);
    CreateAssetfollowingSFX(1056401329, 200, sfxId);
    CreateAssetfollowingSFX(1056401330, 200, sfxId);
    CreateAssetfollowingSFX(1056401331, 200, sfxId);
    CreateAssetfollowingSFX(1056401332, 200, sfxId);
    CreateAssetfollowingSFX(1056401333, 200, sfxId);
    CreateAssetfollowingSFX(1056401334, 200, sfxId);
    CreateAssetfollowingSFX(1056401335, 200, sfxId);
    CreateAssetfollowingSFX(1056401336, 200, sfxId);
    CreateAssetfollowingSFX(1056401337, 200, sfxId);
    CreateAssetfollowingSFX(1056401338, 200, sfxId);
    CreateAssetfollowingSFX(1056401339, 200, sfxId);
    CreateAssetfollowingSFX(1056401340, 200, sfxId);
    CreateAssetfollowingSFX(1056401341, 200, sfxId);
    CreateAssetfollowingSFX(1056401342, 200, sfxId);
    CreateAssetfollowingSFX(1056401343, 200, sfxId);
    CreateAssetfollowingSFX(1056401344, 200, sfxId);
    CreateAssetfollowingSFX(1056401345, 200, sfxId);
    CreateAssetfollowingSFX(1056401346, 200, sfxId);
    CreateAssetfollowingSFX(1056401347, 200, sfxId);
    CreateAssetfollowingSFX(1056401348, 200, sfxId);
    CreateAssetfollowingSFX(1056401349, 200, sfxId);
    CreateAssetfollowingSFX(1056401350, 200, sfxId);
    CreateAssetfollowingSFX(1056401351, 200, sfxId);
    CreateAssetfollowingSFX(1056401352, 200, sfxId);
    CreateAssetfollowingSFX(1056401353, 200, sfxId);
    CreateAssetfollowingSFX(1056401354, 200, sfxId);
    CreateAssetfollowingSFX(1056401355, 200, sfxId);
    CreateAssetfollowingSFX(1056401355, 200, sfxId);
    CreateAssetfollowingSFX(1056401356, 200, sfxId);
    CreateAssetfollowingSFX(1056401357, 200, sfxId);
    CreateAssetfollowingSFX(1056401358, 200, sfxId);
    CreateAssetfollowingSFX(1056401359, 200, sfxId);
    CreateAssetfollowingSFX(1056401360, 200, sfxId);
    CreateAssetfollowingSFX(1056401361, 200, sfxId);
    CreateAssetfollowingSFX(1056401362, 200, sfxId);
    CreateAssetfollowingSFX(1056401363, 200, sfxId);
    CreateAssetfollowingSFX(1056401363, 200, sfxId);
    CreateAssetfollowingSFX(1056401364, 200, sfxId);
    CreateAssetfollowingSFX(1056401365, 200, sfxId);
    CreateAssetfollowingSFX(1056401366, 200, sfxId);
    CreateAssetfollowingSFX(1056401367, 200, sfxId);
    CreateAssetfollowingSFX(1056401368, 200, sfxId);
    CreateAssetfollowingSFX(1056401369, 200, sfxId);
    CreateAssetfollowingSFX(1056401371, 200, sfxId);
    CreateAssetfollowingSFX(1056401372, 200, sfxId);
    CreateAssetfollowingSFX(1056401373, 200, sfxId);
    CreateAssetfollowingSFX(1056401373, 200, sfxId);
    CreateAssetfollowingSFX(1056401374, 200, sfxId);
});

$Event(1056402580, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId) && EventFlag(1056400253));
    SetSpEffect(20000, 99215);
    RestartEvent();
});


