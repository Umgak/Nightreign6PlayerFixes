RegisterTableGoal(GOAL_Centipede771000_Battle, "Centipede771000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Centipede771000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 9)
    ai:SetStringIndexedNumber("Dist_BackStep", 9)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local eventRequest = ai:GetEventRequest()
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local distanceSound = ai:GetDist(TARGET_SOUND)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[30] = 80
                probabilities[1] = 10
                probabilities[2] = 10
            else
                probabilities[30] = 70
                probabilities[33] = 30
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[30] = 10
                probabilities[31] = 70
                probabilities[1] = 10
                probabilities[2] = 10
            else
                probabilities[30] = 70
                probabilities[33] = 30
            end
        elseif distanceEnemy > 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[31] = 80
                probabilities[1] = 10
                probabilities[2] = 10
            else
                probabilities[30] = 70
                probabilities[33] = 30
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[31] = 80
                probabilities[1] = 10
                probabilities[2] = 10
            else
                probabilities[30] = 70
                probabilities[33] = 30
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[31] = 80
            probabilities[1] = 10
            probabilities[2] = 10
        else
            probabilities[30] = 70
            probabilities[33] = 30
        end
    elseif ai:GetHpRate(TARGET_SELF) <= 0.6 then
        if ai:HasSpecialEffectId(TARGET_SELF, 42264) == true then
            probabilities[1] = 30
            probabilities[2] = 30
            probabilities[3] = 0
            probabilities[4] = 30
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 30
            probabilities[10] = 10
            probabilities[15] = 50
        elseif ai:HasSpecialEffectId(TARGET_SELF, 42265) == true then
            probabilities[1] = 30
            probabilities[2] = 10
            probabilities[3] = 0
            probabilities[4] = 30
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 30
            probabilities[10] = 10
            probabilities[16] = 50
        elseif distanceEnemy > 25 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[6] = 100
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[34] = 30
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 70
                probabilities[6] = 100
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[34] = 30
            end
        elseif distanceEnemy > 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 50
                probabilities[2] = 50
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[5] = 10
                probabilities[6] = 100
                probabilities[30] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
                probabilities[4] = 70
                probabilities[30] = 50
                probabilities[34] = 50
            else
                probabilities[4] = 70
                probabilities[30] = 50
                probabilities[34] = 50
            end
        elseif distanceEnemy > 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 50
                probabilities[2] = 50
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[5] = 20
                probabilities[6] = 100
                probabilities[7] = 100
                probabilities[8] = 50
                probabilities[9] = 50
                probabilities[10] = 20
                probabilities[34] = 10
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
                probabilities[4] = 50
                probabilities[5] = 20
                probabilities[10] = 20
                probabilities[30] = 100
                probabilities[34] = 10
            else
                probabilities[4] = 50
                probabilities[5] = 20
                probabilities[9] = 30
                probabilities[10] = 20
                probabilities[30] = 100
                probabilities[34] = 10
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[4] = 50
            probabilities[5] = 20
            probabilities[7] = 100
            probabilities[9] = 50
            probabilities[10] = 20
            probabilities[31] = 20
            probabilities[34] = 10
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            probabilities[4] = 50
            probabilities[5] = 20
            probabilities[7] = 100
            probabilities[9] = 50
            probabilities[10] = 20
            probabilities[30] = 30
            probabilities[34] = 20
        else
            probabilities[4] = 50
            probabilities[5] = 20
            probabilities[7] = 100
            probabilities[9] = 50
            probabilities[10] = 20
            probabilities[30] = 50
            probabilities[31] = 30
            probabilities[34] = 20
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 42264) == true then
        probabilities[1] = 30
        probabilities[2] = 30
        probabilities[3] = 0
        probabilities[4] = 30
        probabilities[5] = 0
        probabilities[8] = 0
        probabilities[9] = 30
        probabilities[10] = 30
        probabilities[15] = 50
    elseif ai:HasSpecialEffectId(TARGET_SELF, 42265) == true then
        probabilities[1] = 30
        probabilities[2] = 30
        probabilities[3] = 0
        probabilities[4] = 30
        probabilities[5] = 0
        probabilities[8] = 0
        probabilities[9] = 30
        probabilities[10] = 30
        probabilities[16] = 50
    elseif distanceEnemy > 25 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[30] = 100
        else
            probabilities[30] = 70
            probabilities[34] = 30
        end
    elseif distanceEnemy > 15 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 70
            probabilities[30] = 30
        else
            probabilities[30] = 70
            probabilities[34] = 30
        end
    elseif distanceEnemy > 10 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 50
            probabilities[2] = 50
            probabilities[3] = 50
            probabilities[4] = 50
            probabilities[5] = 20
            probabilities[30] = 10
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            probabilities[4] = 50
            probabilities[30] = 50
            probabilities[34] = 50
        else
            probabilities[4] = 50
            probabilities[30] = 50
            probabilities[34] = 50
        end
    elseif distanceEnemy > 5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 50
            probabilities[2] = 50
            probabilities[3] = 50
            probabilities[4] = 50
            probabilities[5] = 20
            probabilities[8] = 50
            probabilities[9] = 30
            probabilities[10] = 20
            probabilities[34] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            probabilities[4] = 50
            probabilities[5] = 20
            probabilities[10] = 20
            probabilities[30] = 100
            probabilities[34] = 20
        else
            probabilities[4] = 50
            probabilities[5] = 20
            probabilities[9] = 30
            probabilities[10] = 20
            probabilities[30] = 100
            probabilities[34] = 20
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        probabilities[4] = 50
        probabilities[5] = 20
        probabilities[9] = 50
        probabilities[10] = 20
        probabilities[31] = 20
        probabilities[34] = 10
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
        probabilities[4] = 50
        probabilities[5] = 20
        probabilities[9] = 50
        probabilities[10] = 20
        probabilities[30] = 50
        probabilities[34] = 20
    else
        probabilities[4] = 50
        probabilities[5] = 20
        probabilities[9] = 50
        probabilities[10] = 20
        probabilities[30] = 50
        probabilities[31] = 20
        probabilities[34] = 20
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42270) == true then
        probabilities[3] = 0
        probabilities[5] = 0
        probabilities[7] = 0
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3002, 20, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3003, 20, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3004, 40, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3005, 30, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3006, 20, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3007, 20, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3008, 40, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3009, 40, probabilities[10], 1)
    probabilities[15] = SetCoolTime(ai, goal, 20002, 30, probabilities[15], 1)
    probabilities[16] = SetCoolTime(ai, goal, 20003, 30, probabilities[16], 1)
    probabilities[34] = SetCoolTime(ai, goal, 6001, 30, probabilities[34], 1)
    acts[1] = REGIST_FUNC(ai, goal, Centipede771000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Centipede771000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Centipede771000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Centipede771000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Centipede771000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Centipede771000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Centipede771000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Centipede771000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Centipede771000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Centipede771000_Act10)
    acts[15] = REGIST_FUNC(ai, goal, Centipede771000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Centipede771000_Act16)
    acts[30] = REGIST_FUNC(ai, goal, Centipede771000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, Centipede771000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, Centipede771000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, Centipede771000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, Centipede771000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, Centipede771000_Act35)
    acts[40] = REGIST_FUNC(ai, goal, Centipede771000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Centipede771000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Centipede771000_Act42)
    local actAfter = REGIST_FUNC(ai, goal, Centipede771000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Centipede771000_Act01(ai, goal, paramTbl)
    local stopDist = 13 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act02(ai, goal, paramTbl)
    local stopDist = 13 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act03(ai, goal, paramTbl)
    local stopDist = 25 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act04(ai, goal, paramTbl)
    local stopDist = 16 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act05(ai, goal, paramTbl)
    local f7_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3004
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act06(ai, goal, paramTbl)
    local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act07(ai, goal, paramTbl)
    local stopDist = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3006
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act08(ai, goal, paramTbl)
    local stopDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act09(ai, goal, paramTbl)
    local f11_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3008
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act10(ai, goal, paramTbl)
    local f12_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3009
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
end

function Centipede771000_Act15(ai, goal, paramTbl)
    local f13_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act16(ai, goal, paramTbl)
    local f14_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 10
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act30(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act31(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 4, lineWidth, 0) >= 4 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act32(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act33(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act34(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 2.5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act35(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, 3, 1.5, 4, true, -1, 0, 0, false, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act40(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centipede771000_Act41(ai, goal, paramTbl)
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

function Centipede771000_Act42(ai, goal, paramTbl)
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

function Centipede771000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    local random = ai:GetRandam_Int(1, 100)
    if random > 10 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
    end
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local f27_local0 = STEP_CANCELDIST
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local f27_local3 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f27_local4 = 0
    local f27_local5 = 0
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    return false
end

RegisterTableGoal(GOAL_Centipede771000_AfterAttackAct, "Centipede771000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Centipede771000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

