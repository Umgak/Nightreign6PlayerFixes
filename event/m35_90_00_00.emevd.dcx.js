// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 35902565, 0, 35900800, 902130000, 30, 0, 0);
    $InitializeCommonEvent(0, 90015030, 0, 35900800, 30, 213000, 0);
    $InitializeEvent(0, 35902560, 0, 0, 35900800, 35900800, 1020, 213000);
    $InitializeEvent(0, 35902200, 35900800, 35901800, 90053, 35904800, 35902801);
    $InitializeEvent(0, 35902201);
    $InitializeEvent(0, 35902209, 35900010);
    $InitializeEvent(0, 35902202);
    $InitializeEvent(0, 35902203);
    $InitializeEvent(0, 35902204);
    $InitializeEvent(0, 35902206);
    $InitializeEvent(0, 35902210);
    $InitializeEvent(0, 35902235);
    $InitializeEvent(1, 35902565, 0, 35900801, 140050, 30, 0, 0);
    $InitializeCommonEvent(0, 90015030, 0, 35900801, 30, 940000, 0);
    $InitializeEvent(1, 35902560, 0, 0, 35900801, 35900801, 1030, 940000);
    $InitializeEvent(0, 35902216);
    $InitializeEvent(0, 35902217, 35900801);
    $InitializeEvent(0, 35902218, 35900801);
    $InitializeCommonEvent(0, 90005261, 35900801, 35902580, 14, 0, 0);
    $InitializeEvent(0, 35902320, 1043380200, 35904200, 35904200);
    $InitializeEvent(0, 35902230);
    $InitializeEvent(0, 35902290);
    $InitializeEvent(0, 35902295);
    $InitializeEvent(0, 35902300);
    $InitializeEvent(0, 35902285);
    $InitializeEvent(0, 35902310);
    $InitializeEvent(0, 35902311);
    $InitializeEvent(0, 35902313);
    $InitializeEvent(0, 35902312);
    $InitializeEvent(0, 35902330);
    $InitializeEvent(0, 35902225);
    $InitializeEvent(0, 35903255);
    $InitializeEvent(0, 35902240);
    $InitializeEvent(0, 35902211, 1170, 9915, 20000);
    $InitializeEvent(0, 35902207, 20000, 1140, 9890, 35900299, 10);
    $InitializeEvent(0, 35902275, 1145, 9895, 35902207, 35900299);
    $InitializeEvent(0, 35902212, 20000, 1150, 9900);
    $InitializeEvent(0, 35902208, 20000, 1160, 9905, 35900800, 5);
    $InitializeEvent(0, 35902270, 1165, 9910, 35902208);
    $InitializeEvent(0, 35902280, 1205, 9935);
    $InitializeEvent(0, 35902281, 1205, 9935);
    $InitializeCommonEvent(0, 90005934, 9895, 1145);
    $InitializeCommonEvent(0, 90005934, 9910, 1165);
    $InitializeCommonEvent(0, 90005934, 9935, 1205);
    $InitializeCommonEvent(0, 90005934, 9950, 1220);
    $InitializeCommonEvent(0, 9045010, 35900801, 35900802, 35900803, 35900804);
    $InitializeCommonEvent(0, 9045011, 35900801, 35900802, 35900803, 35900804);
    $InitializeEvent(0, 35902801);
    $InitializeEvent(0, 35902802);
});

$Event(50, Default, function() {
    $InitializeEvent(0, 35902330);
    $InitializeEvent(0, 35902340);
    $InitializeEvent(0, 35902298);
});

