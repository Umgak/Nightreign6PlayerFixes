-- Artorias
RegisterTableGoal(GOAL_Artorius772000_Battle, "Artorius772000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Artorius772000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3005)
    ai:EnableUnfavorableAttackCheck(0, 3006)
    ai:EnableUnfavorableAttackCheck(0, 3007)
    ai:EnableUnfavorableAttackCheck(0, 3008)
    ai:EnableUnfavorableAttackCheck(0, 3009)
    ai:EnableUnfavorableAttackCheck(0, 3010)
    ai:EnableUnfavorableAttackCheck(0, 3011)
    ai:EnableUnfavorableAttackCheck(0, 3012)
    ai:EnableUnfavorableAttackCheck(0, 3013)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3023)
end

Goal.Activate = function (self, ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60751)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 60786) == true then
            probabilities[12] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60781) == true then
            if distanceEnemy > 20 then
                probabilities[40] = 100
            else
                probabilities[7] = 100
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 25
                probabilities[4] = 20
                probabilities[5] = 140
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 115
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 9 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 125
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 135
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 7 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 15
                probabilities[3] = 30
                probabilities[4] = 30
                probabilities[5] = 100
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 125
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 15
                probabilities[2] = 15
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 100
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 115
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 15
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 3 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 20
                probabilities[2] = 15
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 100
                probabilities[6] = 10
                probabilities[7] = 0
                probabilities[8] = 115
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 20
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 25
            probabilities[2] = 15
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 100
            probabilities[6] = 25
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[10] = 80
            probabilities[11] = 100
            probabilities[40] = 20
            probabilities[45] = 20
        else
            probabilities[10] = 80
            probabilities[40] = 20
            probabilities[45] = 20
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5401) == false then
        if ai:GetHpRate(TARGET_SELF) < 0.65 then
            probabilities[21] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60775) == false then
            probabilities[7] = 100
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 25
                probabilities[4] = 20
                probabilities[5] = 40
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 15
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 9 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 0
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 25
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 35
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 7 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 0
                probabilities[2] = 15
                probabilities[3] = 30
                probabilities[4] = 30
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 25
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 0
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 15
                probabilities[2] = 15
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 0
                probabilities[6] = 0
                probabilities[7] = 0
                probabilities[8] = 15
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 15
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif distanceEnemy > 3 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
                probabilities[1] = 20
                probabilities[2] = 15
                probabilities[3] = 20
                probabilities[4] = 20
                probabilities[5] = 0
                probabilities[6] = 10
                probabilities[7] = 0
                probabilities[8] = 15
                probabilities[9] = 0
                probabilities[10] = 0
                probabilities[11] = 0
                probabilities[12] = 0
                probabilities[13] = 20
            else
                probabilities[10] = 0
                probabilities[40] = 100
                probabilities[45] = 100
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 25
            probabilities[2] = 15
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 25
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 20
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[10] = 80
            probabilities[11] = 100
            probabilities[40] = 20
            probabilities[45] = 20
        else
            probabilities[10] = 80
            probabilities[40] = 20
            probabilities[45] = 20
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60776) == true then
        probabilities[40] = 100
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
        probabilities[2] = SetCoolTime(ai, goal, 3002, 15, probabilities[2], 1)
        probabilities[3] = SetCoolTime(ai, goal, 3004, 20, probabilities[3], 1)
        probabilities[4] = SetCoolTime(ai, goal, 3007, 15, probabilities[4], 1)
        probabilities[5] = SetCoolTime(ai, goal, 3005, 40, probabilities[5], 1)
        probabilities[5] = SetCoolTime(ai, goal, 3027, 40, probabilities[5], 1)
        probabilities[6] = SetCoolTime(ai, goal, 3011, 10, probabilities[6], 1)
        probabilities[7] = SetCoolTime(ai, goal, 3006, 35, probabilities[7], 1)
        probabilities[8] = SetCoolTime(ai, goal, 3003, 30, probabilities[8], 1)
        probabilities[9] = SetCoolTime(ai, goal, 3010, 20, probabilities[9], 1)
        probabilities[10] = SetCoolTime(ai, goal, 3008, 20, probabilities[10], 1)
        probabilities[11] = SetCoolTime(ai, goal, 3012, 20, probabilities[11], 1)
        probabilities[13] = SetCoolTime(ai, goal, 3023, 10, probabilities[13], 1)
        probabilities[20] = SetCoolTime(ai, goal, 3021, 10, probabilities[20], 1)
        probabilities[20] = SetCoolTime(ai, goal, 3020, 10, probabilities[20], 1)
        probabilities[45] = SetCoolTime(ai, goal, 6002, 15, probabilities[45], 1)
        probabilities[45] = SetCoolTime(ai, goal, 6003, 15, probabilities[45], 1)
    else
        probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
        probabilities[2] = SetCoolTime(ai, goal, 3002, 15, probabilities[2], 1)
        probabilities[3] = SetCoolTime(ai, goal, 3004, 20, probabilities[3], 1)
        probabilities[4] = SetCoolTime(ai, goal, 3007, 15, probabilities[4], 1)
        probabilities[5] = SetCoolTime(ai, goal, 3005, 30, probabilities[5], 1)
        probabilities[6] = SetCoolTime(ai, goal, 3011, 10, probabilities[6], 1)
        probabilities[7] = SetCoolTime(ai, goal, 3006, 20, probabilities[7], 1)
        probabilities[8] = SetCoolTime(ai, goal, 3003, 20, probabilities[8], 1)
        probabilities[9] = SetCoolTime(ai, goal, 3010, 20, probabilities[9], 1)
        probabilities[10] = SetCoolTime(ai, goal, 3008, 20, probabilities[10], 1)
        probabilities[11] = SetCoolTime(ai, goal, 3012, 20, probabilities[11], 1)
        probabilities[13] = SetCoolTime(ai, goal, 3023, 10, probabilities[13], 1)
        probabilities[20] = SetCoolTime(ai, goal, 3021, 10, probabilities[20], 1)
        probabilities[20] = SetCoolTime(ai, goal, 3020, 10, probabilities[20], 1)
        probabilities[45] = SetCoolTime(ai, goal, 6002, 15, probabilities[45], 1)
        probabilities[45] = SetCoolTime(ai, goal, 6003, 15, probabilities[45], 1)
    end
    acts[1] = REGIST_FUNC(ai, goal, Artorius772000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Artorius772000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Artorius772000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Artorius772000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Artorius772000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Artorius772000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Artorius772000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Artorius772000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Artorius772000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Artorius772000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Artorius772000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Artorius772000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Artorius772000_Act13)
    acts[20] = REGIST_FUNC(ai, goal, Artorius772000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Artorius772000_Act21)
    acts[40] = REGIST_FUNC(ai, goal, Artorius772000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Artorius772000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Artorius772000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, Artorius772000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, Artorius772000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, Artorius772000_Act45)
    local actAfter = REGIST_FUNC(ai, goal, Artorius772000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Artorius772000_Act01(ai, goal, paramTbl)
    local stopDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        runProbability = 0
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = stopDist + 2
    local turnTime = 0
    local turnFaceAngle = 0
    if random <= 10 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 60 then
        if random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3014, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
        end
    elseif random <= 40 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3014, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 80 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 4.5, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 70
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act02(ai, goal, paramTbl)
    local stopDist = 6.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        runProbability = 70
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local successDist = stopDist + 2
    local turnTime = 0
    local turnFaceAngle = 0
    if random <= 15 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 60 then
        if random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        elseif random <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 4.5, turnTime, turnFaceAngle, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
        end
    elseif random <= 40 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 80 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3014, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 4.5, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 70
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act03(ai, goal, paramTbl)
    local stopDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        runProbability = 70
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3004
    local successDist = stopDist + 2
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 70
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act04(ai, goal, paramTbl)
    local stopDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local successDist = stopDist + 2
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 70 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 4.5, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 70
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act05(ai, goal, paramTbl)
    local stopDist = 17.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3005
    local successDist = stopDist + 2
    local turnTime = 0
    local turnFaceAngle = 360
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    -- unused, no need to do anything at all
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if distanceEnemy < 7 then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3027, TARGET_ENE_0, successDist, turnTime, 360, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3027, TARGET_ENE_0, successDist, turnTime, 360, 0, 0)
        end
    elseif distanceEnemy < 7 then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 0
    else
        GetWellSpace_Odds = 100
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act06(ai, goal, paramTbl)
    local f8_local0 = 2 - ai:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 7.5
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    local animationId = 3011
    local successDist = f8_local0 + 2
    local turnTime = 0
    local turnFaceAngle = 360
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if fate <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 70
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act07(ai, goal, paramTbl)
    local f9_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 7.5
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3006
    local successDist = f9_local0 + 2
    local turnTime = 0
    local turnFaceAngle = 360
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act08(ai, goal, paramTbl)
    local stopDist = 15 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3003
    local successDist = stopDist + 2
    local turnTime = 0
    local turnFaceAngle = 360
    if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if random <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3026, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
            if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
                GetWellSpace_Odds = 30
            else
                GetWellSpace_Odds = 60
            end
        elseif random <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3026, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
            if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
                GetWellSpace_Odds = 40
            else
                GetWellSpace_Odds = 80
            end
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3026, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
            if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
                GetWellSpace_Odds = 50
            else
                GetWellSpace_Odds = 100
            end
        end
    elseif random <= 40 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
            GetWellSpace_Odds = 20
        else
            GetWellSpace_Odds = 60
        end
    elseif random <= 70 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
        if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
            GetWellSpace_Odds = 10
        else
            GetWellSpace_Odds = 80
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3009, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
        if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
            GetWellSpace_Odds = 50
        else
            GetWellSpace_Odds = 100
        end
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act09(ai, goal, paramTbl)
    local f11_local0 = 2 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 7.5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3010
    local successDist = f11_local0 + 2
    local turnTime = 0
    local turnFaceAngle = 360
    if random <= 40 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 20 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3006, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 60 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3004, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 80
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act10(ai, goal, paramTbl)
    local f12_local0 = 2 - ai:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 7.5
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3008
    local successDist = f12_local0 + 2
    local turnTime = 0
    local turnFaceAngle = 360
    if random <= 40 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 40 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3006, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 70 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3004, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 80
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act11(ai, goal, paramTbl)
    local f13_local0 = 4 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 7.5
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3012
    local successDist = f13_local0 + 2
    local turnTime = 0
    local turnFaceAngle = 360
    if random <= 90 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 70
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act12(ai, goal, paramTbl)
    local f14_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 7.5
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3013
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 4 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        else
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        end
    end
    if distanceEnemy < 8 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
        else
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
        end
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act13(ai, goal, paramTbl)
    local stopDist = 9 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 7.5
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        runProbability = 80
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3023
    local successDist = stopDist + 2
    local turnTime = 0
    local turnFaceAngle = 0
    if random <= 20 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 25 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3000, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3001, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 70 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3002, TARGET_ENE_0, 7.5, turnTime, turnFaceAngle, 0, 0)
    elseif random <= 85 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3011, TARGET_ENE_0, 4.5, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3003, TARGET_ENE_0, 17.5, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60751) == true then
        GetWellSpace_Odds = 50
    else
        GetWellSpace_Odds = 70
    end
    return GetWellSpace_Odds
