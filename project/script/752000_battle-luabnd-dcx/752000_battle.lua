RegisterTableGoal(GOAL_Moth752000_Battle, "Moth752000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Moth752000_Battle, true)

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
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 45943)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    local distanceYEnemy = ai:GetDistY(TARGET_ENE_0)
    local distanceFriend = ai:GetDist(TARGET_FRI_0)
    local distanceSound = ai:GetDist(TARGET_SOUND)
    local f2_local9 = ai:GetOffsetY(TARGET_SELF)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local hpRatioEvent = ai:GetHpRate(TARGET_EVENT)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local eventRequest = ai:GetEventRequest()
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local random_3 = ai:GetRandam_Int(0, 100)
    local f2_local17 = random_3 * ai:GetNumber(5)
    if ai:HasSpecialEffectId(TARGET_SELF, 45926) == true then
        probabilities[21] = 100
    elseif ai:IsRiding(TARGET_SELF) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 45994) == true then
            if distanceEnemy > 25 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[36] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[38] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[38] = 100
                else
                    probabilities[38] = 100
                end
            elseif distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[37] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[38] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[38] = 100
                else
                    probabilities[38] = 100
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[37] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[38] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[38] = 100
                else
                    probabilities[38] = 100
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[37] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[37] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[37] = 100
                else
                    probabilities[37] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                probabilities[37] = 100
            else
                probabilities[37] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 45991) == true or ai:HasSpecialEffectId(TARGET_SELF, 45992) == true or ai:HasSpecialEffectId(TARGET_SELF, 45993) == true then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[36] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[38] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[38] = 100
                else
                    probabilities[38] = 100
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[36] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[38] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[38] = 100
                else
                    probabilities[38] = 100
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 300) then
                    probabilities[36] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 300) then
                    probabilities[38] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 300) then
                    probabilities[38] = 100
                else
                    probabilities[38] = 100
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 300) then
                probabilities[36] = 100
            else
                probabilities[36] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 45990) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[35] = 100
            else
                probabilities[35] = 50
                probabilities[40] = 50
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 45996) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[32] = 100
            else
                probabilities[32] = 50
                probabilities[40] = 50
            end
        elseif distanceEnemy > 40 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[30] = 50
                probabilities[31] = 100
                probabilities[34] = 70
            else
                probabilities[40] = 70
                probabilities[43] = 50
            end
        elseif distanceEnemy > 30 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[30] = 50
                probabilities[31] = 100
                probabilities[34] = 70
            else
                probabilities[40] = 70
                probabilities[43] = 50
            end
        elseif distanceEnemy > 20 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[30] = 50
                probabilities[31] = 100
                probabilities[34] = 70
            else
                probabilities[40] = 70
                probabilities[43] = 50
            end
        elseif distanceEnemy > 15 then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[30] = 50
                probabilities[31] = 100
                probabilities[34] = 70
            else
                probabilities[40] = 70
                probabilities[43] = 50
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            probabilities[30] = 50
            probabilities[34] = 50
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
            probabilities[33] = 70
            probabilities[40] = 30
        else
            probabilities[33] = 70
            probabilities[40] = 30
        end
    elseif ai:IsRiding(TARGET_SELF) == false then
        if ai:HasSpecialEffectId(TARGET_SELF, 47145) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 47150) == true and ai:HasSpecialEffectId(TARGET_SELF, 47151) == true then
                probabilities[26] = 100
                probabilities[27] = 1
            elseif ai:HasSpecialEffectId(TARGET_SELF, 47161) == true and ai:HasSpecialEffectId(TARGET_SELF, 47150) == true then
                probabilities[26] = 100
                probabilities[27] = 1
            elseif ai:HasSpecialEffectId(TARGET_SELF, 47161) == true and ai:HasSpecialEffectId(TARGET_SELF, 47151) == true then
                probabilities[26] = 100
                probabilities[27] = 1
            elseif ai:HasSpecialEffectId(TARGET_SELF, 47211) == true then
                probabilities[27] = 100
            elseif ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
                if distanceEnemy > 40 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[40] = 100
                        probabilities[41] = 0
                        probabilities[42] = 0
                    else
                        probabilities[40] = 0
                        probabilities[41] = 0
                        probabilities[42] = 100
                    end
                elseif distanceEnemy > 30 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[40] = 100
                        probabilities[41] = 0
                        probabilities[42] = 0
                        probabilities[49] = 100
                    else
                        probabilities[40] = 0
                        probabilities[41] = 0
                        probabilities[42] = 100
                        probabilities[49] = 100
                    end
                elseif distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[40] = 100
                        probabilities[41] = 0
                        probabilities[42] = 100
                        probabilities[49] = 100
                    else
                        probabilities[40] = 0
                        probabilities[41] = 0
                        probabilities[42] = 100
                        probabilities[49] = 100
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[41] = 100
                    probabilities[42] = 100
                    probabilities[49] = 100
                else
                    probabilities[41] = 100
                    probabilities[42] = 100
                    probabilities[49] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) == true then
                if ai:GetHpRate(TARGET_SELF) <= 0.6 then
                    if ai:HasSpecialEffectId(TARGET_SELF, 47213) == false then
                        probabilities[27] = 100
                    else
                        probabilities[10] = 100
                    end
                else
                    probabilities[10] = 100
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 45905) then
            if ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
                probabilities[11] = 100
            elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) == true then
                probabilities[15] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 47131) then
            probabilities[23] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 47201) == true then
                probabilities[24] = 100
            elseif ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 45912) == true then
                    probabilities[11] = 100
                elseif ai:HasSpecialEffectId(TARGET_FRI_0, 45970) == true then
                    probabilities[11] = 100
                elseif distanceEnemy > 50 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[40] = 20
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 40 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 30 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[46] = 70
                    end
                elseif distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 70
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[4] = 70
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 50
                    probabilities[4] = 70
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[40] = 20
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 45914) == true then
                    probabilities[10] = 100
                elseif distanceEnemy > 50 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[7] = 70
                        probabilities[40] = 20
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 40 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[7] = 70
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 30 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[7] = 70
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[7] = 70
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[3] = 200
                        probabilities[4] = 70
                        probabilities[7] = 70
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 50
                        probabilities[3] = 200
                        probabilities[4] = 70
                        probabilities[7] = 70
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 50
                    probabilities[3] = 200
                    probabilities[4] = 70
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[40] = 20
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 45912) == true then
                probabilities[11] = 100
            elseif ai:HasSpecialEffectId(TARGET_FRI_0, 45970) == true then
                probabilities[11] = 100
            elseif ai:GetHpRate(TARGET_SELF) <= 0.9 or ai:GetHpRate(TARGET_EVENT) <= 0.9 then
                if ai:HasSpecialEffectId(TARGET_SELF, 47215) == true then
                    if distanceEnemy > 50 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[40] = 20
                        else
                            probabilities[40] = 100
                        end
                    elseif distanceEnemy > 40 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[40] = 20
                            probabilities[46] = 50
                        else
                            probabilities[40] = 100
                        end
                    elseif distanceEnemy > 30 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[40] = 20
                            probabilities[46] = 50
                        else
                            probabilities[40] = 20
                            probabilities[46] = 70
                        end
                    elseif distanceEnemy > 20 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[40] = 20
                            probabilities[42] = 20
                            probabilities[46] = 50
                        else
                            probabilities[40] = 20
                            probabilities[42] = 20
                            probabilities[46] = 70
                        end
                    elseif distanceEnemy > 10 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[2] = 50
                            probabilities[4] = 70
                            probabilities[42] = 20
                            probabilities[46] = 50
                        else
                            probabilities[1] = 50
                            probabilities[2] = 50
                            probabilities[40] = 20
                            probabilities[42] = 20
                            probabilities[45] = 30
                            probabilities[46] = 50
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 50
                        probabilities[4] = 70
                        probabilities[5] = 70
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 50 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 300
                        probabilities[40] = 20
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 40 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 300
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 30 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 300
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[46] = 70
                    end
                elseif distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 300
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 70
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[4] = 70
                        probabilities[6] = 300
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[6] = 100
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 50
                    probabilities[4] = 70
                    probabilities[5] = 70
                    probabilities[6] = 300
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[6] = 300
                    probabilities[40] = 20
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                end
            elseif distanceEnemy > 50 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[40] = 20
                else
                    probabilities[40] = 100
                end
            elseif distanceEnemy > 40 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[40] = 20
                    probabilities[46] = 50
                else
                    probabilities[40] = 100
                end
            elseif distanceEnemy > 30 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[40] = 20
                    probabilities[46] = 50
                else
                    probabilities[40] = 20
                    probabilities[46] = 50
                end
            elseif distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[40] = 20
                    probabilities[42] = 20
                    probabilities[46] = 50
                else
                    probabilities[40] = 20
                    probabilities[42] = 20
                    probabilities[46] = 50
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[4] = 70
                    probabilities[42] = 20
                    probabilities[46] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[40] = 20
                    probabilities[42] = 20
                    probabilities[45] = 50
                    probabilities[46] = 50
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 50
                probabilities[4] = 70
                probabilities[5] = 70
                probabilities[42] = 20
                probabilities[44] = 50
                probabilities[45] = 30
                probabilities[46] = 50
            else
                probabilities[1] = 50
                probabilities[2] = 50
                probabilities[40] = 20
                probabilities[42] = 20
                probabilities[44] = 50
                probabilities[45] = 30
                probabilities[46] = 50
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 45914) == true then
                probabilities[10] = 100
            elseif ai:GetHpRate(TARGET_SELF) <= 0.9 or ai:GetHpRate(TARGET_EVENT) <= 0.9 then
                if ai:HasSpecialEffectId(TARGET_SELF, 47215) == true then
                    if distanceEnemy > 50 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[7] = 70
                            probabilities[40] = 20
                        else
                            probabilities[40] = 100
                        end
                    elseif distanceEnemy > 40 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[7] = 70
                            probabilities[40] = 20
                            probabilities[46] = 50
                        else
                            probabilities[40] = 100
                        end
                    elseif distanceEnemy > 30 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[7] = 70
                            probabilities[40] = 20
                            probabilities[46] = 50
                        else
                            probabilities[40] = 20
                            probabilities[46] = 50
                        end
                    elseif distanceEnemy > 20 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[4] = 70
                            probabilities[7] = 70
                            probabilities[40] = 20
                            probabilities[42] = 20
                            probabilities[46] = 50
                        else
                            probabilities[40] = 20
                            probabilities[42] = 20
                            probabilities[46] = 50
                        end
                    elseif distanceEnemy > 10 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 50
                            probabilities[2] = 50
                            probabilities[3] = 200
                            probabilities[4] = 70
                            probabilities[7] = 70
                            probabilities[42] = 20
                            probabilities[46] = 50
                        else
                            probabilities[1] = 50
                            probabilities[2] = 50
                            probabilities[40] = 20
                            probabilities[42] = 20
                            probabilities[45] = 30
                            probabilities[46] = 50
                        end
                    elseif distanceEnemy > 5 then
                        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                            probabilities[1] = 30
                            probabilities[2] = 50
                            probabilities[3] = 200
                            probabilities[4] = 70
                            probabilities[5] = 70
                            probabilities[7] = 70
                            probabilities[42] = 20
                            probabilities[44] = 50
                            probabilities[45] = 30
                            probabilities[46] = 50
                        else
                            probabilities[1] = 50
                            probabilities[2] = 50
                            probabilities[40] = 20
                            probabilities[42] = 20
                            probabilities[44] = 50
                            probabilities[45] = 30
                            probabilities[46] = 50
                        end
                    elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 50
                        probabilities[3] = 200
                        probabilities[4] = 70
                        probabilities[5] = 70
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 50 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 200
                        probabilities[7] = 70
                        probabilities[40] = 20
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 40 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 200
                        probabilities[7] = 70
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 100
                    end
                elseif distanceEnemy > 30 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 300
                        probabilities[7] = 70
                        probabilities[40] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 20 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[4] = 70
                        probabilities[6] = 200
                        probabilities[7] = 70
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 10 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[3] = 200
                        probabilities[4] = 70
                        probabilities[6] = 300
                        probabilities[7] = 70
                        probabilities[42] = 20
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[6] = 100
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif distanceEnemy > 5 then
                    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                        probabilities[1] = 30
                        probabilities[2] = 50
                        probabilities[3] = 200
                        probabilities[4] = 70
                        probabilities[5] = 70
                        probabilities[6] = 300
                        probabilities[7] = 70
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    else
                        probabilities[1] = 50
                        probabilities[2] = 50
                        probabilities[6] = 100
                        probabilities[40] = 20
                        probabilities[42] = 20
                        probabilities[44] = 50
                        probabilities[45] = 30
                        probabilities[46] = 50
                    end
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 50
                    probabilities[3] = 200
                    probabilities[4] = 70
                    probabilities[5] = 70
                    probabilities[6] = 300
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[6] = 300
                    probabilities[40] = 20
                    probabilities[42] = 20
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                end
            elseif distanceEnemy > 50 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[7] = 70
                    probabilities[40] = 30
                else
                    probabilities[40] = 100
                end
            elseif distanceEnemy > 40 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[7] = 70
                    probabilities[40] = 30
                    probabilities[46] = 50
                else
                    probabilities[40] = 100
                end
            elseif distanceEnemy > 30 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[7] = 70
                    probabilities[40] = 30
                    probabilities[46] = 50
                else
                    probabilities[40] = 30
                    probabilities[46] = 70
                end
            elseif distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[4] = 70
                    probabilities[7] = 70
                    probabilities[40] = 30
                    probabilities[42] = 30
                    probabilities[46] = 50
                else
                    probabilities[40] = 30
                    probabilities[42] = 50
                    probabilities[46] = 70
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[4] = 70
                    probabilities[7] = 70
                    probabilities[42] = 30
                    probabilities[46] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[40] = 30
                    probabilities[42] = 30
                    probabilities[45] = 30
                    probabilities[46] = 50
                end
            elseif distanceEnemy > 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                    probabilities[1] = 30
                    probabilities[2] = 50
                    probabilities[4] = 70
                    probabilities[5] = 70
                    probabilities[7] = 70
                    probabilities[42] = 30
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                else
                    probabilities[1] = 50
                    probabilities[2] = 50
                    probabilities[40] = 30
                    probabilities[42] = 30
                    probabilities[44] = 50
                    probabilities[45] = 30
                    probabilities[46] = 50
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 100) then
                probabilities[1] = 30
                probabilities[2] = 50
                probabilities[4] = 70
                probabilities[5] = 70
                probabilities[42] = 30
                probabilities[44] = 50
                probabilities[45] = 30
                probabilities[46] = 50
            else
                probabilities[1] = 50
                probabilities[2] = 50
                probabilities[40] = 30
                probabilities[42] = 30
                probabilities[44] = 50
                probabilities[45] = 30
                probabilities[46] = 50
            end
        end
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 10, probabilities[1], 1)
    probabilities[1] = SetCoolTime(ai, goal, 3001, 10, probabilities[1], 1)
    probabilities[1] = SetCoolTime(ai, goal, 3002, 10, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 10, probabilities[2], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3000, 10, probabilities[2], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3003, 30, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3004, 15, probabilities[4], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3005, 40, probabilities[4], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3007, 15, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3005, 40, probabilities[5], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3004, 15, probabilities[5], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3007, 15, probabilities[5], 1)
    probabilities[6] = SetCoolTime(ai, goal, 3006, 60, probabilities[6], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3007, 15, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3004, 15, probabilities[7], 1)
    probabilities[7] = SetCoolTime(ai, goal, 3005, 40, probabilities[7], 1)
    probabilities[25] = SetCoolTime(ai, goal, 20021, 1, probabilities[25], 1)
    probabilities[30] = SetCoolTime(ai, goal, 3000, 30, probabilities[30], 1)
    probabilities[31] = SetCoolTime(ai, goal, 3007, 30, probabilities[31], 1)
    probabilities[32] = SetCoolTime(ai, goal, 3008, 1, probabilities[32], 1)
    probabilities[33] = SetCoolTime(ai, goal, 3009, 8, probabilities[33], 1)
    probabilities[33] = SetCoolTime(ai, goal, 3010, 8, probabilities[33], 1)
    probabilities[34] = SetCoolTime(ai, goal, 3019, 30, probabilities[34], 1)
    probabilities[35] = SetCoolTime(ai, goal, 3011, 1, probabilities[35], 1)
    probabilities[36] = SetCoolTime(ai, goal, 3002, 1, probabilities[36], 1)
    probabilities[37] = SetCoolTime(ai, goal, 3003, 1, probabilities[37], 1)
    probabilities[38] = SetCoolTime(ai, goal, 3004, 1, probabilities[38], 1)
    probabilities[44] = SetCoolTime(ai, goal, 6010, 20, probabilities[44], 1)
    probabilities[44] = SetCoolTime(ai, goal, 6011, 20, probabilities[44], 1)
    probabilities[44] = SetCoolTime(ai, goal, 6012, 20, probabilities[44], 1)
    probabilities[44] = SetCoolTime(ai, goal, 6013, 20, probabilities[44], 1)
    probabilities[45] = SetCoolTime(ai, goal, 6011, 20, probabilities[45], 1)
    probabilities[45] = SetCoolTime(ai, goal, 6010, 20, probabilities[45], 1)
    probabilities[45] = SetCoolTime(ai, goal, 6012, 20, probabilities[45], 1)
    probabilities[45] = SetCoolTime(ai, goal, 6013, 20, probabilities[45], 1)
    probabilities[46] = SetCoolTime(ai, goal, 6012, 20, probabilities[46], 1)
    probabilities[46] = SetCoolTime(ai, goal, 6013, 20, probabilities[46], 1)
    probabilities[46] = SetCoolTime(ai, goal, 6010, 20, probabilities[46], 1)
    probabilities[46] = SetCoolTime(ai, goal, 6011, 20, probabilities[46], 1)
    acts[1] = REGIST_FUNC(ai, goal, Moth752000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Moth752000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Moth752000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Moth752000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Moth752000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Moth752000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Moth752000_Act07)
    acts[10] = REGIST_FUNC(ai, goal, Moth752000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Moth752000_Act11)
    acts[15] = REGIST_FUNC(ai, goal, Moth752000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Moth752000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Moth752000_Act17)
    acts[20] = REGIST_FUNC(ai, goal, Moth752000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Moth752000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, Moth752000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, Moth752000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Moth752000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Moth752000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, Moth752000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, Moth752000_Act27)
    acts[30] = REGIST_FUNC(ai, goal, Moth752000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, Moth752000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, Moth752000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, Moth752000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, Moth752000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, Moth752000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, Moth752000_Act36)
    acts[37] = REGIST_FUNC(ai, goal, Moth752000_Act37)
    acts[38] = REGIST_FUNC(ai, goal, Moth752000_Act38)
    acts[40] = REGIST_FUNC(ai, goal, Moth752000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Moth752000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Moth752000_Act42)
    acts[43] = REGIST_FUNC(ai, goal, Moth752000_Act43)
    acts[44] = REGIST_FUNC(ai, goal, Moth752000_Act44)
    acts[45] = REGIST_FUNC(ai, goal, Moth752000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, Moth752000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, Moth752000_Act47)
    acts[48] = REGIST_FUNC(ai, goal, Moth752000_Act48)
    acts[49] = REGIST_FUNC(ai, goal, Moth752000_Act49)
    local actAfter = REGIST_FUNC(ai, goal, Moth752000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Moth752000_Act01(ai, goal, paramTbl)
    local stopDist = 35 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local animationId_2 = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        GetWellSpace_Odds = 30
        return GetWellSpace_Odds
    else
        GetWellSpace_Odds = 60
        return GetWellSpace_Odds
    end
end

function Moth752000_Act02(ai, goal, paramTbl)
    local stopDist = 35 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        GetWellSpace_Odds = 30
        return GetWellSpace_Odds
    else
        GetWellSpace_Odds = 80
        return GetWellSpace_Odds
    end
end

function Moth752000_Act03(ai, goal, paramTbl)
    local stopDist = 13.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3003
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        GetWellSpace_Odds = 60
        return GetWellSpace_Odds
    end
end

function Moth752000_Act04(ai, goal, paramTbl)
    local stopDist = 35 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3004
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        GetWellSpace_Odds = 30
        return GetWellSpace_Odds
    else
        GetWellSpace_Odds = 80
        return GetWellSpace_Odds
    end
end

function Moth752000_Act05(ai, goal, paramTbl)
    local f7_local0 = 20 - ai:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3005
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 60
    return GetWellSpace_Odds
end

function Moth752000_Act06(ai, goal, paramTbl)
    local stopDist = 25 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3006
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 60
    return GetWellSpace_Odds
end

function Moth752000_Act07(ai, goal, paramTbl)
    local stopDist = 28 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.8 or ai:GetHpRate(TARGET_EVENT) <= 0.8 then
        runProbability = 60
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        runProbability = 100
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    if ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        GetWellSpace_Odds = 30
        return GetWellSpace_Odds
    else
        GetWellSpace_Odds = 60
        return GetWellSpace_Odds
    end
end

function Moth752000_Act10(ai, goal, paramTbl)
    local f10_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3020
    local animationId_2 = 3022
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 45914)
    if ai:HasSpecialEffectId(TARGET_SELF, 47145) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act11(ai, goal, paramTbl)
    local f11_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3021
    local animationId_2 = 3023
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 45912)
    if ai:HasSpecialEffectId(TARGET_SELF, 47145) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act15(ai, goal, paramTbl)
    local f12_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 45903)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act16(ai, goal, paramTbl)
    local f13_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 10
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act17(ai, goal, paramTbl)
    ai:SetNumber(5, 0)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    goal:AddSubGoal(GOAL_COMMON_Mount, 10, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act21(ai, goal, paramTbl)
    local f15_local0 = 999
    local animationId = 30000
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act22(ai, goal, paramTbl)
    local f16_local0 = 15
    local animationId = 3031
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act23(ai, goal, paramTbl)
    local f17_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 10
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20036
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act24(ai, goal, paramTbl)
    local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 20037
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act25(ai, goal, paramTbl)
    local f19_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 10
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act26(ai, goal, paramTbl)
    local f20_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 10
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 20011
    local animationId_2 = 20012
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    if ai:HasSpecialEffectId(TARGET_SELF, 47150) == true and ai:HasSpecialEffectId(TARGET_SELF, 47151) == true then
        if random <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 47150) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 47151) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act27(ai, goal, paramTbl)
    local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 50
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 20021
    local animationId_2 = 3023
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 30, animationId, TARGET_ENE_0, 999, 0, 0)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act30(ai, goal, paramTbl)
    local stopDist = 18.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2.5
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.4 or ai:GetHpRate(TARGET_EVENT) <= 0.4 then
        runProbability = 60
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3000
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moth752000_Act31(ai, goal, paramTbl)
    local stopDist = 27.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2.5
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.4 or ai:GetHpRate(TARGET_EVENT) <= 0.4 then
        runProbability = 60
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3007
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moth752000_Act32(ai, goal, paramTbl)
    local stopDist = 33 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2.5
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.4 or ai:GetHpRate(TARGET_EVENT) <= 0.4 then
        runProbability = 60
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3008
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, 180, 500) then
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, -1, 0)
        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moth752000_Act33(ai, goal, paramTbl)
    local f25_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 10
    local f25_local3 = 0
    local f25_local4 = 0
    local f25_local5 = 2
    local f25_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3009
    local animationId_2 = 3010
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
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