$Event(35902200, Restart, function(eventFlagId, assetEntityId, objactParamId, objactEventFlag, entityId) {
    ChangeAssetEnableStateUnknown200510(assetEntityId, Disabled, 0);
    DisableObjAct(assetEntityId, objactParamId);
    DeleteMapSFX(entityId, false);
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(6013));
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, eventFlagId);
    ChangeAssetEnableStateUnknown200510(assetEntityId, Enabled, 1);
    EnableObjAct(assetEntityId, objactParamId);
    CreateAssetfollowingSFX(assetEntityId, 201, 807230);
    WaitFor(ObjActEventFlag(objactEventFlag));
    SetEventFlagID(101, ON);
    SetEventFlagID(6012, ON);
    WaitFixedTimeSeconds(5);
    WarpPlayer(10, 0, 0, 0, 0, 0);
    EndEvent();
});

$Event(35902201, Default, function() {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(6013));
    WaitFor(EventFlag(35904211) && CharacterDead(20000) && !EventFlag(35900800));
    SetEventFlagID(101, ON);
    WaitFixedTimeSeconds(2.5);
L0:
    WarpPlayer(10, 0, 0, 0, 0, 0);
    EndEvent();
});

$Event(35902202, Default, function() {
    EndIf(EventFlag(6013));
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(35900210));
    if (!EventFlag(35904210)) {
        if (!EventFlag(35904211)) {
            DisableCharacter(35900299);
            DisableCharacterAI(35900299);
            WaitFor(InArea(20000, 31902594) || EntityInRadiusOfEntity(35900299, 20000, 70, 1));
            WaitFixedTimeSeconds(1);
            EnableCharacter(35900299);
            SetSpEffect(35900299, 102120);
            SetSpEffect(35900299, 9900021);
            EndEvent();
        }
    }
L0:
    SetSpEffect(35900299, 102120);
    EndEvent();
});

$Event(35902203, Restart, function() {
    EndIf(EventFlag(6013));
    EndIf(EventFlag(35900800));
    if (!EventFlag(35904210)) {
        WaitFor(CharacterHasSpEffect(35900299, 102180));
        WaitFor(!CharacterHasSpEffect(35900299, 102180));
        WaitFixedTimeSeconds(1);
        WaitFor(HPRatio(35900299) > 0.1);
        WaitFixedTimeSeconds(2.7);
    }
L0:
    ClearSpEffect(35900299, 9900021);
    EnableCharacterAI(35900299);
    RequestCharacterAICommand(35900299, 10, 0);
    RequestCharacterAIReplan(35900299);
    SetEventPoint(35900299, 35902500, 0);
});

$Event(35902204, Default, function() {
    EndIf(EventFlag(35900800));
    EndIf(EventFlag(35904211));
    EndIf(EventFlag(35902310));
    EndIf(EventFlag(6013));
    SetSpEffect(35900299, 99826);
    DisableCharacter(35900800);
    WaitFor(
        EntityInRadiusOfEntity(35900299, 35900800, 8, 1)
            && EntityInRadiusOfEntity(35900800, 20000, 8, 1));
    WaitFixedTimeSeconds(1);
    SetEventFlagID(35909700, ON);
    WaitFixedTimeSeconds(1);
    ForceAnimationPlayback(35900800, 20024, false, false, false);
    EnableCharacter(35900800);
    SetSpEffect(35900800, 99824);
    WaitFor(ElapsedSeconds(0.5));
    WarpCharacterAndCopyFloor(35900800, TargetEntityType.Character, 10000, 900, 10002);
    SetSpEffect(10000, 99171);
    RequestCharacterAIReplan(35900800);
});

