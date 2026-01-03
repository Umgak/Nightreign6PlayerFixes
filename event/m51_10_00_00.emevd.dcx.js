// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 51102500);
    $InitializeEvent(0, 51102501);
    $InitializeEvent(0, 51102502);
    $InitializeEvent(0, 51102503);
    $InitializeEvent(0, 51102505);
    $InitializeEvent(0, 51102510, 0, 51102300, 300);
    $InitializeEvent(1, 51102510, 1, 51102301, 301);
    $InitializeEvent(2, 51102510, 2, 51102302, 302);
    $InitializeEvent(3, 51102510, 3, 51102303, 303);
    $InitializeEvent(4, 51102510, 4, 51102304, 304);
    $InitializeEvent(5, 51102510, 5, 51102305, 305);
    $InitializeEvent(6, 51102510, 6, 51102306, 306);
    $InitializeEvent(7, 51102510, 7, 51102307, 307);
    $InitializeEvent(8, 51102510, 8, 51102308, 308);
    $InitializeEvent(9, 51102510, 9, 51102309, 309);
    $InitializeEvent(1, 51102580, 1, 51101601, 51101621, 51100581, 807390);
    $InitializeEvent(2, 51102580, 2, 51101602, 51101622, 51100582, 807393);
    $InitializeEvent(4, 51102580, 4, 51101604, 51101624, 51100584, 807392);
    $InitializeEvent(7, 51102580, 7, 51101607, 51101627, 51100587, 807395);
    $InitializeEvent(8, 51102580, 8, 51101608, 51101628, 51100588, 807391);
    $InitializeEvent(9, 51102580, 9, 51101609, 51101629, 51100589, 807394);
    $InitializeEvent(0, 51102590, 0, 51101600, 51100590);
    $InitializeEvent(1, 51102590, 1, 51101601, 51100591);
    $InitializeEvent(2, 51102590, 2, 51101602, 51100592);
    $InitializeEvent(3, 51102590, 3, 51101603, 51100593);
    $InitializeEvent(4, 51102590, 4, 51101604, 51100594);
    $InitializeEvent(5, 51102590, 5, 51101605, 51100595);
    $InitializeEvent(7, 51102590, 7, 51101607, 51100597);
    $InitializeEvent(8, 51102590, 8, 51101608, 51100598);
    $InitializeEvent(9, 51102590, 9, 51101609, 51100599);
    $InitializeEvent(0, 51102650);
    $InitializeEvent(0, 51102660);
    $InitializeEvent(0, 51102670);
    $InitializeEvent(0, 51102671);
    $InitializeEvent(0, 51102672);
    $InitializeEvent(0, 51102680, 8, 51101638);
    $InitializeEvent(1, 51102680, 9, 51101639);
    $InitializeCommonEvent(0, 90015500, 51102320);
});

$Event(51102500, Restart, function() {
    EndIf(IsMapVariation(6));
    EndIf(IsMapVariation(8));
    EndIf(IsMapVariation(9));
    if (EventFlag(51100500)) {
        DisableAsset(51101597);
        DisableAsset(51101598);
        DisableAsset(51101599);
        EndEvent();
    }
L0:
    CreateAssetfollowingSFX(51101597, 101, 800748);
    CreateAssetfollowingSFX(51101598, 101, 800746);
    CreateAssetfollowingSFX(51101599, 101, 1500);
    WaitFor(EventFlag(51100500));
    DeleteAssetfollowingSFX(51101597, true);
    DisableAsset(51101597);
    DeleteAssetfollowingSFX(51101598, true);
    DisableAsset(51101598);
    DeleteAssetfollowingSFX(51101599, true);
    DisableAsset(51101599);
    PlaySE(51101597, SoundType.SFX, 1500);
    PlaySE(51101598, SoundType.SFX, 1500);
    PlaySE(51101599, SoundType.SFX, 1500);
    WaitFixedTimeSeconds(0.5);
    RecordUserDispLog(11220, 40001599, LogObjectType.None, -1);
});

