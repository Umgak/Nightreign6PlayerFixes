RegisterTableGoal(GOAL_WriggleDragon780000_Battle, "GOAL_WriggleDragon780000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WriggleDragon780000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:GetStringIndexedNumber("FirstSet")
    ai:GetStringIndexedNumber("EscapeLevel")
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local distanceSound = ai:GetDist(TARGET_SOUND)
    local random_2 = ai:GetRandam_Int(1, 100)
    local random_3 = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42330)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42331)
    local hasEffect5000 = ai:HasSpecialEffectId(TARGET_SELF, 5000)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 42301) or ai:HasSpecialEffectId(TARGET_SELF, 42303) then
        if ai:HasSpecialEffectId(TARGET_SELF, 42301) == true and ai:HasSpecialEffectId(TARGET_SELF, 42303) == false then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 120) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 120) then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 1200, 90, 5) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 5) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 5) then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                        probabilities[12] = 40
                        probabilities[13] = 30
                        probabilities[14] = 5
                        probabilities[15] = 20
                        probabilities[16] = 5
                        probabilities[17] = 10
                    else
                        probabilities[12] = 5
                        probabilities[13] = 40
                        probabilities[14] = 10
                        probabilities[15] = 5
                        probabilities[16] = 20
                        probabilities[17] = 20
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 10) then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                        probabilities[11] = 25
                        probabilities[14] = 20
                        probabilities[15] = 30
                        probabilities[16] = 10
                        probabilities[17] = 25
                    else
                        probabilities[11] = 30
                        probabilities[14] = 30
                        probabilities[15] = 5
                        probabilities[16] = 5
                        probabilities[17] = 30
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 20) then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                        probabilities[11] = 20
                        probabilities[14] = 30
                        probabilities[15] = 50
                    else
                        probabilities[11] = 40
                        probabilities[14] = 50
                        probabilities[15] = 10
                    end
                else
                    probabilities[22] = 25
                    probabilities[23] = 20
                    probabilities[25] = 5
                    probabilities[29] = 20
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 10) then
                probabilities[3] = 25
                probabilities[6] = 25
                probabilities[16] = 25
                probabilities[17] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 15) then
                probabilities[16] = 25
                probabilities[17] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 20) then
                probabilities[16] = 25
                probabilities[17] = 25
            else
                probabilities[22] = 25
                probabilities[23] = 20
                probabilities[25] = 5
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 42301) == false and ai:HasSpecialEffectId(TARGET_SELF, 42303) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 10) then
                probabilities[2] = 25
                probabilities[3] = 25
                probabilities[4] = 25
                probabilities[5] = 25
                probabilities[6] = 25
                probabilities[16] = 25
                probabilities[17] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 15) then
                probabilities[4] = 25
                probabilities[5] = 25
                probabilities[6] = 25
                probabilities[16] = 25
                probabilities[17] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 20) then
                probabilities[4] = 25
                probabilities[5] = 25
                probabilities[16] = 25
                probabilities[17] = 25
            else
                probabilities[22] = 25
                probabilities[23] = 20
                probabilities[25] = 5
            end
        end
    elseif random_3 < 50 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 120) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 120) then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 1200, 90, 5) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 5) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 5) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                    probabilities[12] = 40
                    probabilities[13] = 30
                    probabilities[14] = 5
                    probabilities[15] = 20
                    probabilities[16] = 5
                    probabilities[17] = 10
                else
                    probabilities[12] = 5
                    probabilities[13] = 40
                    probabilities[14] = 10
                    probabilities[15] = 5
                    probabilities[16] = 20
                    probabilities[17] = 20
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 10) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                    probabilities[11] = 25
                    probabilities[14] = 20
                    probabilities[15] = 30
                    probabilities[16] = 10
                    probabilities[17] = 25
                else
                    probabilities[11] = 30
                    probabilities[14] = 30
                    probabilities[15] = 5
                    probabilities[16] = 5
                    probabilities[17] = 30
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 20) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                    probabilities[11] = 20
                    probabilities[14] = 30
                    probabilities[15] = 50
                else
                    probabilities[11] = 40
                    probabilities[14] = 50
                    probabilities[15] = 10
                end
            else
                probabilities[22] = 25
                probabilities[23] = 20
                probabilities[25] = 5
                probabilities[29] = 20
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 10) then
            probabilities[2] = 25
            probabilities[3] = 25
            probabilities[4] = 25
            probabilities[5] = 25
            probabilities[6] = 25
            probabilities[16] = 25
            probabilities[17] = 25
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 15) then
            probabilities[4] = 25
            probabilities[5] = 25
            probabilities[6] = 25
            probabilities[16] = 25
            probabilities[17] = 25
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 20) then
            probabilities[4] = 25
            probabilities[5] = 25
            probabilities[16] = 25
            probabilities[17] = 25
        else
            probabilities[22] = 25
            probabilities[23] = 20
            probabilities[25] = 5
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_F, 180) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_F, 180) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 10) then
            probabilities[2] = 25
            probabilities[3] = 25
            probabilities[4] = 25
            probabilities[5] = 25
            probabilities[6] = 25
            probabilities[16] = 25
            probabilities[17] = 25
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 15) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 15) then
            probabilities[4] = 25
            probabilities[5] = 25
            probabilities[6] = 25
            probabilities[16] = 25
            probabilities[17] = 25
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 20) then
            probabilities[4] = 25
            probabilities[5] = 25
            probabilities[16] = 25
            probabilities[17] = 25
        else
            probabilities[22] = 25
            probabilities[23] = 20
            probabilities[25] = 5
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 120) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 120) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 1200, 90, 5) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 5) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 5) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                probabilities[12] = 40
                probabilities[13] = 30
                probabilities[14] = 5
                probabilities[15] = 20
                probabilities[16] = 5
                probabilities[17] = 10
            else
                probabilities[12] = 5
                probabilities[13] = 40
                probabilities[14] = 10
                probabilities[15] = 5
                probabilities[16] = 20
                probabilities[17] = 20
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 10) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 10) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                probabilities[11] = 25
                probabilities[14] = 20
                probabilities[15] = 30
                probabilities[16] = 10
                probabilities[17] = 25
            else
                probabilities[11] = 30
                probabilities[14] = 30
                probabilities[15] = 5
                probabilities[16] = 5
                probabilities[17] = 30
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 120, 90, 20) or ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 120, 90, 20) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_1, AI_DIR_TYPE_B, 60) or ai:IsInsideTarget(TARGET_ENE_2, AI_DIR_TYPE_B, 60) then
                probabilities[11] = 20
                probabilities[14] = 30
                probabilities[15] = 50
            else
                probabilities[11] = 40
                probabilities[14] = 50
                probabilities[15] = 10
            end
        else
            probabilities[22] = 25
            probabilities[23] = 20
            probabilities[25] = 5
            probabilities[29] = 20
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3003, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3006, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3012, 20, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3026, 20, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3028, 10, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3005, 10, probabilities[6], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3001, 10, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3009, 10, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3020, 20, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3027, 20, probabilities[14], 1)
    probabilities[15] = SetCoolTime(ai, goal, 3029, 10, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3000, 10, probabilities[16], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3018, 10, probabilities[17], 1)
    if ai:GetHpRate(TARGET_SELF) >= 0.75 then
    end
    acts[1] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act29)
    acts[40] = REGIST_FUNC(ai, goal, WriggleDragon780000_Act40)
    local actAfter = REGIST_FUNC(ai, goal, WriggleDragon780000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function WriggleDragon780000_Act01(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3003
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 30
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act02(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3006
    local successDist = 999
    local turnTime = 2.5
    local turnFaceAngle = 60
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act03(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3012
    local animationId_2 = 3013
    local animationId_3 = 3014
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 5) then
        target = TARGET_ENE_2
    end
    if random > 70 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random > 30 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_2, target, successDist, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_2, target, successDist, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_3, target, successDist, 0, 0)
    end
    GetWellSpace_Odds = 10
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act04(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3026
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 20) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 20) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 20) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act05(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3028
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 60
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 20) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 20) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 20) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act06(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3005
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 80
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 10) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 180, 90, 10) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 180, 90, 10) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 30
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act07(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act08(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act09(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act10(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act11(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3001
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act12(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local target = TARGET_ENE_0
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act13(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3020
    local animationId_2 = 3021
    local animationId_3 = 3022
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 180, 90, 5) then
        target = TARGET_ENE_2
    end
    if random > 70 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random > 30 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_2, target, successDist, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId_2, target, successDist, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, animationId_3, target, successDist, 0, 0)
    end
    GetWellSpace_Odds = 10
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act14(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3027
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 20) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 180, 90, 20) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 180, 90, 20) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act15(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3029
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 20) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_B, 180, 90, 20) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_B, 180, 90, 20) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act16(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 20) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 360, 90, 20) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 360, 90, 20) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act17(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3018
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local target = TARGET_ENE_0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 20) then
        target = TARGET_ENE_0
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 360, 90, 20) then
        target = TARGET_ENE_1
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 360, 90, 20) then
        target = TARGET_ENE_2
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, target, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act18(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act19(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act20(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_SELF, RunSwitch, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act22(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(8, 10), TARGET_ENE_0, 7, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act23(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    if random > 50 then
        ai:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 4, true, 3028, 0, 1, false, false, true)
    else
        ai:AddTopGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, 4, true, 3029, 0, 1, false, false, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act24(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local f26_local1 = -1
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(15, 20))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(15, 20))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act25(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 0
    local turnTime = 0
    local alwaysSuccess = false
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act26(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act27(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act28(ai, goal, paramTbl)
    local f30_local0 = 1
    local f30_local1 = 5
    local f30_local2 = -1
    local f30_local3 = 1
    local f30_local4 = -1
    local f30_local5 = -1
    local f30_local6 = TARGET_ENE_0
    local f30_local7 = 3
    local f30_local8 = 0
    local f30_local9 = true
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, -90, distanceEnemy / 2, AI_SPA_DIR_TYPE_ToTarget)
    goal:AddSubGoal(GOAL_COMMON_SpinStep, 30, 6001, POINT_AI_FIXED_POS, 0, AI_DIR_TYPE_B, 0)
    f30_local0 = 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act29(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, ai:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_Act40(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function WriggleDragon780000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    if random > 60 then
        goal:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 1, ai:GetRandam_Int(4, 6), true, 3028, 0, 1, false, false, true)
    elseif random > 30 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(15, 20))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(15, 20))
        end
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    end
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local distanceLocal = ai:GetDist(TARGET_LOCALPLAYER)
    local prevTargetingState = ai:GetPrevTargetState()
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    return false
end

RegisterTableGoal(GOAL_WriggleDragon780000_AfterAttackAct, "GOAL_WriggleDragon780000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WriggleDragon780000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

