-- Everdark Sovreign Weapon-Bequeathed Harmonia
-- only one patch lel
RegisterTableGoal(GOAL_AngelsDaughters762100_Battle, "AngelsDaughters762100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AngelsDaughters762100_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(1, 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    -- unused
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    local random = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60620)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60621)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60627)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62641)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62834)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62835)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62836)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62837)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62838)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62839)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:GetHpRate(TARGET_TEAM_MEMBER_20) <= 0.8 and ai:HasSpecialEffectId(TARGET_SELF, 62848) == true and ai:HasSpecialEffectId(TARGET_SELF, 62832) == false then
        probabilities[30] = 100
    elseif ai:GetHpRate(TARGET_TEAM_MEMBER_20) <= 0.5 and ai:HasSpecialEffectId(TARGET_SELF, 62848) == true and ai:HasSpecialEffectId(TARGET_SELF, 62832) == true and ai:HasSpecialEffectId(TARGET_SELF, 62833) == false and ai:HasSpecialEffectId(TARGET_SELF, 62876) == false then
        probabilities[30] = 100
    elseif ai:GetHpRate(TARGET_TEAM_MEMBER_20) <= 0.2 and ai:HasSpecialEffectId(TARGET_SELF, 62848) == true and ai:HasSpecialEffectId(TARGET_SELF, 62832) == true and ai:HasSpecialEffectId(TARGET_SELF, 62833) == false and ai:HasSpecialEffectId(TARGET_SELF, 62876) == true then
        probabilities[30] = 100
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:HasSpecialEffectId(TARGET_SELF, 62862) == false and ai:HasSpecialEffectId(TARGET_SELF, 62845) == false then
            probabilities[18] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62845) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62846) == true and ai:HasSpecialEffectId(TARGET_SELF, 62827) == true then
                if distanceEnemy > 9.2 then
                    probabilities[18] = 100
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    probabilities[7] = 0
                    probabilities[10] = 20
                    probabilities[11] = 20
                    probabilities[13] = 10
                    probabilities[15] = 20
                else
                    probabilities[7] = 0
                    probabilities[10] = 30
                    probabilities[11] = 0
                    probabilities[13] = 30
                    probabilities[15] = 30
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 62846) == false and ai:HasSpecialEffectId(TARGET_SELF, 5402) == true then
                probabilities[18] = 100
            elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                if distanceEnemy >= 6.9 then
                    if ai:HasSpecialEffectId(TARGET_SELF, 62832) == true then
                        probabilities[22] = 50
                        probabilities[6] = 50
                    else
                        probabilities[22] = 100
                    end
                else
                    probabilities[1] = 100
                    probabilities[22] = 10
                end
            elseif distanceEnemy >= 6.5 then
                if ai:HasSpecialEffectId(TARGET_SELF, 62832) == true then
                    probabilities[40] = 50
                    probabilities[6] = 50
                else
                    probabilities[40] = 100
                end
            else
                probabilities[1] = 100
                probabilities[40] = 10
            end
        else
            probabilities[18] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 62860) == false then
        probabilities[16] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 62847) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 62843) == false then
            probabilities[17] = 100
        elseif distanceEnemy < 1 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[7] = 50
                probabilities[10] = 30
                probabilities[11] = 0
                probabilities[13] = 10
                probabilities[15] = 10
                probabilities[19] = 40
            else
                probabilities[7] = 20
                probabilities[10] = 40
                probabilities[11] = 0
                probabilities[13] = 10
                probabilities[15] = 30
                probabilities[19] = 40
            end
        elseif distanceEnemy < 3 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[7] = 30
                probabilities[10] = 20
                probabilities[11] = 20
                probabilities[13] = 10
                probabilities[15] = 20
                probabilities[19] = 20
            else
                probabilities[7] = 0
                probabilities[10] = 30
                probabilities[11] = 0
                probabilities[13] = 30
                probabilities[15] = 30
                probabilities[19] = 20
            end
        elseif distanceEnemy < 7 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[7] = 0
                probabilities[10] = 30
                probabilities[11] = 20
                probabilities[13] = 20
                probabilities[15] = 30
                probabilities[19] = 25
            else
                probabilities[7] = 0
                probabilities[10] = 30
                probabilities[11] = 0
                probabilities[13] = 30
                probabilities[15] = 30
                probabilities[19] = 25
            end
        elseif distanceEnemy < 13 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[7] = 0
                probabilities[10] = 10
                probabilities[11] = 30
                probabilities[13] = 30
                probabilities[15] = 30
            else
                probabilities[7] = 0
                probabilities[10] = 30
                probabilities[11] = 0
                probabilities[13] = 30
                probabilities[15] = 30
            end
        elseif distanceEnemy < 9999 then
            probabilities[20] = 100
        end
    else
        probabilities[16] = 100
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3012, 20, probabilities[6], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3004, 10, probabilities[10], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3017, 25, probabilities[13], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3019, 15, probabilities[15], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3020, 15, probabilities[15], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3021, 15, probabilities[15], 1)
    probabilities[19] = SetCoolTime(ai, goal, 20053, 10, probabilities[19], 1)
    probabilities[27] = SetCoolTime(ai, goal, 6002, 10, probabilities[27], 1)
    probabilities[27] = SetCoolTime(ai, goal, 6003, 10, probabilities[27], 1)
    probabilities[28] = SetCoolTime(ai, goal, 6003, 10, probabilities[28], 1)
    probabilities[28] = SetCoolTime(ai, goal, 6002, 10, probabilities[28], 1)
    if ai:HasSpecialEffectId(TARGET_SELF, 62829) == true then
        probabilities[1] = 0
    end
    acts[1] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act01)
    acts[6] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act06)
    acts[7] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act07)
    acts[10] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act10)
    acts[11] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act11)
    acts[13] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act13)
    acts[14] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act14)
    acts[15] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act15)
    acts[16] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act16)
    acts[17] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act17)
    acts[18] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act18)
    acts[19] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act19)
    acts[20] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act20)
    acts[21] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act21)
    acts[22] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act22)
    acts[23] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act23)
    acts[24] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act24)
    acts[25] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act25)
    acts[26] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act26)
    acts[27] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act27)
    acts[28] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act28)
    acts[29] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act29)
    acts[30] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act30)
    acts[40] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act40)
    acts[45] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act45)
    acts[46] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act46)
    acts[47] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act47)
    acts[48] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act48)
    acts[49] = REGIST_FUNC(ai, goal, AngelsDaughters762100_Act49)
    local actAfter = REGIST_FUNC(ai, goal, AngelsDaughters762100_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function AngelsDaughters762100_Act01(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act06(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3012
    local successDist = 999
    local turnTime = 1
    local turnFaceAngle = 60
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act07(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3005
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act10(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3004
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act11(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3009
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act13(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3017
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act14(ai, goal, paramTbl)
    local goalLife = 15
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60601) == true then
        Attack1 = 3015
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60602) == true then
        Attack1 = 3014
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60603) == true then
        Attack1 = 3018
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, Attack1, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act15(ai, goal, paramTbl)
    local goalLife = 15
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60601) == true then
        Attack1 = 3020
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60602) == true then
        Attack1 = 3019
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60603) == true then
        Attack1 = 3021
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, Attack1, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act16(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20051
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act17(ai, goal, paramTbl)
    local goalLife = 10
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3025, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3026, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act18(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20050
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act19(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20053
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act20(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act22(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(1, 2), TARGET_ENE_0, stopDist, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act23(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_ENE_0, RunSwitch, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act24(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local f19_local1 = -1
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 0, ai:GetRandam_Int(60, 80), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 1, ai:GetRandam_Int(60, 80), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act25(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act26(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act27(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act28(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act29(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3013
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 30
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act30(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20041
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act40(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, 30, 0, ai:GetRandam_Int(15, 25), true, -1, -1, -1, false, true, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act45(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 5, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act46(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 63140) == true then
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
            end
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
            end
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 31, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 31, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 22, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 22, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act47(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 63140) == true then
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
        if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act48(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 63140) == true then
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
            elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 31, TARGET_ENE_0, true, -1)
        elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 22, TARGET_ENE_0, true, -1)
        elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
        if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_Act49(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
        end
    elseif ai:HasSpecialEffectId(TARGET_ENE_1, 60730) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
    elseif ai:HasSpecialEffectId(TARGET_ENE_2, 60730) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_2, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5)) -- NR6PF: Why do I have to fix Fromsoft's errors too? Correctly target TARGET_ENE_3
        -- NR6PF: Also target P4-6 if they get the effect, blah blah
    elseif ai:HasSpecialEffectId(TARGET_ENE_3, 60730) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_3, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
    elseif ai:HasSpecialEffectId(TARGET_ENE_4, 60730) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_4, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
    elseif ai:HasSpecialEffectId(TARGET_ENE_5, 60730) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_5, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
    
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762100_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_AngelsDaughters762100_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 62834) == true and ai:GetHpRate(TARGET_TEAM_MEMBER_20) <= 0.8 and ai:HasSpecialEffectId(TARGET_SELF, 62848) == true and ai:HasSpecialEffectId(TARGET_SELF, 62832) == false then
            if ai:GetSpecialEffectActivateInterruptId(62834) then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62834)
                AngelsDaughters762100_Act30(ai, goal)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62834) == true and ai:GetHpRate(TARGET_TEAM_MEMBER_20) <= 0.5 and ai:HasSpecialEffectId(TARGET_SELF, 62848) == true and ai:HasSpecialEffectId(TARGET_SELF, 62832) == true and ai:HasSpecialEffectId(TARGET_SELF, 62833) == false and ai:HasSpecialEffectId(TARGET_SELF, 62876) == false then
            if ai:GetSpecialEffectActivateInterruptId(62834) then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62834)
                AngelsDaughters762100_Act30(ai, goal)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62834) == true and ai:GetHpRate(TARGET_TEAM_MEMBER_20) <= 0.2 and ai:HasSpecialEffectId(TARGET_SELF, 62848) == true and ai:HasSpecialEffectId(TARGET_SELF, 62832) == true and ai:HasSpecialEffectId(TARGET_SELF, 62833) == false and ai:HasSpecialEffectId(TARGET_SELF, 62876) == true and ai:GetSpecialEffectActivateInterruptId(62834) then
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62834)
            AngelsDaughters762100_Act30(ai, goal)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:HasSpecialEffectId(TARGET_SELF, 62845) == true then
        if ai:GetSpecialEffectActivateInterruptId(62836) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62836)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3000, TARGET_ENE_0, 200, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(62837) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy < 6.9 and ai:HasSpecialEffectId(TARGET_SELF, 62829) == false then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62837)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3000, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 62846) == true and ai:HasSpecialEffectId(TARGET_SELF, 62827) == true then
        if ai:IsInterupt(INTERUPT_FindAttack) then
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 60627) then
                if targetDist < 3 then
                    if random > 70 then
                        AngelsDaughters762100_Act13(ai, goal)
                    elseif random > 40 then
                        AngelsDaughters762100_Act10(ai, goal)
                    else
                        AngelsDaughters762100_Act15(ai, goal)
                    end
                elseif targetDist < 13 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                        if random > 80 then
                            AngelsDaughters762100_Act13(ai, goal)
                        elseif random > 50 then
                            AngelsDaughters762100_Act10(ai, goal)
                        elseif random > 30 then
                            AngelsDaughters762100_Act15(ai, goal)
                        else
                            AngelsDaughters762100_Act11(ai, goal)
                        end
                    elseif random > 70 then
                        AngelsDaughters762100_Act13(ai, goal)
                    elseif random > 40 then
                        AngelsDaughters762100_Act10(ai, goal)
                    else
                        AngelsDaughters762100_Act15(ai, goal)
                    end
                elseif targetDist < 9999 then
                    AngelsDaughters762100_Act20(ai, goal)
                end
                return true
            end
        end
        if ai:IsInterupt(INTERUPT_Shoot) and ai:HasSpecialEffectId(TARGET_SELF, 60627) then
            if targetDist < 3 then
                if 70 < fate then
                    AngelsDaughters762100_Act13(ai, goal)
                elseif 40 < fate then
                    AngelsDaughters762100_Act10(ai, goal)
                else
                    AngelsDaughters762100_Act15(ai, goal)
                end
            elseif targetDist < 13 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    if 80 < fate then
                        AngelsDaughters762100_Act13(ai, goal)
                    elseif 50 < fate then
                        AngelsDaughters762100_Act10(ai, goal)
                    elseif 30 < fate then
                        AngelsDaughters762100_Act15(ai, goal)
                    else
                        AngelsDaughters762100_Act11(ai, goal)
                    end
                elseif 70 < fate then
                    AngelsDaughters762100_Act13(ai, goal)
                elseif 40 < fate then
                    AngelsDaughters762100_Act10(ai, goal)
                else
                    AngelsDaughters762100_Act15(ai, goal)
                end
            elseif targetDist < 9999 then
                AngelsDaughters762100_Act20(ai, goal)
            end
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack and ai:GetSpecialEffectActivateInterruptId(62834) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62834)
            goal:ClearSubGoal()
            AngelsDaughters762100_Act16(ai, goal)
        end
        if ai:GetSpecialEffectActivateInterruptId(62835) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 90, 15) then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62835)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 62846) == false then
        if ai:GetSpecialEffectActivateInterruptId(60620) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if distanceEnemy < 7 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60620)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60620)
                goal:ClearSubGoal()
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(60621) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 90, 15) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60621)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60621)
                goal:ClearSubGoal()
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_AngelsDaughters762100_AfterAttackAct, "AngelsDaughters762100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AngelsDaughters762100_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

