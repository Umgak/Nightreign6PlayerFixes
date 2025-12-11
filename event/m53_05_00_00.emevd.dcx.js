// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeCommonEvent(0, 90035260, 53052200, 53050200, 8060, 400, 600);
    $InitializeCommonEvent(0, 90035260, 53052200, 53050200, 80000, 200, 800);
    $InitializeCommonEvent(0, 90035260, 53052200, 53050200, 80001, 100, 900);
    $InitializeCommonEvent(0, 90035261, 53052200, 53050200, 80001);
    $InitializeCommonEvent(0, 90035262, 53050800, 53050810, 53050811, 53050812, 53050200);
    $InitializeCommonEvent(0, 90035263, 53050800, 53050810, 53050811, 53050812, 53050200);
    $InitializeCommonEvent(0, 90035264, 53050200);
    if (IsPlayerNo(1)) {
        $InitializeCommonEvent(0, 90035265, 53050810, 53050200);
    }
    if (IsPlayerNo(2)) {
        $InitializeCommonEvent(0, 90035265, 53050811, 53050200);
    }
    if (IsPlayerNo(3)) {
        $InitializeCommonEvent(0, 90035265, 53050812, 53050200);
    }
    $InitializeCommonEvent(0, 90035266, 53052200, 150, 53050200);
    $InitializeCommonEvent(0, 90035267, 53050200);
    $InitializeCommonEvent(0, 90035268, 53050800, 53050200);
});

$Event(53052200, Default, function(entityId, eventFlagId, eventFlagId2, targetDistance, targetDistance2) {
    DisableNetworkSync();
    EndIf(!EventFlag(8080));
    EndIf(EventFlag(8061));
    WaitFor(EventFlag(eventFlagId2));
    if (IsPlayerNo(1)) {
        WaitFor(ElapsedSeconds(0));
    }
    if (IsPlayerNo(2)) {
        WaitFor(ElapsedSeconds(1.5));
    }
    if (IsPlayerNo(3)) {
        WaitFor(ElapsedSeconds(3));
    }
    if (EventFlag(9999)) {
        WaitFixedTimeFrames(1);
    }
    if (!EventFlag(9999)) {
        EndIf(
            !(PlayAreaCurrentTimeInRange(0, 0, 0, 20, 29, 59)
                && InsidePlayAreaByTime(0, 0, 17, 0, 0)
                && !InsidePlayAreaByTime(0, 0, 23, 59, 0)));
        EndIf(EventFlag(8061) && !EventFlag(eventFlagId));
    }
    EndIf(
        !((!EntityInRadiusOfEntity(entityId, 10002, targetDistance, 1)
            && !EntityInRadiusOfEntity(entityId, 10003, targetDistance, 1)
            && !EntityInRadiusOfEntity(entityId, 10004, targetDistance, 1))
            && (EntityInRadiusOfEntity(entityId, 10002, targetDistance2, 1)
                || EntityInRadiusOfEntity(entityId, 10003, targetDistance2, 1)
                || EntityInRadiusOfEntity(entityId, 10004, targetDistance2, 1))));
    SetNetworkconnectedEventFlagID(8061, ON);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    RecordUserDispLog(11140, entityId, LogObjectType.None, -1);
});

$Event(53052205, Default, function(entityId, eventFlagId) {
    DisableNetworkSync();
    WaitFor(EventFlag(80001) || EventFlag(8061));
    WaitFor(ElapsedSeconds(5));
    if (IsPlayerNo(1)) {
        WaitFor(ElapsedSeconds(0));
    }
    if (IsPlayerNo(2)) {
        WaitFor(ElapsedSeconds(1.5));
    }
    if (IsPlayerNo(3)) {
        WaitFor(ElapsedSeconds(3));
    }
    EndIf(EventFlag(8061));
    if (!EventFlag(9999)) {
        EndIf(
            !(PlayAreaCurrentTimeInRange(0, 0, 0, 20, 29, 59)
                && InsidePlayAreaByTime(0, 0, 17, 0, 0)
                && !InsidePlayAreaByTime(0, 0, 23, 59, 0)));
    }
    if (!EventFlagAndRandomCondition(6001, 0.3)) {
        WaitFor(ElapsedFrames(1));
        EndIf(EventFlag(8061) && !EventFlag(eventFlagId));
    }
    SetNetworkconnectedEventFlagID(8061, ON);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    RecordUserDispLog(11140, entityId, LogObjectType.None, -1);
});

$Event(53052210, Default, function(chrEntityId, chrEntityId2, eventFlagId) {
    EndIf(!EventFlag(8080));
    EndIf(EventFlag(8062));
    EndIf(EventFlag(8061) && !EventFlag(eventFlagId));
    if (EventFlag(8061) && EventFlag(eventFlagId)) {
        EnableCharacterDefaultBackread(chrEntityId);
        EnableCharacterDefaultBackread(chrEntityId2);
        EndEvent();
    }
L10:
    WaitFor(EventFlag(8061));
    EndIf(!EventFlag(eventFlagId));
    WaitFor(ElapsedSeconds(3));
    EnableCharacterDefaultBackread(chrEntityId);
    EnableCharacterDefaultBackread(chrEntityId2);
    EnableCharacter(chrEntityId);
    EnableCharacter(chrEntityId2);
    SetCharacterEnableDistance(chrEntityId2, 1200);
    DisableCharacterDisableOnHitUnload(chrEntityId2);
    SetNetworkUpdateAuthority(chrEntityId2, AuthorityLevel.Forced);
    DisableCharacterFadeOnEnable(chrEntityId2);
});