$Event(35902205, Restart, function(areaEntityId, tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    WaitFor(!EventFlag(eventFlagId) && InArea(10000, areaEntityId) && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(35902206, Default, function() {
    EndIf(EventFlag(6013));
    WaitFor(EntityInRadiusOfEntity(35900299, 35900800, 6, 1));
    RequestCharacterAICommand(35900299, -1, 0);
    DisableCharacterAI(35900299);
    WaitFor(CharacterHasSpEffect(10000, 99171));
    WaitFixedTimeSeconds(1);
    EnableCharacterAI(35900299);
    RequestCharacterAIReplan(35900299);
});

$Event(35902207, Restart, function(entityId, tutorialParamId, eventFlagId, entityId2, targetDistance) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(6013));
    WaitFor(
        !EventFlag(eventFlagId)
            && EntityInRadiusOfEntity(entityId, entityId2, targetDistance, 1)
            && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(35902208, Restart, function(entityId, tutorialParamId, eventFlagId, chrEntityId, targetDistance) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(
        !EventFlag(eventFlagId)
            && !EntityInRadiusOfEntity(entityId, chrEntityId, targetDistance, 1)
            && CharacterAIState(chrEntityId, AIStateType.Combat)
            && (HPRatio(chrEntityId) < 0.6 || EventFlag(35909701)));
    if (EventFlag(35909701)) {
        WaitFixedTimeSeconds(15);
    }
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    SetSpEffect(20000, 99823);
});

$Event(35902209, Restart, function(eventFlagId) {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(EventFlag(eventFlagId));
    SetEventFlagID(101, ON);
    WarpPlayer(10, 0, 0, 0, 0, 0);
    EndEvent();
});

$Event(35902210, Restart, function() {
    WaitFixedTimeSeconds(1);
    if (CharacterHasSpEffect(20000, 102180)) {
        WaitFor(CharacterHPValue(20000) > 0);
    }
    if (!EventFlag(35900210)) {
        WaitFor(EventFlag(35904210) && CharacterDead(20000));
        WaitFixedTimeFrames(1);
        WaitFor(CharacterHPValue(20000) > 0);
        EndIf(EventFlag(35900800));
    }
L0:
    MoveBloodstainAndDroppedItems(35902521, 35902520);
    DisableCharacter(35900299);
    SetEventFlagID(35900210, ON);
});

$Event(35902211, Restart, function(tutorialParamId, eventFlagId, chrEntityId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && (CharacterHPValue(chrEntityId) <= 0 || EventFlag(35902207)));
    EndIf(EventFlag(35902207));
    WaitFixedTimeSeconds(0.5);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(35902212, Restart, function(chrEntityId, tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    flagHpChr = !EventFlag(eventFlagId) && CharacterHPValue(20000) <= 0 && CharacterDead(20000);
    WaitFor(flagHpChr);
    WaitFixedTimeFrames(1);
    WaitFor(HPRatio(chrEntityId) > 0 && flagHpChr);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(35902215, Restart, function(chrEntityId, entityId, targetDistance) {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(6013));
    EnableCharacterAI(35900800);
    DisableCharacterInvincibility(35900800);
    WaitFor(
        EntityInRadiusOfEntity(chrEntityId, entityId, targetDistance, 1)
            && EventFlag(35900210)
            && CharacterAIState(chrEntityId, AIStateType.Combat));
    SetEventFlagID(35909701, ON);
});

$Event(35902216, Restart, function() {
    DisableCharacter(35900801);
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6013));
    DisableCharacter(35900800);
    DisableCharacter(35900290);
    DisableCharacter(35900299);
    EnableCharacter(35900801);
    DisableCharacterHPBarDisplay(35900801);
    EnableCharacterInvincibility(35900801);
});

$Event(35902217, Default, function(eventFlagId) {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6013));
    WaitFor(EventFlag(eventFlagId));
    SetEventFlagID(6037, ON);
    WaitFixedTimeSeconds(5);
    WarpPlayer(10, 0, 0, 0, 0, 0);
    EndEvent();
});

$Event(35902218, Default, function(eventFlagId) {
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6013));
    WaitFor(CharacterDead(20000) && !EventFlag(eventFlagId) && EventFlag(35902313));
    WaitFixedTimeSeconds(5);
    WarpPlayer(10, 0, 0, 0, 0, 0);
    EndEvent();
});

$Event(35902219, Default, function() {
    DisableCharacterAI(35900801);
    area = EntityInRadiusOfEntity(20000, 35900801, 25, 1);
    EnableCharacterAI(35900801);
    RequestCharacterAIReplan(35900801);
});

