// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 40002500);
    $InitializeEvent(0, 40002501);
    $InitializeEvent(0, 40002502);
    $InitializeEvent(0, 40002503);
    $InitializeEvent(0, 40002505);
    $InitializeEvent(0, 40002510, 0, 40002300, 300);
    $InitializeEvent(1, 40002510, 1, 40002301, 301);
    $InitializeEvent(2, 40002510, 2, 40002302, 302);
    $InitializeEvent(3, 40002510, 3, 40002303, 303);
    $InitializeEvent(4, 40002510, 4, 40002304, 304);
    $InitializeEvent(5, 40002510, 5, 40002305, 305);
    $InitializeEvent(6, 40002510, 6, 40002306, 306);
    $InitializeEvent(7, 40002510, 7, 40002307, 307);
    $InitializeEvent(8, 40002510, 8, 40002308, 308);
    $InitializeEvent(9, 40002510, 9, 40002309, 309);
    $InitializeEvent(1, 40002580, 1, 40001601, 40001621, 40000581, 807390);
    $InitializeEvent(2, 40002580, 2, 40001602, 40001622, 40000582, 807393);
    $InitializeEvent(4, 40002580, 4, 40001604, 40001624, 40000584, 807392);
    $InitializeEvent(7, 40002580, 7, 40001607, 40001627, 40000587, 807395);
    $InitializeEvent(8, 40002580, 8, 40001608, 40001628, 40000588, 807391);
    $InitializeEvent(9, 40002580, 9, 40001609, 40001629, 40000589, 807394);
    $InitializeEvent(0, 40002590, 0, 40001600, 40000590);
    $InitializeEvent(1, 40002590, 1, 40001601, 40000591);
    $InitializeEvent(2, 40002590, 2, 40001602, 40000592);
    $InitializeEvent(3, 40002590, 3, 40001603, 40000593);
    $InitializeEvent(4, 40002590, 4, 40001604, 40000594);
    $InitializeEvent(5, 40002590, 5, 40001605, 40000595);
    $InitializeEvent(7, 40002590, 7, 40001607, 40000597);
    $InitializeEvent(8, 40002590, 8, 40001608, 40000598);
    $InitializeEvent(9, 40002590, 9, 40001609, 40000599);
    $InitializeEvent(0, 40002650);
    $InitializeEvent(0, 40002660);
    $InitializeEvent(0, 40002670);
    $InitializeEvent(0, 40002671);
    $InitializeEvent(0, 40002672);
    $InitializeEvent(0, 40002673);
    $InitializeEvent(0, 40002674, 1, 40000570);
    $InitializeEvent(1, 40002674, 2, 40000571);
    $InitializeEvent(2, 40002674, 3, 40000572);
    $InitializeEvent(0, 40002680, 8, 40001638);
    $InitializeEvent(1, 40002680, 9, 40001639);
    $InitializeCommonEvent(0, 90015500, 40002320);
});

$Event(40002500, Restart, function() {
    EndIf(IsMapVariation(6));
    EndIf(IsMapVariation(8));
    EndIf(IsMapVariation(9));
    if (EventFlag(40000500)) {
        DisableAsset(40001597);
        DisableAsset(40001598);
        DisableAsset(40001599);
        EndEvent();
    }
L0:
    CreateAssetfollowingSFX(40001597, 101, 800748);
    CreateAssetfollowingSFX(40001598, 101, 800746);
    CreateAssetfollowingSFX(40001599, 101, 1500);
    WaitFor(EventFlag(40000500));
    DeleteAssetfollowingSFX(40001597, true);
    DisableAsset(40001597);
    DeleteAssetfollowingSFX(40001598, true);
    DisableAsset(40001598);
    DeleteAssetfollowingSFX(40001599, true);
    DisableAsset(40001599);
    PlaySE(40001597, SoundType.SFX, 1500);
    PlaySE(40001598, SoundType.SFX, 1500);
    PlaySE(40001599, SoundType.SFX, 1500);
    WaitFixedTimeSeconds(0.5);
    RecordUserDispLog(11220, 40001599, LogObjectType.None, -1);
});