$Event(51102501, Restart, function() {
    EndIf(!IsMapVariation(6));
    DisableAsset(51101597);
    DisableAsset(51101598);
    DisableAsset(51101599);
    EndIf(EventFlag(51100500));
    CreateAssetfollowingSFX(51101594, 100, 800745);
    CreateAssetfollowingSFX(51101595, 100, 800747);
    CreateAssetfollowingSFX(51101596, 100, 800749);
    WaitFor(EventFlag(51100500));
    PlaySE(51101594, SoundType.SFX, 1500);
    PlaySE(51101595, SoundType.SFX, 1500);
    PlaySE(51101596, SoundType.SFX, 1500);
    DeleteAssetfollowingSFX(51101594, true);
    DeleteAssetfollowingSFX(51101595, true);
    DeleteAssetfollowingSFX(51101596, true);
    WaitFixedTimeSeconds(0.5);
    RecordUserDispLog(11220, 40001599, LogObjectType.None, -1);
});

$Event(51102502, Restart, function() {
    EndIf(!(IsMapVariation(8) || IsMapVariation(9)));
    DisableAsset(51101599);
    if (EventFlag(51100500)) {
        DisableAsset(51101597);
        DisableAsset(51101598);
        EndEvent();
    }
L0:
    CreateAssetfollowingSFX(51101597, 101, 800748);
    CreateAssetfollowingSFX(51101598, 101, 800746);
    WaitFor(EventFlag(51100500));
    DeleteAssetfollowingSFX(51101597, true);
    DisableAsset(51101597);
    DeleteAssetfollowingSFX(51101598, true);
    DisableAsset(51101598);
    PlaySE(51101597, SoundType.SFX, 1500);
    PlaySE(51101598, SoundType.SFX, 1500);
    WaitFixedTimeSeconds(0.5);
    RecordUserDispLog(11220, 40001599, LogObjectType.None, -1);
});

$Event(51102503, Default, function() {
    WaitFor(EventFlag(51100500));
    SetWorldMapPointFlag(6, ON);
    SetWorldMapPointFlag(8, OFF);
});

$Event(51102504, Default, function() {
    DisableNetworkSync();
});

$Event(51102505, Default, function() {
    EndIf(EventFlag(51100500));
    WaitFor(EventFlag(51100500));
    IncrementNetworkconnectedEventValue(8140, 4, 7);
});

$Event(51102510, Restart, function(mapVariationId, areaEntityId, operationGuideParamId) {
    DisableNetworkSync();
    EndIf(!IsMapVariation(mapVariationId));
    HideFloatingMessage(operationGuideParamId, areaEntityId);
    EndIf(EventFlag(51100500));
    WaitFor(InArea(20000, areaEntityId) || EventFlag(51100500));
    EndIf(EventFlag(51100500));
    ShowFloatingMessage(operationGuideParamId, areaEntityId);
    WaitFor(!InArea(20000, areaEntityId) || EventFlag(51100500));
    HideFloatingMessage(operationGuideParamId, areaEntityId);
    EndIf(EventFlag(51100500));
    RestartEvent();
});