function Moth752000_Act34(ai, goal, paramTbl)
    local stopDist = 27.5 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 10
    local runProbability = 30
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2.5
    local random = ai:GetRandam_Int(1, 100)
    if ai:GetHpRate(TARGET_SELF) <= 0.4 or ai:GetHpRate(TARGET_EVENT) <= 0.4 then
        runProbability = 60
    end
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local animationId = 3019
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function Moth752000_Act35(ai, goal, paramTbl)
    local f27_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 10
    local f27_local3 = 0
    local f27_local4 = 0
    local f27_local5 = 2
    local f27_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3011
    local animationId_2 = 3012
    local animationId_3 = 3013
    local animationId_4 = 3001
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local hpRatioEvent = ai:GetHpRate(TARGET_EVENT)
    if ai:HasSpecialEffectId(TARGET_SELF, 47120) == true then
        if ai:GetHpRate(TARGET_SELF) <= 0.5 or ai:GetHpRate(TARGET_EVENT) <= 0.5 then
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_3, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_4, TARGET_ENE_0, 999, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId_2, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId_4, TARGET_ENE_0, 999, 0, 0)
        end
    elseif ai:GetHpRate(TARGET_SELF) <= 0.2 or ai:GetHpRate(TARGET_EVENT) <= 0.2 then
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

