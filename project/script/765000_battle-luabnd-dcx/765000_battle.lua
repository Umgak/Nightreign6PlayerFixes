RegisterTableGoal(GOAL_RottenDeadRubble765000_Battle, "RottenDeadRubble765000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenDeadRubble765000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(0, 0)
    ai:SetNumber(5, 0)
    ai:SetNumber(6, 0)
    ai:SetStringIndexedNumber("TestNumber", 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:GetStringIndexedNumber("Loop_Cnt")
    ai:GetStringIndexedNumber("Warcry_Cnt")
    ai:GetStringIndexedNumber("Beam_Cnt")
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    local distanceEvent = ai:GetDist(TARGET_EVENT)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local distanceSound = ai:GetDist(TARGET_SOUND)
    local random_2 = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local hasEffect17001 = ai:HasSpecialEffectId(TARGET_SELF, 17001)
    local hasEffect17002 = ai:HasSpecialEffectId(TARGET_SELF, 17002)
    local hasEffect17005 = ai:HasSpecialEffectId(TARGET_SELF, 17005)
    local hasEffect17006 = ai:HasSpecialEffectId(TARGET_SELF, 17006)
    local hasEffect17009 = ai:HasSpecialEffectId(TARGET_SELF, 17009)
    local hasEffect17040 = ai:HasSpecialEffectId(TARGET_SELF, 17040)
    local hasEffect17041 = ai:HasSpecialEffectId(TARGET_SELF, 17041)
    local hasEffect4452 = ai:HasSpecialEffectId(TARGET_SELF, 4452)
    local hasEffect17014 = ai:HasSpecialEffectId(TARGET_SELF, 17014)
    local hasEffect17043 = ai:HasSpecialEffectId(TARGET_SELF, 17043)
    local hasEffect17044 = ai:HasSpecialEffectId(TARGET_SELF, 17044)
    local hasEffect17045 = ai:HasSpecialEffectId(TARGET_SELF, 17045)
    local hasEffect13471 = ai:HasSpecialEffectId(TARGET_SELF, 13471)
    local hasEffect17049 = ai:HasSpecialEffectId(TARGET_SELF, 17049)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    ai:SetNumber(5, 0)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
            if distanceEnemy_2 > 10 then
                probabilities[35] = 100
            else
                probabilities[36] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62008) == true then
            probabilities[38] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62006) == true then
            probabilities[37] = 100
        elseif distanceEnemy_2 >= 20 then
            probabilities[30] = 100
        elseif distanceEnemy_2 >= 15 then
            probabilities[31] = 100
        elseif distanceEnemy_2 >= 10 then
            probabilities[31] = 20
            probabilities[32] = 80
        elseif distanceEnemy_2 >= 1.5 then
            probabilities[32] = 100
        else
            probabilities[2] = 80
            probabilities[32] = 20
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
            if distanceEnemy_2 > 10 then
                probabilities[35] = 100
            else
                probabilities[36] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62008) == true then
            probabilities[38] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62006) == true then
            probabilities[37] = 100
        elseif distanceEnemy_2 >= 15 then
            probabilities[30] = 100
        elseif distanceEnemy_2 >= 10 then
            probabilities[31] = 100
        elseif distanceEnemy_2 >= 4 then
            probabilities[31] = 40
            probabilities[32] = 60
        elseif distanceEnemy_2 >= 1.5 then
            probabilities[32] = 80
            probabilities[2] = 20
        else
            probabilities[1] = 40
            probabilities[2] = 40
            probabilities[32] = 20
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if distanceEnemy_2 > 10 then
            probabilities[35] = 100
        else
            probabilities[36] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 62002) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 62008) == true then
            probabilities[38] = 100
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
            probabilities[22] = 30
            probabilities[23] = 30
        elseif distanceEnemy_2 >= 9 then
            probabilities[4] = 20
            probabilities[6] = 10
            probabilities[22] = 40
            probabilities[23] = 40
        elseif distanceEnemy_2 >= 6 then
            probabilities[2] = 15
            probabilities[4] = 20
            probabilities[6] = 10
            probabilities[22] = 30
            probabilities[23] = 25
        else
            probabilities[2] = 25
            probabilities[4] = 15
            probabilities[6] = 5
            probabilities[22] = 35
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 62006) == true then
        probabilities[37] = 100
    elseif hasEffect17041 == true or hasEffect4452 == true then
        if hasEffect17044 == true then
            probabilities[19] = 15
        else
            probabilities[8] = 100
        end
    elseif hasEffect17040 == true then
        if hasEffect17044 == true then
            probabilities[19] = 15
        else
            probabilities[7] = 100
        end
    elseif hasEffect17002 == true then
        if hasEffect17044 == true then
            probabilities[19] = 15
        else
            probabilities[7] = 100
        end
    elseif hasEffect17005 == true then
        if hasEffect13471 == true then
            probabilities[15] = 15
        elseif distanceEnemy_2 > 5 then
            probabilities[22] = 1
        else
            probabilities[22] = 30
            probabilities[6] = 10
        end
    elseif hasEffect17044 == true and ai:GetNumber(6) == 0 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        probabilities[10] = 9999
        probabilities[22] = 1
    elseif hasEffect17045 == true and ai:GetNumber(6) == 0 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        probabilities[9] = 9999
        probabilities[22] = 1
    elseif hasEffect17001 == true and hasEffect17014 == true then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            probabilities[22] = 15
        else
            probabilities[5] = 45
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 140) then
        probabilities[22] = 30
        probabilities[23] = 30
    elseif distanceEnemy_2 >= 9 then
        probabilities[4] = 20
        probabilities[6] = 10
        probabilities[22] = 40
        probabilities[23] = 40
    elseif distanceEnemy_2 >= 6 then
        probabilities[1] = 10
        probabilities[2] = 15
        probabilities[4] = 20
        probabilities[6] = 10
        probabilities[7] = 10
        probabilities[9] = 20
        probabilities[10] = 15
        probabilities[22] = 30
        probabilities[23] = 25
    else
        probabilities[1] = 25
        probabilities[2] = 25
        probabilities[4] = 15
        probabilities[7] = 25
        probabilities[6] = 5
        probabilities[9] = 20
        probabilities[10] = 15
        probabilities[22] = 35
    end
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        probabilities[1] = SetCoolTime(ai, goal, 3023, 20, probabilities[1], 1)
        probabilities[2] = SetCoolTime(ai, goal, 3000, 20, probabilities[2], 1)
        probabilities[2] = SetCoolTime(ai, goal, 3010, 20, probabilities[2], 1)
        probabilities[5] = SetCoolTime(ai, goal, 3016, 20, probabilities[5], 1)
    else
        probabilities[4] = SetCoolTime(ai, goal, 3017, 10, probabilities[4], 0)
        probabilities[4] = SetCoolTime(ai, goal, 3019, 10, probabilities[4], 0)
        probabilities[5] = SetCoolTime(ai, goal, 3016, 15, probabilities[5], 5)
        probabilities[6] = SetCoolTime(ai, goal, 3007, 15, probabilities[6], 1)
        probabilities[10] = SetCoolTime(ai, goal, 3037, 15, probabilities[10], 1)
        probabilities[10] = SetCoolTime(ai, goal, 3038, 15, probabilities[10], 1)
    end
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 12) == false then
        probabilities[4] = 0
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) == false then
        probabilities[9] = 0
        probabilities[4] = 0
    end
    if distanceEnemy_2 < 2 then
        probabilities[4] = 0
    end
    if hasEffect17001 == false and hasEffect17049 == false then
        probabilities[5] = 0
    end
    if hasEffect17043 == false then
        probabilities[10] = 0
    end
    if ai:GetLatestSoundBehaviorID() == 366100 and distanceEnemy_2 <= 6 then
        probabilities[1] = 0
        probabilities[2] = 0
        probabilities[4] = 0
        probabilities[5] = 0
        probabilities[9] = 0
        probabilities[10] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        probabilities[1] = 0
        probabilities[9] = 0
        probabilities[6] = probabilities[6] * 3
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 62002) == true then
        probabilities[7] = 0
    end
    acts[1] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act29)
    acts[30] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act32)
    acts[35] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act36)
    acts[37] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act37)
    acts[38] = REGIST_FUNC(ai, goal, RottenDeadRubble765000_Act38)
    local actAfter = REGIST_FUNC(ai, goal, RottenDeadRubble765000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function RottenDeadRubble765000_Act01(ai, goal, paramTbl)
    Loop_Cnt = 0
    local goalLife = 10
    local animationId = 3023
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f4_local1 = -1.4
    local f4_local2 = 999
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Loop_Cnt = 0
    local goalLife = 10
    local animationId = 3000
    local animationId_2 = 3010
    local f4_local11 = 3000
    local f4_local12 = 3010
    local f4_local13 = 3000
    local f4_local14 = 3010
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act03(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f5_local1 = -1.4
    local f5_local2 = 999
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    goal:AddSubGoal(GOAL_COMMON_Wait, GetRandam_Float(0.1, 1), TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act04(ai, goal, paramTbl)
    Loop_Cnt = 0
    local goalLife = 10
    local animationId = 3017
    local animationId_2 = 3019
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    if ai:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_NONE, successDist, turnTime, turnFaceAngle, 0, 0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if random_2 > 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
            elseif random_2 > 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
            end
        else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_NONE, successDist, turnTime, turnFaceAngle, 0, 0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if random_2 > 60 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
            elseif random_2 > 20 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
            end
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_NONE, successDist, turnTime, turnFaceAngle, 0, 0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if random_2 > 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_NONE, successDist, turnTime, turnFaceAngle, 0, 0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if random_2 > 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 20 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act05(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3016
    local successDist = 6
    local turnTime = 0
    local turnFaceAngle = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act06(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3007
    local successDist = 6
    local turnTime = 0
    local turnFaceAngle = 180
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_SELF, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act07(ai, goal, paramTbl)
    Loop_Cnt = 0
    local hasEffect17009 = ai:HasSpecialEffectId(TARGET_SELF, 17009)
    local hasEffect4452 = ai:HasSpecialEffectId(TARGET_SELF, 4452)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17032)
    local goalLife = 5
    local animationId = 3030
    local animationId_2 = 3031
    local successDist = 999
    local turnTime = 1.5
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = ai:GetRandam_Int(8, 11)
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 4
    local runLife = 8
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    if hasEffect17009 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act08(ai, goal, paramTbl)
    local hasEffect17009 = ai:HasSpecialEffectId(TARGET_SELF, 17009)
    local goalLife = 5
    local animationId = 3034
    local animationId_2 = 3033
    local successDist = 999
    local turnTime = 1.5
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17032)
    if hasEffect17009 == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act09(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(6, 1)
    Loop_Cnt = 0
    local goalLife = 10
    local animationId = 3035
    local animationId_2 = 3036
    local animationId_3 = 3017
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    local stopDist = 7
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    if distanceEnemy > 6 then
        if random_2 > 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_3, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
        end
    elseif distanceEnemy > 2 then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act10(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    ai:SetNumber(6, 1)
    Loop_Cnt = 0
    local goalLife = 10
    local f12_local3 = 3037
    local animationId = 3038
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
end

function RottenDeadRubble765000_Act11(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = ai:GetRandam_Int(3, 11)
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 20010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act12(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = ai:GetRandam_Int(3, 11)
    local canRunDist = 999
    local forceRunMinDist = 999
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 20011
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act13(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20011
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act14(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17035)
    local goalLife = 10
    local animationId = 20012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 120
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
end

function RottenDeadRubble765000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 18
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    local goalLife = 10
    local animationId = 20013
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 1.5
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act16(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f18_local1 = 18
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 100
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 5
    local goalLife = 10
    local animationId = 20015
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 1.5
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act17(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f19_local1 = 18
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 0
    local f19_local7 = 5
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    local goalLife = 10
    local animationId = 20016
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 1.5
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act18(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 0
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
    local goalLife = 10
    local animationId = 20017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 1.5
    local turnFaceAngle = 90
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act19(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy > 5 then
        local stopDist = 18
        local canRunDist = 0
        local forceRunMinDist = 999
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 0
        local runLife = 5
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
        local goalLife = 10
        local animationId = 20018
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 1.5
        local turnFaceAngle = 90
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif distanceEnemy > 2 then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local stopDist = 6
        local canRunDist = 0
        local forceRunMinDist = 999
        local runProbability = 100
        local guardProbability = 0
        local walkLife = 0
        local runLife = 5
        Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
        local goalLife = 10
        local animationId = 20017
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 1.5
        local turnFaceAngle = 90
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        local goalLife = 10
        local animationId = 20015
        local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF)
        local turnTime = 1.5
        local turnFaceAngle = 90
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act20(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act22(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 0.5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act23(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(4, 6), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(3, 5))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(4, 6), TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(3, 5))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act24(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Float(0.1, 0.3), TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToF, ai:GetRandam_Int(3, 5)):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 3, TARGET_SELF, false, -1)
    local f25_local0 = 10
    local f25_local1 = 3017
    local f25_local2 = 3019
    local f25_local3 = 999
    local f25_local4 = 0
    local f25_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16458)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16459)
    if random > 50 then
        local random_2 = ai:GetRandam_Int(1, 100)
        if random_2 > 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    else
        local random_2 = ai:GetRandam_Int(1, 100)
        if random_2 > 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, DistToAtt3, 0, 0)
        elseif random_2 > 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, DistToAtt3, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act26(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16468)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = 1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:SetTimer(2, 20)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act27(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act28(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act29(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act30(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act31(ai, goal, paramTbl)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act32(ai, goal, paramTbl)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act35(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local f33_local1 = 3000
    local f33_local2 = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local f33_local3 = 0
    local f33_local4 = 360
    if ai:HasSpecialEffectId(TARGET_SELF, 62002) == true then
        if random <= 35 then
            if random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 7.5, TARGET_ENE_0, true, -1)
            end
        elseif random <= 70 then
            if random <= 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_1, 10, TARGET_ENE_1, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_1, 7.5, TARGET_ENE_1, true, -1)
            end
        elseif random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_2, 10, TARGET_ENE_2, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_2, 7.5, TARGET_ENE_2, true, -1)
        end
    elseif random <= 35 then
        if random <= 35 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
        elseif random <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 7.5, TARGET_ENE_0, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
        end
    elseif random <= 70 then
        if random <= 35 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_1, 10, TARGET_ENE_1, true, -1)
        elseif random <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_1, 7.5, TARGET_ENE_1, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_1, 5, TARGET_ENE_1, true, -1)
        end
    elseif random <= 35 then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_2, 10, TARGET_ENE_2, true, -1)
    elseif random <= 70 then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_2, 7.5, TARGET_ENE_2, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_2, 5, TARGET_ENE_2, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act36(ai, goal, paramTbl)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    if ai:HasSpecialEffectId(TARGET_SELF, 62000) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 62001) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3001, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 62002) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3002, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act37(ai, goal, paramTbl)
    local animationId = 3033
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_Act38(ai, goal, paramTbl)
    local animationId = 20020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RottenDeadRubble765000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_RottenDeadRubble765000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local f40_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f40_local1 = 0
    local f40_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local f40_local5 = STEP_CANCELDIST
    local hasEffect17001 = ai:HasSpecialEffectId(TARGET_SELF, 17001)
    local hasEffect17002 = ai:HasSpecialEffectId(TARGET_SELF, 17002)
    local hasEffect17009 = ai:HasSpecialEffectId(TARGET_SELF, 17009)
    local hasEffect4452 = ai:HasSpecialEffectId(TARGET_SELF, 4452)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(17030) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
            if distanceEnemy_2 > 4 and Loop_Cnt < 6 then
                goal:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                if hasEffect17009 == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 3 and random_2 > 70 then
                goal:ClearSubGoal()
                if hasEffect17009 == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif hasEffect4452 == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
                if hasEffect17009 == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif hasEffect4452 == true then
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(13477) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 13477)
            if distanceEnemy_2 < 8 then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 20013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17031) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17031)
        if distanceEnemy_2 < 4 then
            goal:ClearSubGoal()
            if hasEffect17009 == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif hasEffect4452 == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17032) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17032)
        if distanceEnemy_2 < 4 then
            goal:ClearSubGoal()
            if hasEffect17009 == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif hasEffect4452 == true then
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17020) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if distanceEnemy_2 <= 3 or Loop_Cnt > 8 then
                if random_2 > 20 or 5 < Loop_Cnt then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17021) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        local random_3 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if distanceEnemy_2 <= 3 or Loop_Cnt > 8 then
                if random_2 > 20 or 5 < Loop_Cnt then
                    if random_3 > 40 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif distanceEnemy_2 <= 6 and random_2 > 80 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17022) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if distanceEnemy_2 < 3 then
                if random_2 > 20 then
                    local random_3 = ai:GetRandam_Int(1, 100)
                    if random_3 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local random_3 = ai:GetRandam_Int(1, 100)
                if random_3 > 80 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local random_3 = ai:GetRandam_Int(1, 100)
            if random_3 > 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17024) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if distanceEnemy_2 < 3 then
                if random_2 > 20 then
                    local random_3 = ai:GetRandam_Int(1, 100)
                    if random_3 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local random_3 = ai:GetRandam_Int(1, 100)
                if random_3 > 80 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local random_3 = ai:GetRandam_Int(1, 100)
            if random_3 > 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17023) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if distanceEnemy_2 < 3 then
                if random_2 > 20 then
                    local random_3 = ai:GetRandam_Int(1, 100)
                    if random_3 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local random_3 = ai:GetRandam_Int(1, 100)
                if random_3 > 80 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local random_3 = ai:GetRandam_Int(1, 100)
            if random_3 > 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17025) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if distanceEnemy_2 < 3 then
                if random_2 > 20 then
                    local random_3 = ai:GetRandam_Int(1, 100)
                    if random_3 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif Loop_Cnt > 7 then
                local random_3 = ai:GetRandam_Int(1, 100)
                if random_3 > 80 then
                    local random_4 = ai:GetRandam_Int(1, 100)
                    if random_4 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    Loop_Cnt = Loop_Cnt + 1
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            else
                goal:ClearSubGoal()
                Loop_Cnt = Loop_Cnt + 1
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local random_3 = ai:GetRandam_Int(1, 100)
            if random_3 > 50 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17026) then
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17020)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17021)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17022)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17023)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17024)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17025)
        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 17026)
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if ai:GetNumber(5) >= 1 or random_2 > 60 then
                if random_2 > 90 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif random_2 > 80 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif random_2 > 65 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif random_2 > 50 then
                    if ai:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            else
                ai:SetNumber(5, 1)
                if hasEffect17001 == true then
                    local random_3 = ai:GetRandam_Int(1, 100)
                    if random_3 > 75 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_3 > 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_3 > 30 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif distanceEnemy_2 > 2 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                else
                    local random_3 = ai:GetRandam_Int(1, 100)
                    if random_3 > 70 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_3 > 35 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif distanceEnemy_2 > 2 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 17035) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 20013, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_RottenDeadRubble765000_AfterAttackAct, "RottenDeadRubble765000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RottenDeadRubble765000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

