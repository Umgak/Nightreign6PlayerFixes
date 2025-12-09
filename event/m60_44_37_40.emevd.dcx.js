// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    RegisterBonfire(1047401950, 0, 5);
    $InitializeCommonEvent(0, 90015004, 1047401950, 1047400950);
    $InitializeCommonEvent(0, 90005580, 1047401951, 1047400951, 7665);
    $InitializeCommonEvent(0, 90065901, 1047404890);
    $InitializeCommonEvent(0, 90015150, 1047400300, 75067);
    $InitializeCommonEvent(0, 90015151, 1047400300, 76027);
    $InitializeCommonEvent(0, 90015152, 1047400300, 76027);
    $InitializeEvent(0, 1047402500, 1047402500);
    $InitializeCommonEvent(0, 90015440, 1047401201, 1037400259, 1037400319, 1037400289);
    $InitializeEvent(0, 1047402505, 1047402502);
    $InitializeEvent(0, 1047402506);
    $InitializeEvent(0, 1047402200);
    $InitializeCommonEvent(0, 91005503, 1047401250);
    $InitializeEvent(0, 1047402230, 1047406500, 1047400200, 1047402991);
    $InitializeCommonEvent(0, 90005931, 1047400390, 1047401291, 0, 1047401292);
});

$Event(1047402200, Restart, function() {
    DisableNetworkSync();
    ForceAnimationPlayback(1047401500, 110, false, false, false);
    CreateAssetfollowingSFX(1047401500, 90, 807110);
    EndIf(EventFlag(9195));
    DeleteAssetfollowingSFX(1047401500, true);
    WaitFor(EventFlag(1037400205));
    CreateAssetfollowingSFX(1047401500, 90, 807039);
    ForceAnimationPlayback(1047401500, 0, true, false, false);
    WaitFor(ActionButtonInArea(107801, 1047401500) || EventFlag(9195));
    DisplayTextEffectId(2200);
    DeleteAssetfollowingSFX(1047401500, true);
    SetEventFlagID(9195, ON);
    ForceAnimationPlayback(1047401500, 100, false, true, false);
    ForceAnimationPlayback(1047401500, 110, false, false, false);
    WaitFixedTimeSeconds(2);
    CreateAssetfollowingSFX(1047401500, 90, 807110);
});

$Event(1047402230, Restart, function(assetEntityId, chrEntityId, attachPointEntityId) {
    DisableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 1);
    DisableAsset(assetEntityId);
    WaitFor(SmallBaseAttached(attachPointEntityId, 53990000));
    EnableCharacter(chrEntityId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Enabled, 1);
    EnableAsset(assetEntityId);
});

$Event(1047402500, Restart, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 98218);
    RestartEvent();
});

$Event(1047402505, Default, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(EventFlag(9195) && InArea(20000, areaEntityId));
    SetSpEffect(20000, 98215);
    RestartEvent();
});

$Event(1047402506, Restart, function() {
    DisableNetworkSync();
    HideFloatingMessage(202, 20000);
    WaitFixedTimeSeconds(0.1);
    WaitFor(EventFlag(9195) && CharacterHasSpEffect(20000, 98215));
    ShowFloatingMessage(202, 20000);
    WaitFixedTimeSeconds(0.5);
    WaitFor(!CharacterHasSpEffect(20000, 98215));
    HideFloatingMessage(202, 20000);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(1047402510, Restart, function(entityId, chrEntityId) {
    DisableNetworkSync();
    DisableCharacterDefaultBackread(chrEntityId);
    WaitFor(ActionButtonInArea(109211, entityId));
    EnableCharacterDefaultBackread(chrEntityId);
    RotateCharacter(20000, entityId, -1, true);
    ForceAnimationPlayback(20000, 60491, false, false, false);
    EnableCharacterInvincibility(20000);
    WaitFixedTimeSeconds(3);
    FadeToBlack(1, 1, true, 0);
    WaitFor(ElapsedSeconds(1));
    chr = CharacterBackreadStatus(chrEntityId);
    DisableCharacterGravity(20000);
    WarpCharacterAndCopyFloorUnknown200489(10000, TargetEntityType.Area, 1038402500, -1, chrEntityId, -1, -1);
    UnknownTalk2003121();
    if (!chr) {
        Unknown2003128(true);
        WaitFor(CharacterBackreadStatus(chrEntityId) && IsStableMap(60, 43, 38, 40));
        EnableCharacterGravity(chrEntityId);
        WaitFor(ElapsedFrames(1));
        WarpCharacterAndCopyFloorUnknown200489(10000, TargetEntityType.Area, 1038402500, -1, chrEntityId, -1, -1);
        UnknownTalk2003121();
        PlaySE(20000, SoundType.CharacterMotion, 754009520);
        Unknown2003128(false);
    }
    WaitFor(ElapsedSeconds(2));
    FadeToBlack(0, 1, false, -1);
    WaitFor(ElapsedSeconds(2));
    EnableCharacterGravity(20000);
    DisableCharacterInvincibility(20000);
    RestartEvent();
});

$Event(1047402520, Default, function(areaEntityId) {
    DisableNetworkSync();
    WaitFor(InArea(20000, areaEntityId));
    SetSpEffect(20000, 98251);
    SetSpEffect(20000, 6999600);
    ActivateGparamOverride(12, 3);
    WaitFor(!InArea(20000, areaEntityId));
    ClearSpEffect(20000, 98250);
    ClearSpEffect(20000, 6999600);
    DeactivateGparamOverride(3);
    WaitFixedTimeFrames(1);
    RestartEvent();
});

$Event(200, Default, function() {
    $InitializeEvent(0, 1047402510, 1047402510, 1038400500);
    $InitializeCommonEvent(0, 90015449, 1047402550);
});

