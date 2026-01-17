RegisterTableGoal(GOAL_NocturnalCerberus750000_Battle, "NocturnalCerberus750000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NocturnalCerberus750000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(1, 0)
    ai:SetNumber(7, 0)
    ai:SetNumber(9, 0)
    ai:SetStringIndexedNumber("Run_Odds", 0)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3002)
    ai:EnableUnfavorableAttackCheck(0, 3003)
    ai:EnableUnfavorableAttackCheck(0, 3004)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3008)
    ai:EnableUnfavorableAttackCheck(0, 3009)
    ai:EnableUnfavorableAttackCheck(0, 3011)
    ai:EnableUnfavorableAttackCheck(0, 3013)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3015)
    ai:EnableUnfavorableAttackCheck(0, 3016)
    ai:EnableUnfavorableAttackCheck(0, 3017)
    ai:EnableUnfavorableAttackCheck(0, 3018)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3022)
    ai:EnableUnfavorableAttackCheck(0, 3024)
    ai:EnableUnfavorableAttackCheck(0, 3025)
    ai:EnableUnfavorableAttackCheck(0, 3026)
    ai:EnableUnfavorableAttackCheck(0, 3027)
    ai:EnableUnfavorableAttackCheck(0, 3032)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local distanceSound = ai:GetDist(TARGET_SOUND)
    local random_2 = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 51330)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 51325)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 51326)
    if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true and ai:HasSpecialEffectId(TARGET_SELF, 42040) == true and ai:HasSpecialEffectId(TARGET_SELF, 5401) == false then
        probabilities[30] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 42050) == true and (ai:HasSpecialEffectId(TARGET_SELF, 42055) == true or ai:HasSpecialEffectId(TARGET_SELF, 42058) == true) then
        if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true and ai:HasSpecialEffectId(TARGET_SELF, 42041) == true and ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
            probabilities[36] = 25
        elseif distanceEnemy_2 > 20 then
            probabilities[12] = 75
        else
            probabilities[4] = 25
            probabilities[17] = 45
            probabilities[18] = 45
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 42057) == true and ai:HasSpecialEffectId(TARGET_SELF, 5401) == false then
        if distanceEnemy_2 < 5 then
            probabilities[24] = 100
            probabilities[25] = 9999
        else
            probabilities[24] = 9999
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 42018) == true then
        probabilities[24] = 9999
    elseif (ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki) and ai:HasSpecialEffectId(TARGET_SELF, 42040) == false and ai:HasSpecialEffectId(TARGET_SELF, 51200) == false then
        if distanceEnemy_2 > 15 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                probabilities[29] = 100
            else
                probabilities[8] = 9999
                probabilities[34] = 9999
                probabilities[9] = 9999
                probabilities[10] = 9999
                probabilities[24] = 200
            end
        elseif distanceEnemy_2 > 9 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
                probabilities[8] = 9999
                probabilities[34] = 9999
                probabilities[9] = 9999
                probabilities[10] = 9999
                probabilities[24] = 200
                probabilities[26] = 25
                probabilities[27] = 25
                probabilities[29] = 100
            else
                probabilities[8] = 9999
                probabilities[34] = 9999
                probabilities[9] = 9999
                probabilities[10] = 9999
                probabilities[17] = 45
                probabilities[18] = 45
                probabilities[24] = 200
            end
        elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            probabilities[8] = 9999
            probabilities[34] = 9999
            probabilities[9] = 9999
            probabilities[10] = 9999
            probabilities[24] = 200
            probabilities[25] = 25
            probabilities[26] = 25
            probabilities[27] = 25
            probabilities[29] = 25
        else
            probabilities[2] = 25
            probabilities[4] = 25
            probabilities[6] = 25
            probabilities[8] = 9999
            probabilities[34] = 9999
            probabilities[9] = 9999
            probabilities[10] = 9999
            probabilities[18] = 45
            probabilities[24] = 200
            probabilities[25] = 10
            probabilities[26] = 10
            probabilities[27] = 10
        end
        if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if ai:HasSpecialEffectId(TARGET_SELF, 5401) == true then
                probabilities[24] = probabilities[24] / 10
            elseif ai:HasSpecialEffectId(TARGET_SELF, 42060) == true then
                probabilities[24] = probabilities[24] / 5
            end
        end
    elseif distanceEnemy_2 > 15 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            probabilities[29] = 100
        else
            probabilities[8] = 9999
            probabilities[34] = 9999
            probabilities[9] = 9999
            probabilities[10] = 9999
            probabilities[12] = 75
            probabilities[24] = 25
            probabilities[30] = 100
        end
    elseif distanceEnemy_2 > 9 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            probabilities[8] = 9999
            probabilities[34] = 9999
            probabilities[9] = 9999
            probabilities[10] = 9999
            probabilities[16] = 65
            probabilities[19] = 25
            probabilities[20] = 25
            probabilities[24] = 25
            probabilities[26] = 25
            probabilities[27] = 25
            probabilities[29] = 100
            probabilities[30] = 100
        else
            probabilities[4] = 25
            probabilities[8] = 9999
            probabilities[34] = 9999
            probabilities[9] = 9999
            probabilities[10] = 9999
            probabilities[16] = 65
            probabilities[17] = 45
            probabilities[18] = 45
            probabilities[19] = 25
            probabilities[24] = 25
            probabilities[30] = 100
        end
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        probabilities[1] = 25
        probabilities[7] = 25
        probabilities[8] = 9999
        probabilities[34] = 9999
        probabilities[9] = 9999
        probabilities[10] = 9999
        probabilities[16] = 65
        probabilities[19] = 25
        probabilities[20] = 30
        probabilities[25] = 25
        probabilities[26] = 25
        probabilities[27] = 25
        probabilities[29] = 25
        probabilities[30] = 100
    else
        probabilities[1] = 25
        probabilities[2] = 25
        probabilities[3] = 25
        probabilities[4] = 25
        probabilities[6] = 25
        probabilities[7] = 25
        probabilities[8] = 9999
        probabilities[34] = 9999
        probabilities[9] = 9999
        probabilities[10] = 9999
        probabilities[11] = 25
        probabilities[13] = 25
        probabilities[14] = 35
        probabilities[16] = 65
        probabilities[18] = 45
        probabilities[19] = 25
        probabilities[20] = 30
        probabilities[25] = 10
        probabilities[26] = 10
        probabilities[27] = 10
        probabilities[30] = 100
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3017, 6, probabilities[2], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3016, 6, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3004, 10, probabilities[3], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3006, 10, probabilities[6], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3012, 15, probabilities[10], 0)
    probabilities[11] = SetCoolTime(ai, goal, 3008, 20, probabilities[11], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3002, 15, probabilities[7], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3003, 6, probabilities[13], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3036, 6, probabilities[13], 1)
    probabilities[14] = SetCoolTime(ai, goal, 3013, 20, probabilities[14], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3020, 40, probabilities[16], 0)
    probabilities[17] = SetCoolTime(ai, goal, 3009, 20, probabilities[17], 1)
    probabilities[17] = SetCoolTime(ai, goal, 3022, 20, probabilities[17], 1)
    probabilities[18] = SetCoolTime(ai, goal, 3015, 20, probabilities[18], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3032, 30, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3031, 35, probabilities[20], 1)
    probabilities[30] = SetCoolTime(ai, goal, 3025, 50, probabilities[30], 1)
    if ai:GetHpRate(TARGET_SELF) >= 0.9 then
        probabilities[14] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42060) == false then
        if ai:GetHpRate(TARGET_SELF) >= 0.5 then
            probabilities[16] = 0
        end
        probabilities[30] = 0
        probabilities[32] = 0
        probabilities[33] = 0
        probabilities[34] = 0
        if ai:GetHpRate(TARGET_SELF) >= 0.75 then
            probabilities[8] = 0
        end
    else
        if ai:HasSpecialEffectId(TARGET_SELF, 42095) == true then
            probabilities[16] = probabilities[16] / 100
            probabilities[30] = probabilities[30] / 100
            probabilities[33] = probabilities[33] / 100
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 42096) == true then
            probabilities[13] = 0
            probabilities[33] = 0
        else
            probabilities[13] = probabilities[13] * 5
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 42097) == true then
            probabilities[7] = 0
            probabilities[19] = 0
        end
        if ai:GetHpRate(TARGET_SELF) >= 0.75 then
            probabilities[9] = 0
        end
        if ai:GetHpRate(TARGET_SELF) <= 0.4 and ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
            probabilities[24] = 0
        end
        if ai:GetHpRate(TARGET_SELF) >= 0.33 then
            probabilities[34] = 0
        end
        probabilities[8] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
        probabilities[9] = 0
        probabilities[10] = 0
        probabilities[18] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == false then
        probabilities[7] = 0
        probabilities[8] = 0
        probabilities[34] = 0
        probabilities[11] = 0
        probabilities[14] = 0
        probabilities[16] = 0
        probabilities[19] = 0
        probabilities[20] = 0
        probabilities[30] = 0
        probabilities[33] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42036) == true or ai:HasSpecialEffectId(TARGET_SELF, 42037) == true then
        probabilities[8] = 0
        probabilities[34] = 0
        probabilities[9] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 51350) == true or ai:HasSpecialEffectId(TARGET_SELF, 51351) == true then
        probabilities[8] = 0
        probabilities[34] = 0
        probabilities[9] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 51360) == true then
        probabilities[30] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42042) == true or ai:HasSpecialEffectId(TARGET_SELF, 42043) == true then
        probabilities[13] = 0
        probabilities[8] = 0
        probabilities[34] = 0
        probabilities[9] = 0
        probabilities[10] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 51200) == true then
        probabilities[13] = 0
        probabilities[8] = 0
        probabilities[34] = 0
        probabilities[9] = 0
        probabilities[10] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42038) == true then
        probabilities[10] = 0
    end
    if ai:GetTimer(2) > 15 then
        probabilities[25] = probabilities[25] / 10
        probabilities[26] = probabilities[26] / 10
        probabilities[27] = probabilities[27] / 10
        probabilities[28] = probabilities[28] / 10
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42019) == 1 then
        probabilities[1] = 0
        probabilities[24] = 0
    end
    if distanceEnemy_2 > 4 or ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) or ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        probabilities[1] = 0
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        probabilities[3] = 0
        probabilities[18] = 0
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        probabilities[2] = 0
        probabilities[13] = 0
        probabilities[18] = 0
    end
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
        probabilities[2] = 0
    end
    acts[1] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act29)
    acts[30] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, NocturnalCerberus750000_Act36)
    local actAfter = REGIST_FUNC(ai, goal, NocturnalCerberus750000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function NocturnalCerberus750000_Act01(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3001
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42000)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 6
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3017
    local animationId_2 = 3016
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act03(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3004
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 360
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42001)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42005)
    if distanceEnemy < 2 then
        local goalLife_2 = 5
        local frontPriority = -1
        local backPriority = 1
        local leftPriority = -1
        local rightPriority = -1
        local target = TARGET_ENE_0
        local distSpaceCheck = 0
        local turnTime_2 = 0
        local alwaysSuccess = true
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife_2, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime_2, alwaysSuccess)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act04(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local f6_local0 = 10
    local animationId = 3000
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 360
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local goalLife = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 0
    local turnTime = 0
    local alwaysSuccess = false
    ai:SetTimer(2, 20)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42007)
    if distanceEnemy < 4 then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act05(ai, goal, paramTbl)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act06(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3006
    local successDist = 999
    local turnTime = 1.5
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if distanceEnemy < 1.5 then
        local goalLife_2 = 5
        local frontPriority = -1
        local backPriority = 1
        local leftPriority = -1
        local rightPriority = -1
        local target = TARGET_ENE_0
        local distSpaceCheck = 0
        local turnTime_2 = 0
        local alwaysSuccess = true
        goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife_2, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime_2, alwaysSuccess)
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act07(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3002
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42011)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42014)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act08(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42013)
    local goalLife = 15
    local f10_local1 = 3010
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3010, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act09(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42011)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42008)
    local goalLife = 15
    local f11_local1 = 3010
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true and ai:HasSpecialEffectId(TARGET_SELF, 5401) == false then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 20004, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3011, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act10(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3012
    local successDist = 999
    local turnTime = 1.5
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act11(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3008
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 40
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42006)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42009)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act12(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 10
    local animationId = 3021
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42006)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42009)
    local stopDist = 16.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act13(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3003
    local animationId_2 = 3035
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act14(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 15
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local f16_local9 = 10
    local animationId = 3013
    local f16_local11 = 3008
    local successDist = 999
    local turnTime = 0
    local f16_local14 = 0
    local random_2 = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, animationId, TARGET_ENE_0, successDist, turnTime, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act15(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 16.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3021
    local f17_local11 = 3008
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act16(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3020
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42015)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42016)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act17(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3009
    local animationId_2 = 3022
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42007)
    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act18(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42005)
    local goalLife = 10
    local animationId = 3015
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 360
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act19(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42010)
    local goalLife = 10
    local animationId = 3032
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 360
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42014)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act20(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42012)
    local goalLife = 10
    local animationId = 3031
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_ENE_0, RunSwitch, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act22(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(8, 10), TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act23(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, ai:GetRandam_Int(20, 30))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, ai:GetRandam_Int(20, 30))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act24(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    local random = ai:GetRandam_Int(1, 100)
    local f26_local1 = -1
    ai:SetTimer(3, 20)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(2, 2), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(15, 20))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(2, 2), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(15, 20))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act25(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42002)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42057)
    local goalLife = 5
    local frontPriority = 1
    local backPriority = -1
    local leftPriority = -1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 0
    local turnTime = 0
    local alwaysSuccess = false
    ai:SetTimer(2, 20)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42007)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act26(ai, goal, paramTbl)
    ai:SetNumber(2, 0)
    local goalLife = 5
    local frontPriority = -1
    local backPriority = -1
    local leftPriority = 1
    local rightPriority = -1
    local target = TARGET_ENE_0
    local distSpaceCheck = 3
    local turnTime = 0
    local alwaysSuccess = true
    ai:SetTimer(2, 20)
    ai:SetNumber(3, 1)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42003)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42004)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42007)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42057)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act27(ai, goal, paramTbl)
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
    ai:SetNumber(3, 2)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42004)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42007)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42057)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act28(ai, goal, paramTbl)
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
    ai:SetTimer(2, 20)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:SetAIFixedMoveTargetSpecifyAngle(TARGET_ENE_0, -90, distanceEnemy / 2, AI_SPA_DIR_TYPE_ToTarget)
    goal:AddSubGoal(GOAL_COMMON_SpinStep, 30, 6001, POINT_AI_FIXED_POS, 0, AI_DIR_TYPE_B, 0)
    f30_local0 = 0
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act29(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, ai:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act30(ai, goal, paramTbl)
    local goalLife = 20
    local animationId = 3025
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 45
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42011)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42008)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act31(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 15
    local f33_local1 = 3010
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42017)
    if ai:HasSpecialEffectId(TARGET_SELF, 42042) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3038, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 42043) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3039, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3018, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act32(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local goalLife = 10
    local animationId = 3005
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42006)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42009)
    local stopDist = 30.5
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 6
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act33(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3028
    local successDist = 999
    local turnTime = 1.5
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act34(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 15
    local animationId = 20007
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act35(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3012
    local successDist = 999
    local turnTime = 1.5
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_Act36(ai, goal, paramTbl)
    ai:SetNumber(3, 0)
    local goalLife = 10
    local animationId = 3024
    local successDist = 999
    local turnTime = 1.5
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function NocturnalCerberus750000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_NocturnalCerberus750000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local f42_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f42_local1 = 0
    local f42_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local f42_local5 = STEP_CANCELDIST
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42002)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42005)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(42000) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            local random_3 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 <= 7 then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif random_3 < 50 and ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42001) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            local random_3 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if distanceEnemy_2 <= 3 then
                    if random_2 < 20 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif random_2 < 45 and ai:HasSpecialEffectId(TARGET_SELF, 42042) == false and ai:HasSpecialEffectId(TARGET_SELF, 42043) == false then
                        if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif not (random_2 < 80) or random_3 < 50 and ai:HasSpecialEffectId(TARGET_SELF, 42042) == false and ai:HasSpecialEffectId(TARGET_SELF, 42043) == false then
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif not (random_2 < 70) or random_3 < 50 and ai:HasSpecialEffectId(TARGET_SELF, 42042) == false and ai:HasSpecialEffectId(TARGET_SELF, 42043) == false then
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and distanceEnemy_2 <= 10 then
                if random_2 < 30 and ai:HasSpecialEffectId(TARGET_SELF, 42042) == false and ai:HasSpecialEffectId(TARGET_SELF, 42043) == false then
                    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif not (random_2 < 60) or random_3 < 50 and ai:HasSpecialEffectId(TARGET_SELF, 42042) == false and ai:HasSpecialEffectId(TARGET_SELF, 42043) == false then
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42002) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42057) == true then
                NocturnalCerberus750000_Act24(ai, goal)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy_2 <= 20 then
                if random_2 < 40 then
                    if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif random_2 < 70 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    NocturnalCerberus750000_Act24(ai, goal)
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42003) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42057) == true then
                NocturnalCerberus750000_Act24(ai, goal)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and distanceEnemy_2 <= 20 and distanceEnemy_2 >= 8 and random_2 < 50 then
                if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42004) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            local random_3 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42057) == true then
                NocturnalCerberus750000_Act24(ai, goal)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if distanceEnemy_2 <= 20 and distanceEnemy_2 >= 8 then
                    if random_2 < 50 then
                        if ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        else
                            goal:ClearSubGoal()
                            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                            return true
                        end
                    elseif random_3 < 50 and ai:HasSpecialEffectId(TARGET_SELF, 42042) == false and ai:HasSpecialEffectId(TARGET_SELF, 42043) == false then
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif random_3 < 50 and ai:HasSpecialEffectId(TARGET_SELF, 42042) == false and ai:HasSpecialEffectId(TARGET_SELF, 42043) == false then
                else
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42005) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                if distanceEnemy_2 <= 5 then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif distanceEnemy_2 <= 15 then
                    if random_2 < 50 then
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42006) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and random_2 < 100 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42009) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and random_2 < 100 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42010) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and ai:GetHpRate(TARGET_SELF) <= 0.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42011) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true then
                if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and ai:GetHpRate(TARGET_SELF) <= 0.5 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42012) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if distanceEnemy_2 <= 23 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42013) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(42015) then
            local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_1, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42016) then
            local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_2, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42014) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 42060) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(42008) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3034, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5030) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(51330) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(51325) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20012, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(51326) then
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20013, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5032) and ai:HasSpecialEffectId(TARGET_SELF, 42040) == false then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(5033) and ai:HasSpecialEffectId(TARGET_SELF, 42040) == true then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Damaged) then
        local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
        local random_2 = ai:GetRandam_Int(1, 100)
        if ai:HasSpecialEffectId(TARGET_SELF, 5031) and ai:HasSpecialEffectId(TARGET_SELF, 51311) then
            if ai:HasSpecialEffectId(TARGET_SELF, 42040) == false then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5034) and ai:HasSpecialEffectId(TARGET_SELF, 5401) then
            goal:ClearSubGoal()
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_NocturnalCerberus750000_AfterAttackAct, "NocturnalCerberus750000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NocturnalCerberus750000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