$Event(35902220, Default, function(chrEntityId, targetDistance, timeSeconds, animationId) {
    chrHp = (CharacterAIState(35900800, AIStateType.Combat)
        || CharacterAIState(35900801, AIStateType.Combat))
        && CharacterHPValue(20000) <= 0;
    WaitFor(chrHp);
    WaitFixedTimeFrames(1);
    WaitFor(CharacterHPValue(20000) > 0);
    ResetCharacterPosition(35900801);
    DisableCharacterAI(chrEntityId);
    EnableCharacterInvincibility(35900801);
    WaitFor(
        HasDamageType(chrEntityId, 0, DamageType.Any)
            || CharacterHasStateInfo(chrEntityId, 436)
            || CharacterHasStateInfo(chrEntityId, 2)
            || CharacterHasStateInfo(chrEntityId, 5)
            || CharacterHasStateInfo(chrEntityId, 6)
            || CharacterHasStateInfo(chrEntityId, 260)
            || EntityInRadiusOfEntity(10000, chrEntityId, targetDistance, 1)
            || (CharacterHasSpEffect(chrEntityId, 481)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90110)
                && !CharacterHasSpEffect(chrEntityId, 90160))
            || (CharacterHasSpEffect(chrEntityId, 482)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90120)
                && !CharacterHasSpEffect(chrEntityId, 90160)
                && !CharacterHasSpEffect(chrEntityId, 90162))
            || (CharacterHasSpEffect(chrEntityId, 483)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90140)
                && !CharacterHasSpEffect(chrEntityId, 90160)
                && !CharacterHasSpEffect(chrEntityId, 90161))
            || (CharacterHasSpEffect(chrEntityId, 484)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90130)
                && !CharacterHasSpEffect(chrEntityId, 90161)
                && !CharacterHasSpEffect(chrEntityId, 90162))
            || (CharacterHasSpEffect(chrEntityId, 487)
                && !CharacterHasSpEffect(chrEntityId, 90100)
                && !CharacterHasSpEffect(chrEntityId, 90150)
                && !CharacterHasSpEffect(chrEntityId, 90160)));
    if (chrHp.Passed) {
        WaitFixedTimeSeconds(timeSeconds);
        if (Signed(animationId) != -1) {
            ForceAnimationPlayback(chrEntityId, animationId, true, false, false);
        }
    }
L1:
    EnableCharacterAI(chrEntityId);
});

$Event(35902225, Default, function() {
    EndIf(!EventFlag(6011));
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 35900800);
    SetNetworkconnectedEventFlagID(1043380201, ON);
});

$Event(35902230, Restart, function() {
    EndIf(!EventFlag(6013));
    WaitFor(InArea(20000, 35902530));
    SetSpEffect(20000, 99235);
    WaitFixedTimeSeconds(0.5);
    RestartEvent();
});

$Event(35902235, Restart, function() {
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(35904211));
    WaitFor(EventFlag(35904210));
    SetCharacterEventTarget(35900299, 20000);
});

$Event(35902240, Restart, function() {
    EndIf(!EventFlag(6011));
    EnableCharacterCollision(35900299);
    WaitFor(InArea(35900299, 35902540));
    DisableCharacterCollision(35900299);
    WaitFor(!InArea(35900299, 35902540));
    EnableCharacterCollision(35900299);
    RestartEvent();
});

$Event(35903255, Restart, function() {
    EndIf(!EventFlag(6011));
    WaitFor(CharacterHasSpEffect(20000, 102180));
    SetSpEffect(35900800, 16164);
    WaitFixedTimeSeconds(1);
    WaitFor(!CharacterHasSpEffect(20000, 102180));
    SetSpEffect(35900800, 16162);
    RestartEvent();
});

