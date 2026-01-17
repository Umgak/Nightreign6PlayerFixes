// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1038401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1038401950, 1038400950);
    RegisterBonfire(1038401951, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1038401951, 1038400951);
    $InitializeCommonEvent(0, 90005580, 1038401952, 1038400952, 7664);
    $InitializeCommonEvent(0, 90065901, 1038404890);
    $InitializeCommonEvent(0, 90015150, 1038400300, 75061);
    $InitializeCommonEvent(0, 90015151, 1038400300, 76021);
    $InitializeCommonEvent(0, 90015152, 1038400300, 76021);
    $InitializeCommonEvent(0, 90015150, 1038400301, 75062);
    $InitializeCommonEvent(0, 90015151, 1038400301, 76022);
    $InitializeCommonEvent(0, 90015152, 1038400301, 76022);
    $InitializeCommonEvent(0, 90005931, 1038400390, 1038401291, 0, 1038401292);
    $InitializeCommonEvent(0, 91005503, 1038401250);
    $InitializeCommonEvent(0, 91005503, 1038401251);
    $InitializeEvent(0, 1038402200, 1038406500, 1038400201, 1038402992);
    $InitializeCommonEvent(0, 90015140, 1038401300, 200, 9107, 1038408300);
    $InitializeCommonEvent(1, 90015140, 1038401301, 200, 9111, 1038408301);
    $InitializeCommonEvent(0, 90015440, 1038401500, 1037400267, 1037400327, 1037400297);
    $InitializeCommonEvent(0, 90035075, 1038400230, 1038401260);
    $InitializeCommonEvent(0, 90035076, 1038400230, 1038401261);
    $InitializeCommonEvent(0, 90035077, 1038400230, 1038402800, 1038402801, 1038402802, 1038402803);
    $InitializeCommonEvent(0, 90035077, 1038400230, 1038402804, 1038402805, 1038402806, 1038402807);
    $InitializeCommonEvent(0, 90035077, 1038400230, 1038402808, 1038402809, 0, 0);
    $InitializeCommonEvent(0, 90035078, 1038400230, 1038406900);
    $InitializeCommonEvent(0, 90035079, 1038400230, 1038402700, 1038401260);
    $InitializeCommonEvent(0, 90035070, 0, 0, 1038405200, 1038400230);
    $InitializeCommonEvent(0, 90035085, 1038400230, 1038402710, 33);
    $InitializeCommonEvent(0, 90035080, 1038400230, 1038405900, 1038402890);
    $InitializeCommonEvent(0, 90035081, 1038400230);
    $InitializeCommonEvent(0, 90035082, 1038400230, 1038400208, 1038400205, 1038400206, 1038400218, 1038400215, 1038400216); // NR6PF: new c0120 instances for extra players, also edited in msb
    $InitializeCommonEvent(0, 90035083, 1038400230, 1);
    $InitializeCommonEvent(0, 90035083, 1038400230, 2);
    $InitializeCommonEvent(0, 90035083, 1038400230, 3);
    // NR6PF: New instances of these events for new players
    $InitializeCommonEvent(0, 90035083, 1038400230, 4);
    $InitializeCommonEvent(0, 90035083, 1038400230, 5);
    $InitializeCommonEvent(0, 90035083, 1038400230, 6);
    $InitializeCommonEvent(0, 90035084, 1038400230, 1038401260, 1038400208, 1); // river water in the socks of whoever at fromsoft decided to number these things like this
    $InitializeCommonEvent(0, 90035084, 1038400230, 1038401260, 1038400205, 2); // 8 5 6
    $InitializeCommonEvent(0, 90035084, 1038400230, 1038401260, 1038400206, 3); // why
    // Ditto
    $InitializeCommonEvent(0, 90035084, 1038400230, 1038401260, 1038400218, 4);
    $InitializeCommonEvent(0, 90035084, 1038400230, 1038401260, 1038400215, 5);
    $InitializeCommonEvent(0, 90035084, 1038400230, 1038401260, 1038400216, 6);
    $InitializeCommonEvent(0, 90035087, 1038400230, 1038401260);
    $InitializeCommonEvent(0, 90035088, 1038400230, 1038400204); // because 4 is in use here
    $InitializeCommonEvent(0, 90035088, 1038400230, 1038400207); // and 7 is in use here
});

$Event(1038402200, Restart, function(assetEntityId, chrEntityId, attachPointEntityId) {
    DisableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 1);
    DisableAsset(assetEntityId);
    WaitFor(SmallBaseAttached(attachPointEntityId, 53990000));
    EnableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Enabled, 1);
    EnableAsset(assetEntityId);
});

$Event(1038402510, Restart, function(entityId, chrEntityId) {
    DisableNetworkSync();
    DisableCharacterDefaultBackread(chrEntityId);
    WaitFor(ActionButtonInArea(109211, entityId));
    EnableCharacterDefaultBackread(chrEntityId);
    IssueShortWarpRequest(20000, TargetEntityType.Area, 1038402511, -1);
    ForceAnimationPlayback(20000, 60491, false, false, false);
    EnableCharacterInvincibility(20000);
    WaitFixedTimeSeconds(3);
    FadeToBlack(1, 1, true, 0);
    WaitFor(ElapsedSeconds(1));
    chr = CharacterBackreadStatus(chrEntityId);
    DisableCharacterGravity(20000);
    ForceAnimationPlayback(20000, 60492, false, false, false);
    WarpCharacterAndCopyFloorUnknown200489(10000, TargetEntityType.Area, 1047402501, -1, chrEntityId, 1, 2);
    UnknownTalk2003121();
    if (!chr) {
        Unknown2003128(true);
        WaitFor(CharacterBackreadStatus(chrEntityId) && IsMapStable(60, 44, 37, 40));
        EnableCharacterGravity(chrEntityId);
        WaitFor(ElapsedFrames(1));
        WarpCharacterAndCopyFloorUnknown200489(10000, TargetEntityType.Area, 1047402501, -1, chrEntityId, 1, 2);
        UnknownTalk2003121();
        PlaySE(20000, SoundType.CharacterMotion, 754009520);
        Unknown2003128(false);
    }
    ResetCameraAngle();
    FadeToBlack(0, 1, false, -1);
    WaitFor(ElapsedSeconds(2));
    EnableCharacterGravity(20000);
    DisableCharacterInvincibility(20000);
    RestartEvent();
});

$Event(200, Default, function() {
    $InitializeEvent(0, 1038402510, 1038402510, 1047400500);
});