function Moth752000_Act36(ai, goal, paramTbl)
    local f28_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 10
    local f28_local3 = 0
    local f28_local4 = 0
    local f28_local5 = 2
    local f28_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act37(ai, goal, paramTbl)
    local f29_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = f29_local0 + 0
    local f29_local2 = f29_local0 + 10
    local f29_local3 = 0
    local f29_local4 = 0
    local f29_local5 = 2
    local f29_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3003
    local animationId_2 = 3004
    local animationId_3 = 3002
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
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

function Moth752000_Act38(ai, goal, paramTbl)
    local f30_local0 = 999 - ai:GetMapHitRadius(TARGET_SELF)
    local f30_local1 = f30_local0 + 0
    local f30_local2 = f30_local0 + 10
    local f30_local3 = 0
    local f30_local4 = 0
    local f30_local5 = 2
    local f30_local6 = 2
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3004
    local successDist = 5 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act40(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsRiding(TARGET_SELF) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 47111) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 20, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act41(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 10
    local runDist = 12
    if stopDist <= distanceEnemy then
        Approach_Act(ai, goal, stopDist, runDist, Odds_Guard, 3)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 47145) == true then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_ENE_0, false, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, stopDist, TARGET_ENE_0, false, -1)
    end
end

function Moth752000_Act42(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act43(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90, -1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act44(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act45(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act46(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act47(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act48(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(5, 6), TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, ai:GetRandam_Int(20, 30))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(5, 6), TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, ai:GetRandam_Int(20, 30))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_Act49(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, 5, 5, true, -1, 0, 0, false, false, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Moth752000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local distanceTARGET_ENE_1 = ai:GetDist(TARGET_ENE_1)
    local distanceTARGET_ENE_2 = ai:GetDist(TARGET_ENE_2)
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsRiding(TARGET_SELF) == true then
        if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 180, 100) then
            if distanceEnemy > 8.5 and random <= 70 then
                if random > 50 then
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
                else
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
                end
            end
        elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 180, 100) then
            if distanceEnemy > 2 and random <= 70 then
                if random > 50 then
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
                else
                    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
                end
            end
        elseif distanceEnemy > 4.5 and random <= 70 then
            if random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(6, 7))
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(2, 2.5), TARGET_ENE_0, -10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(6, 7))
            end
        end
    elseif ai:IsRiding(TARGET_SELF) == false then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.75, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
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
    local f44_local2 = 5 - ai:GetMapHitRadius(TARGET_SELF)
    local f44_local3 = 0
    local f44_local4 = 0
    local random = ai:GetRandam_Int(1, 100)
    local hpRatioSelf = ai:GetHpRate(TARGET_SELF)
    local f44_local7 = STEP_CANCELDIST
    if ai:HasSpecialEffectId(TARGET_SELF, 5110) == true or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if ai:IsRiding(TARGET_SELF) == true then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 10) then
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) then
                if random <= 20 then
                    goal:ClearSubGoal()
                    Moth752000_Act31(ai, goal, paramTbl)
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
        elseif ai:IsRiding(TARGET_SELF) == false and ai:HasSpecialEffectId(TARGET_SELF, 47145) == false then
            if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 10) then
                if random <= 10 then
                    goal:ClearSubGoal()
                    Moth752000_Act01(ai, goal, paramTbl)
                    return true
                elseif random <= 20 then
                    goal:ClearSubGoal()
                    Moth752000_Act04(ai, goal, paramTbl)
                    return true
                elseif random <= 40 then
                    goal:ClearSubGoal()
                    Moth752000_Act04(ai, goal, paramTbl)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 30) then
                if random <= 45 then
                    goal:ClearSubGoal()
                    Moth752000_Act01(ai, goal, paramTbl)
                    return true
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 100) and random <= 45 then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(45943) then
        goal:ClearSubGoal()
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, 3030, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(5025) and ai:HasSpecialEffectId(TARGET_SELF, 47111) == true and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 15) then
        goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
        Moth752000_ActAfter_AdjustSpace(ai, goal, paramTbl)
        return true
    end
    return false
end

RegisterTableGoal(GOAL_Moth752000_AfterAttackAct, "Moth752000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Moth752000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