$Event(35902560, Default, function(eventFlagId, eventFlagId2, eventFlagId3, chrEntityId, textEffectParamId, bgmBossConvParamId) {
    DisableNetworkSync();
    if (eventFlagId != 0) {
        EndIf(!EventFlag(eventFlagId));
    }
    EndIf(EventFlag(eventFlagId3));
    if (eventFlagId2 != 0) {
        WaitFor(EventFlag(eventFlagId2));
    }
    chrArea = CharacterAIState(chrEntityId, AIStateType.Combat, GreaterOrEqual, 1)
        && EntityInRadiusOfEntity(20000, chrEntityId, 30, 1);
    hp = CharacterRatioHPValue(chrEntityId) <= 0;
    WaitFor(chrArea || hp);
    if (hp.Passed) {
        WaitFixedTimeSeconds(5);
    } else {
        chrArea2 = (CharacterAIState(chrEntityId, AIStateType.Recognition, LessOrEqual, 0)
            && CharacterAIState(chrEntityId, AIStateType.Alert, LessOrEqual, 0)
            && CharacterAIState(chrEntityId, AIStateType.Combat, LessOrEqual, 0)
            && CharacterAIState(chrEntityId, AIStateType.PassiveAlert, LessOrEqual, 0)
            && CharacterAIState(chrEntityId, AIStateType.ActiveAlert, LessOrEqual, 0)
            && CharacterAIState(chrEntityId, AIStateType.WaitBeforeForget, LessOrEqual, 0))
            && !EntityInRadiusOfEntity(20000, chrEntityId, 30, 1);
        area = EntityInRadiusOfEntity(20000, chrEntityId, 100, 1);
        hp2 = CharacterRatioHPValue(chrEntityId) <= 0;
        WaitFor(chrArea2 || !area || hp2 || CharacterDead(20000));
        RestartIf(!hp2.Passed);
        WaitFixedTimeSeconds(5);
        PlaySE(chrEntityId, SoundType.SFX, 888880000);
        DisplayTextEffectId(textEffectParamId);
    }
L0:
    if (BossBGMPlaying(bgmBossConvParamId)) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Stop2);
    }
    SetNetworkconnectedEventFlagID(eventFlagId3, ON);
    EndEvent();
});

$Event(35902565, Default, function(eventFlagId, chrEntityId, nameId, targetDistance, bgmBossConvParamId, eventFlagId2) {
    DisableNetworkSync();
    DisableCharacterHPBarDisplay(chrEntityId);
    if (eventFlagId != 0) {
        WaitFor(EventFlag(eventFlagId));
    }
    chrArea = CharacterAIState(chrEntityId, AIStateType.Combat, GreaterOrEqual, 1)
        && EntityInRadiusOfEntity(20000, chrEntityId, targetDistance, 1)
        && !InArea(20000, 1043372980);
    chr = CharacterRatioDead(chrEntityId);
    chrAreaFlag |= chrArea || chr;
    if (eventFlagId2 != 0) {
        chrAreaFlag |= EventFlag(eventFlagId2);
    }
    WaitFor(chrAreaFlag);
    if (eventFlagId2 != 0) {
        EndIf(EventFlag(eventFlagId2));
    }
    EndIf(chr.Passed);
    flag = !EventFlag(5000);
    flag2 = !EventFlag(5001);
    flag3 = flag || flag2;
    if (!flag3) {
        WaitFor(flag3);
        RestartEvent();
    }
    if (Signed(bgmBossConvParamId) != 0) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Start);
    }
    WaitFixedTimeSeconds(1);
    if (flag.Passed) {
        SetEventFlagID(5000, ON);
        DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
    } else if (flag2.Passed) {
        SetEventFlagID(5001, ON);
        DisplayBossHealthBar(Enabled, chrEntityId, 1, nameId);
    }
    LinkToBossHealthBar(Enabled, nameId, chrEntityId);
    chrArea2 = (CharacterAIState(chrEntityId, AIStateType.Recognition, LessOrEqual, 0)
        && CharacterAIState(chrEntityId, AIStateType.Alert, LessOrEqual, 0)
        && CharacterAIState(chrEntityId, AIStateType.Combat, LessOrEqual, 0)
        && CharacterAIState(chrEntityId, AIStateType.PassiveAlert, LessOrEqual, 0)
        && CharacterAIState(chrEntityId, AIStateType.ActiveAlert, LessOrEqual, 0)
        && CharacterAIState(chrEntityId, AIStateType.WaitBeforeForget, LessOrEqual, 0))
        && !EntityInRadiusOfEntity(20000, chrEntityId, targetDistance, 1);
    area = EntityInRadiusOfEntity(20000, chrEntityId, 100, 1);
    chr2 = CharacterRatioDead(chrEntityId);
    chr3 = CharacterDead(20000);
    chrAreaFlag2 |= chrArea2 || !area || InArea(20000, 1043372980) || chr2 || chr3;
    if (eventFlagId2 != 0) {
        chrAreaFlag2 |= EventFlag(eventFlagId2);
    }
    WaitFor(chrAreaFlag2);
    GotoIf(S0, eventFlagId2 == 0);
    GotoIf(L0, EventFlag(eventFlagId2));
