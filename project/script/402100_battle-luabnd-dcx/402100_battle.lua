RegisterTableGoal(GOAL_BigHorriblenessGrub402100_Battle, "BigHorriblenessGrub402100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BigHorriblenessGrub402100_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(1, 2)
    ai:SetNumber(5, 0)
    ai:SetNumber(3, 0)
    ai:SetNumber(4, 0)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3005)
    ai:EnableUnfavorableAttackCheck(0, 3006)
    ai:EnableUnfavorableAttackCheck(0, 3007)
    ai:EnableUnfavorableAttackCheck(0, 3008)
    ai:EnableUnfavorableAttackCheck(0, 3011)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3022)
    ai:EnableUnfavorableAttackCheck(0, 3023)
    ai:EnableUnfavorableAttackCheck(0, 3024)
    ai:EnableUnfavorableAttackCheck(0, 3028)
    ai:EnableUnfavorableAttackCheck(0, 3030)
    ai:EnableUnfavorableAttackCheck(0, 3031)
    ai:EnableUnfavorableAttackCheck(0, 3032)
    ai:EnableUnfavorableAttackCheck(0, 3033)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    ai:GetStringIndexedNumber("Handstand_Cnt")
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 10)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16653)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16656)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16657)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16659)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16665)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46425)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46420)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46421)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46411)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46422)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46423)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46424)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46426)
    ai:SetNumber(5, 0)
    ai:SetNumber(6, 0)
    ai:SetNumber(7, 0)
    ai:SetNumber(8, 0)
    ai:SetNumber(10, 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 46402) == true then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and distanceEnemy <= 3 then
                probabilities[4] = 45
                probabilities[14] = 10
                probabilities[17] = 35
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and distanceEnemy <= 3 then
                probabilities[3] = 45
                probabilities[13] = 10
                probabilities[17] = 35
            else
                probabilities[17] = 20
            end
        elseif distanceEnemy >= 18 then
            probabilities[16] = 30
        elseif distanceEnemy >= 15 then
            probabilities[1] = 10
            probabilities[5] = 10
            probabilities[7] = 30
            probabilities[16] = 15
        elseif distanceEnemy >= 10 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                probabilities[5] = 20
                probabilities[7] = 30
            else
                probabilities[1] = 20
                probabilities[2] = 25
                probabilities[5] = 10
                probabilities[7] = 30
                probabilities[20] = 10
            end
        elseif distanceEnemy >= 6 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                probabilities[2] = 10
                probabilities[5] = 20
                probabilities[7] = 30
                probabilities[13] = 18
                probabilities[14] = 12
            else
                probabilities[1] = 20
                probabilities[2] = 30
                probabilities[5] = 10
                probabilities[7] = 10
                probabilities[10] = 10
                probabilities[13] = 18
                probabilities[14] = 12
                probabilities[15] = 20
                probabilities[20] = 15
            end
        else
            probabilities[1] = 20
            probabilities[2] = 20
            probabilities[10] = 15
            probabilities[13] = 30
            probabilities[14] = 20
            probabilities[20] = 10
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 46403) == true then
        if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and distanceEnemy <= 3 then
                    probabilities[4] = 45
                    probabilities[11] = 20
                    probabilities[14] = 10
                    probabilities[17] = 35
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and distanceEnemy <= 3 then
                    probabilities[3] = 45
                    probabilities[11] = 20
                    probabilities[13] = 10
                    probabilities[17] = 35
                else
                    probabilities[11] = 80
                    probabilities[17] = 20
                end
            elseif distanceEnemy >= 18 then
                probabilities[16] = 30
            elseif distanceEnemy >= 15 then
                probabilities[1] = 10
                probabilities[5] = 10
                probabilities[7] = 30
                probabilities[16] = 15
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                    probabilities[5] = 20
                    probabilities[7] = 30
                else
                    probabilities[1] = 20
                    probabilities[2] = 25
                    probabilities[5] = 10
                    probabilities[7] = 30
                    probabilities[20] = 10
                end
            elseif distanceEnemy >= 6 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                    probabilities[2] = 10
                    probabilities[5] = 20
                    probabilities[7] = 30
                    probabilities[13] = 18
                    probabilities[14] = 12
                else
                    probabilities[1] = 20
                    probabilities[2] = 30
                    probabilities[5] = 10
                    probabilities[7] = 10
                    probabilities[10] = 10
                    probabilities[13] = 18
                    probabilities[14] = 12
                    probabilities[15] = 20
                    probabilities[20] = 15
                end
            else
                probabilities[1] = 20
                probabilities[2] = 20
                probabilities[11] = 30
                probabilities[10] = 15
                probabilities[13] = 30
                probabilities[14] = 20
                probabilities[20] = 10
            end
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and distanceEnemy <= 3 then
                probabilities[4] = 45
                probabilities[11] = 50
                probabilities[17] = 35
                probabilities[5] = 0
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and distanceEnemy <= 3 then
                probabilities[3] = 45
                probabilities[11] = 50
                probabilities[17] = 35
                probabilities[5] = 0
            else
                probabilities[11] = 80
                probabilities[17] = 20
                probabilities[5] = 0
            end
        elseif distanceEnemy >= 18 then
            probabilities[16] = 30
            probabilities[5] = 0
        elseif distanceEnemy >= 15 then
            probabilities[2] = 25
            probabilities[16] = 15
            probabilities[5] = 0
        elseif distanceEnemy >= 10 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                probabilities[2] = 25
                probabilities[11] = 40
                probabilities[10] = 40
                probabilities[5] = 0
                probabilities[45] = 10
            else
                probabilities[11] = 40
                probabilities[10] = 40
                probabilities[20] = 10
                probabilities[17] = 20
                probabilities[5] = 0
                probabilities[45] = 20
            end
        elseif distanceEnemy >= 6 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                probabilities[11] = 40
                probabilities[10] = 10
                probabilities[20] = 15
                probabilities[45] = 10
            else
                probabilities[11] = 40
                probabilities[10] = 10
                probabilities[20] = 15
                probabilities[17] = 20
                probabilities[5] = 0
                probabilities[45] = 20
            end
        else
            probabilities[11] = 40
            probabilities[10] = 30
            probabilities[20] = 20
            probabilities[15] = 10
            probabilities[5] = 0
            probabilities[45] = 20
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 46499) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 46481) == true then
            probabilities[43] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 46481) == false then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and distanceEnemy <= 3 then
                    probabilities[14] = 100
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and distanceEnemy <= 3 then
                    probabilities[13] = 100
                else
                    probabilities[14] = 50
                    probabilities[13] = 50
                end
            elseif distanceEnemy >= 18 then
                probabilities[14] = 50
                probabilities[13] = 50
            elseif distanceEnemy >= 15 then
                probabilities[1] = 20
                probabilities[5] = 30
                probabilities[7] = 40
                probabilities[14] = 5
                probabilities[13] = 5
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                    probabilities[2] = 20
                    probabilities[5] = 30
                    probabilities[7] = 30
                    probabilities[13] = 10
                    probabilities[14] = 10
                else
                    probabilities[2] = 40
                    probabilities[5] = 10
                    probabilities[7] = 30
                    probabilities[13] = 10
                    probabilities[14] = 10
                end
            elseif distanceEnemy >= 6 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                    probabilities[2] = 30
                    probabilities[5] = 20
                    probabilities[7] = 30
                    probabilities[13] = 10
                    probabilities[14] = 10
                else
                    probabilities[2] = 40
                    probabilities[5] = 30
                    probabilities[7] = 10
                    probabilities[13] = 12
                    probabilities[14] = 8
                end
            else
                probabilities[1] = 40
                probabilities[2] = 40
                probabilities[13] = 10
                probabilities[14] = 10
            end
        end
    elseif ai:GetHpRate(TARGET_SELF) >= 0.8 and ai:HasSpecialEffectId(TARGET_SELF, 46499) == false then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 1) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 360, 90, 1) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 360, 90, 1) then
            probabilities[3] = 40
            probabilities[4] = 40
            probabilities[11] = 15
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and distanceEnemy <= 3 then
                probabilities[4] = 70
                probabilities[12] = 0
                probabilities[17] = 20
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and distanceEnemy <= 3 then
                probabilities[3] = 70
                probabilities[12] = 0
                probabilities[17] = 20
            else
                probabilities[17] = 100
            end
        elseif distanceEnemy >= 18 then
            probabilities[12] = 0
            probabilities[16] = 70
            probabilities[41] = 30
        elseif distanceEnemy >= 15 then
            probabilities[1] = 10
            probabilities[5] = 10
            probabilities[7] = 10
            probabilities[12] = 0
            probabilities[16] = 30
            probabilities[41] = 40
        elseif distanceEnemy >= 10 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                probabilities[5] = 20
                probabilities[7] = 20
                probabilities[12] = 0
                probabilities[41] = 60
            else
                probabilities[1] = 10
                probabilities[2] = 20
                probabilities[5] = 15
                probabilities[7] = 30
                probabilities[12] = 0
                probabilities[15] = 25
            end
        elseif distanceEnemy >= 6 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                probabilities[2] = 10
                probabilities[7] = 10
                probabilities[11] = 20
                probabilities[12] = 0
                probabilities[20] = 30
            else
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[5] = 10
                probabilities[11] = 15
                probabilities[10] = 5
                probabilities[12] = 0
                probabilities[20] = 30
            end
        else
            probabilities[1] = 20
            probabilities[2] = 20
            probabilities[10] = 5
            probabilities[11] = 10
            probabilities[12] = 0
            probabilities[20] = 25
        end
    elseif ai:GetHpRate(TARGET_SELF) < 0.8 and ai:HasSpecialEffectId(TARGET_SELF, 46499) == false then
        if ai:HasSpecialEffectId(TARGET_SELF, 46495) == false and ai:HasSpecialEffectId(TARGET_SELF, 7790) == false and ai:HasSpecialEffectId(TARGET_SELF, 46403) == false then
            probabilities[39] = 200
        elseif ai:HasSpecialEffectId(TARGET_SELF, 46495) == true or ai:HasSpecialEffectId(TARGET_SELF, 7790) == true or ai:HasSpecialEffectId(TARGET_SELF, 46403) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 1) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_1, AI_DIR_TYPE_F, 360, 90, 1) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_2, AI_DIR_TYPE_F, 360, 90, 1) then
                probabilities[3] = 40
                probabilities[4] = 40
                probabilities[11] = 15
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and distanceEnemy <= 3 then
                    probabilities[4] = 60
                    probabilities[12] = 15
                    probabilities[17] = 25
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and distanceEnemy <= 3 then
                    probabilities[3] = 60
                    probabilities[12] = 15
                    probabilities[17] = 25
                else
                    probabilities[17] = 20
                end
            elseif distanceEnemy >= 18 then
                probabilities[16] = 70
                probabilities[41] = 30
            elseif distanceEnemy >= 15 then
                probabilities[1] = 10
                probabilities[5] = 10
                probabilities[7] = 10
                probabilities[16] = 30
                probabilities[41] = 40
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                    probabilities[5] = 20
                    probabilities[7] = 20
                    probabilities[12] = 999
                    probabilities[41] = 60
                else
                    probabilities[1] = 20
                    probabilities[2] = 20
                    probabilities[5] = 15
                    probabilities[7] = 10
                    probabilities[12] = 999
                    probabilities[15] = 35
                end
            elseif distanceEnemy >= 6 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) then
                    probabilities[2] = 10
                    probabilities[5] = 10
                    probabilities[7] = 20
                    probabilities[11] = 30
                    probabilities[20] = 30
                else
                    probabilities[2] = 20
                    probabilities[5] = 10
                    probabilities[7] = 10
                    probabilities[12] = 999
                    probabilities[11] = 20
                    probabilities[10] = 10
                    probabilities[20] = 20
                end
            else
                probabilities[1] = 20
                probabilities[2] = 10
                probabilities[10] = 10
                probabilities[11] = 20
                probabilities[12] = 999
                probabilities[20] = 20
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 46403) == true then
        probabilities[5] = SetCoolTime(ai, goal, 3005, 15, probabilities[5], 0)
        probabilities[7] = SetCoolTime(ai, goal, 3011, 15, probabilities[7], 1)
    end
    probabilities[10] = SetCoolTime(ai, goal, 3004, 15, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3009, 30, probabilities[11], 1)
    probabilities[12] = SetCoolTime(ai, goal, 3010, 35, probabilities[12], 1)
    if ai:HasSpecialEffectId(TARGET_SELF, 7790) then
        probabilities[11] = 0
        probabilities[12] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 46403) then
        probabilities[12] = 0
        probabilities[13] = 0
        probabilities[14] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 46494) then
        probabilities[12] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 46499) then
        probabilities[12] = 0
    end
    acts[1] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act01)
    acts[2] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act02)
    acts[3] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act03)
    acts[4] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act04)
    acts[5] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act05)
    acts[7] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act07)
    acts[8] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act08)
    acts[9] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act09)
    acts[10] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act10)
    acts[11] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act11)
    acts[12] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act12)
    acts[13] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act13)
    acts[14] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act14)
    acts[15] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act15)
    acts[16] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act16)
    acts[17] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act17)
    acts[20] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act20)
    acts[30] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act30)
    acts[39] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act39)
    acts[40] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act40)
    acts[41] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act41)
    acts[42] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act42)
    acts[43] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act43)
    acts[44] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act44)
    acts[45] = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_Act45)
    local actAfter = REGIST_FUNC(ai, goal, BigHorriblenessGrub402100_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function BigHorriblenessGrub402100_Act01(ai, goal, paramTbl)
    local stopDist = 6
    local canRunDist = 15
    local forceRunMinDist = 30
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local successDist = 6
    local turnTime = 2
    local turnFaceAngle = 90
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    if InsideRange(ai, goal, 135, 60, 0, 6) then
        actPerArr[3] = 50
    end
    if InsideRange(ai, goal, 135, 60, 0, 6) then
        actPerArr[4] = 50
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act02(ai, goal, paramTbl)
    local stopDist = 3
    local canRunDist = 15
    local forceRunMinDist = 30
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 5
    local animationId = 3006
    local successDist = 6
    local turnTime = 3
    local turnFaceAngle = 90
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 5
    local animationId = 3007
    local f5_local3 = 6
    local f5_local4 = 9
    local f5_local5 = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, goalLife, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
    if InsideRange(ai, goal, 135, 60, 0, 6) then
        actPerArr[3] = 50
    end
    if InsideRange(ai, goal, 135, 60, 0, 6) then
        actPerArr[4] = 50
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act04(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 5
    local animationId = 3008
    local f6_local3 = 6
    local f6_local4 = 9
    local f6_local5 = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, goalLife, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
    if InsideRange(ai, goal, 135, 60, 0, 6) then
        actPerArr[3] = 50
    end
    if InsideRange(ai, goal, 135, 60, 0, 6) then
        actPerArr[4] = 50
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act05(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 15
    local animationId = 3005
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 60
    ai:SetTimer(5, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act07(ai, goal, paramTbl)
    local successDist = 10
    local turnTime = 3
    local turnFaceAngle = 30
    local animationId = 3011
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, Life, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act08(ai, goal, paramTbl)
    ai:SetNumber(1, 1)
    local f9_local0 = 5
    local animationId = 3015
    local f9_local2 = 6
    local turnTime = 0
    local turnFaceAngle = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act10(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local animationId = 3004
    if distanceEnemy <= 3 then
        local goalLife = 5
        local frontPriority = -1
        local backPriority = 1
        local leftPriority = -1
        local rightPriority = -1
        local target = TARGET_ENE_0
        local distSpaceCheck = 3
        local turnTime = 0
        local alwaysSuccess = true
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    end
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, animationId, TARGET_ENE_0, DIST_None, 5, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act11(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3009
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act12(ai, goal, paramTbl)
    ai:SetNumber(5, 1)
    local f12_local0 = 5
    local animationId = 3015
    local f12_local2 = 6
    local turnTime = 0
    local turnFaceAngle = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_SetNumberRealtime, 4, 1)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act13(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = false
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act14(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = false
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 10
    local runDist = 12
    local guardProb = 0
    local random = ai:GetRandam_Int(1, 100)
    local guardStateId = -1
    if random <= guardProb then
        guardStateId = 9910
    end
    if stopDist <= distanceEnemy then
        Approach_Act(ai, goal, stopDist, runDist, guardProb, 3)
    end
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, stopDist, TARGET_ENE_0, true, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act16(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1.5, 3.5), TARGET_ENE_0, 7, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(3, 8))
    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1.5, 3.5), TARGET_ENE_0, 7, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(3, 8))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act17(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act20(ai, goal, paramTbl)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = 1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act30(ai, goal, paramTbl)
    ai:SetNumber(5, 1)
    local f19_local0 = 5
    local animationId = 20016
    local f19_local2 = 6
    local turnTime = 0
    local turnFaceAngle = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_SELF, 999, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act39(ai, goal, paramTbl)
    ai:SetNumber(5, 1)
    local f20_local0 = 5
    local animationId = 3015
    local f20_local2 = 6
    local turnTime = 0
    local turnFaceAngle = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_SetNumberRealtime, 4, 1)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act40(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = ai:GetRandam_Float(1, 2)
    local stopDist = ai:GetRandam_Float(4, 5)
    local guardStateId = -1
    if distanceEnemy >= 4 and distanceEnemy <= 8 then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, true, guardStateId)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act41(ai, goal, paramTbl)
    if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
    elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 220, 90, 999) then
        goal:AddSubGoal(GOAL_COMMON_TurnAround, 2, TARGET_ENE_0, AI_DIR_TYPE_F, ai:GetRandam_Int(45, 60), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act42(ai, goal, paramTbl)
    if doAdmirer == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act43(ai, goal, paramTbl)
    local f24_local0 = 5
    local animationId = 3025
    local f24_local2 = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act44(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 15
    local animationId = 3005
    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 2
    local turnFaceAngle = 60
    ai:SetTimer(5, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_1, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_Act45(ai, goal, paramTbl)
    if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BigHorriblenessGrub402100_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_BigHorriblenessGrub402100_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16653)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16656)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16657)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16659)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16665)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46422)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46425)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46426)
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 16663) then
        goal:ClearSubGoal()
        local goalLife = 5
        local frontPriority = -1
        local backPriority = 1
        local leftPriority = -1
        local rightPriority = -1
        local target = TARGET_ENE_0
        local distSpaceCheck = 3
        local turnTime = 0
        local alwaysSuccess = false
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
        return true
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 46402) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 16666) or ai:HasSpecialEffectId(TARGET_SELF, 16658) then
            if ai:HasSpecialEffectId(TARGET_SELF, 16666) then
                ai:SetNumber(10, 1)
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16658) then
                ai:SetNumber(10, 2)
            end
            local f30_local2 = 3
            local random_2 = ai:GetRandam_Int(1, 100)
            local f30_local4 = 999 - ai:GetMapHitRadius(TARGET_SELF)
            local f30_local5 = 0
            local f30_local6 = 0
            local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
            if f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 999) == false and ai:GetNumber(7) ~= 1 and random_2 > 50 then
                goal:ClearSubGoal()
                local random_3 = ai:GetRandam_Int(1, 100)
                local goalLife = 5
                local frontPriority = -1
                local backPriority = -1
                local leftPriority = 1
                local rightPriority = -1
                local target = TARGET_ENE_0
                local distSpaceCheck = 3
                local turnTime = 0
                local alwaysSuccess = false
                goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                ai:SetNumber(7, 1)
                local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                local random_4 = ai:GetRandam_Int(1, 100)
                select_Attack1 = 3031
                select_Attack2 = 3033
                select_Attack3 = 3000
                select_Attack4 = 3016
                selectFate_1 = 5
                selectFate_2 = 5
                selectFate_3 = 0
                selectFate_4 = 5
                warpDist_1 = 3
                warpDist_2 = 7
                warpDist_3 = 3
                warpDist_4 = 3
                local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                local f30_local23 = 0
                local f30_local24 = 0
                local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_1 = 0
                end
                if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_2 = 0
                end
                if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_3 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_3 = 0
                end
                if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_4 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_4 = 0
                end
                local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                local directionFromTarget = AI_DIR_TYPE_ToL
                local distanceFromTarget = 0
                local animationId = fall_Attack
                local turnTarget = TARGET_ENE_0
                if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                    ai:SetNumber(6, 1)
                elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_1
                    animationId = select_Attack1
                    turnTarget = TARGET_ENE_0
                elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_2
                    animationId = select_Attack2
                    turnTarget = TARGET_ENE_0
                elseif selectFate_3 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_3
                    animationId = select_Attack3
                    turnTarget = TARGET_ENE_0
                elseif selectFate_4 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_4
                    animationId = select_Attack4
                    turnTarget = TARGET_ENE_0
                end
                if ai:GetNumber(6) ~= 0 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                    if animationId == select_Attack4 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    end
                end
            elseif f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == false and ai:GetNumber(7) ~= 1 and random_2 > 50 then
                goal:ClearSubGoal()
                local random_3 = ai:GetRandam_Int(1, 100)
                local goalLife = 5
                local frontPriority = -1
                local backPriority = -1
                local leftPriority = -1
                local rightPriority = 1
                local target = TARGET_ENE_0
                local distSpaceCheck = 3
                local turnTime = 0
                local alwaysSuccess = false
                goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                ai:SetNumber(7, 1)
                local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                local random_4 = ai:GetRandam_Int(1, 100)
                select_Attack1 = 3030
                select_Attack2 = 3035
                select_Attack3 = 3000
                select_Attack4 = 3016
                selectFate_1 = 5
                selectFate_2 = 0
                selectFate_3 = 0
                selectFate_4 = 5
                warpDist_1 = 3
                warpDist_2 = 7
                warpDist_3 = 3
                warpDist_4 = 3
                local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                local f30_local23 = 0
                local f30_local24 = 0
                local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_1 = 0
                end
                if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_2 = 0
                end
                if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_3 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_3 = 0
                end
                if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_4 + lineWidth_2, lineWidth_2, 0) then
                    selectFate_4 = 0
                end
                local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                local directionFromTarget = AI_DIR_TYPE_ToR
                local distanceFromTarget = 0
                local animationId = fall_Attack
                local turnTarget = TARGET_ENE_0
                if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                    ai:SetNumber(6, 1)
                elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_1
                    animationId = select_Attack1
                    turnTarget = TARGET_ENE_0
                elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_2
                    animationId = select_Attack2
                    turnTarget = TARGET_ENE_0
                elseif selectFate_3 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_3
                    animationId = select_Attack3
                    turnTarget = TARGET_ENE_0
                elseif selectFate_4 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_4
                    animationId = select_Attack4
                    turnTarget = TARGET_ENE_0
                end
                if ai:GetNumber(6) ~= 0 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                    if animationId == 3016 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    end
                end
            elseif ai:GetNumber(10) == 1 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    local random_3 = ai:GetRandam_Int(1, 100)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                    if distanceEnemy_3 <= 5 then
                        if random_3 > 65 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_3 > 40 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_3 > 25 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_3 <= 9 then
                        if random_3 > 30 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_3 <= 13 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:GetNumber(10) == 2 then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                local random_3 = ai:GetRandam_Int(1, 100)
                local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    if distanceEnemy_3 <= 5 then
                        if random_3 > 70 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_3 > 40 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_3 > 30 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_3 > 15 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_3 <= 9 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif distanceEnemy_3 <= 13 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16655) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                if distanceEnemy_2 < 5 then
                    if random_2 > 70 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 40 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 9 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16657) then
            local random_2 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            if distanceEnemy_2 <= 5 then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16659) then
            local random_2 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 9 then
                if random_2 > 60 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16665) then
            local random_2 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 6 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16653) then
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                if distanceEnemy_2 < 5 then
                    if random_2 > 60 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 45 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 30 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 20 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 8 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif distanceEnemy_2 <= 3 and random_2 > 80 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16663) then
            goal:ClearSubGoal()
            local goalLife = 5
            local frontPriority = -1
            local backPriority = 1
            local leftPriority = -1
            local rightPriority = -1
            local target = TARGET_ENE_0
            local distSpaceCheck = 3
            local turnTime = 0
            local alwaysSuccess = false
            goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16662) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 < 5 then
                if random_2 > 40 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif random_2 > 15 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16656) then
            goal:ClearSubGoal()
            local goalLife = 5
            local animationId = 3011
            local successDist = 6
            local turnTime = 2
            local turnFaceAngle = 120
            local random_2 = ai:GetRandam_Int(1, 100)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            return true
        end
        if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and (ai:GetSpecialEffectActivateInterruptId(5030) or ai:GetSpecialEffectActivateInterruptId(5031) or ai:GetSpecialEffectActivateInterruptId(5032)) then
            goal:ClearSubGoal()
            if ai:GetSpecialEffectActivateInterruptId(5030) then
                if Attack_FromAbove == true and random > 50 then
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    select_Attack1 = 3017
                    selectFate_1F = 70
                    selectFate_1B = 10
                    selectFate_1L = 10
                    selectFate_1R = 10
                    selectFate_2F = 0
                    selectFate_2B = 0
                    selectFate_2L = 0
                    selectFate_2R = 0
                    warpDist_1F = 2.5
                    warpDist_1B = 2.5
                    warpDist_1L = 2.5
                    warpDist_1R = 2.5
                    warpDist_2F = 0
                    warpDist_2B = 0
                    warpDist_2L = 0
                    warpDist_2R = 0
                    same_Angle = 0
                    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                    local f30_local5 = 0
                    local f30_local6 = 0
                    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                    local f30_local10 = 3027
                    if warpDist_1F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_1F + lineWidth, lineWidth, 0) then
                        selectFate_1F = 0
                    end
                    if warpDist_1B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_1B + lineWidth, lineWidth, 0) then
                        selectFate_1B = 0
                    end
                    if warpDist_1L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_1L + lineWidth, lineWidth, 0) then
                        selectFate_1L = 0
                    end
                    if warpDist_1R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_1R + lineWidth, lineWidth, 0) then
                        selectFate_1R = 0
                    end
                    if warpDist_2F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_2F + lineWidth, lineWidth, 0) then
                        selectFate_2F = 0
                    end
                    if warpDist_2B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_2B + lineWidth, lineWidth, 0) then
                        selectFate_2B = 0
                    end
                    if warpDist_2L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_2L + lineWidth, lineWidth, 0) then
                        selectFate_2L = 0
                    end
                    if warpDist_2R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_2R + lineWidth, lineWidth, 0) then
                        selectFate_2B = 0
                    end
                    local random_3 = ai:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
                    local directionFromTarget = AI_DIR_TYPE_F
                    local distanceFromTarget = 0
                    local f30_local14 = f30_local10
                    local turnTarget = TARGET_ENE_0
                    if selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R == 0 then
                        ai:SetNumber(6, 1)
                        directionFromTarget = AI_DIR_TYPE_F
                        distanceFromTarget = 0
                        f30_local14 = 3027
                    elseif selectFate_1F ~= 0 and random_3 <= selectFate_1F then
                        directionFromTarget = AI_DIR_TYPE_F
                        distanceFromTarget = warpDist_1F
                        f30_local14 = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1B ~= 0 and random_3 <= selectFate_1F + selectFate_1B then
                        directionFromTarget = AI_DIR_TYPE_B
                        distanceFromTarget = warpDist_1B
                        f30_local14 = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1L ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L then
                        directionFromTarget = AI_DIR_TYPE_L
                        distanceFromTarget = warpDist_1L
                        f30_local14 = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1R ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
                        directionFromTarget = AI_DIR_TYPE_R
                        distanceFromTarget = warpDist_1R
                        f30_local14 = select_Attack1
                        turnTarget = TARGET_ENE_0
                    end
                    if ai:GetNumber(6) ~= 0 then
                        goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_F, 2.5, TARGET_ENE_0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                    end
                else
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    select_Attack1 = 3013
                    selectFate_1F = 0
                    selectFate_1B = 25
                    selectFate_1L = 25
                    selectFate_1R = 25
                    selectFate_2F = 0
                    selectFate_2B = 0
                    selectFate_2L = 0
                    selectFate_2R = 0
                    warpDist_1F = 6
                    warpDist_1B = 6
                    warpDist_1L = 6
                    warpDist_1R = 6
                    warpDist_2F = 0
                    warpDist_2B = 0
                    warpDist_2L = 0
                    warpDist_2R = 0
                    same_Angle = 0
                    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                    local f30_local5 = 0
                    local f30_local6 = 0
                    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                    local f30_local10 = 3027
                    if warpDist_1F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_1F + lineWidth, lineWidth, 0) then
                        selectFate_1F = 0
                    end
                    if warpDist_1B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_1B + lineWidth, lineWidth, 0) then
                        selectFate_1B = 0
                    end
                    if warpDist_1L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_1L + lineWidth, lineWidth, 0) then
                        selectFate_1L = 0
                    end
                    if warpDist_1R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_1R + lineWidth, lineWidth, 0) then
                        selectFate_1R = 0
                    end
                    if warpDist_2F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_2F + lineWidth, lineWidth, 0) then
                        selectFate_2F = 0
                    end
                    if warpDist_2B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_2B + lineWidth, lineWidth, 0) then
                        selectFate_2B = 0
                    end
                    if warpDist_2L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_2L + lineWidth, lineWidth, 0) then
                        selectFate_2L = 0
                    end
                    if warpDist_2R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_2R + lineWidth, lineWidth, 0) then
                        selectFate_2B = 0
                    end
                    local random_3 = ai:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
                    local directionFromTarget = AI_DIR_TYPE_F
                    local distanceFromTarget = 0
                    local animationId = f30_local10
                    local turnTarget = TARGET_ENE_0
                    if selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R == 0 then
                        ai:SetNumber(6, 1)
                        directionFromTarget = AI_DIR_TYPE_F
                        distanceFromTarget = 0
                        animationId = 3027
                    elseif selectFate_1F ~= 0 and random_3 <= selectFate_1F then
                        directionFromTarget = AI_DIR_TYPE_F
                        distanceFromTarget = warpDist_1F
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1B ~= 0 and random_3 <= selectFate_1F + selectFate_1B then
                        directionFromTarget = AI_DIR_TYPE_B
                        distanceFromTarget = warpDist_1B
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1L ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L then
                        directionFromTarget = AI_DIR_TYPE_L
                        distanceFromTarget = warpDist_1L
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1R ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
                        directionFromTarget = AI_DIR_TYPE_R
                        distanceFromTarget = warpDist_1R
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    end
                    if ai:GetNumber(6) ~= 0 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                    end
                end
            elseif ai:GetSpecialEffectActivateInterruptId(5031) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                select_Attack1 = 3031
                select_Attack2 = 3033
                select_Attack3 = 3000
                select_Attack4 = 3016
                selectFate_1 = 5
                selectFate_2 = 5
                selectFate_3 = 0
                selectFate_4 = 5
                warpDist_1 = 3
                warpDist_2 = 7
                warpDist_3 = 3
                warpDist_4 = 3
                local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                local f30_local5 = 0
                local f30_local6 = 0
                local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + lineWidth, lineWidth, 0) then
                    selectFate_1 = 0
                end
                if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + lineWidth, lineWidth, 0) then
                    selectFate_2 = 0
                end
                if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_3 + lineWidth, lineWidth, 0) then
                    selectFate_3 = 0
                end
                if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_4 + lineWidth, lineWidth, 0) then
                    selectFate_4 = 0
                end
                local random_3 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                local directionFromTarget = AI_DIR_TYPE_ToL
                local distanceFromTarget = 0
                local animationId = fall_Attack
                local turnTarget = TARGET_ENE_0
                if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                    ai:SetNumber(6, 1)
                elseif selectFate_1 ~= 0 and random_3 <= selectFate_1 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_1
                    animationId = select_Attack1
                    turnTarget = TARGET_ENE_0
                elseif selectFate_2 ~= 0 and random_3 <= selectFate_1 + selectFate_2 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_2
                    animationId = select_Attack2
                    turnTarget = TARGET_ENE_0
                elseif selectFate_3 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_3
                    animationId = select_Attack3
                    turnTarget = TARGET_ENE_0
                elseif selectFate_4 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                    directionFromTarget = AI_DIR_TYPE_ToBL
                    distanceFromTarget = warpDist_4
                    animationId = select_Attack4
                    turnTarget = TARGET_ENE_0
                end
                if ai:GetNumber(6) ~= 0 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, 0, 0)
                end
            elseif ai:GetSpecialEffectActivateInterruptId(5032) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                select_Attack1 = 3030
                select_Attack2 = 3035
                select_Attack3 = 3000
                select_Attack4 = 3016
                selectFate_1 = 5
                selectFate_2 = 0
                selectFate_3 = 0
                selectFate_4 = 5
                warpDist_1 = 3
                warpDist_2 = 5
                warpDist_3 = 3
                warpDist_4 = 3
                local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                local f30_local5 = 0
                local f30_local6 = 0
                local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + lineWidth, lineWidth, 0) then
                    selectFate_1 = 0
                end
                if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + lineWidth, lineWidth, 0) then
                    selectFate_2 = 0
                end
                if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_3 + lineWidth, lineWidth, 0) then
                    selectFate_3 = 0
                end
                if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_4 + lineWidth, lineWidth, 0) then
                    selectFate_4 = 0
                end
                local random_3 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                local directionFromTarget = AI_DIR_TYPE_ToR
                local distanceFromTarget = 0
                local animationId = fall_Attack
                local turnTarget = TARGET_ENE_0
                if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                    ai:SetNumber(6, 1)
                elseif selectFate_1 ~= 0 and random_3 <= selectFate_1 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_1
                    animationId = select_Attack1
                    turnTarget = TARGET_ENE_0
                elseif selectFate_2 ~= 0 and random_3 <= selectFate_1 + selectFate_2 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_2
                    animationId = select_Attack2
                    turnTarget = TARGET_ENE_0
                elseif selectFate_3 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_3
                    animationId = select_Attack3
                    turnTarget = TARGET_ENE_0
                elseif selectFate_4 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                    directionFromTarget = AI_DIR_TYPE_ToBR
                    distanceFromTarget = warpDist_4
                    animationId = select_Attack4
                    turnTarget = TARGET_ENE_0
                end
                if ai:GetNumber(6) ~= 0 then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                else
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, 0, 0)
                end
            end
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 46403) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 16666) or ai:HasSpecialEffectId(TARGET_SELF, 16658) then
            if ai:HasSpecialEffectId(TARGET_SELF, 16666) then
                ai:SetNumber(10, 1)
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16658) then
                ai:SetNumber(10, 2)
            end
            if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                if ai:GetNumber(10) == 1 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                        local random_2 = ai:GetRandam_Int(1, 100)
                        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                        if distanceEnemy_2 <= 5 then
                            if random_2 > 65 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_2 > 40 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_2 > 25 then
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_2 <= 9 then
                            if random_2 > 30 then
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_2 <= 13 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:GetNumber(10) == 2 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                        if distanceEnemy_2 <= 5 then
                            if random_2 > 70 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_2 > 40 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_2 > 30 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_2 > 15 then
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_2 <= 9 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif distanceEnemy_2 <= 13 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                end
            else
                goal:ClearSubGoal()
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16655) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    if distanceEnemy_2 < 5 then
                        if random_2 > 70 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 40 and ai:HasSpecialEffectId(TARGET_SELF, 46431) == false then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 9 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            else
                goal:ClearSubGoal()
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16657) then
            local random_2 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                if distanceEnemy_2 <= 5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16659) then
            local random_2 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 9 then
                    if random_2 > 60 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            else
                goal:ClearSubGoal()
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16665) then
            local random_2 = ai:GetRandam_Int(1, 100)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16653) then
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    if distanceEnemy_2 < 5 then
                        if random_2 > 60 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 45 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 30 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 20 and ai:HasSpecialEffectId(TARGET_SELF, 46431) == false then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 8 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 <= 3 and random_2 > 80 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            else
                goal:ClearSubGoal()
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16663) then
            goal:ClearSubGoal()
            local goalLife = 5
            local frontPriority = -1
            local backPriority = 1
            local leftPriority = -1
            local rightPriority = -1
            local target = TARGET_ENE_0
            local distSpaceCheck = 3
            local turnTime = 0
            local alwaysSuccess = false
            goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 16662) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
            if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 < 5 then
                    if random_2 > 40 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 15 and ai:HasSpecialEffectId(TARGET_SELF, 46431) == false then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            else
                goal:ClearSubGoal()
            end
        end
    else
        if ai:HasSpecialEffectId(TARGET_SELF, 46498) == true and ai:HasSpecialEffectId(TARGET_SELF, 46499) == false or ai:HasSpecialEffectId(TARGET_SELF, 7790) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 16666) or ai:HasSpecialEffectId(TARGET_SELF, 16658) then
                if ai:HasSpecialEffectId(TARGET_SELF, 16666) then
                    ai:SetNumber(10, 1)
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 16658) then
                    ai:SetNumber(10, 2)
                end
                local f30_local2 = 3
                local random_2 = ai:GetRandam_Int(1, 100)
                local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                local f30_local5 = 0
                local f30_local6 = 0
                local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 999) == false and ai:GetNumber(7) ~= 1 and random_2 > 50 then
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        goal:ClearSubGoal()
                        local random_3 = ai:GetRandam_Int(1, 100)
                        local goalLife = 5
                        local frontPriority = -1
                        local backPriority = -1
                        local leftPriority = 1
                        local rightPriority = -1
                        local target = TARGET_ENE_0
                        local distSpaceCheck = 3
                        local turnTime = 0
                        local alwaysSuccess = false
                        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                        ai:SetNumber(7, 1)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        local random_4 = ai:GetRandam_Int(1, 100)
                        select_Attack1 = 3031
                        select_Attack2 = 3033
                        select_Attack3 = 3000
                        select_Attack4 = 3016
                        selectFate_1 = 5
                        selectFate_2 = 5
                        selectFate_3 = 0
                        selectFate_4 = 5
                        warpDist_1 = 3
                        warpDist_2 = 7
                        warpDist_3 = 3
                        warpDist_4 = 3
                        local successDist_2 = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local23 = 0
                        local f30_local24 = 0
                        local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                        local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                        if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_1 = 0
                        end
                        if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_2 = 0
                        end
                        if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_3 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_3 = 0
                        end
                        if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_4 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_4 = 0
                        end
                        local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                        local directionFromTarget = AI_DIR_TYPE_ToL
                        local distanceFromTarget = 0
                        local animationId = fall_Attack
                        local turnTarget = TARGET_ENE_0
                        if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                            ai:SetNumber(6, 1)
                        elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_1
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_2
                            animationId = select_Attack2
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_3 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_3
                            animationId = select_Attack3
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_4 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_4
                            animationId = select_Attack4
                            turnTarget = TARGET_ENE_0
                        end
                        if ai:GetNumber(6) ~= 0 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist_2, 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                            if animationId == select_Attack4 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            end
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                        return true
                    end
                elseif f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == false and ai:GetNumber(7) ~= 1 and random_2 > 50 then
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        goal:ClearSubGoal()
                        local random_3 = ai:GetRandam_Int(1, 100)
                        local goalLife = 5
                        local frontPriority = -1
                        local backPriority = -1
                        local leftPriority = -1
                        local rightPriority = 1
                        local target = TARGET_ENE_0
                        local distSpaceCheck = 3
                        local turnTime = 0
                        local alwaysSuccess = false
                        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                        ai:SetNumber(7, 1)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        local random_4 = ai:GetRandam_Int(1, 100)
                        select_Attack1 = 3030
                        select_Attack2 = 3033
                        select_Attack3 = 3000
                        select_Attack4 = 3016
                        selectFate_1 = 5
                        selectFate_2 = 0
                        selectFate_3 = 0
                        selectFate_4 = 5
                        warpDist_1 = 3
                        warpDist_2 = 7
                        warpDist_3 = 3
                        warpDist_4 = 3
                        local successDist_2 = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local23 = 0
                        local f30_local24 = 0
                        local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                        local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                        if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_1 = 0
                        end
                        if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_2 = 0
                        end
                        if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_3 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_3 = 0
                        end
                        if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_4 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_4 = 0
                        end
                        local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                        local directionFromTarget = AI_DIR_TYPE_ToR
                        local distanceFromTarget = 0
                        local animationId = fall_Attack
                        local turnTarget = TARGET_ENE_0
                        if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                            ai:SetNumber(6, 1)
                        elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_1
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_2
                            animationId = select_Attack2
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_3 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_3
                            animationId = select_Attack3
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_4 ~= 0 and random_5 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_4
                            animationId = select_Attack4
                            turnTarget = TARGET_ENE_0
                        end
                        if ai:GetNumber(6) ~= 0 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist_2, 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                            if animationId == 3016 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            end
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:GetNumber(10) == 1 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                        local random_3 = ai:GetRandam_Int(1, 100)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                        if distanceEnemy_3 <= 5 then
                            if random_3 > 65 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_3 > 40 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_3 <= 9 then
                            if random_3 > 30 then
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_3 <= 13 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:GetNumber(10) == 2 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                    local random_3 = ai:GetRandam_Int(1, 100)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                        if distanceEnemy_3 <= 5 then
                            if random_3 > 70 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_3 > 40 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_3 > 30 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_3 <= 9 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif distanceEnemy_3 <= 13 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16655) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    if distanceEnemy_2 < 5 then
                        if random_2 > 70 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 9 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16657) then
                local random_2 = ai:GetRandam_Int(1, 100)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if distanceEnemy_2 <= 5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16659) then
                local random_2 = ai:GetRandam_Int(1, 100)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 9 then
                    if random_2 > 60 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16665) then
                local random_2 = ai:GetRandam_Int(1, 100)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16653) then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    if distanceEnemy_2 < 5 then
                        if random_2 > 60 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 45 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 30 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 8 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 <= 3 and random_2 > 80 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16662) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 < 5 and random_2 > 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16656) then
                goal:ClearSubGoal()
                local goalLife = 5
                local animationId = 3011
                local successDist = 6
                local turnTime = 2
                local turnFaceAngle = 120
                local random_2 = ai:GetRandam_Int(1, 100)
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
                return true
            end
            if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(46425) then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        local f30_local2 = 3
                        local random_2 = ai:GetRandam_Int(1, 100)
                        local f30_local4 = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local5 = 0
                        local f30_local6 = 0
                        local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                        local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                        if f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 999) == false then
                            goal:ClearSubGoal()
                            local random_3 = ai:GetRandam_Int(1, 100)
                            local goalLife = 5
                            local frontPriority = -1
                            local backPriority = -1
                            local leftPriority = 1
                            local rightPriority = -1
                            local target = TARGET_ENE_0
                            local distSpaceCheck = 3
                            local turnTime = 0
                            local alwaysSuccess = false
                            goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                            local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                            local random_4 = ai:GetRandam_Int(1, 100)
                            select_Attack1 = 3031
                            select_Attack2 = 3033
                            selectFate_1 = 5
                            selectFate_2 = 5
                            warpDist_1 = 3
                            warpDist_2 = 7
                            local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                            local f30_local23 = 0
                            local f30_local24 = 0
                            local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                            local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                            local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                            if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                                selectFate_1 = 0
                            end
                            if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                                selectFate_2 = 0
                            end
                            local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2)
                            local directionFromTarget = AI_DIR_TYPE_ToL
                            local distanceFromTarget = 0
                            local animationId = fall_Attack
                            local turnTarget = TARGET_ENE_0
                            if selectFate_1 + selectFate_2 == 0 then
                                ai:SetNumber(6, 1)
                            elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                                directionFromTarget = AI_DIR_TYPE_ToBL
                                distanceFromTarget = warpDist_1
                                animationId = select_Attack1
                                turnTarget = TARGET_ENE_0
                            elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                                directionFromTarget = AI_DIR_TYPE_ToBL
                                distanceFromTarget = warpDist_2
                                animationId = select_Attack2
                                turnTarget = TARGET_ENE_0
                            end
                            if ai:GetNumber(6) ~= 0 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                            else
                                goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                                if animationId == select_Attack4 then
                                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                                end
                            end
                        elseif f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == false then
                            goal:ClearSubGoal()
                            local random_3 = ai:GetRandam_Int(1, 100)
                            local goalLife = 5
                            local frontPriority = -1
                            local backPriority = -1
                            local leftPriority = -1
                            local rightPriority = 1
                            local target = TARGET_ENE_0
                            local distSpaceCheck = 3
                            local turnTime = 0
                            local alwaysSuccess = false
                            goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                            local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                            local random_4 = ai:GetRandam_Int(1, 100)
                            select_Attack1 = 3030
                            select_Attack2 = 3033
                            selectFate_1 = 5
                            selectFate_2 = 5
                            warpDist_1 = 3
                            warpDist_2 = 7
                            local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                            local f30_local23 = 0
                            local f30_local24 = 0
                            local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                            local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                            local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                            if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                                selectFate_1 = 0
                            end
                            if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                                selectFate_2 = 0
                            end
                            local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2)
                            local directionFromTarget = AI_DIR_TYPE_ToR
                            local distanceFromTarget = 0
                            local animationId = fall_Attack
                            local turnTarget = TARGET_ENE_0
                            if selectFate_1 + selectFate_2 == 0 then
                                ai:SetNumber(6, 1)
                            elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                                directionFromTarget = AI_DIR_TYPE_ToBR
                                distanceFromTarget = warpDist_1
                                animationId = select_Attack1
                                turnTarget = TARGET_ENE_0
                            elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                                directionFromTarget = AI_DIR_TYPE_ToBR
                                distanceFromTarget = warpDist_2
                                animationId = select_Attack2
                                turnTarget = TARGET_ENE_0
                            end
                            if ai:GetNumber(6) ~= 0 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                            else
                                goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                                if animationId == 3016 then
                                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                                end
                            end
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy <= 13 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                elseif distanceEnemy <= 6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3000, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46499) == true and ai:HasSpecialEffectId(TARGET_SELF, 46498) == false then
            if ai:HasSpecialEffectId(TARGET_SELF, 16666) or ai:HasSpecialEffectId(TARGET_SELF, 16658) then
                if ai:HasSpecialEffectId(TARGET_SELF, 16666) then
                    ai:SetNumber(10, 1)
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 16658) then
                    ai:SetNumber(10, 2)
                end
                local f30_local2 = 3
                local random_2 = ai:GetRandam_Int(1, 100)
                local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                local f30_local5 = 0
                local f30_local6 = 0
                local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 999) == false and ai:GetNumber(7) ~= 1 then
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        goal:ClearSubGoal()
                        local random_3 = ai:GetRandam_Int(1, 100)
                        local goalLife = 5
                        local frontPriority = -1
                        local backPriority = -1
                        local leftPriority = 1
                        local rightPriority = -1
                        local target = TARGET_ENE_0
                        local distSpaceCheck = 3
                        local turnTime = 0
                        local alwaysSuccess = false
                        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                        ai:SetNumber(7, 1)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        local random_4 = ai:GetRandam_Int(1, 100)
                        select_Attack1 = 3031
                        select_Attack2 = 3033
                        selectFate_1 = 5
                        selectFate_2 = 5
                        warpDist_1 = 3
                        warpDist_2 = 7
                        local successDist_2 = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local23 = 0
                        local f30_local24 = 0
                        local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                        local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                        if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_1 = 0
                        end
                        if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_2 = 0
                        end
                        local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2)
                        local directionFromTarget = AI_DIR_TYPE_ToL
                        local distanceFromTarget = 0
                        local animationId = fall_Attack
                        local turnTarget = TARGET_ENE_0
                        if selectFate_1 + selectFate_2 == 0 then
                            ai:SetNumber(6, 1)
                        elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_1
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_2
                            animationId = select_Attack2
                            turnTarget = TARGET_ENE_0
                        end
                        if ai:GetNumber(6) ~= 0 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist_2, 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                            if animationId == select_Attack4 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            end
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                        return true
                    end
                elseif f30_local2 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, f30_local2 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == false and ai:GetNumber(7) ~= 1 then
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        goal:ClearSubGoal()
                        local random_3 = ai:GetRandam_Int(1, 100)
                        local goalLife = 5
                        local frontPriority = -1
                        local backPriority = -1
                        local leftPriority = -1
                        local rightPriority = 1
                        local target = TARGET_ENE_0
                        local distSpaceCheck = 3
                        local turnTime = 0
                        local alwaysSuccess = false
                        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                        ai:SetNumber(7, 1)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        local random_4 = ai:GetRandam_Int(1, 100)
                        select_Attack1 = 3030
                        select_Attack2 = 3033
                        selectFate_1 = 5
                        selectFate_2 = 5
                        warpDist_1 = 3
                        warpDist_2 = 7
                        local successDist_2 = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local23 = 0
                        local f30_local24 = 0
                        local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                        local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                        if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_1 = 0
                        end
                        if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_2 = 0
                        end
                        local random_5 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2)
                        local directionFromTarget = AI_DIR_TYPE_ToR
                        local distanceFromTarget = 0
                        local animationId = fall_Attack
                        local turnTarget = TARGET_ENE_0
                        if selectFate_1 + selectFate_2 == 0 then
                            ai:SetNumber(6, 1)
                        elseif selectFate_1 ~= 0 and random_5 <= selectFate_1 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_1
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_2 ~= 0 and random_5 <= selectFate_1 + selectFate_2 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_2
                            animationId = select_Attack2
                            turnTarget = TARGET_ENE_0
                        end
                        if ai:GetNumber(6) ~= 0 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist_2, 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                            if animationId == 3016 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                            end
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:GetNumber(10) == 1 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                        local random_3 = ai:GetRandam_Int(1, 100)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                        if distanceEnemy_3 <= 5 then
                            if random_3 > 65 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_3 <= 9 then
                            if random_3 > 30 then
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_3 <= 13 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:GetNumber(10) == 2 then
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                    local random_3 = ai:GetRandam_Int(1, 100)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                        if distanceEnemy_3 <= 5 then
                            if random_3 > 70 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_3 > 40 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            elseif random_3 > 30 then
                                goal:ClearSubGoal()
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            else
                                goal:ClearSubGoal()
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                                return true
                            end
                        elseif distanceEnemy_3 <= 9 then
                            goal:ClearSubGoal()
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif distanceEnemy_3 <= 13 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16657) then
                local random_2 = ai:GetRandam_Int(1, 100)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if distanceEnemy_2 <= 5 then
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16655) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    if distanceEnemy_2 < 5 then
                        if random_2 > 70 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 9 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16659) then
                local random_2 = ai:GetRandam_Int(1, 100)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 9 then
                    if random_2 > 60 then
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16665) then
                local random_2 = ai:GetRandam_Int(1, 100)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 <= 6 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16653) then
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    if distanceEnemy_2 < 5 then
                        if random_2 > 60 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 45 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        elseif random_2 > 30 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 8 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 <= 3 and random_2 > 80 then
                    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16662) == true and ai:HasSpecialEffectId(TARGET_SELF, 46424) == false then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 < 5 and random_2 > 50 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 46424) == true and ai:HasSpecialEffectId(TARGET_SELF, 16662) == true then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                    if distanceEnemy_2 < 7 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif distanceEnemy_2 < 15 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and (ai:GetSpecialEffectActivateInterruptId(46420) or ai:GetSpecialEffectActivateInterruptId(46421) or ai:GetSpecialEffectActivateInterruptId(46411)) then
                if ai:GetSpecialEffectActivateInterruptId(46420) then
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:GetSpecialEffectActivateInterruptId(46421) == true and ai:HasSpecialEffectId(TARGET_SELF, 46411) == true then
                    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_2, 999, 0, 0, 0, 0)
                    return true
                elseif ai:GetSpecialEffectActivateInterruptId(46421) == true and ai:HasSpecialEffectId(TARGET_SELF, 46411) == false then
                    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_1, 999, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 46422) then
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46424)
                local f30_local3 = 3
                local random_3 = ai:GetRandam_Int(1, 100)
                local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                local f30_local6 = 0
                local f30_local7 = 0
                local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if f30_local3 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, f30_local3 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 999) == false then
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        goal:ClearSubGoal()
                        local random_4 = ai:GetRandam_Int(1, 100)
                        local goalLife = 5
                        local frontPriority = -1
                        local backPriority = -1
                        local leftPriority = 1
                        local rightPriority = -1
                        local target = TARGET_ENE_0
                        local distSpaceCheck = 3
                        local turnTime = 0
                        local alwaysSuccess = false
                        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        local random_5 = ai:GetRandam_Int(1, 100)
                        select_Attack1 = 3031
                        select_Attack2 = 3033
                        select_Attack3 = 3000
                        select_Attack4 = 3016
                        selectFate_1 = 5
                        selectFate_2 = 5
                        selectFate_3 = 0
                        selectFate_4 = 1
                        warpDist_1 = 3
                        warpDist_2 = 7
                        warpDist_3 = 3
                        warpDist_4 = 3
                        local successDist_2 = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local24 = 0
                        local f30_local25 = 0
                        local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                        local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                        if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_1 = 0
                        end
                        if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_2 = 0
                        end
                        if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_3 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_3 = 0
                        end
                        if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_4 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_4 = 0
                        end
                        local random_6 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                        local directionFromTarget = AI_DIR_TYPE_ToL
                        local distanceFromTarget = 0
                        local animationId = fall_Attack
                        local turnTarget = TARGET_ENE_0
                        if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                            ai:SetNumber(6, 1)
                            ai:SetNumber(8, 1)
                        elseif selectFate_1 ~= 0 and random_6 <= selectFate_1 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_1
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_2 ~= 0 and random_6 <= selectFate_1 + selectFate_2 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_2
                            animationId = select_Attack2
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_3 ~= 0 and random_6 <= selectFate_1 + selectFate_2 + selectFate_3 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_3
                            animationId = select_Attack3
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_4 ~= 0 and random_6 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                            directionFromTarget = AI_DIR_TYPE_ToBL
                            distanceFromTarget = warpDist_4
                            animationId = select_Attack4
                            turnTarget = TARGET_ENE_0
                        end
                        if ai:GetNumber(6) ~= 0 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist_2, 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                            if animationId == 3016 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                            end
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                        return true
                    end
                elseif f30_local3 < ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, f30_local3 + lineWidth, lineWidth, 0) and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) == false then
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        goal:ClearSubGoal()
                        local random_4 = ai:GetRandam_Int(1, 100)
                        local goalLife = 5
                        local frontPriority = -1
                        local backPriority = -1
                        local leftPriority = -1
                        local rightPriority = 1
                        local target = TARGET_ENE_0
                        local distSpaceCheck = 3
                        local turnTime = 0
                        local alwaysSuccess = false
                        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
                        local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                        local random_5 = ai:GetRandam_Int(1, 100)
                        select_Attack1 = 3030
                        select_Attack2 = 3033
                        select_Attack3 = 3000
                        select_Attack4 = 3016
                        selectFate_1 = 5
                        selectFate_2 = 5
                        selectFate_3 = 0
                        selectFate_4 = 1
                        warpDist_1 = 3
                        warpDist_2 = 7
                        warpDist_3 = 3
                        warpDist_4 = 3
                        local successDist_2 = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local24 = 0
                        local f30_local25 = 0
                        local lineWidth_2 = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceEnemy_4 = ai:GetDist(TARGET_ENE_0)
                        local angleToEnemy_2 = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                        if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_1 = 0
                        end
                        if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_2 = 0
                        end
                        if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_3 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_3 = 0
                        end
                        if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_4 + lineWidth_2, lineWidth_2, 0) then
                            selectFate_4 = 0
                        end
                        local random_6 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                        local directionFromTarget = AI_DIR_TYPE_ToR
                        local distanceFromTarget = 0
                        local animationId = fall_Attack
                        local turnTarget = TARGET_ENE_0
                        if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                            ai:SetNumber(6, 1)
                            ai:SetNumber(8, 1)
                        elseif selectFate_1 ~= 0 and random_6 <= selectFate_1 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_1
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_2 ~= 0 and random_6 <= selectFate_1 + selectFate_2 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_2
                            animationId = select_Attack2
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_3 ~= 0 and random_6 <= selectFate_1 + selectFate_2 + selectFate_3 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_3
                            animationId = select_Attack3
                            turnTarget = TARGET_ENE_0
                        elseif selectFate_4 ~= 0 and random_6 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                            directionFromTarget = AI_DIR_TYPE_ToBR
                            distanceFromTarget = warpDist_4
                            animationId = select_Attack4
                            turnTarget = TARGET_ENE_0
                        end
                        if ai:GetNumber(6) ~= 0 then
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist_2, 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                            if animationId == 3016 then
                                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                            end
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(46423) and ai:HasSpecialEffectId(TARGET_SELF, 46499) == true and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                if distanceEnemy_2 < 5 then
                    if random_2 > 60 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 45 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 30 and ai:HasSpecialEffectId(TARGET_SELF, 46499) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 > 20 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif distanceEnemy_2 < 15 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16655) and ai:HasSpecialEffectId(TARGET_SELF, 46499) == true then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 220) then
                    if distanceEnemy_2 < 6 then
                        if random_2 > 50 then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif distanceEnemy_2 < 10 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 16662) then
                local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                local random_2 = ai:GetRandam_Int(1, 100)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16662)
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and distanceEnemy_2 < 8 then
                    if random_2 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and (ai:GetSpecialEffectActivateInterruptId(5030) or ai:GetSpecialEffectActivateInterruptId(5031) or ai:GetSpecialEffectActivateInterruptId(5032)) then
            goal:ClearSubGoal()
            if ai:GetSpecialEffectActivateInterruptId(5030) then
                if ai:GetNumber(5) == 1 and ai:HasSpecialEffectId(TARGET_SELF, 46499) == false then
                    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                        select_Attack1 = 3010
                        selectFate_1F = 20
                        selectFate_1B = 30
                        selectFate_1L = 25
                        selectFate_1R = 25
                        selectFate_2F = 0
                        selectFate_2B = 0
                        selectFate_2L = 0
                        selectFate_2R = 0
                        warpDist_1F = ai:GetRandam_Float(20, 25)
                        warpDist_1B = 20
                        warpDist_1L = 20
                        warpDist_1R = 20
                        warpDist_2F = 0
                        warpDist_2B = 0
                        warpDist_2L = 0
                        warpDist_2R = 0
                        same_Angle = 0
                        local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                        local f30_local5 = 0
                        local f30_local6 = 0
                        local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                        local distanceTARGET_ENE_1_2 = ai:GetDist(TARGET_ENE_1)
                        local angleToTARGET_ENE_1 = ai:GetRelativeAngleFromTarget(TARGET_ENE_1)
                        local f30_local10 = 3027
                        if warpDist_1F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_F, warpDist_1F + lineWidth, lineWidth, 0) then
                            selectFate_1F = 0
                        end
                        if warpDist_1B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_B, warpDist_1B + lineWidth, lineWidth, 0) then
                            selectFate_1B = 0
                        end
                        if warpDist_1L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_L, warpDist_1L + lineWidth, lineWidth, 0) then
                            selectFate_1L = 0
                        end
                        if warpDist_1R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_R, warpDist_1R + lineWidth, lineWidth, 0) then
                            selectFate_1R = 0
                        end
                        if warpDist_2F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_F, warpDist_2F + lineWidth, lineWidth, 0) then
                            selectFate_2F = 0
                        end
                        if warpDist_2B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_B, warpDist_2B + lineWidth, lineWidth, 0) then
                            selectFate_2B = 0
                        end
                        if warpDist_2L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_L, warpDist_2L + lineWidth, lineWidth, 0) then
                            selectFate_2L = 0
                        end
                        if warpDist_2R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_1, AI_DIR_TYPE_R, warpDist_2R + lineWidth, lineWidth, 0) then
                            selectFate_2B = 0
                        end
                        local random_3 = ai:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
                        local directionFromTarget = AI_DIR_TYPE_F
                        local distanceFromTarget = 0
                        local animationId = f30_local10
                        local turnTarget = TARGET_ENE_1
                        if selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R == 0 then
                            ai:SetNumber(6, 1)
                            directionFromTarget = AI_DIR_TYPE_F
                            distanceFromTarget = 0
                            animationId = 3027
                        elseif selectFate_1F ~= 0 and random_3 <= selectFate_1F then
                            directionFromTarget = AI_DIR_TYPE_F
                            distanceFromTarget = warpDist_1F
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_1
                        elseif selectFate_1B ~= 0 and random_3 <= selectFate_1F + selectFate_1B then
                            directionFromTarget = AI_DIR_TYPE_B
                            distanceFromTarget = warpDist_1B
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_1
                        elseif selectFate_1L ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L then
                            directionFromTarget = AI_DIR_TYPE_L
                            distanceFromTarget = warpDist_1L
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_1
                        elseif selectFate_1R ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
                            directionFromTarget = AI_DIR_TYPE_R
                            distanceFromTarget = warpDist_1R
                            animationId = select_Attack1
                            turnTarget = TARGET_ENE_1
                        end
                        if ai:GetNumber(6) ~= 0 then
                            goal:AddSubGoal(GOAL_COMMON_SetNumberRealtime, 5, 0)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_1, successDist, 0, 0, 0, 0)
                        else
                            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_1, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                            goal:AddSubGoal(GOAL_COMMON_SetNumberRealtime, 5, 0)
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_1, successDist, 0, 0, 0, 0)
                        end
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_1, SuccessDist, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:GetNumber(5) ~= 1 then
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    select_Attack1 = 3013
                    selectFate_1F = 0
                    selectFate_1B = 25
                    selectFate_1L = 25
                    selectFate_1R = 25
                    selectFate_2F = 0
                    selectFate_2B = 0
                    selectFate_2L = 0
                    selectFate_2R = 0
                    warpDist_1F = 6
                    warpDist_1B = 6
                    warpDist_1L = 6
                    warpDist_1R = 6
                    warpDist_2F = 0
                    warpDist_2B = 0
                    warpDist_2L = 0
                    warpDist_2R = 0
                    same_Angle = 0
                    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                    local f30_local5 = 0
                    local f30_local6 = 0
                    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                    local f30_local10 = 3027
                    if warpDist_1F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_1F + lineWidth, lineWidth, 0) then
                        selectFate_1F = 0
                    end
                    if warpDist_1B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_1B + lineWidth, lineWidth, 0) then
                        selectFate_1B = 0
                    end
                    if warpDist_1L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_1L + lineWidth, lineWidth, 0) then
                        selectFate_1L = 0
                    end
                    if warpDist_1R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_1R + lineWidth, lineWidth, 0) then
                        selectFate_1R = 0
                    end
                    if warpDist_2F >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_2F + lineWidth, lineWidth, 0) then
                        selectFate_2F = 0
                    end
                    if warpDist_2B >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_2B + lineWidth, lineWidth, 0) then
                        selectFate_2B = 0
                    end
                    if warpDist_2L >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_2L + lineWidth, lineWidth, 0) then
                        selectFate_2L = 0
                    end
                    if warpDist_2R >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_2R + lineWidth, lineWidth, 0) then
                        selectFate_2B = 0
                    end
                    local random_3 = ai:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
                    local directionFromTarget = AI_DIR_TYPE_F
                    local distanceFromTarget = 0
                    local animationId = f30_local10
                    local turnTarget = TARGET_ENE_0
                    if selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R == 0 then
                        ai:SetNumber(6, 1)
                        directionFromTarget = AI_DIR_TYPE_F
                        distanceFromTarget = 0
                        animationId = 3027
                    elseif selectFate_1F ~= 0 and random_3 <= selectFate_1F then
                        directionFromTarget = AI_DIR_TYPE_F
                        distanceFromTarget = warpDist_1F
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1B ~= 0 and random_3 <= selectFate_1F + selectFate_1B then
                        directionFromTarget = AI_DIR_TYPE_B
                        distanceFromTarget = warpDist_1B
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1L ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L then
                        directionFromTarget = AI_DIR_TYPE_L
                        distanceFromTarget = warpDist_1L
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_1R ~= 0 and random_3 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
                        directionFromTarget = AI_DIR_TYPE_R
                        distanceFromTarget = warpDist_1R
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    end
                    if ai:GetNumber(6) ~= 0 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, successDist, 0, 0, 0, 0)
                    end
                end
            elseif ai:GetSpecialEffectActivateInterruptId(5031) then
                if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    select_Attack1 = 3031
                    select_Attack2 = 3033
                    select_Attack3 = 3000
                    select_Attack4 = 3016
                    selectFate_1 = 5
                    selectFate_2 = 5
                    selectFate_3 = 0
                    selectFate_4 = 5
                    warpDist_1 = 3
                    warpDist_2 = 7
                    warpDist_3 = 3
                    warpDist_4 = 3
                    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                    local f30_local5 = 0
                    local f30_local6 = 0
                    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                    if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_1 + lineWidth, lineWidth, 0) then
                        selectFate_1 = 0
                    end
                    if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_2 + lineWidth, lineWidth, 0) then
                        selectFate_2 = 0
                    end
                    if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_3 + lineWidth, lineWidth, 0) then
                        selectFate_3 = 0
                    end
                    if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_4 + lineWidth, lineWidth, 0) then
                        selectFate_4 = 0
                    end
                    local random_3 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                    local directionFromTarget = AI_DIR_TYPE_ToL
                    local distanceFromTarget = 0
                    local animationId = fall_Attack
                    local turnTarget = TARGET_ENE_0
                    if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                        ai:SetNumber(6, 1)
                    elseif selectFate_1 ~= 0 and random_3 <= selectFate_1 then
                        directionFromTarget = AI_DIR_TYPE_ToBL
                        distanceFromTarget = warpDist_1
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_2 ~= 0 and random_3 <= selectFate_1 + selectFate_2 then
                        directionFromTarget = AI_DIR_TYPE_ToBL
                        distanceFromTarget = warpDist_2
                        animationId = select_Attack2
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_3 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 then
                        directionFromTarget = AI_DIR_TYPE_ToBL
                        distanceFromTarget = warpDist_3
                        animationId = select_Attack3
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_4 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                        directionFromTarget = AI_DIR_TYPE_ToBL
                        distanceFromTarget = warpDist_4
                        animationId = select_Attack4
                        turnTarget = TARGET_ENE_0
                    end
                    if ai:GetNumber(6) ~= 0 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, 0, 0)
                    end
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
                    return true
                end
            elseif ai:GetSpecialEffectActivateInterruptId(5032) then
                if ai:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
                    local random_2 = ai:GetRandam_Int(1, 100)
                    select_Attack1 = 3030
                    select_Attack2 = 3033
                    select_Attack3 = 3000
                    select_Attack4 = 3016
                    selectFate_1 = 5
                    selectFate_2 = 0
                    selectFate_3 = 0
                    selectFate_4 = 5
                    warpDist_1 = 3
                    warpDist_2 = 5
                    warpDist_3 = 3
                    warpDist_4 = 3
                    local successDist = 999 - ai:GetMapHitRadius(TARGET_SELF)
                    local f30_local5 = 0
                    local f30_local6 = 0
                    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
                    local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
                    local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
                    if warpDist_1 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_1 + lineWidth, lineWidth, 0) then
                        selectFate_1 = 0
                    end
                    if warpDist_2 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_2 + lineWidth, lineWidth, 0) then
                        selectFate_2 = 0
                    end
                    if warpDist_3 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_3 + lineWidth, lineWidth, 0) then
                        selectFate_3 = 0
                    end
                    if warpDist_4 >= ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_4 + lineWidth, lineWidth, 0) then
                        selectFate_4 = 0
                    end
                    local random_3 = ai:GetRandam_Int(0, selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4)
                    local directionFromTarget = AI_DIR_TYPE_ToR
                    local distanceFromTarget = 0
                    local animationId = fall_Attack
                    local turnTarget = TARGET_ENE_0
                    if selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 == 0 then
                        ai:SetNumber(6, 1)
                    elseif selectFate_1 ~= 0 and random_3 <= selectFate_1 then
                        directionFromTarget = AI_DIR_TYPE_ToBR
                        distanceFromTarget = warpDist_1
                        animationId = select_Attack1
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_2 ~= 0 and random_3 <= selectFate_1 + selectFate_2 then
                        directionFromTarget = AI_DIR_TYPE_ToBR
                        distanceFromTarget = warpDist_2
                        animationId = select_Attack2
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_3 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 then
                        directionFromTarget = AI_DIR_TYPE_ToBR
                        distanceFromTarget = warpDist_3
                        animationId = select_Attack3
                        turnTarget = TARGET_ENE_0
                    elseif selectFate_4 ~= 0 and random_3 <= selectFate_1 + selectFate_2 + selectFate_3 + selectFate_4 then
                        directionFromTarget = AI_DIR_TYPE_ToBR
                        distanceFromTarget = warpDist_4
                        animationId = select_Attack4
                        turnTarget = TARGET_ENE_0
                    end
                    if ai:GetNumber(6) ~= 0 then
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3014, TARGET_ENE_0, successDist, 0, 0)
                    else
                        goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, directionFromTarget, distanceFromTarget, turnTarget, 5, -2)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, successDist, 0, 0)
                    end
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
                    return true
                end
            end
        end
    end
end

RegisterTableGoal(GOAL_BigHorriblenessGrub402100_AfterAttackAct, "BigHorriblenessGrub402100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BigHorriblenessGrub402100_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