$Event(40002501, Restart, function() {
    EndIf(!IsMapVariation(6));
    DisableAsset(40001597);
    DisableAsset(40001598);
    DisableAsset(40001599);
    EndIf(EventFlag(40000500));
    CreateAssetfollowingSFX(40001594, 100, 800745);
    CreateAssetfollowingSFX(40001595, 100, 800747);
    CreateAssetfollowingSFX(40001596, 100, 800749);
    WaitFor(EventFlag(40000500));
    PlaySE(40001594, SoundType.SFX, 1500);
    PlaySE(40001595, SoundType.SFX, 1500);
    PlaySE(40001596, SoundType.SFX, 1500);
    DeleteAssetfollowingSFX(40001594, true);
    DeleteAssetfollowingSFX(40001595, true);
    DeleteAssetfollowingSFX(40001596, true);
    WaitFixedTimeSeconds(0.5);
    RecordUserDispLog(11220, 40001599, LogObjectType.None, -1);
});

$Event(40002502, Restart, function() {
    EndIf(!(IsMapVariation(8) || IsMapVariation(9)));
    DisableAsset(40001599);
    if (EventFlag(40000500)) {
        DisableAsset(40001597);
        DisableAsset(40001598);
        EndEvent();
    }
L0:
    CreateAssetfollowingSFX(40001597, 101, 800748);
    CreateAssetfollowingSFX(40001598, 101, 800746);
    WaitFor(EventFlag(40000500));
    DeleteAssetfollowingSFX(40001597, true);
    DisableAsset(40001597);
    DeleteAssetfollowingSFX(40001598, true);
    DisableAsset(40001598);
    PlaySE(40001597, SoundType.SFX, 1500);
    PlaySE(40001598, SoundType.SFX, 1500);
    WaitFixedTimeSeconds(0.5);
    RecordUserDispLog(11220, 40001599, LogObjectType.None, -1);
});

$Event(40002503, Default, function() {
    WaitFor(EventFlag(40000500));
    SetWorldMapPointFlag(6, ON);
    SetWorldMapPointFlag(8, OFF);
});

$Event(40002504, Default, function() {
    DisableNetworkSync();
});

$Event(40002505, Default, function() {
    EndIf(EventFlag(40000500));
    WaitFor(EventFlag(40000500));
    IncrementNetworkconnectedEventValue(8140, 4, 7);
});

$Event(40002510, Restart, function(mapVariationId, areaEntityId, operationGuideParamId) {
    DisableNetworkSync();
    EndIf(!IsMapVariation(mapVariationId));
    HideFloatingMessage(operationGuideParamId, areaEntityId);
    EndIf(EventFlag(40000500));
    WaitFor(InArea(20000, areaEntityId) || EventFlag(40000500));
    EndIf(EventFlag(40000500));
    ShowFloatingMessage(operationGuideParamId, areaEntityId);
    WaitFor(!InArea(20000, areaEntityId) || EventFlag(40000500));
    HideFloatingMessage(operationGuideParamId, areaEntityId);
    EndIf(EventFlag(40000500));
    RestartEvent();
});