S0:
    if (chr2.Passed) {
        WaitFixedTimeSeconds(5);
    } else {
        WaitFixedTimeSeconds(1);
    }
    GotoIf(S1, !chr3.Passed);
    WaitFixedTimeSeconds(2.5);
S1:
L0:
    if (Signed(bgmBossConvParamId) != 0) {
        SetBossBGM(bgmBossConvParamId, BossBGMState.Stop2);
    }
    if (flag.Passed) {
        SetEventFlagID(5000, OFF);
        DisplayBossHealthBar(Disabled, chrEntityId, 0, nameId);
    } else if (flag2.Passed) {
        SetEventFlagID(5001, OFF);
        DisplayBossHealthBar(Disabled, chrEntityId, 1, nameId);
    }
    if (eventFlagId2 != 0) {
        EndIf(EventFlag(eventFlagId2));
    }
    EndIf(chr2.Passed);
    WaitFor(!CharacterDead(20000));
    RestartEvent();
});

$Event(35902270, Restart, function(tutorialParamId, eventFlagId, eventFlagId2) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(!EventFlag(eventFlagId) && EventFlag(eventFlagId2) && PlayerIsInOwnWorld());
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(35902275, Restart, function(tutorialParamId, eventFlagId, eventFlagId2, chrEntityId) {
    DisableNetworkSync();
    ShowTutorialPopup(tutorialParamId, false, false);
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    WaitFor(CharacterHasSpEffect(chrEntityId, 102180) && EventFlag(eventFlagId2));
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    WaitFor(!CharacterHasSpEffect(chrEntityId, 102180));
    RestartIf(!CharacterHasSpEffect(chrEntityId, 102180));
});

$Event(35902280, Restart, function(tutorialParamId, eventFlagId) {
    DisableNetworkSync();
    EndIf(!PlayerIsInOwnWorld());
    EndIf(!EventFlag(6011));
    SetEventFlagID(1044394201, OFF);
    WaitFor(
        !EventFlag(eventFlagId) && PlayerIsInOwnWorld() && CharacterHasSpEffect(20000, 9900020));
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
    SetEventFlagID(1044394201, ON);
    WaitFixedTimeSeconds(4.5);
    SetEventFlagID(1044394201, OFF);
});

$Event(35902281, Default, function(tutorialParamId, eventFlagId) {
    WaitFor(CharacterHasSpEffect(20000, 9900020) && EventFlag(1044394200) && EventFlag(1044394201));
    WaitFixedTimeSeconds(1);
    SetEventFlagID(eventFlagId, ON);
    ShowTutorialPopup(tutorialParamId, true, true);
});

$Event(35902285, Restart, function() {
    EndIf(!EventFlag(6011));
    EndIf(EventFlag(6013));
    WaitFor(!EventFlag(9950) && EventFlag(35902202));
    WaitFixedTimeSeconds(2.7);
    ShowCharacterPin(35900299);
    WaitFixedTimeSeconds(2);
    SetEventFlagID(9950, ON);
    ShowTutorialPopup(1220, true, true);
    WaitFor(EntityInRadiusOfEntity(35900299, 20000, 15, 1));
    HideCharacterPin(35900299);
});

$Event(35902298, Restart, function() {
    if (EventFlag(6013)) {
        SetEventFlagID(31900950, ON);
    }
});

$Event(35902800, Restart, function(chrEntityId) {
    EndIf(EventFlag(chrEntityId));
    WaitFor(CharacterHPValue(chrEntityId) <= 0);
    WaitFixedTimeSeconds(4);
    PlaySE(chrEntityId, SoundType.SFX, 888880000);
    WaitFor(CharacterDead(chrEntityId));
    HandleMinibossDefeat(chrEntityId);
    SetEventFlagID(chrEntityId, ON);
});

$Event(35902801, Restart, function() {
    EndIf(!EventFlag(6013));
    EndIf(EventFlag(35900801));
    WaitFor(CharacterHPValue(35900801) <= 0);
    ForceCharacterDeath(35900802, false);
    ForceCharacterDeath(35900803, false);
    ForceCharacterDeath(35900804, false);
});

$Event(35902802, Restart, function() {
    DisableCharacter(35900802);
    DisableCharacter(35900803);
    DisableCharacter(35900804);
    EndIf(!EventFlag(6013));
    EndIf(EventFlag(35900801));
    WaitFor(CharacterAIState(35900801, AIStateType.Combat));
    EnableCharacter(35900802);
    ForceAnimationPlayback(35900802, 1830, false, false, false);
    WaitFixedTimeFrames(5);
    EnableCharacter(35900803);
    ForceAnimationPlayback(35900803, 1830, false, false, false);
    WaitFixedTimeFrames(5);
    EnableCharacter(35900804);
    ForceAnimationPlayback(35900804, 1830, false, false, false);
});

$Event(35902290, Default, function() {
    EndIf(!EventFlag(6011));
    WaitFor(HPRatio(35900299) < 0.1);
    EnableCharacterDefaultBackread(35900299);
    SetAlwaysDrawCharacter(35900299, ON);
    SetNetworkUpdateRate(35900299, true, CharacterUpdateFrequency.AlwaysUpdate);
    SetCharacterEnableDistance(35900299, 1000);
    DisableCharacterDisableOnHitUnload(35900299);
    DisableCharacterGravity(35900299);
    WaitFor(CharacterBackreadStatus(35900299) && HPRatio(35900299) > 0.1);
    EnableCharacterGravity(35900299);
});

$Event(35902295, Restart, function() {
    EndIf(EventFlag(6013));
    EndIf(!EventFlag(6011));
    EnableCharacterHPBarDisplay(35900299);
    WaitFor(EventFlag(35904210) && CharacterHasSpEffect(20000, 102180));
    DisableCharacterHPBarDisplay(35900299);
    WaitFor(!CharacterHasSpEffect(20000, 102180));
    RestartIf(!CharacterHasSpEffect(20000, 102180));
});

$Event(35902300, Default, function() {
    EndIf(!EventFlag(6011));
    WaitFor(EventFlag(35902204) && CharacterHasSpEffect(20000, 102150));
    WaitFixedTimeSeconds(0.5);
    SetBossBGM(213000, BossBGMState.Stop2);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 35900210);
    WaitFor(CharacterHasSpEffect(20000, 102150));
    WaitFixedTimeSeconds(0.5);
    SetBossBGM(213000, BossBGMState.Stop2);
});