$Event(51102580, Restart, function(mapVariationId, assetEntityId, assetEntityId2, eventFlagId, sfxId) {
    EndIf(!IsMapVariation(mapVariationId));
    if (EventFlag(51100501)) {
        DisableAsset(assetEntityId2);
        if (!EventFlag(51100502)) {
            EnableAsset(assetEntityId);
        }
        if (EventFlag(51100502)) {
            DisableAsset(assetEntityId);
        }
        EndEvent();
    }
L0:
    DisableAsset(assetEntityId);
    WaitFor(AssetHP(assetEntityId2) != 9999);
    SetSpEffect(assetEntityId2, 0);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    SetNetworkconnectedEventFlagID(51100501, ON);
    WaitFixedTimeSeconds(0.1);
    if (IsMapVariation(1)) {
        ForceAnimationPlayback(assetEntityId2, 1, false, false, false);
        SpawnOneshotSFX(TargetEntityType.Asset, assetEntityId2, 100, sfxId);
        WaitFixedTimeSeconds(2);
    }
    if (IsMapVariation(2)) {
        ForceAnimationPlayback(assetEntityId2, 1, false, false, false);
        SpawnOneshotSFX(TargetEntityType.Asset, assetEntityId2, 90, sfxId);
        WaitFixedTimeSeconds(2);
    }
    if (IsMapVariation(4)) {
        ForceAnimationPlayback(assetEntityId2, 1, false, false, false);
        SpawnOneshotSFX(TargetEntityType.Asset, assetEntityId2, 90, sfxId);
        WaitFixedTimeSeconds(2);
    }
    if (IsMapVariation(7)) {
        ForceAnimationPlayback(assetEntityId2, 1, false, false, false);
        SpawnOneshotSFX(TargetEntityType.Asset, assetEntityId2, 90, sfxId);
        WaitFixedTimeSeconds(2);
    }
    if (IsMapVariation(8)) {
        EnableAsset(51101630);
        SpawnOneshotSFX(TargetEntityType.Asset, assetEntityId2, 200, sfxId);
        WaitFixedTimeSeconds(2);
    }
    if (IsMapVariation(9)) {
        ForceAnimationPlayback(assetEntityId2, 1, false, false, false);
        SpawnOneshotSFX(TargetEntityType.Asset, assetEntityId2, 90, sfxId);
        WaitFixedTimeSeconds(2);
    }
    DisableAsset(assetEntityId2);
    WaitFixedTimeSeconds(0.1);
    EnableAsset(assetEntityId);
    ForceAnimationPlayback(assetEntityId, 1, false, true, false);
});

$Event(51102590, Restart, function(mapVariationId, assetEntityId, eventFlagId) {
    EndIf(!IsMapVariation(mapVariationId));
    if (EventFlag(51100502)) {
        DisableAsset(assetEntityId);
        EndEvent();
    }
L0:
    WaitFor(AssetDestroyed(assetEntityId));
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    SetNetworkconnectedEventFlagID(51100502, ON);
    SetNetworkconnectedEventFlagID(51100500, ON);
});

$Event(51102650, Restart, function() {
    if (!IsMapVariation(5)) {
        DeleteMapSFX(51102605, false);
        EndEvent();
    }
L0:
    if (EventFlag(51100502)) {
        DeleteMapSFX(51102605, false);
        EndEvent();
    }
L1:
    WaitFor(EventFlag(51100502));
    DeleteMapSFX(51102605, true);
});

$Event(51102660, Restart, function() {
    EndIf(!IsMapVariation(6));
    EndIf(EventFlag(51100500));
    WaitFor(InArea(20000, 51102606));
    SetNetworkconnectedEventFlagID(51100500, ON);
});

$Event(51102670, Restart, function() {
    EndIf(!IsMapVariation(7));
    DisableCharacterHPBarDisplay(51100297);
    EndIf(EventFlag(51100500));
    AttachAssetToCharacter(51100297, 600, 51101607);
    EndIf(EventFlag(51100501));
    DisableAsset(51101607);
    AttachAssetToCharacter(51100297, 900, 51101627);
});

$Event(51102671, Restart, function() {
    EndIf(!IsMapVariation(7));
    if (EventFlag(51100501)) {
        ForceCharacterDeath(51100297, false);
        DisableCharacterAI(51100297);
        EndEvent();
    }
L0:
    EnableCharacterInvincibility(51100297);
    EnableLockOnPoint(51100297, 220);
    WaitFor(EventFlag(51100501));
    DisableCharacterAI(51100297);
    DisableLockOnPoint(51100297, 220);
    ForceCharacterDeath(51100297, false);
});

$Event(51102672, Restart, function() {
    EndIf(!IsMapVariation(7));
    EndIf(EventFlag(51100501));
    WaitFor(CharacterDead(51100297));
    WaitFixedTimeSeconds(5);
    EndIf(EventFlag(51100501));
    SetNetworkconnectedEventFlagID(51100597, ON);
    SetNetworkconnectedEventFlagID(51100502, ON);
    SetNetworkconnectedEventFlagID(51100500, ON);
    SetNetworkconnectedEventFlagID(51100501, ON);
});

$Event(51102680, Restart, function(mapVariationId, assetEntityId) {
    EndIf(!IsMapVariation(mapVariationId));
    DisableAsset(assetEntityId);
});