end

function Artorius772000_Act20(ai, goal, paramTbl)
    local animationId = 3021
    local f16_local1 = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, Dist_None, turnTime, turnFaceAngle, 0, 0)
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 100) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3020, TARGET_ENE_0, Dist_None, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3021, TARGET_ENE_0, Dist_None, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act21(ai, goal, paramTbl)
    local f17_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 7.5
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 4 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        else
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        end
    end
    if distanceEnemy < 8 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
        else
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
        end
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act40(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 60776) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 7.5, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act41(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2.5, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 7.5, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act42(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act43(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act44(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_Act45(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2.5, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2.5, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if distanceEnemy < 2 then
        if random <= 75 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
            else
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
            end
        elseif random <= 100 then
            if random <= 0 then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.1), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 4, TARGET_ENE_0, false, -1)
            end
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3006, TARGET_ENE_0, Dist_None, 0, 0, 0, 0)
        end
    elseif distanceEnemy < 5 then
        if random <= 65 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
            else
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
            end
        elseif random <= 90 then
            if random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 8, TARGET_ENE_0, false, -1)
            end
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3006, TARGET_ENE_0, Dist_None, 0, 0, 0, 0)
        end
    elseif distanceEnemy < 10 then
        if random <= 25 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
            else
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
            end
        elseif random <= 80 then
            if random <= 70 then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 12, TARGET_ENE_0, false, -1)
            end
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3006, TARGET_ENE_0, Dist_None, 0, 0, 0, 0)
        end
    elseif random <= 0 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
        else
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
        end
    elseif random <= 80 then
        if random <= 100 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 12, TARGET_ENE_0, false, -1)
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3006, TARGET_ENE_0, Dist_None, 0, 0, 0, 0)
    end
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    -- unused, no need to do anything at all
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local f27_local4 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local random_3 = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false and random <= 35 then
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, upAngleThreshold, downAngleThreshold, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, upAngleThreshold, downAngleThreshold, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 40) then
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3032, TARGET_ENE_0, 999, 0, 0)
        Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 360, 180, 30) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3028, TARGET_ENE_1, 999, 0, 0)
            Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 360, 180, 30) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3028, TARGET_ENE_2, 999, 0, 0)
            Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
            return true
        -- NR6PF: checks for getting interrupted by bonus players
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_3, AI_DIR_TYPE_F, 360, 180, 30) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3028, TARGET_ENE_3, 999, 0, 0)
            Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_4, AI_DIR_TYPE_F, 360, 180, 30) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3028, TARGET_ENE_4, 999, 0, 0)
            Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_5, AI_DIR_TYPE_F, 360, 180, 30) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3028, TARGET_ENE_5, 999, 0, 0)
            Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 30) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3028, TARGET_ENE_0, 999, 0, 0)
            Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) and random <= 70 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 20) then
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3033, TARGET_ENE_0, 999, 0, 0)
        Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5030) and random <= 70 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 20) then
        goal:AddSubGoal(GOAL_COMMON_ComboFinal, 15, 3034, TARGET_ENE_0, 999, 0, 0)
        Artorius772000_ActAfter_AdjustSpace(ai, goal, paramTbl)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_Artorius772000_AfterAttackAct, "Artorius772000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Artorius772000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

