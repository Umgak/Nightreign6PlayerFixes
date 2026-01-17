RegisterTableGoal(GOAL_Centaurus760000_Battle, "Centaurus760000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Centaurus760000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetStringIndexedNumber("ShootInerruptFlg", 0)
    ai:SetStringIndexedNumber("ComboRoopCnt", 0)
end

Goal.Activate = function (self, ai, goal)
    Init_Pseudo_Global(ai, goal)
    ai:SetStringIndexedNumber("Dist_SideStep", 5)
    ai:SetStringIndexedNumber("Dist_BackStep", 5)
    ai:SetStringIndexedNumber("EnemyDown_Flg", 0)
    ai:SetStringIndexedNumber("Test_Flg", 0)
    ai:SetStringIndexedNumber("ComboRoopCnt", 0)
    ai:SetStringIndexedNumber("Run_Odds", 100)
    local probabilities = {}
    local acts = {}
    local paramTbls = {}
    Common_Clear_Param(probabilities, acts, paramTbls)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46300)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46301)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46304)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46376)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46380)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46341)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46342)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46343)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46346)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46335)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46336)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46338)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46339)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46312)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46313)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46314)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46390)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46391)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46392)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46393)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46350)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46351)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 46352)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 98450)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 98451)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 98452)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 46330)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 46331)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 46332)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 98430) -- NR6PF new param rows
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 98431)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 98432)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100240)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 46330)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 46331)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 46332)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 98430) -- NR6PF new param rows
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 98431)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 98432)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_1, 100240)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 46330)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 46331)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 46332)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 98430) -- NR6PF new param rows
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 98431)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 98432)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_2, 100240)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 46330) -- NR6PF whole new fuckin characters
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 46331)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 46332)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 98430)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 98431)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 98432)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_3, 100240)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 46330)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 46331)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 46332)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 98430)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 98431)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 98432)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_4, 100240)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 46330)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 46331)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 46332)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 98430)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 98431)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 98432)
    ai:AddObserveSpecialEffectAttribute(TARGET_ENE_5, 100240)
    ai:SetNumber(NUMBER_ATK_CNT, ai:GetNumber(NUMBER_ATK_CNT) + 1)
    ai:SetNumber(NUMBER_INTRPT_CNT, 0)
    if ai:GetStringIndexedNumber("ShootInerruptFlg") > 0 then
        ai:SetStringIndexedNumber("ShootInerruptFlg", ai:GetStringIndexedNumber("ShootInerruptFlg") - 1)
    elseif ai:GetStringIndexedNumber("ShootInerruptFlg") < 0 then
        ai:SetStringIndexedNumber("ShootInerruptFlg", 0)
    end
    if ai:GetStringIndexedNumber("ShootInerruptFlg") >= 1 then
        ai:SetStringIndexedNumber("Run_Odds", 100)
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 46300) then
        ai:SetStringIndexedNumber("Run_Odds", 100)
    end
    if ai:HasSpecialEffectId(TARGET_ENE_0, 90) or ai:HasSpecialEffectId(TARGET_ENE_0, 30) or ai:HasSpecialEffectId(TARGET_ENE_0, 6992) then
        ai:SetStringIndexedNumber("EnemyDown_Flg", 1)
    else
        ai:SetStringIndexedNumber("EnemyDown_Flg", 0)
    end
    ai:SetStringIndexedNumber("Test_Flg", ai:GetRemainingAttackCoolTime(3008))
    if ai:HasSpecialEffectId(TARGET_SELF, 46304) == false then
        if ai:GetHpRate(TARGET_SELF) < 0.58 and ai:HasSpecialEffectId(TARGET_SELF, 46300) == false then
            probabilities[20] = 10000000
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 80
                    probabilities[6] = 80
                    probabilities[9] = 80
                    probabilities[40] = 1
                    probabilities[41] = 1
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 60
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[40] = 1
                    probabilities[41] = 1
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 60
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[40] = 1
                    probabilities[41] = 1
                else
                    probabilities[2] = 60
                    probabilities[6] = 50
                    probabilities[9] = 40
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[15] = 100
                    probabilities[40] = 1
                    probabilities[41] = 1
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 50
                    probabilities[6] = 50
                    probabilities[9] = 50
                    probabilities[15] = 100
                    probabilities[40] = 1
                    probabilities[41] = 1
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 50
                    probabilities[6] = 50
                    probabilities[9] = 50
                    probabilities[15] = 100
                    probabilities[40] = 1
                    probabilities[41] = 1
                else
                    probabilities[2] = 40
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[9] = 2
                    probabilities[15] = 100
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[3] = 15
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 50
                    probabilities[15] = 100
                else
                    probabilities[2] = 40
                    probabilities[6] = 50
                    probabilities[9] = 2
                    probabilities[15] = 100
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 8 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[3] = 20
                    probabilities[4] = 20
                    probabilities[5] = 50
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 50
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 20
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[15] = 100
                else
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 20
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[5] = 20
                    probabilities[6] = 50
                    probabilities[5] = 20
                    probabilities[10] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[5] = 20
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[5] = 20
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[15] = 100
                else
                    probabilities[8] = 70
                    probabilities[10] = 50
                    probabilities[30] = 3
                    probabilities[15] = 100
                end
            elseif distanceEnemy > 3 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 30
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[3] = 30
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[3] = 30
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                else
                    probabilities[8] = 50
                    probabilities[10] = 50
                    probabilities[30] = 5
                end
            elseif distanceEnemy > 1.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                else
                    probabilities[8] = 50
                    probabilities[10] = 50
                    probabilities[15] = 30
                    probabilities[30] = 5
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[15] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[15] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[15] = 40
            else
                probabilities[8] = 50
                probabilities[10] = 50
                probabilities[15] = 30
                probabilities[30] = 5
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 46304) == false then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 100
                    probabilities[11] = 100
                    probabilities[41] = 10
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[11] = 100
                    probabilities[41] = 10
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[11] = 100
                    probabilities[41] = 10
                else
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[11] = 100
                    probabilities[41] = 10
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 30
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                else
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[4] = 20
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 20
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 20
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                else
                    probabilities[4] = 20
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                end
            elseif distanceEnemy > 8 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[5] = 30
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[5] = 30
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                else
                    probabilities[4] = 20
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                end
            elseif distanceEnemy > 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 70
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                else
                    probabilities[4] = 20
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                end
            elseif distanceEnemy > 3 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 30
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[8] = 30
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                else
                    probabilities[8] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[30] = 5
                end
            elseif distanceEnemy > 1.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[8] = 30
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                    probabilities[17] = 60
                else
                    probabilities[8] = 50
                    probabilities[10] = 40
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 30
                    probabilities[17] = 60
                    probabilities[30] = 5
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[15] = 40
                probabilities[17] = 60
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[8] = 30
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[17] = 60
                probabilities[15] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[17] = 60
                probabilities[15] = 40
            else
                probabilities[8] = 50
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[15] = 30
                probabilities[17] = 60
                probabilities[30] = 5
            end
        end
        if ai:GetHpRate(TARGET_SELF) >= 0.97 then
            probabilities[6] = 0
        end
        if ai:GetHpRate(TARGET_SELF) >= 0.92 then
            probabilities[10] = 0
        end
        if ai:GetHpRate(TARGET_SELF) >= 0.78 then
            probabilities[15] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false then
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[17] = 0
        end
        if ai:GetHpRate(TARGET_SELF) < 0.3 then
            probabilities[2] = probabilities[2] / 2
            probabilities[4] = probabilities[4] / 10
            probabilities[9] = probabilities[9] * 2
            probabilities[6] = probabilities[6] * 3
            probabilities[11] = probabilities[11] * 2
            probabilities[12] = probabilities[12] * 2
            probabilities[14] = probabilities[14] * 3
            probabilities[15] = probabilities[15] * 2
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46390) then
            probabilities[10] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46391) then
            if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false then
                if random < 10 then
                    probabilities[10] = probabilities[10] * 10000
                else
                    probabilities[10] = 0
                end
            elseif random < 5 then
                probabilities[10] = probabilities[10] * 10000
            else
                probabilities[10] = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46392) then
            if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false then
                if random < 20 then
                    probabilities[10] = probabilities[10] * 10000
                else
                    probabilities[10] = 0
                end
            elseif random < 10 then
                probabilities[10] = probabilities[10] * 10000
            else
                probabilities[10] = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46393) then
            probabilities[10] = probabilities[10] * 10000
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46376) then
            probabilities[15] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46376) then
            probabilities[15] = 0
        end
        probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 0)
        probabilities[3] = SetCoolTime(ai, goal, 3003, 10, probabilities[3], 1)
        probabilities[4] = SetCoolTime(ai, goal, 3004, 8, probabilities[4], 0)
        probabilities[5] = SetCoolTime(ai, goal, 3005, 10, probabilities[5], 1)
        probabilities[6] = SetCoolTime(ai, goal, 3006, 30, probabilities[6], 0)
        probabilities[8] = SetCoolTime(ai, goal, 3008, 10, probabilities[8], 1)
        probabilities[9] = SetCoolTime(ai, goal, 3016, 10, probabilities[9], 1)
        probabilities[11] = SetCoolTime(ai, goal, 3030, 18, probabilities[11], 1)
        probabilities[12] = SetCoolTime(ai, goal, 3033, 16, probabilities[12], 1)
        probabilities[13] = SetCoolTime(ai, goal, 3025, 45, probabilities[13], 0)
        probabilities[13] = SetCoolTime(ai, goal, 3010, 45, probabilities[13], 0)
        probabilities[14] = SetCoolTime(ai, goal, 3026, 30, probabilities[14], 1)
        probabilities[15] = SetCoolTime(ai, goal, 3011, 120, probabilities[15], 0)
        probabilities[16] = SetCoolTime(ai, goal, 3013, 15, probabilities[16], 1)
        probabilities[17] = SetCoolTime(ai, goal, 3031, 20, probabilities[17], 1)
        probabilities[20] = SetCoolTime(ai, goal, 3026, 10, probabilities[20], 1)
        probabilities[21] = SetCoolTime(ai, goal, 3027, 10, probabilities[21], 1)
        probabilities[23] = SetCoolTime(ai, goal, 3029, 10, probabilities[23], 1)
        probabilities[24] = SetCoolTime(ai, goal, 3030, 10, probabilities[24], 1)
        probabilities[25] = SetCoolTime(ai, goal, 3031, 10, probabilities[25], 1)
        probabilities[26] = SetCoolTime(ai, goal, 3034, 10, probabilities[26], 1)
        probabilities[27] = SetCoolTime(ai, goal, 3035, 15, probabilities[27], 1)
        probabilities[28] = SetCoolTime(ai, goal, 3037, 15, probabilities[28], 1)
        probabilities[29] = SetCoolTime(ai, goal, 3038, 10, probabilities[29], 1)
        probabilities[29] = SetCoolTime(ai, goal, 3005, 10, probabilities[29], 1)
        probabilities[29] = SetCoolTime(ai, goal, 3039, 10, probabilities[29], 1)
        probabilities[30] = SetCoolTime(ai, goal, 6000, 25, probabilities[30], 0)
        probabilities[40] = SetCoolTime(ai, goal, 6000, 10, probabilities[40], 1)
        probabilities[41] = SetCoolTime(ai, goal, 6000, 10, probabilities[41], 1)
        probabilities[42] = SetCoolTime(ai, goal, 6002, 10, probabilities[42], 1)
        probabilities[42] = SetCoolTime(ai, goal, 6003, 10, probabilities[42], 1)
        probabilities[47] = SetCoolTime(ai, goal, 6003, 10, probabilities[47], 1)
    else
        if ai:GetHpRate(TARGET_SELF) < 0.65 and ai:HasSpecialEffectId(TARGET_SELF, 46301) == false and ai:HasSpecialEffectId(TARGET_SELF, 46300) == true then
            probabilities[34] = 10000000
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46301) == false then
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 100
                    probabilities[11] = 100
                    probabilities[40] = 10
                    probabilities[41] = 10
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[11] = 100
                    probabilities[40] = 10
                    probabilities[41] = 10
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[11] = 100
                    probabilities[40] = 10
                    probabilities[41] = 10
                else
                    probabilities[2] = 50
                    probabilities[6] = 50
                    probabilities[9] = 80
                    probabilities[11] = 100
                    probabilities[40] = 10
                    probabilities[41] = 10
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 30
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                else
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 50
                    probabilities[11] = 100
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[4] = 20
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 20
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 20
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                else
                    probabilities[4] = 20
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                end
            elseif distanceEnemy > 8 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[5] = 30
                    probabilities[10] = 20
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[5] = 30
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[5] = 30
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                else
                    probabilities[4] = 20
                    probabilities[10] = 30
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 60
                end
            elseif distanceEnemy > 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                    probabilities[17] = 70
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[6] = 50
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                else
                    probabilities[4] = 20
                    probabilities[10] = 50
                    probabilities[11] = 100
                    probabilities[12] = 70
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 100
                end
            elseif distanceEnemy > 3 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 30
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[8] = 30
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                else
                    probabilities[8] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[30] = 5
                end
            elseif distanceEnemy > 1.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[8] = 30
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                    probabilities[17] = 60
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 40
                    probabilities[17] = 60
                else
                    probabilities[8] = 50
                    probabilities[10] = 40
                    probabilities[13] = 90
                    probabilities[14] = 50
                    probabilities[15] = 30
                    probabilities[17] = 60
                    probabilities[30] = 5
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[15] = 40
                probabilities[17] = 60
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[8] = 30
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[17] = 60
                probabilities[15] = 40
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[17] = 60
                probabilities[15] = 40
            else
                probabilities[8] = 50
                probabilities[10] = 50
                probabilities[13] = 90
                probabilities[14] = 50
                probabilities[15] = 30
                probabilities[17] = 60
                probabilities[30] = 5
            end
        else
            if distanceEnemy > 20 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 70
                    probabilities[6] = 80
                    probabilities[9] = 70
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                    probabilities[42] = 300
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 70
                    probabilities[6] = 80
                    probabilities[9] = 70
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                    probabilities[42] = 300
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 60
                    probabilities[6] = 80
                    probabilities[9] = 80
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                    probabilities[42] = 300
                else
                    probabilities[2] = 60
                    probabilities[6] = 80
                    probabilities[9] = 40
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 15 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 30
                    probabilities[6] = 80
                    probabilities[9] = 80
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                    probabilities[42] = 300
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 50
                    probabilities[6] = 80
                    probabilities[9] = 50
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                    probabilities[42] = 300
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 5
                    probabilities[5] = 50
                    probabilities[6] = 80
                    probabilities[9] = 50
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                    probabilities[42] = 300
                else
                    probabilities[2] = 40
                    probabilities[5] = 30
                    probabilities[6] = 80
                    probabilities[9] = 2
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 200
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 10 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[3] = 15
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 0
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 50
                    probabilities[36] = 200
                    probabilities[38] = 100
                    probabilities[39] = 100
                    probabilities[42] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 0
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 50
                    probabilities[36] = 200
                    probabilities[38] = 100
                    probabilities[39] = 100
                    probabilities[42] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 0
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 50
                    probabilities[36] = 200
                    probabilities[38] = 100
                    probabilities[39] = 100
                    probabilities[42] = 100
                else
                    probabilities[2] = 40
                    probabilities[6] = 0
                    probabilities[9] = 2
                    probabilities[15] = 100
                    probabilities[19] = 100
                    probabilities[35] = 50
                    probabilities[36] = 200
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 8 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[3] = 20
                    probabilities[4] = 20
                    probabilities[5] = 50
                    probabilities[6] = 0
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[35] = 50
                    probabilities[36] = 250
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 50
                    probabilities[6] = 0
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[35] = 50
                    probabilities[36] = 250
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[2] = 20
                    probabilities[4] = 20
                    probabilities[5] = 70
                    probabilities[6] = 0
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[35] = 50
                    probabilities[36] = 250
                    probabilities[38] = 100
                    probabilities[39] = 100
                else
                    probabilities[2] = 50
                    probabilities[4] = 20
                    probabilities[5] = 20
                    probabilities[6] = 0
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[35] = 50
                    probabilities[36] = 250
                    probabilities[40] = 1
                    probabilities[41] = 1
                end
            elseif distanceEnemy > 5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[5] = 20
                    probabilities[6] = 80
                    probabilities[5] = 20
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[24] = 100
                    probabilities[35] = 50
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[5] = 20
                    probabilities[6] = 80
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[5] = 20
                    probabilities[6] = 80
                    probabilities[10] = 50
                    probabilities[15] = 100
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                else
                    probabilities[8] = 70
                    probabilities[10] = 50
                    probabilities[30] = 3
                    probabilities[15] = 100
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                end
            elseif distanceEnemy > 3 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 30
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[3] = 30
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[3] = 30
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                else
                    probabilities[8] = 50
                    probabilities[10] = 50
                    probabilities[24] = 100
                    probabilities[30] = 5
                    probabilities[35] = 20
                end
            elseif distanceEnemy > 1.5 then
                if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                    probabilities[3] = 50
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                    probabilities[4] = 50
                    probabilities[16] = 50
                    probabilities[10] = 50
                    probabilities[15] = 40
                    probabilities[24] = 100
                    probabilities[35] = 20
                    probabilities[38] = 100
                    probabilities[39] = 100
                else
                    probabilities[8] = 50
                    probabilities[10] = 50
                    probabilities[15] = 30
                    probabilities[24] = 100
                    probabilities[30] = 5
                    probabilities[35] = 20
                end
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[15] = 40
                probabilities[24] = 100
                probabilities[35] = 20
                probabilities[38] = 100
                probabilities[39] = 100
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[15] = 40
                probabilities[24] = 100
                probabilities[35] = 20
                probabilities[38] = 100
                probabilities[39] = 100
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 100) then
                probabilities[3] = 50
                probabilities[4] = 50
                probabilities[16] = 50
                probabilities[10] = 50
                probabilities[15] = 40
                probabilities[24] = 100
                probabilities[35] = 20
                probabilities[38] = 100
                probabilities[39] = 100
            else
                probabilities[8] = 50
                probabilities[10] = 50
                probabilities[15] = 30
                probabilities[24] = 100
                probabilities[30] = 5
                probabilities[35] = 20
                probabilities[38] = 100
                probabilities[39] = 100
            end
            probabilities[38] = 200
            probabilities[39] = 100
            probabilities[4] = 0
            probabilities[16] = 0
        end
        if ai:GetHpRate(TARGET_SELF) >= 0.9 then
            probabilities[10] = 0
        end
        if ai:GetHpRate(TARGET_SELF) >= 0.9 then
            probabilities[15] = 0
        end
        if ai:GetHpRate(TARGET_SELF) > 0.4 then
            probabilities[39] = 0
        end
        if ai:GetHpRate(TARGET_SELF) > 0.4 then
            probabilities[38] = 0
        end
        if ai:GetHpRate(TARGET_SELF) < 0.33 then
            probabilities[15] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false or ai:HasSpecialEffectId(TARGET_SELF, 46301) == true then
            probabilities[11] = 0
            probabilities[12] = 0
            probabilities[13] = 0
            probabilities[14] = 0
            probabilities[17] = 0
        end
        if ai:GetHpRate(TARGET_SELF) < 0.77 and ai:HasSpecialEffectId(TARGET_SELF, 46301) == false then
            probabilities[2] = probabilities[2] / 2
            probabilities[4] = probabilities[4] / 10
            probabilities[9] = probabilities[9] * 2
            probabilities[6] = probabilities[6] * 3
            probabilities[11] = probabilities[11] * 2
            probabilities[12] = probabilities[12] * 2
            probabilities[14] = probabilities[14] * 3
            probabilities[15] = probabilities[15] * 2
        end
        if ai:GetHpRate(TARGET_SELF) < 0.3 and ai:HasSpecialEffectId(TARGET_SELF, 46301) == true then
            probabilities[2] = probabilities[2] / 2
            probabilities[4] = probabilities[4] / 10
            probabilities[38] = probabilities[38] * 3
            probabilities[39] = probabilities[39] * 3
        end
        if ai:GetHpRate(TARGET_SELF) <= 0.1 then
            probabilities[42] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46390) then
            probabilities[10] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46391) then
            if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false then
                if random < 10 then
                    probabilities[10] = probabilities[10] * 10000
                else
                    probabilities[10] = 0
                end
            elseif random < 5 then
                probabilities[10] = probabilities[10] * 10000
            else
                probabilities[10] = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46392) then
            if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false then
                if random < 20 then
                    probabilities[10] = probabilities[10] * 10000
                else
                    probabilities[10] = 0
                end
            elseif random < 10 then
                probabilities[10] = probabilities[10] * 10000
            else
                probabilities[10] = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46393) then
            probabilities[10] = probabilities[10] * 10000
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46301) then
            probabilities[10] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46342) then
            probabilities[19] = 0
            probabilities[24] = 0
            probabilities[42] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46343) then
            probabilities[35] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46335) then
            probabilities[38] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46336) and ai:GetHpRate(TARGET_SELF) > 0.25 then
            probabilities[38] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46346) then
            probabilities[9] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46338) then
            probabilities[39] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46339) and ai:GetHpRate(TARGET_SELF) > 0.25 then
            probabilities[38] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46376) then
            probabilities[15] = 0
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46312) then
            if ai:GetHpRate(TARGET_SELF) > 0.33 then
                probabilities[42] = 0
            elseif ai:GetHpRate(TARGET_SELF) > 0.25 then
                probabilities[42] = 0
            elseif ai:GetHpRate(TARGET_SELF) > 0.1 then
                probabilities[42] = 0
            else
                probabilities[42] = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46313) then
            if ai:GetHpRate(TARGET_SELF) > 0.33 and distanceEnemy > 10 then
                probabilities[42] = 200
            elseif ai:GetHpRate(TARGET_SELF) then
                probabilities[42] = 0
            elseif ai:GetHpRate(TARGET_SELF) then
                probabilities[42] = 0
            else
                probabilities[42] = 0
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 46314) then
            if ai:GetHpRate(TARGET_SELF) > 0.33 and distanceEnemy > 10 then
                probabilities[42] = 200
            elseif ai:GetHpRate(TARGET_SELF) > 0.25 and distanceEnemy > 10 then
                probabilities[42] = 200
            elseif ai:GetHpRate(TARGET_SELF) > 0.1 then
                probabilities[42] = 0
            else
                probabilities[42] = 0
            end
        end
        probabilities[2] = SetCoolTime(ai, goal, 3001, 10, probabilities[2], 0)
        probabilities[3] = SetCoolTime(ai, goal, 3003, 10, probabilities[3], 1)
        probabilities[4] = SetCoolTime(ai, goal, 3004, 8, probabilities[4], 0)
        probabilities[5] = SetCoolTime(ai, goal, 3005, 10, probabilities[5], 1)
        probabilities[6] = SetCoolTime(ai, goal, 3006, 30, probabilities[6], 0)
        probabilities[8] = SetCoolTime(ai, goal, 3008, 10, probabilities[8], 1)
        probabilities[9] = SetCoolTime(ai, goal, 3016, 10, probabilities[9], 1)
        probabilities[11] = SetCoolTime(ai, goal, 3030, 18, probabilities[11], 1)
        probabilities[12] = SetCoolTime(ai, goal, 3033, 16, probabilities[12], 1)
        probabilities[13] = SetCoolTime(ai, goal, 3025, 45, probabilities[13], 0)
        probabilities[13] = SetCoolTime(ai, goal, 3010, 45, probabilities[13], 0)
        probabilities[14] = SetCoolTime(ai, goal, 3026, 30, probabilities[14], 1)
        probabilities[16] = SetCoolTime(ai, goal, 3013, 15, probabilities[16], 1)
        probabilities[17] = SetCoolTime(ai, goal, 3031, 20, probabilities[17], 1)
        probabilities[19] = SetCoolTime(ai, goal, 3019, 10, probabilities[19], 0)
        probabilities[20] = SetCoolTime(ai, goal, 3026, 10, probabilities[20], 1)
        probabilities[21] = SetCoolTime(ai, goal, 3027, 10, probabilities[21], 1)
        probabilities[23] = SetCoolTime(ai, goal, 3029, 10, probabilities[23], 1)
        probabilities[24] = SetCoolTime(ai, goal, 3024, 15, probabilities[24], 0)
        probabilities[25] = SetCoolTime(ai, goal, 3031, 10, probabilities[25], 1)
        probabilities[26] = SetCoolTime(ai, goal, 3034, 10, probabilities[26], 1)
        probabilities[27] = SetCoolTime(ai, goal, 3035, 15, probabilities[27], 1)
        probabilities[28] = SetCoolTime(ai, goal, 3037, 15, probabilities[28], 1)
        probabilities[29] = SetCoolTime(ai, goal, 3038, 10, probabilities[29], 1)
        probabilities[29] = SetCoolTime(ai, goal, 3005, 10, probabilities[29], 1)
        probabilities[29] = SetCoolTime(ai, goal, 3039, 10, probabilities[29], 1)
        probabilities[30] = SetCoolTime(ai, goal, 6000, 25, probabilities[30], 0)
        probabilities[35] = SetCoolTime(ai, goal, 3035, 20, probabilities[35], 0)
        probabilities[36] = SetCoolTime(ai, goal, 3036, 10, probabilities[36], 1)
        probabilities[36] = SetCoolTime(ai, goal, 3037, 10, probabilities[36], 1)
        probabilities[36] = SetCoolTime(ai, goal, 3021, 10, probabilities[36], 1)
        probabilities[40] = SetCoolTime(ai, goal, 6000, 10, probabilities[40], 1)
        probabilities[41] = SetCoolTime(ai, goal, 6000, 10, probabilities[41], 1)
        probabilities[42] = SetCoolTime(ai, goal, 6002, 10, probabilities[42], 1)
        probabilities[42] = SetCoolTime(ai, goal, 6003, 10, probabilities[42], 1)
        probabilities[47] = SetCoolTime(ai, goal, 6003, 10, probabilities[47], 1)
    end
    acts[1] = REGIST_FUNC(ai, goal, Centaurus760000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, Centaurus760000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, Centaurus760000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, Centaurus760000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, Centaurus760000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, Centaurus760000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, Centaurus760000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, Centaurus760000_Act08)
    acts[9] = REGIST_FUNC(ai, goal, Centaurus760000_Act09)
    acts[10] = REGIST_FUNC(ai, goal, Centaurus760000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, Centaurus760000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, Centaurus760000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, Centaurus760000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, Centaurus760000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, Centaurus760000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, Centaurus760000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, Centaurus760000_Act17)
    acts[19] = REGIST_FUNC(ai, goal, Centaurus760000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, Centaurus760000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, Centaurus760000_Act21)
    acts[23] = REGIST_FUNC(ai, goal, Centaurus760000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, Centaurus760000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, Centaurus760000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, Centaurus760000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, Centaurus760000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, Centaurus760000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, Centaurus760000_Act29)
    acts[30] = REGIST_FUNC(ai, goal, Centaurus760000_Act30)
    acts[34] = REGIST_FUNC(ai, goal, Centaurus760000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, Centaurus760000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, Centaurus760000_Act36)
    acts[38] = REGIST_FUNC(ai, goal, Centaurus760000_Act38)
    acts[39] = REGIST_FUNC(ai, goal, Centaurus760000_Act39)
    acts[40] = REGIST_FUNC(ai, goal, Centaurus760000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, Centaurus760000_Act41)
    acts[42] = REGIST_FUNC(ai, goal, Centaurus760000_Act42)
    acts[46] = REGIST_FUNC(ai, goal, Centaurus760000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, Centaurus760000_Act47)
    acts[48] = REGIST_FUNC(ai, goal, Centaurus760000_Act48)
    acts[49] = REGIST_FUNC(ai, goal, Centaurus760000_Act49)
    local actAfter = REGIST_FUNC(ai, goal, Centaurus760000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function Centaurus760000_Act01(ai, goal, paramTbl)
    local stopDist = 11
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local goalLife = 3
    local animationId = 3000
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act02(ai, goal, paramTbl)
    local stopDist = 25
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    local goalLife = 5
    local animationId = 3001
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act03(ai, goal, paramTbl)
    local stopDist = 9
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = 0
    if ai:HasSpecialEffectId(TARGET_SELF, 46300) then
        runProbability = 100
    end
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3003
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 180
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act04(ai, goal, paramTbl)
    local stopDist = 8
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3004
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act05(ai, goal, paramTbl)
    local stopDist = 16
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3005
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act06(ai, goal, paramTbl)
    local stopDist = 30
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 15
    local animationId = 3006
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act07(ai, goal, paramTbl)
    local f9_local0 = 3 - ai:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 5
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3011
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act08(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3008
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 180, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act09(ai, goal, paramTbl)
    local stopDist = 20
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 10
    local animationId = 3016
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 360
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 180, 180)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act10(ai, goal, paramTbl)
    local f12_local0 = 16
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = ai:GetStringIndexedNumber("Run_Odds")
    local f12_local4 = 0
    local f12_local5 = 10
    local f12_local6 = 10
    local f12_local7 = 20
    local f12_local8 = 3020
    local f12_local9 = 999
    local f12_local10 = 0
    local f12_local11 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act11(ai, goal, paramTbl)
    local stopDist = 25
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 5
    local runLife = 5
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local goalLife = 3
    local animationId = 3030
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act12(ai, goal, paramTbl)
    local f14_local0 = 6 - ai:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = f14_local0 + 0
    local f14_local2 = f14_local0 + 5
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3033
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act13(ai, goal, paramTbl)
    local stopDist = 16
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 10
    local runLife = 10
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local f15_local7 = 20
    local f15_local8 = 3025
    local f15_local9 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act14(ai, goal, paramTbl)
    local stopDist = 13
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3026
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act15(ai, goal, paramTbl)
    local f17_local0 = 20
    local animationId = 3011
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act16(ai, goal, paramTbl)
    local stopDist = 30
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local goalLife = 15
    local animationId = 3013
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act17(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act19(ai, goal, paramTbl)
    local stopDist = 25
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 8
    local animationId = 3019
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act20(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act21(ai, goal, paramTbl)
    local f22_local0 = 5.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 5
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 3
    local f22_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3027
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act23(ai, goal, paramTbl)
    local f23_local0 = 9 - ai:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 5
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 3
    local f23_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3029
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act24(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act25(ai, goal, paramTbl)
    local f25_local0 = 2.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 5
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 3
    local f25_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3031
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act26(ai, goal, paramTbl)
    local f26_local0 = 99 - ai:GetMapHitRadius(TARGET_SELF)
    local f26_local1 = f26_local0 + 0
    local f26_local2 = f26_local0 + 5
    local f26_local3 = 100
    local f26_local4 = 0
    local f26_local5 = 3
    local f26_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3034
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act27(ai, goal, paramTbl)
    local f27_local0 = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 5
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 3
    local f27_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3035
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act28(ai, goal, paramTbl)
    local f28_local0 = 8.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 5
    local f28_local3 = 100
    local f28_local4 = 0
    local f28_local5 = 3
    local f28_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3037
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act29(ai, goal, paramTbl)
    local f29_local0 = 5.5 - ai:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = f29_local0 + 0
    local f29_local2 = f29_local0 + 5
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 3
    local f29_local6 = 3
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3038
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act30(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act32(ai, goal, paramTbl)
    ai:SetNumber(NUMBER_ATK_CNT, ai:GetNumber(NUMBER_ATK_CNT) + 3)
    local goalLife = 3
    local frontPriority = -1
    local backPriority = 0
    local leftPriority = 100
    local rightPriority = 0
    local target = TARGET_ENE_0
    local distSpaceCheck = 1
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act33(ai, goal, paramTbl)
    ai:SetNumber(NUMBER_ATK_CNT, ai:GetNumber(NUMBER_ATK_CNT) + 3)
    local goalLife = 3
    local frontPriority = -1
    local backPriority = 0
    local leftPriority = 0
    local rightPriority = 100
    local target = TARGET_ENE_0
    local distSpaceCheck = 1
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act34(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3034, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act35(ai, goal, paramTbl)
    local stopDist = 30 - ai:GetMapHitRadius(TARGET_SELF)
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act36(ai, goal, paramTbl)
    local stopDist = 45
    local canRunDist = 0
    local forceRunMinDist = 999
    local runProbability = ai:GetStringIndexedNumber("Run_Odds")
    local guardProbability = 0
    local walkLife = 2
    local runLife = 2
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 3
    local animationId = 3036
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local turnTime = 0
    local turnFaceAngle = 360
    local random = ai:GetRandam_Int(1, 100)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    if ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 80, -1, 999) and distanceEnemy > 7 then
        animationId = 3037
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 46346) == false and distanceEnemy > 7 then
        animationId = 3021
    end
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act38(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act39(ai, goal, paramTbl)
    local stopDist = 13
    local canRunDist = stopDist + 0
    local forceRunMinDist = stopDist + 5
    local runProbability = 100
    local guardProbability = 0
    local walkLife = 3
    local runLife = 3
    local random = ai:GetRandam_Int(1, 100)
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local animationId = 3039
    local successDist = 7 - ai:GetMapHitRadius(TARGET_SELF) + 999
    local turnTime = 0
    local turnFaceAngle = 0
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act40(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act41(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 7, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act42(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16470)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 16471)
    local random = ai:GetRandam_Int(1, 100)
    local f40_local1 = -1
    ai:SetTimer(3, 20)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(5, 7), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(15, 20))
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachAround, ai:GetRandam_Int(5, 7), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(15, 20))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act43(ai, goal, paramTbl)
    ai:SetNumber(NUMBER_ATK_CNT, ai:GetNumber(NUMBER_ATK_CNT) + 3)
    local goalLife = 10
    local frontPriority = -1
    local backPriority = 100
    local leftPriority = 0
    local rightPriority = 0
    local target = TARGET_ENE_0
    local distSpaceCheck = 1
    local turnTime = 0
    local alwaysSuccess = true
    goal:AddSubGoal(GOAL_COMMON_StepSafety, goalLife, frontPriority, backPriority, leftPriority, rightPriority, target, distSpaceCheck, turnTime, alwaysSuccess)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act44(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    ai:SetNumber(NUMBER_ATK_CNT, 0)
    local existMesh = ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, SIDEWAYMOVE_CHECKPATHDIST)
    local existMesh_2 = ai:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, SIDEWAYMOVE_CHECKPATHDIST)
    local random = ai:GetRandam_Int(0, 1)
    if existMesh_2 == true and existMesh == true then
    elseif existMesh_2 == true and existMesh == false then
        random = 0
    elseif existMesh_2 == false and existMesh == true then
        random = 1
    elseif existMesh_2 == false and existMesh == false then
        random = 2
    end
    if distanceEnemy > 7.5 then
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 7 + ai:GetMapHitRadius(TARGET_SELF))
    else
        ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 2 + ai:GetMapHitRadius(TARGET_SELF))
    end
    local goalLife = ai:GetRandam_Int(2.5, 3.5)
    local moveTarget = TARGET_ENE_0
    local right = random
    local angleThreshold = 100
    local isWalk = true
    local guardStateId = -1
    local onGuardResult = GUARD_GOAL_DESIRE_RET_Failed
    local f42_local11 = true
    goal:AddSubGoal(GOAL_COMMON_SidewayMove, goalLife, moveTarget, right, angleThreshold, isWalk, isLifeSuccess, guardStateId, onGuardResult)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act45(ai, goal, paramTbl)
    local goalLife = 6
    local stopDist = 15
    local walk = true
    local guardStateId = -1
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, goalLife, TARGET_ENE_0, stopDist, TARGET_SELF, walk, guardStateId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act46(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 15
    local stopDist_2 = 10
    local f44_local3 = 5
    local f44_local4 = 100
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, stopDist, TARGET_ENE_0, false, IsGuard)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, stopDist_2, TARGET_ENE_0, false, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act47(ai, goal, paramTbl)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 1, 0, true)
    else
        goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 1, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act48(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local f46_local1 = 8
    local f46_local2 = 6
    local f46_local3 = 5
    local f46_local4 = 100
    local random = ai:GetRandam_Int(1, 100)
    if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 7)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_Act49(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 20, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function Centaurus760000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_Centaurus760000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    local f51_local0 = 7 - ai:GetMapHitRadius(TARGET_SELF)
    local f51_local1 = 0
    local f51_local2 = 20
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local random_2 = ai:GetRandam_Int(1, 100)
    local random_3 = ai:GetRandam_Int(1, 100)
    local random_4 = ai:GetRandam_Int(1, 100)
    local f51_local8 = 10
    local f51_local9 = 100
    if ai:IsLadderAct(TARGET_SELF) then
        return false
    end
    if ai:IsInterupt(INTERUPT_Damaged) and ai:HasSpecialEffectId(TARGET_SELF, 5039) == true and random <= 30 then
        ai:Replaning()
        return true
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local random_5 = ai:GetRandam_Int(1, 100)
        if ai:HasSpecialEffectId(TARGET_SELF, 46390) == false and ai:GetHpRate(TARGET_SELF) < 0.95 and ai:HasSpecialEffectId(TARGET_SELF, 46301) == false and ai:HasSpecialEffectId(TARGET_SELF, 46341) == false and random_5 > 40 then
            if ai:HasSpecialEffectId(TARGET_SELF, 46350) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 46330) and ai:HasSpecialEffectId(TARGET_ENE_0, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_1, 46330) and ai:HasSpecialEffectId(TARGET_ENE_1, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_1, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_2, 46330) and ai:HasSpecialEffectId(TARGET_ENE_2, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_2, 999, 180, 180, 180, 180)
                    return true
                end
                -- damn you fulghor
                if ai:HasSpecialEffectId(TARGET_ENE_3, 46330) and ai:HasSpecialEffectId(TARGET_ENE_3, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_3, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_4, 46330) and ai:HasSpecialEffectId(TARGET_ENE_4, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_4, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_5, 46330) and ai:HasSpecialEffectId(TARGET_ENE_5, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_5, 999, 180, 180, 180, 180)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 46351) and ai:HasSpecialEffectId(TARGET_SELF, 46310) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 46331) and ai:HasSpecialEffectId(TARGET_ENE_0, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_1, 46331) and ai:HasSpecialEffectId(TARGET_ENE_1, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_1, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_2, 46331) and ai:HasSpecialEffectId(TARGET_ENE_2, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_2, 999, 180, 180, 180, 180)
                    return true
                end
                -- damn you fulghor
                if ai:HasSpecialEffectId(TARGET_ENE_3, 46331) and ai:HasSpecialEffectId(TARGET_ENE_3, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_3, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_4, 46331) and ai:HasSpecialEffectId(TARGET_ENE_4, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_4, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_5, 46331) and ai:HasSpecialEffectId(TARGET_ENE_5, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_5, 999, 180, 180, 180, 180)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 46352) and ai:HasSpecialEffectId(TARGET_SELF, 46310) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 46332) and ai:HasSpecialEffectId(TARGET_ENE_0, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_1, 46332) and ai:HasSpecialEffectId(TARGET_ENE_1, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_1, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_2, 46332) and ai:HasSpecialEffectId(TARGET_ENE_2, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_2, 999, 180, 180, 180, 180)
                    return true
                end
                -- damn you fulghor
                if ai:HasSpecialEffectId(TARGET_ENE_3, 46332) and ai:HasSpecialEffectId(TARGET_ENE_3, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_3, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_4, 46332) and ai:HasSpecialEffectId(TARGET_ENE_4, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_4, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_5, 46332) and ai:HasSpecialEffectId(TARGET_ENE_5, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_5, 999, 180, 180, 180, 180)
                    return true
                end
            end
            -- NR6PF: new speffects
            if ai:HasSpecialEffectId(TARGET_SELF, 98452) and ai:HasSpecialEffectId(TARGET_SELF, 46310) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 98432) and ai:HasSpecialEffectId(TARGET_ENE_0, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_1, 98432) and ai:HasSpecialEffectId(TARGET_ENE_1, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_1, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_2, 98432) and ai:HasSpecialEffectId(TARGET_ENE_2, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_2, 999, 180, 180, 180, 180)
                    return true
                end
                -- damn you fulghor
                if ai:HasSpecialEffectId(TARGET_ENE_3, 98432) and ai:HasSpecialEffectId(TARGET_ENE_3, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_3, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_4, 98432) and ai:HasSpecialEffectId(TARGET_ENE_4, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_4, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_5, 98432) and ai:HasSpecialEffectId(TARGET_ENE_5, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_5, 999, 180, 180, 180, 180)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 98453) and ai:HasSpecialEffectId(TARGET_SELF, 46310) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 98433) and ai:HasSpecialEffectId(TARGET_ENE_0, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_1, 98433) and ai:HasSpecialEffectId(TARGET_ENE_1, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_1, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_2, 98433) and ai:HasSpecialEffectId(TARGET_ENE_2, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_2, 999, 180, 180, 180, 180)
                    return true
                end
                -- damn you fulghor
                if ai:HasSpecialEffectId(TARGET_ENE_3, 98433) and ai:HasSpecialEffectId(TARGET_ENE_3, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_3, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_4, 98433) and ai:HasSpecialEffectId(TARGET_ENE_4, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_4, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_5, 98433) and ai:HasSpecialEffectId(TARGET_ENE_5, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_5, 999, 180, 180, 180, 180)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 98453) and ai:HasSpecialEffectId(TARGET_SELF, 46310) then
                if ai:HasSpecialEffectId(TARGET_ENE_0, 98433) and ai:HasSpecialEffectId(TARGET_ENE_0, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_1, 98433) and ai:HasSpecialEffectId(TARGET_ENE_1, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_1, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_2, 98433) and ai:HasSpecialEffectId(TARGET_ENE_2, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_2, 999, 180, 180, 180, 180)
                    return true
                end
                -- damn you fulghor
                if ai:HasSpecialEffectId(TARGET_ENE_3, 98433) and ai:HasSpecialEffectId(TARGET_ENE_3, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_3, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_4, 98433) and ai:HasSpecialEffectId(TARGET_ENE_4, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_4, 999, 180, 180, 180, 180)
                    return true
                end
                if ai:HasSpecialEffectId(TARGET_ENE_5, 98433) and ai:HasSpecialEffectId(TARGET_ENE_5, 100240) == false then
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_5, 999, 180, 180, 180, 180)
                    return true
                end
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5025) then
            if ai:HasSpecialEffectId(TARGET_SELF, 46300) == false and ai:HasSpecialEffectId(TARGET_SELF, 46301) == false then
                if distanceEnemy < 10 then
                    local animationId = 3014
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 46300) == true and ai:HasSpecialEffectId(TARGET_SELF, 46301) == false then
                if distanceEnemy > 10 then
                    if random_5 > 70 then
                        local animationId = 3031
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
                        return true
                    else
                        local animationId = 3014
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
                        return true
                    end
                elseif random_5 > 60 then
                    local animationId = 3031
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
                    return true
                else
                    local animationId = 3014
                    goal:ClearSubGoal()
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
                    return true
                end
            elseif distanceEnemy < 10 then
                local animationId = 3014
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5036) and distanceEnemy > 20 then
            local animationId = 3016
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5026) and distanceEnemy < 40 then
            local animationId = 3007
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5029) then
            local animationId = 3009
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, animationId, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5028) and ai:HasSpecialEffectId(TARGET_SELF, 46300) and distanceEnemy < 10 then
            local animationId = 3031
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5030) and ai:HasSpecialEffectId(TARGET_SELF, 46300) == false and distanceEnemy < 3 then
            local animationId = 3017
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5034) and distanceEnemy < 30 and ai:GetHpRate(TARGET_SELF) > 0.3 and random_5 > 20 then
            local animationId = 3031
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
            return true
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 5037) and ai:GetHpRate(TARGET_SELF) < 0.33 then
            local animationId = 3023
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, animationId, TARGET_ENE_0, 999, 360, 360, 360, 360)
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_Centaurus760000_AfterAttackAct, "Centaurus760000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Centaurus760000_AfterAttackAct, true)

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

