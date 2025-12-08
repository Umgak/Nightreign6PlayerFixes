// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(41301950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 41301950, 41300950);
    $InitializeCommonEvent(0, 90015009, 41304700, 41301501, 0, 1);
    $InitializeCommonEvent(1, 90015009, 41304700, 41301501, 1, 1);
    $InitializeCommonEvent(2, 90015009, 41304700, 41301501, 2, 1);
    $InitializeCommonEvent(0, 90015208, 9328, 41304700, 9040);
});

$Event(41302500, Restart, function(entityId, dummypolyId, sfxId) {
    SpawnOneshotSFX(TargetEntityType.Asset, entityId, dummypolyId, sfxId);
});

$Event(41302510, Restart, function() {
    WaitFor(EventFlag(41304700));
    SetSpEffect(41300200, 99841);
});