$Event(53052220, Default, function(entityId, chrEntityId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!EventFlag(8080));
    EndIf(EventFlag(8062));
    EndIf(EventFlag(8061) && !EventFlag(eventFlagId));
    if (!(EventFlag(8061) && EventFlag(eventFlagId))) {
        WaitFor(EventFlag(8061));
        EndIf(!EventFlag(eventFlagId));
        WaitFor(ElapsedSeconds(3));
        WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Character, 20000, 400, 20000);
        CreateBulletOwner(chrEntityId);
        PlaySE(20000, SoundType.EnvironmentalSound, 600081100);
        ActivateGparamOverride(11, 4);
        WaitFor(ElapsedSeconds(4));
        SetSpEffect(20000, 63000);
        WaitFor(ElapsedSeconds(4));
        ShootBullet(chrEntityId, 20000, 220, 802001040, 270, 0, 0);
        WaitFor(ElapsedSeconds(1));
        ShootBullet(chrEntityId, 20000, 220, 802001050, 270, 0, 0);
        WaitFor(ElapsedSeconds(1));
        ShootBullet(chrEntityId, 20000, 220, 802001060, 270, 0, 0);
        WaitFor(ElapsedSeconds(1));
        ShootBullet(chrEntityId, 20000, 220, 802001070, 270, 0, 0);
        WaitFor(ElapsedSeconds(1));
        ShootBullet(chrEntityId, 20000, 220, 802001080, 270, 0, 0);
        WaitFor(ElapsedSeconds(5));
        cond |= !EntityInRadiusOfEntity(entityId, 20000, 200, 1);
        if (cond) {
            ActivateGparamOverride(10, 3);
        }
    }
L0:
    cond |= ElapsedSeconds(45) || EventFlag(8062);
    WaitFor(cond);
    EndIf(EventFlag(8062));
    ActivateGparamOverride(11, 10);
    WaitFor(ElapsedSeconds(10));
    SetSpEffect(20000, 63000);
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Character, 20000, 400, 20000);
    CreateBulletOwner(chrEntityId);
    WaitFor(ElapsedSeconds(4));
    PlaySE(20000, SoundType.EnvironmentalSound, 600081101);
    ShootBullet(chrEntityId, 20000, 220, 802001040, 270, 0, 0);
    WaitFor(ElapsedSeconds(1));
    ShootBullet(chrEntityId, 20000, 220, 802001050, 270, 0, 0);
    WaitFor(ElapsedSeconds(1));
    ShootBullet(chrEntityId, 20000, 220, 802001060, 270, 0, 0);
    WaitFor(ElapsedSeconds(1));
    ShootBullet(chrEntityId, 20000, 220, 802001070, 270, 0, 0);
    WaitFor(ElapsedSeconds(1));
    ShootBullet(chrEntityId, 20000, 220, 802001080, 270, 0, 0);
    WaitFor(ElapsedSeconds(8));
    cond |= !EntityInRadiusOfEntity(entityId, 20000, 200, 1);
    if (cond) {
        ActivateGparamOverride(10, 3);
    }
    RestartEvent();
});

$Event(53052230, Default, function(chrEntityId, chrEntityId2, eventFlagId) {
    EndIf(!EventFlag(8080));
    EndIf(EventFlag(8062));
    EndIf(EventFlag(8061) && !EventFlag(eventFlagId));
    WaitFor(EventFlag(8061));
    EndIf(!EventFlag(eventFlagId));
    area = EntityInRadiusOfEntity(chrEntityId, 20000, 30, 1);
    areaTime |= area;
    if (!EventFlag(9999)) {
        time |= !InsidePlayArea(chrEntityId, 50);
    }
    time |= PlayAreaCurrentTimeInRange(23, 0, 0, 23, 59, 59);
    areaTime |= time;
    WaitFor(areaTime);
    DisableCharacterDefaultBackread(chrEntityId);
    DisableCharacterDefaultBackread(chrEntityId2);
    SetCharacterEnableDistance(chrEntityId2, -1);
    EnableCharacterDisableOnHitUnload(chrEntityId2);
    SetNetworkUpdateAuthority(chrEntityId2, AuthorityLevel.Normal);
    if (!area.Passed) {
        SetNetworkconnectedEventFlagID(8062, ON);
        ForceAnimationPlayback(chrEntityId, 20021, false, false, false);
        WaitFor(ElapsedSeconds(10));
        DisableCharacter(chrEntityId);
        DisableCharacter(chrEntityId2);
        SetCharacterBackreadState(chrEntityId, true);
        SetCharacterBackreadState(chrEntityId2, true);
        RecordUserDispLog(11143, chrEntityId, LogObjectType.None, -1);
        EndEvent();
    }
    SetNetworkconnectedEventFlagID(8062, ON);
    WaitFor(ElapsedSeconds(3.2));
    SetNetworkconnectedEventFlagID(8025, ON);
    ForceAnimationPlayback(chrEntityId, 20021, false, true, false);
    DisplayTextEffectId(2200);
    RecordUserDispLog(11142, chrEntityId, LogObjectType.None, -1);
    WaitFor(ElapsedSeconds(10));
    DisableCharacter(chrEntityId);
    DisableCharacter(chrEntityId2);
    SetCharacterBackreadState(chrEntityId, true);
    SetCharacterBackreadState(chrEntityId2, true);
});