$Event(40002580, Restart, function(mapVariationId, assetEntityId, assetEntityId2, eventFlagId, sfxId) {
    EndIf(!IsMapVariation(mapVariationId));
    if (EventFlag(40000501)) {
        DisableAsset(assetEntityId2);
        if (IsMapVariation(8)) {
            EnableAsset(40001630);
        }
        if (!EventFlag(40000502)) {
            EnableAsset(assetEntityId);
        }
        if (EventFlag(40000502)) {
            DisableAsset(assetEntityId);
        }
        EndEvent();
    }
L0:
    DisableAsset(assetEntityId);
    WaitFor(AssetHP(assetEntityId2) != 9999);
    SetSpEffect(assetEntityId2, 0);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    SetNetworkconnectedEventFlagID(40000501, ON);
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
        EnableAsset(40001630);
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

$Event(40002590, Restart, function(mapVariationId, assetEntityId, eventFlagId) {
    EndIf(!IsMapVariation(mapVariationId));
    if (EventFlag(40000502)) {
        DisableAsset(assetEntityId);
        EndEvent();
    }
L0:
    WaitFor(AssetDestroyed(assetEntityId));
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    SetNetworkconnectedEventFlagID(40000502, ON);
    SetNetworkconnectedEventFlagID(40000500, ON);
});

$Event(40002650, Restart, function() {
    if (!IsMapVariation(5)) {
        DeleteMapSFX(40002605, false);
        EndEvent();
    }
L0:
    if (EventFlag(40000502)) {
        DeleteMapSFX(40002605, false);
        EndEvent();
    }
L1:
    WaitFor(EventFlag(40000502));
    DeleteMapSFX(40002605, true);
});

$Event(40002660, Restart, function() {
    EndIf(!IsMapVariation(6));
    EndIf(EventFlag(40000500));
    WaitFor(InArea(20000, 40002606));
    SetNetworkconnectedEventFlagID(40000500, ON);
});

$Event(40002670, Restart, function() {
    EndIf(!IsMapVariation(7));
    DisableCharacterHPBarDisplay(40000297);
    EndIf(EventFlag(40000500));
    AttachAssetToCharacter(40000297, 600, 40001607);
    EndIf(EventFlag(40000501));
    DisableAsset(40001607);
    AttachAssetToCharacter(40000297, 900, 40001627);
});

$Event(40002671, Restart, function() {
    EndIf(!IsMapVariation(7));
    if (EventFlag(40000501)) {
        ForceCharacterDeath(40000297, false);
        DisableCharacterAI(40000297);
        EndEvent();
    }
L0:
    EnableCharacterInvincibility(40000297);
    EnableLockOnPoint(40000297, 220);
    SetCharacterEnableDistance(40000297, 110);
    WaitFor(EventFlag(40000501));
    DisableCharacterAI(40000297);
    DisableLockOnPoint(40000297, 220);
    ForceCharacterDeath(40000297, false);
});

$Event(40002672, Restart, function() {
    EndIf(!IsMapVariation(7));
    EndIf(EventFlag(40000501));
    WaitFor(CharacterDead(40000297));
    WaitFixedTimeSeconds(5);
    EndIf(EventFlag(40000501));
    SetNetworkconnectedEventFlagID(40000597, ON);
    SetNetworkconnectedEventFlagID(40000502, ON);
    SetNetworkconnectedEventFlagID(40000500, ON);
    SetNetworkconnectedEventFlagID(40000501, ON);
});

$Event(40002673, Restart, function() {
    EndIf(!IsMapVariation(7));
    EndIf(EventFlag(40000501));
    if (!AnyBatchEventFlags(40000570, 40000572)) {
        WaitFor(AnyBatchEventFlags(40000570, 40000572));
        ResetCharacterPosition(40000297);
    }
L0:
    WaitFor(!AnyBatchEventFlags(40000570, 40000572));
    RestartEvent();
});

$Event(40002674, Restart, function(playerNo, eventFlagId) {
    DisableNetworkSync();
    EndIf(!IsMapVariation(7));
    EndIf(!IsPlayerNo(playerNo));
    if (EventFlag(40000501)) {
        SetNetworkconnectedEventFlagID(eventFlagId, OFF);
        EndEvent();
    }
    WaitFor(EntityInRadiusOfEntity(20000, 40000297, 100, 1));
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFor(!EntityInRadiusOfEntity(20000, 40000297, 100, 1));
    SetNetworkconnectedEventFlagID(eventFlagId, OFF);
    RestartEvent();
});

$Event(40002680, Restart, function(mapVariationId, assetEntityId) {
    EndIf(!IsMapVariation(mapVariationId));
    DisableAsset(assetEntityId);
});