$Event(35902310, Default, function() {
    if (!EventFlag(6013)) {
        WaitFor(EventFlag(35909700));
    }
    if (EventFlag(6013)) {
        WaitFor(EventFlag(35905002));
        ChangeAssetEnableStateUnknown200510(35904815, Disabled, 1);
        DisableCharacterInvincibility(35900801);
    }
    EnableAsset(35904800);
    EnableAsset(35904810);
    SetEventFlagID(35904210, ON);
    WaitFor(EventFlag(35900210) || EventFlag(35900800));
    if (!EventFlag(35900800)) {
        DisableAsset(35904810);
        SetEventFlagID(35904210, OFF);
    }
});

$Event(35902311, Default, function() {
    WaitFor(
        !EventFlag(35900800)
            && EventFlag(35902310)
            && EventFlag(35902312)
            && InArea(20000, 35902550));
    SetEventFlagID(35904211, ON);
    if (!EventFlag(6013)) {
        WaitFixedTimeSeconds(0.5);
        DisableCharacterInvincibility(35900800);
        EnableCharacterAI(35900800);
        ClearSpEffect(35900800, 99824);
        SetEventFlagID(35909701, ON);
    }
    if (EventFlag(6013)) {
        DisableCharacterInvincibility(35900801);
        EnableCharacterAI(35900801);
    }
    WaitFixedTimeSeconds(0.7);
    EnableAsset(35904810);
});

