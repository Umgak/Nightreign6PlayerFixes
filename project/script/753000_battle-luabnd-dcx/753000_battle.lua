RegisterTableGoal(GOAL_Bouncer753000_Battle, "Bouncer753000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bouncer753000_Battle, true)

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
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local distanceSound = ai:GetDist(TARGET_SOUND)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local hpRatioEvent = ai:GetHpRate(TARGET_EVENT)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 45987) == true then
        probabilities[12] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 45986) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 45955) == true then
            probabilities[12] = 100
        else
            probabilities[11] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 45984) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 45955) == true then
            probabilities[20] = 100
        else
            probabilities[10] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 45936) == true then
        probabilities[17] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 45935) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 45955) == true then
            probabilities[17] = 100
        else
            probabilities[16] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 45955) == true then
        probabilities[20] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 47131) then
        probabilities[23] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 47116) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 47201) == true then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[24] = 50
                    probabilities[30] = 50
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            else
                probabilities[24] = 100
            end
        elseif distanceEnemy > 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[3] = 100
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[3] = 100
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[3] = 100
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[6] = 70
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            probabilities[1] = 30
            probabilities[6] = 70
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
            probabilities[4] = 70
            probabilities[30] = 30
        else
            probabilities[4] = 70
            probabilities[30] = 30
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 47120) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 45962) == true then
            if distanceEnemy > 25 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[27] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[28] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[28] = 100
                else
                    probabilities[28] = 100
                end
            elseif distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[27] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[28] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[28] = 100
                else
                    probabilities[28] = 100
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[27] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[28] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[28] = 100
                else
                    probabilities[28] = 100
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[27] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[27] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[27] = 100
                else
                    probabilities[27] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[27] = 100
            else
                probabilities[27] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 45961) == true then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[26] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[28] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[28] = 100
                else
                    probabilities[28] = 100
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[26] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[28] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[28] = 100
                else
                    probabilities[28] = 100
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[26] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[28] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[28] = 100
                else
                    probabilities[28] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 300) then
                probabilities[26] = 100
            else
                probabilities[26] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 45960) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[25] = 100
            else
                probabilities[25] = 50
                probabilities[40] = 50
            end
        elseif ai:GetHpRate(TARGET_SELF) <= 0.9 or ai:GetHpRate(TARGET_EVENT) <= 0.9 then
            if ai:HasSpecialEffectId(TARGET_EVENT, 47121) == true or ai:HasSpecialEffectId(TARGET_SELF, 47215) == true then
                if distanceEnemy > 40 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 100
                        probabilities[3] = 100
                        probabilities[6] = 70
                        probabilities[30] = 30
                    else
                        probabilities[30] = 70
                        probabilities[32] = 50
                    end
                elseif distanceEnemy > 30 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 100
                        probabilities[3] = 100
                        probabilities[6] = 70
                        probabilities[30] = 30
                    else
                        probabilities[30] = 70
                        probabilities[32] = 50
                    end
                elseif distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 100
                        probabilities[3] = 100
                        probabilities[6] = 70
                        probabilities[30] = 30
                    else
                        probabilities[30] = 70
                        probabilities[32] = 50
                    end
                elseif distanceEnemy > 15 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 100
                        probabilities[6] = 70
                    else
                        probabilities[30] = 70
                        probabilities[32] = 50
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                    probabilities[1] = 30
                    probabilities[6] = 70
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
                    probabilities[4] = 70
                    probabilities[30] = 30
                else
                    probabilities[4] = 70
                    probabilities[30] = 30
                end
            elseif distanceEnemy > 40 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[3] = 100
                    probabilities[6] = 70
                    probabilities[30] = 30
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif distanceEnemy > 30 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[3] = 100
                    probabilities[6] = 70
                    probabilities[30] = 30
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[3] = 100
                    probabilities[6] = 70
                    probabilities[30] = 30
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[5] = 300
                    probabilities[6] = 70
                else
                    probabilities[5] = 300
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                probabilities[1] = 30
                probabilities[5] = 300
                probabilities[6] = 70
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
                probabilities[4] = 70
                probabilities[5] = 300
                probabilities[30] = 30
            else
                probabilities[4] = 70
                probabilities[5] = 300
                probabilities[30] = 30
            end
        elseif distanceEnemy > 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[6] = 70
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            probabilities[1] = 30
            probabilities[6] = 70
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
            probabilities[4] = 70
            probabilities[30] = 30
        else
            probabilities[4] = 70
            probabilities[30] = 30
        end
    elseif ai:GetHpRate(TARGET_SELF) <= 0.9 or ai:GetHpRate(TARGET_EVENT) <= 0.9 then
        if ai:HasSpecialEffectId(TARGET_EVENT, 47121) == true or ai:HasSpecialEffectId(TARGET_SELF, 47215) == true then
            if distanceEnemy > 40 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[3] = 100
                    probabilities[6] = 70
                    probabilities[30] = 30
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif distanceEnemy > 30 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[3] = 100
                    probabilities[6] = 70
                    probabilities[30] = 30
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[3] = 100
                    probabilities[6] = 70
                    probabilities[30] = 30
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 100
                    probabilities[6] = 70
                else
                    probabilities[30] = 70
                    probabilities[32] = 50
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
                probabilities[1] = 30
                probabilities[6] = 70
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
                probabilities[4] = 70
                probabilities[30] = 30
            else
                probabilities[4] = 70
                probabilities[30] = 30
            end
        elseif distanceEnemy > 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[3] = 100
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[3] = 100
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[3] = 100
                probabilities[6] = 70
                probabilities[30] = 30
            else
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 100
                probabilities[5] = 300
                probabilities[6] = 70
            else
                probabilities[5] = 300
                probabilities[30] = 70
                probabilities[32] = 50
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            probabilities[1] = 30
            probabilities[5] = 300
            probabilities[6] = 70
            probabilities[10] = 150
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
            probabilities[4] = 70
            probabilities[5] = 300
            probabilities[10] = 150
            probabilities[30] = 30
        else
            probabilities[4] = 70
            probabilities[5] = 300
            probabilities[10] = 150
            probabilities[30] = 30
        end
    elseif distanceEnemy > 40 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 30
            probabilities[6] = 70
            probabilities[30] = 30
        else
            probabilities[30] = 70
            probabilities[32] = 50
        end
    elseif distanceEnemy > 30 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 30
            probabilities[6] = 70
            probabilities[30] = 30
        else
            probabilities[30] = 70
            probabilities[32] = 50
        end
    elseif distanceEnemy > 20 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 30
            probabilities[6] = 70
            probabilities[30] = 30
        else
            probabilities[30] = 70
            probabilities[32] = 50
        end
    elseif distanceEnemy > 15 then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
            probabilities[1] = 30
            probabilities[6] = 70
        else
            probabilities[30] = 70
            probabilities[32] = 50
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
        probabilities[1] = 30
        probabilities[6] = 70
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
        probabilities[4] = 70
        probabilities[30] = 30
    else
        probabilities[4] = 70
        probabilities[30] = 30
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 20, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3007, 30, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3008, 60, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3009, 8, probabilities[4], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3010, 8, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3011, 1, probabilities[5], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3016, 1, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3019, 30, probabilities[6], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3016, 1, probabilities[10], 1)
    probabilities[10] = SetCoolTime(ai, goal, 3011, 1, probabilities[10], 1)
    acts[1] = REGIST_FUNC(ai, goal, Bouncer753000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Bouncer753000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Bouncer753000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Bouncer753000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Bouncer753000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Bouncer753000_Act06)
    acts[10] = REGIST_FUNC(ai, goal, Bouncer753000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Bouncer753000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Bouncer753000_Act12)
    acts[15] = REGIST_FUNC(ai, goal, Bouncer753000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Bouncer753000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Bouncer753000_Act17)
    acts[20] = REGIST_FUNC(ai, goal, Bouncer753000_Act20)
    acts[23] = REGIST_FUNC(ai, goal, Bouncer753000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Bouncer753000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Bouncer753000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, Bouncer753000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, Bouncer753000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, Bouncer753000_Act28)
    acts[30] = REGIST_FUNC(ai, goal, Bouncer753000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, Bouncer753000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, Bouncer753000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, Bouncer753000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, Bouncer753000_Act34)
    local actAfter = REGIST_FUNC(ai, goal, Bouncer753000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Bouncer753000_Act01(ai, goal, paramTbl)
    local stopDist = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47116) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act02(ai, goal, paramTbl)
    local stopDist = 32 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47116) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act03(ai, goal, paramTbl)
    local stopDist = 34 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47116) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3008
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act04(ai, goal, paramTbl)
    local f6_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 10
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3009
    local animationId_2 = 3010
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act05(ai, goal, paramTbl)
    local f7_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3011
    local animationId_2 = 3020
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, animationId_2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act06(ai, goal, paramTbl)
    local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47116) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3019
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act10(ai, goal, paramTbl)
    local f9_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3016
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act11(ai, goal, paramTbl)
    local f10_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3017
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act12(ai, goal, paramTbl)
    local f11_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3018
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act15(ai, goal, paramTbl)
    local f12_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3020
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act16(ai, goal, paramTbl)
    local f13_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3021
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act17(ai, goal, paramTbl)
    local f14_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 10
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3022
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act20(ai, goal, paramTbl)
    local f15_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 10
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20002
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 45956)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act23(ai, goal, paramTbl)
    local f16_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 10
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20036
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act24(ai, goal, paramTbl)
    local f17_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 10
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3011
    local animationId_2 = 20037
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 30, animationId_2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act25(ai, goal, paramTbl)
    local f18_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 10
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 2
    local f18_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3011
    local animationId_2 = 3012
    local animationId_3 = 3013
    local animationId_4 = 3001
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local hpRatioEvent = ai:GetHpRate(TARGET_EVENT)
    if ai:GetHpRate(TARGET_SELF) <= 0.2 or ai:GetHpRate(TARGET_EVENT) <= 0.2 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_3, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_4, TARGET_ENE_0, 999, 0, 0)
    elseif ai:GetHpRate(TARGET_SELF) <= 0.4 or ai:GetHpRate(TARGET_EVENT) <= 0.4 then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_4, TARGET_ENE_0, 999, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_4, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act26(ai, goal, paramTbl)
    local f19_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 10
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3002
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act27(ai, goal, paramTbl)
    local f20_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 10
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3003
    local animationId_2 = 3004
    local animationId_3 = 3002
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
        if distanceEnemy > 10 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_3, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_2, TARGET_ENE_0, 999, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_3, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_2, TARGET_ENE_0, 999, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Bouncer753000_Act28(ai, goal, paramTbl)
    local f21_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 10
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 2
    local f21_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3004
    local successDist = 6 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act30(ai, goal, paramTbl)
    if ai:HasSpecialEffectId(TARGET_SELF, 47116) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act31(ai, goal, paramTbl)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act32(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act33(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Wait, 2.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_Act34(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 5, 5, true, -1, 0, 0, false, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Bouncer753000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 47116) == true then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            if distanceEnemy > 7 and random <= 70 then
                if random > 50 then
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2.5, 3), TARGET_ENE_0, -10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
                else
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2.5, 3), TARGET_ENE_0, -10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
                end
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
            if distanceEnemy > 1 and random <= 70 then
                if random > 50 then
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2.5, 3), TARGET_ENE_0, -10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
                else
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2.5, 3), TARGET_ENE_0, -10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
                end
            end
        elseif distanceEnemy > 4 and random <= 70 then
            if random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2.5, 3), TARGET_ENE_0, -10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2.5, 3), TARGET_ENE_0, -10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
            end
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
        if distanceEnemy > 7 and random <= 70 then
            if random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
            end
        end
    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
        if distanceEnemy > 1 and random <= 70 then
            if random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
            end
        end
    elseif distanceEnemy > 4 and random <= 70 then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
        end
    end
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local f30_local2 = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local f30_local3 = 0
    local f30_local4 = 20
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local random_3 = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local f30_local9 = STEP_CANCELDIST
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 10) then
            return true
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
            if random <= 10 then
                goal:ClearSubGoal()
                Bouncer753000_Act02(ai, goal, paramTbl)
                return true
            elseif random <= 20 then
                goal:ClearSubGoal()
                Bouncer753000_Act03(ai, goal, paramTbl)
                return true
            elseif random <= 45 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 15, TARGET_ENE_0, false, -1)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 30) then
            if random <= 45 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 100, TARGET_ENE_0, false, -1)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 30) then
            if random <= 45 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 100, TARGET_ENE_0, false, -1)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 30) then
            if random <= 45 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 100, TARGET_ENE_0, false, -1)
                return true
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) and random <= 45 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 100, TARGET_ENE_0, false, -1)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Bouncer753000_AfterAttackAct, "Bouncer753000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Bouncer753000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

