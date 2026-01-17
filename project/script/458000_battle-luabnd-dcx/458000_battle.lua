RegisterTableGoal(GOAL_Deracine_Female458000_Battle, "Deracine_Female458000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Deracine_Female458000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:EnableUnfavorableAttackCheck(0, 3000)
    ai:EnableUnfavorableAttackCheck(0, 3001)
    ai:EnableUnfavorableAttackCheck(0, 3013)
    ai:EnableUnfavorableAttackCheck(0, 3014)
    ai:EnableUnfavorableAttackCheck(0, 3015)
    ai:EnableUnfavorableAttackCheck(0, 3016)
    ai:EnableUnfavorableAttackCheck(0, 3019)
    ai:EnableUnfavorableAttackCheck(0, 3020)
    ai:EnableUnfavorableAttackCheck(0, 3021)
    ai:EnableUnfavorableAttackCheck(0, 3022)
    ai:EnableUnfavorableAttackCheck(0, 3023)
    ai:EnableUnfavorableAttackCheck(0, 3024)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Run_Odds", 0)
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
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16578)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16587)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16588)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16589)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42195)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42196)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42197)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42204)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42208)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42212)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 7855)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 7955)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_6, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_7, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_8, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_9, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_10, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_11, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_12, 42205)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 102400)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local random = ai:GetRandam_Int(1, 100)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        if ai:HasSpecialEffectId(TARGET_SELF, 16578) then
            probabilities[31] = 9000000000
            probabilities[15] = 5
        end
        if ai:GetHpRate(TARGET_SELF) < 0.6 and ai:HasSpecialEffectId(TARGET_SELF, 42208) == false then
            probabilities[31] = 9000000000
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 42208) then
            if distanceEnemy >= 30 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[10] = 5
                    probabilities[13] = 20
                    probabilities[14] = 35
                else
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[8] = 25
                    probabilities[9] = 25
                    probabilities[10] = 5
                    probabilities[13] = 20
                end
            elseif distanceEnemy >= 25 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[10] = 5
                    probabilities[13] = 20
                    probabilities[14] = 35
                else
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[8] = 25
                    probabilities[9] = 25
                    probabilities[10] = 5
                    probabilities[13] = 20
                end
            elseif distanceEnemy >= 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[10] = 5
                    probabilities[13] = 20
                    probabilities[14] = 35
                else
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[8] = 25
                    probabilities[9] = 25
                    probabilities[10] = 5
                    probabilities[13] = 20
                end
            elseif distanceEnemy >= 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[10] = 15
                    probabilities[13] = 30
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[8] = 15
                    probabilities[10] = 10
                    probabilities[13] = 25
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[9] = 15
                    probabilities[10] = 10
                    probabilities[13] = 25
                else
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[6] = 5
                    probabilities[7] = 5
                    probabilities[8] = 15
                    probabilities[9] = 15
                    probabilities[10] = 10
                    probabilities[13] = 30
                end
            elseif distanceEnemy >= 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[10] = 15
                    probabilities[13] = 30
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[8] = 15
                    probabilities[10] = 10
                    probabilities[13] = 25
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[9] = 15
                    probabilities[10] = 10
                    probabilities[13] = 25
                else
                    probabilities[3] = 10
                    probabilities[5] = 10
                    probabilities[6] = 5
                    probabilities[7] = 5
                    probabilities[8] = 15
                    probabilities[9] = 15
                    probabilities[10] = 10
                    probabilities[13] = 30
                end
            elseif distanceEnemy >= 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[6] = 15
                    probabilities[7] = 5
                    probabilities[10] = 20
                    probabilities[13] = 35
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[8] = 30
                    probabilities[10] = 30
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[3] = 15
                    probabilities[5] = 10
                    probabilities[6] = 10
                    probabilities[7] = 5
                    probabilities[9] = 30
                    probabilities[10] = 30
                else
                    probabilities[3] = 20
                    probabilities[5] = 20
                    probabilities[8] = 30
                    probabilities[9] = 30
                end
            elseif distanceEnemy >= 3 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 20
                    probabilities[5] = 20
                    probabilities[10] = 20
                    probabilities[13] = 40
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[3] = 20
                    probabilities[5] = 20
                    probabilities[8] = 40
                    probabilities[10] = 20
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[3] = 20
                    probabilities[5] = 20
                    probabilities[9] = 40
                    probabilities[10] = 20
                else
                    probabilities[3] = 10
                    probabilities[5] = 20
                    probabilities[8] = 35
                    probabilities[9] = 35
                end
            elseif distanceEnemy >= 2 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    probabilities[3] = 40
                    probabilities[5] = 20
                    probabilities[12] = 40
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    probabilities[3] = 20
                    probabilities[5] = 20
                    probabilities[8] = 30
                    probabilities[12] = 30
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    probabilities[3] = 20
                    probabilities[5] = 20
                    probabilities[9] = 30
                    probabilities[12] = 30
                else
                    probabilities[3] = 10
                    probabilities[5] = 20
                    probabilities[8] = 35
                    probabilities[9] = 35
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[5] = 15
                probabilities[11] = 35
                probabilities[12] = 20
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[8] = 20
                probabilities[11] = 25
                probabilities[12] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[1] = 10
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[9] = 20
                probabilities[11] = 25
                probabilities[12] = 25
            else
                probabilities[1] = 10
                probabilities[2] = 10
                probabilities[3] = 10
                probabilities[5] = 15
                probabilities[8] = 15
                probabilities[9] = 15
                probabilities[11] = 25
            end
            probabilities[34] = 50
            probabilities[33] = 50
        elseif distanceEnemy >= 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[10] = 5
                probabilities[13] = 20
                probabilities[14] = 35
            else
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[8] = 25
                probabilities[9] = 25
                probabilities[10] = 5
                probabilities[13] = 20
            end
        elseif distanceEnemy >= 25 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[10] = 5
                probabilities[13] = 20
                probabilities[14] = 35
            else
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[8] = 25
                probabilities[9] = 25
                probabilities[10] = 5
                probabilities[13] = 20
            end
        elseif distanceEnemy >= 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[10] = 5
                probabilities[13] = 20
                probabilities[14] = 35
            else
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[8] = 25
                probabilities[9] = 25
                probabilities[10] = 5
                probabilities[13] = 20
            end
        elseif distanceEnemy >= 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[10] = 15
                probabilities[13] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            else
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 5
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 30
            end
        elseif distanceEnemy >= 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[10] = 15
                probabilities[13] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            else
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 5
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 30
            end
        elseif distanceEnemy >= 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 15
                probabilities[7] = 5
                probabilities[10] = 20
                probabilities[13] = 35
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[8] = 30
                probabilities[10] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[9] = 30
                probabilities[10] = 30
            else
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[8] = 30
                probabilities[9] = 30
            end
        elseif distanceEnemy >= 3 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[10] = 20
                probabilities[13] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[8] = 40
                probabilities[10] = 20
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[9] = 40
                probabilities[10] = 20
            else
                probabilities[3] = 10
                probabilities[5] = 20
                probabilities[8] = 35
                probabilities[9] = 35
            end
        elseif distanceEnemy >= 2 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 40
                probabilities[5] = 20
                probabilities[12] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[8] = 30
                probabilities[12] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[9] = 30
                probabilities[12] = 30
            else
                probabilities[3] = 10
                probabilities[5] = 20
                probabilities[8] = 35
                probabilities[9] = 35
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[5] = 15
            probabilities[11] = 35
            probabilities[12] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[8] = 20
            probabilities[11] = 25
            probabilities[12] = 25
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[1] = 10
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[9] = 20
            probabilities[11] = 25
            probabilities[12] = 25
        else
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[5] = 15
            probabilities[8] = 15
            probabilities[9] = 15
            probabilities[11] = 25
        end
        probabilities[3] = 0
        probabilities[4] = 0
        probabilities[8] = 0
        probabilities[9] = 0
        probabilities[14] = 0
        if ai:HasSpecialEffectId(TARGET_SELF, 42195) == false then
            probabilities[16] = 50000
        end
        if ai:HasSpecialEffectId(TARGET_ENE_0, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_3, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_4, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_5, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_6, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_7, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_8, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_9, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_10, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_11, 42205) == false and ai:HasSpecialEffectId(TARGET_ENE_12, 42205) == false then
            probabilities[15] = 900000
            probabilities[21] = 5
            probabilities[22] = 5
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 42196) and ai:HasSpecialEffectId(TARGET_SELF, 7855) == false and ai:HasSpecialEffectId(TARGET_SELF, 7955) == false then
            probabilities[1] = 0
            probabilities[2] = 0
            probabilities[3] = 0
            probabilities[4] = 0
            probabilities[5] = 0
            probabilities[6] = 0
            probabilities[7] = 0
            probabilities[8] = 0
            probabilities[9] = 0
            probabilities[10] = 0
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[15] = 0
            probabilities[16] = 0
            probabilities[17] = 0
            probabilities[18] = 0
            probabilities[19] = 0
            probabilities[20] = 0
            probabilities[21] = 0
            probabilities[22] = 0
            probabilities[23] = 0
            probabilities[24] = 0
            probabilities[25] = 0
            probabilities[26] = 0
            probabilities[27] = 0
            probabilities[28] = 0
            probabilities[29] = 0
            probabilities[30] = 0
            probabilities[31] = 0
            probabilities[32] = 0
            probabilities[33] = 0
            probabilities[34] = 0
            if distanceEnemy >= 20 then
                probabilities[35] = 100
            elseif distanceEnemy >= 15 then
                probabilities[36] = 100
            elseif distanceEnemy >= 10 then
                probabilities[36] = 20
                probabilities[37] = 80
            elseif distanceEnemy >= 1.5 then
                probabilities[37] = 100
            else
                probabilities[37] = 100
            end
        end
    elseif ai:GetHpRate(TARGET_SELF) < 0.7 then
        if distanceEnemy >= 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[4] = 20
                probabilities[5] = 10
                probabilities[10] = 5
                probabilities[13] = 20
                probabilities[14] = 35
            else
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[8] = 25
                probabilities[9] = 25
                probabilities[10] = 5
                probabilities[13] = 20
            end
        elseif distanceEnemy >= 25 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[4] = 20
                probabilities[5] = 10
                probabilities[10] = 5
                probabilities[13] = 20
                probabilities[14] = 35
            else
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[8] = 25
                probabilities[9] = 25
                probabilities[10] = 5
                probabilities[13] = 20
            end
        elseif distanceEnemy >= 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[4] = 20
                probabilities[5] = 10
                probabilities[10] = 5
                probabilities[13] = 20
                probabilities[14] = 35
            else
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[8] = 25
                probabilities[9] = 25
                probabilities[10] = 5
                probabilities[13] = 20
            end
        elseif distanceEnemy >= 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[4] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[10] = 15
                probabilities[13] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[4] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[4] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            else
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 5
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 30
            end
        elseif distanceEnemy >= 10 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[4] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[10] = 15
                probabilities[13] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[4] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 10
                probabilities[4] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 25
            else
                probabilities[3] = 10
                probabilities[5] = 10
                probabilities[6] = 5
                probabilities[7] = 5
                probabilities[8] = 15
                probabilities[9] = 15
                probabilities[10] = 10
                probabilities[13] = 30
            end
        elseif distanceEnemy >= 5 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 15
                probabilities[7] = 5
                probabilities[10] = 20
                probabilities[13] = 35
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[8] = 30
                probabilities[10] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 15
                probabilities[5] = 10
                probabilities[6] = 10
                probabilities[7] = 5
                probabilities[9] = 30
                probabilities[10] = 30
            else
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[8] = 30
                probabilities[9] = 30
            end
        elseif distanceEnemy >= 3 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[10] = 20
                probabilities[13] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[8] = 40
                probabilities[10] = 20
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[9] = 40
                probabilities[10] = 20
            else
                probabilities[3] = 10
                probabilities[5] = 20
                probabilities[8] = 35
                probabilities[9] = 35
            end
        elseif distanceEnemy >= 2 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                probabilities[3] = 40
                probabilities[5] = 20
                probabilities[12] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[8] = 30
                probabilities[12] = 30
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                probabilities[3] = 20
                probabilities[5] = 20
                probabilities[9] = 30
                probabilities[12] = 30
            else
                probabilities[3] = 10
                probabilities[5] = 20
                probabilities[8] = 35
                probabilities[9] = 35
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[5] = 15
            probabilities[11] = 35
            probabilities[12] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[8] = 20
            probabilities[11] = 25
            probabilities[12] = 25
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[1] = 10
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[9] = 20
            probabilities[11] = 25
            probabilities[12] = 25
        else
            probabilities[1] = 10
            probabilities[2] = 10
            probabilities[3] = 10
            probabilities[5] = 15
            probabilities[8] = 15
            probabilities[9] = 15
            probabilities[11] = 25
        end
    elseif distanceEnemy >= 30 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[10] = 20
            probabilities[14] = 40
        else
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[10] = 60
            probabilities[23] = 20
        end
    elseif distanceEnemy >= 25 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[10] = 20
            probabilities[14] = 40
        else
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[10] = 60
            probabilities[23] = 20
        end
    elseif distanceEnemy >= 20 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[10] = 20
            probabilities[14] = 40
        else
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[10] = 60
            probabilities[23] = 20
        end
    elseif distanceEnemy >= 15 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 25
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 15
            probabilities[10] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 10
            probabilities[10] = 20
            probabilities[23] = 10
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 10
            probabilities[10] = 20
            probabilities[23] = 10
        else
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 20
            probabilities[10] = 20
            probabilities[23] = 20
        end
    elseif distanceEnemy >= 10 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 25
            probabilities[5] = 10
            probabilities[6] = 15
            probabilities[7] = 15
            probabilities[10] = 25
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 10
            probabilities[10] = 20
            probabilities[23] = 10
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[4] = 20
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 10
            probabilities[10] = 20
            probabilities[23] = 10
        else
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 20
            probabilities[10] = 20
            probabilities[23] = 20
        end
    elseif distanceEnemy >= 5 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[5] = 20
            probabilities[6] = 20
            probabilities[7] = 15
            probabilities[10] = 35
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 10
            probabilities[10] = 40
            probabilities[23] = 10
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[3] = 10
            probabilities[5] = 10
            probabilities[6] = 20
            probabilities[7] = 10
            probabilities[10] = 40
            probabilities[23] = 10
        else
            probabilities[3] = 35
            probabilities[5] = 35
            probabilities[23] = 30
        end
    elseif distanceEnemy >= 3 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 50
            probabilities[5] = 20
            probabilities[10] = 30
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[3] = 40
            probabilities[5] = 20
            probabilities[10] = 20
            probabilities[23] = 20
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[3] = 40
            probabilities[5] = 20
            probabilities[10] = 20
            probabilities[23] = 20
        else
            probabilities[3] = 30
            probabilities[5] = 20
            probabilities[23] = 50
        end
    elseif distanceEnemy >= 2 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            probabilities[3] = 50
            probabilities[5] = 20
            probabilities[12] = 30
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            probabilities[3] = 40
            probabilities[5] = 20
            probabilities[12] = 30
            probabilities[23] = 10
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            probabilities[3] = 40
            probabilities[5] = 20
            probabilities[12] = 30
            probabilities[23] = 10
        else
            probabilities[3] = 30
            probabilities[5] = 20
            probabilities[23] = 50
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        probabilities[1] = 15
        probabilities[2] = 15
        probabilities[3] = 15
        probabilities[5] = 20
        probabilities[12] = 35
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
        probabilities[2] = 20
        probabilities[3] = 20
        probabilities[5] = 20
        probabilities[12] = 30
        probabilities[23] = 10
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
        probabilities[1] = 20
        probabilities[3] = 20
        probabilities[5] = 20
        probabilities[12] = 30
        probabilities[23] = 10
    else
        probabilities[1] = 25
        probabilities[2] = 25
        probabilities[3] = 20
        probabilities[5] = 20
        probabilities[23] = 10
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 3, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 3, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3010, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3011, 60, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3012, ai:GetRandam_Int(40, 80), probabilities[5], 0)
    probabilities[6] = SetCoolTime(ai, goal, 3013, 10, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3014, 10, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3017, 3, probabilities[8], 1)
    probabilities[9] = SetCoolTime(ai, goal, 3018, 3, probabilities[9], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3019, 10, probabilities[10], 1)
    probabilities[11] = SetCoolTime(ai, goal, 3020, 15, probabilities[11], 0)
    probabilities[12] = SetCoolTime(ai, goal, 3022, 3, probabilities[12], 1)
    probabilities[13] = SetCoolTime(ai, goal, 3023, 15, probabilities[13], 0)
    probabilities[14] = SetCoolTime(ai, goal, 3025, 3, probabilities[14], 1)
    probabilities[16] = SetCoolTime(ai, goal, 3012, ai:GetRandam_Int(40, 60), probabilities[16], 1)
    probabilities[33] = SetCoolTime(ai, goal, 3034, 50, probabilities[33], 0)
    probabilities[34] = SetCoolTime(ai, goal, 3030, 80, probabilities[34], 0)
    acts[1] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act1)
    acts[2] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act2)
    acts[3] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act3)
    acts[4] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act4)
    acts[5] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act5)
    acts[6] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act6)
    acts[7] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act7)
    acts[8] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act8)
    acts[9] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act9)
    acts[10] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act16)
    acts[20] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act24)
    acts[30] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act36)
    acts[37] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act37)
    acts[38] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act38)
    acts[39] = REGIST_FUNC(ai, goal, Deracine_Female458000_Act39)
    local actAfter = REGIST_FUNC(ai, goal, Deracine_Female458000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Deracine_Female458000_Act1(ai, goal, paramTbl)
    local f3_local0 = 3 - ai:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 25
    local f3_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f3_local2 = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        f3_local3 = 100
    end
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act2(ai, goal, paramTbl)
    local f4_local0 = 3 - ai:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 25
    local f4_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f4_local2 = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        f4_local3 = 100
    end
    local animationId = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act3(ai, goal, paramTbl)
    local f5_local0 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 25
    local f5_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    local animationId = 3010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f5_local2 = 999
    end
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act4(ai, goal, paramTbl)
    local stopDist = 29 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3011
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act5(ai, goal, paramTbl)
    local f7_local0 = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 25
    local f7_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f7_local2 = 999
    end
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act6(ai, goal, paramTbl)
    local stopDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local animationId = 3013
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act7(ai, goal, paramTbl)
    local stopDist = 16 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3014
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act8(ai, goal, paramTbl)
    local f10_local0 = 4 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 25
    local f10_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f10_local2 = 999
    end
    local animationId = 3017
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act9(ai, goal, paramTbl)
    local f11_local0 = 4 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 25
    local f11_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f11_local2 = 999
    end
    local animationId = 3018
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act10(ai, goal, paramTbl)
    local stopDist = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local animationId = 3019
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act11(ai, goal, paramTbl)
    local f13_local0 = 1 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 25
    local f13_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f13_local2 = 999
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local animationId = 3020
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act12(ai, goal, paramTbl)
    local f14_local0 = 2.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 25
    local f14_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f14_local2 = 999
    end
    local animationId = 3022
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act13(ai, goal, paramTbl)
    local stopDist = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local animationId = 3024
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act14(ai, goal, paramTbl)
    local stopDist = 29 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 25
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) == false and ai:GetHpRate(TARGET_SELF) < 0.7 then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3025
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act15(ai, goal, paramTbl)
    local f17_local0 = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 25
    local f17_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f17_local2 = 999
    end
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_1, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act16(ai, goal, paramTbl)
    local f18_local0 = 10 - ai:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 25
    local f18_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f18_local4 = 0
    local f18_local5 = 2
    local f18_local6 = 2
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        f18_local2 = 999
    end
    local animationId = 3012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_1, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act20(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act21(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act22(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act23(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act24(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act30(ai, goal, paramTbl)
    local stopDist = 100
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 9
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42204)
    local goalLife = 10
    local animationId = 3034
    local animationId_2 = 3035
    local f24_local10 = 3036
    local successDist = 180
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, animationId_2, TARGET_ENE_0, successDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act31(ai, goal, paramTbl)
    local stopDist = 999
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42204)
    local goalLife = 20
    local animationId = 3030
    local animationId_2 = 3031
    local successDist = 999
    local f25_local11 = 0
    local f25_local12 = 360
    goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, goalLife, animationId, TARGET_ENE_0, successDist, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_NonspinningComboFinal, goalLife, animationId_2, TARGET_ENE_0, successDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act32(ai, goal, paramTbl)
    local stopDist = 50
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local f26_local7 = 10
    local animationId = 3033
    local successDist = 50
    local turnTime = 2
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act33(ai, goal, paramTbl)
    local stopDist = 999
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42204)
    local f27_local7 = 5
    local animationId = 3034
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act34(ai, goal, paramTbl)
    local stopDist = 999
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    if ai:HasSpecialEffectId(TARGET_SELF, 42212) then
        forceRunMinDist = 999
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5022)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42203)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 42204)
    local goalLife = 20
    local animationId = 3030
    local animationId_2 = 3031
    local successDist = 999
    local f28_local11 = 0
    local f28_local12 = 360
    goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, goalLife, animationId, TARGET_ENE_0, successDist, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_NonspinningComboFinal, goalLife, animationId_2, TARGET_ENE_0, successDist, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act35(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act36(ai, goal, paramTbl)
    if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_Act37(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
    elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Deracine_Female458000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Deracine_Female458000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local f35_local2 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local upAngleThreshold = 0
    local downAngleThreshold = 0
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 11) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 999, upAngleThreshold, downAngleThreshold, 0, 0)
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 11) then
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, upAngleThreshold, downAngleThreshold, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5026) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5027) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5028) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 6) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 12) then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5029) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            elseif ai:GetNumber(0) >= 1 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                ai:SetNumber(0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                ai:SetNumber(0, ai:GetNumber(0) + 1)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            elseif ai:GetNumber(0) >= 1 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                ai:SetNumber(0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                ai:SetNumber(0, ai:GetNumber(0) + 1)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            elseif ai:GetNumber(0) >= 1 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                ai:SetNumber(0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                ai:SetNumber(0, ai:GetNumber(0) + 1)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5031) then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 3) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 20) then
            if distanceYEnemy > 4 then
                return true
            else
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5033) then
        if ai:HasSpecialEffectId(TARGET_SELF, 16578) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3032, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3033, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5035) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3034, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(42203) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_1, 999, 360, 360, 360, 360)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(42204) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_2, 999, 360, 360, 360, 360)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_Deracine_Female458000_AfterAttackAct, "Deracine_Female458000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Deracine_Female458000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