$Event(35902312, Default, function() {
    if (!EventFlag(35904211)) {
        WaitFor(EventFlag(35900210));
    }
    if (!EventFlag(6013)) {
        DisableCharacterAI(35900800);
        WaitFixedTimeSeconds(1);
        EnableCharacterInvincibility(35900800);
        ResetCharacterPosition(35900800);
    }
    if (EventFlag(6013)) {
        DisableCharacterAI(35900801);
        WaitFixedTimeSeconds(1);
        EnableCharacterInvincibility(35900801);
        ResetCharacterPosition(35900801);
    }
});

$Event(35902313, Default, function() {
    EndIf(!EventFlag(6013));
    DisableCharacter(31905200);
    DisableAsset(31905200);
    EnableAsset(35904815);
    SetSpEffect(20000, 9788);
    WaitFixedTimeSeconds(1);
    DisableCharacter(1044395201);
    DisableAsset(1044395201);
});

$Event(35902320, Default, function(eventFlagId, eventFlagId2, eventFlagId3) {
    EndIf(EventFlag(eventFlagId3));
    EndIf(!EventFlag(6011));
    EndIf(!EventFlag(6013));
    WaitFor(EventFlag(eventFlagId2));
    SetEventFlagID(eventFlagId, ON);
});

$Event(35902330, Default, function() {
    if (EventFlag(35904211)) {
        EnableCharacterInvincibility(20000);
        WarpCharacterAndCopyFloorWithFadeout(20000, TargetEntityType.Area, 35902551, -1, 35900800, false, false);
        WaitFixedTimeSeconds(1);
        SetCameraAngle(6.92, 47.38);
        if (!EventFlag(35900210)) {
            IssueShortWarpRequest(35900299, TargetEntityType.Area, 35902552, -1);
        }
        DisableCharacterInvincibility(20000);
        EndEvent();
    }
    if (EventFlag(35904210)) {
        EnableCharacterInvincibility(20000);
        WarpCharacterAndCopyFloorWithFadeout(20000, TargetEntityType.Area, 35902551, -1, 35900800, false, false);
        IssueShortWarpRequest(35900299, TargetEntityType.Area, 35902552, -1);
        WaitFixedTimeSeconds(1);
        SetCameraAngle(6.92, 47.38);
        DisableCharacterInvincibility(20000);
        EndEvent();
    }
    if (EventFlag(35902310)) {
        EnableCharacterInvincibility(20000);
        WarpCharacterAndCopyFloorWithFadeout(20000, TargetEntityType.Area, 1043382580, -1, 35900800, false, false);
        WaitFixedTimeSeconds(1);
        SetCameraAngle(-6.05, 30.65);
        DisableCharacterInvincibility(20000);
    }
});

$Event(35902340, Default, function() {
    EndIf(EventFlag(35900800));
    if (EventFlag(35904210)) {
        SetEventFlagID(35902204, OFF);
        SetEventFlagID(35909700, OFF);
        SetEventFlagID(5900, OFF);
    }
});


