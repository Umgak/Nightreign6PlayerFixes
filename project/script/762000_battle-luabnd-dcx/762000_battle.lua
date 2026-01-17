RegisterTableGoal(GOAL_AngelsDaughters762000_Battle, "AngelsDaughters762000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AngelsDaughters762000_Battle, true)

Goal.Initialize = function (self, ai, goal, battleActivatedCount)
    ai:SetNumber(1, 0)
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
    local eventRequest = ai:GetEventRequest()
    ai:AddObserveRegion(0, TARGET_SELF, 16002740)
    ai:AddObserveRegion(1, TARGET_SELF, 16002741)
    ai:AddObserveRegion(2, TARGET_SELF, 16002742)
    ai:AddObserveRegion(3, TARGET_SELF, 16002743)
    ai:AddObserveRegion(4, TARGET_SELF, 16002744)
    ai:AddObserveRegion(5, TARGET_SELF, 16002745)
    ai:AddObserveRegion(6, TARGET_SELF, 16002746)
    ai:AddObserveRegion(7, TARGET_SELF, 16002747)
    ai:AddObserveRegion(10, TARGET_ENE_0, 16002740)
    ai:AddObserveRegion(11, TARGET_ENE_0, 16002741)
    ai:AddObserveRegion(12, TARGET_ENE_0, 16002742)
    ai:AddObserveRegion(13, TARGET_ENE_0, 16002743)
    ai:AddObserveRegion(14, TARGET_ENE_0, 16002744)
    ai:AddObserveRegion(15, TARGET_ENE_0, 16002745)
    ai:AddObserveRegion(16, TARGET_ENE_0, 16002746)
    ai:AddObserveRegion(17, TARGET_ENE_0, 16002747)
    ai:AddObserveRegion(20, TARGET_ENE_1, 16002740)
    ai:AddObserveRegion(21, TARGET_ENE_1, 16002741)
    ai:AddObserveRegion(22, TARGET_ENE_1, 16002742)
    ai:AddObserveRegion(23, TARGET_ENE_1, 16002743)
    ai:AddObserveRegion(24, TARGET_ENE_1, 16002744)
    ai:AddObserveRegion(25, TARGET_ENE_1, 16002745)
    ai:AddObserveRegion(26, TARGET_ENE_1, 16002746)
    ai:AddObserveRegion(27, TARGET_ENE_1, 16002747)
    ai:AddObserveRegion(30, TARGET_ENE_2, 16002740)
    ai:AddObserveRegion(31, TARGET_ENE_2, 16002741)
    ai:AddObserveRegion(32, TARGET_ENE_2, 16002742)
    ai:AddObserveRegion(33, TARGET_ENE_2, 16002743)
    ai:AddObserveRegion(34, TARGET_ENE_2, 16002744)
    ai:AddObserveRegion(35, TARGET_ENE_2, 16002745)
    ai:AddObserveRegion(36, TARGET_ENE_2, 16002746)
    ai:AddObserveRegion(37, TARGET_ENE_2, 16002747)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60620)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60621)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60622)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60623)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60624)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60625)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60626)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60627)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62641)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60680)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60681)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60682)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60683)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60685)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60688)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60691)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60691)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60692)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60693)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60694)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60641)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60648)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60649)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60722)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62500)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62501)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62502)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60661)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62510)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62511)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62512)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62513)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62514)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62515)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62516)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62540)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62710)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62711)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62712)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62713)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local hasEffect60730 = ai:HasSpecialEffectId(TARGET_ENE_0, 60730)
    if hasEffect60730 then
        hasEffect60730 = ai:HasSpecialEffectId(TARGET_ENE_0, 60731)
    end
    local hasEffect60730_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60730)
    if hasEffect60730_2 then
        hasEffect60730_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60732)
    end
    local hasEffect60730_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60730)
    if hasEffect60730_3 then
        hasEffect60730_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60733)
    end
    local hasEffect60730_4 = ai:HasSpecialEffectId(TARGET_ENE_0, 60730)
    if hasEffect60730_4 then
        hasEffect60730_4 = ai:HasSpecialEffectId(TARGET_ENE_0, 60734)
    end
    local hasEffect60730_5 = ai:HasSpecialEffectId(TARGET_ENE_0, 60730)
    if hasEffect60730_5 then
        hasEffect60730_5 = ai:HasSpecialEffectId(TARGET_ENE_0, 60735)
    end
    local hasEffect60730_6 = ai:HasSpecialEffectId(TARGET_ENE_0, 60730)
    if hasEffect60730_6 then
        hasEffect60730_6 = ai:HasSpecialEffectId(TARGET_ENE_0, 60736)
    end
    local hasEffect60731 = ai:HasSpecialEffectId(TARGET_ENE_0, 60731)
    if hasEffect60731 then
        hasEffect60731 = ai:HasSpecialEffectId(TARGET_ENE_0, 60732)
    end
    local hasEffect60731_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60731)
    if hasEffect60731_2 then
        hasEffect60731_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60733)
    end
    local hasEffect60731_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60731)
    if hasEffect60731_3 then
        hasEffect60731_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60734)
    end
    local hasEffect60731_4 = ai:HasSpecialEffectId(TARGET_ENE_0, 60731)
    if hasEffect60731_4 then
        hasEffect60731_4 = ai:HasSpecialEffectId(TARGET_ENE_0, 60735)
    end
    local hasEffect60731_5 = ai:HasSpecialEffectId(TARGET_ENE_0, 60731)
    if hasEffect60731_5 then
        hasEffect60731_5 = ai:HasSpecialEffectId(TARGET_ENE_0, 60736)
    end
    local hasEffect60732 = ai:HasSpecialEffectId(TARGET_ENE_0, 60732)
    if hasEffect60732 then
        hasEffect60732 = ai:HasSpecialEffectId(TARGET_ENE_0, 60733)
    end
    local hasEffect60732_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60732)
    if hasEffect60732_2 then
        hasEffect60732_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60734)
    end
    local hasEffect60732_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60732)
    if hasEffect60732_3 then
        hasEffect60732_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60735)
    end
    local hasEffect60732_4 = ai:HasSpecialEffectId(TARGET_ENE_0, 60732)
    if hasEffect60732_4 then
        hasEffect60732_4 = ai:HasSpecialEffectId(TARGET_ENE_0, 60736)
    end
    local hasEffect60733 = ai:HasSpecialEffectId(TARGET_ENE_0, 60733)
    if hasEffect60733 then
        hasEffect60733 = ai:HasSpecialEffectId(TARGET_ENE_0, 60734)
    end
    local hasEffect60733_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60733)
    if hasEffect60733_2 then
        hasEffect60733_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60735)
    end
    local hasEffect60733_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60733)
    if hasEffect60733_3 then
        hasEffect60733_3 = ai:HasSpecialEffectId(TARGET_ENE_0, 60736)
    end
    local hasEffect60734 = ai:HasSpecialEffectId(TARGET_ENE_0, 60734)
    if hasEffect60734 then
        hasEffect60734 = ai:HasSpecialEffectId(TARGET_ENE_0, 60735)
    end
    local hasEffect60734_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60734)
    if hasEffect60734_2 then
        hasEffect60734_2 = ai:HasSpecialEffectId(TARGET_ENE_0, 60736)
    end
    local hasEffect60735 = ai:HasSpecialEffectId(TARGET_ENE_0, 60735)
    if hasEffect60735 then
        hasEffect60735 = ai:HasSpecialEffectId(TARGET_ENE_0, 60736)
    end
    local f2_local30
    if not hasEffect60730 then
        f2_local30 = hasEffect60730
    elseif not hasEffect60730_2 then
        f2_local30 = hasEffect60730_2
    elseif not hasEffect60730_3 then
        f2_local30 = hasEffect60730_3
    elseif not hasEffect60730_4 then
        f2_local30 = hasEffect60730_4
    elseif not hasEffect60730_5 then
        f2_local30 = hasEffect60730_5
    elseif not hasEffect60730_6 then
        f2_local30 = hasEffect60730_6
    elseif not hasEffect60731 then
        f2_local30 = hasEffect60731
    elseif not hasEffect60731_2 then
        f2_local30 = hasEffect60731_2
    elseif not hasEffect60731_3 then
        f2_local30 = hasEffect60731_3
    elseif not hasEffect60731_4 then
        f2_local30 = hasEffect60731_4
    elseif not hasEffect60731_5 then
        f2_local30 = hasEffect60731_5
    elseif not hasEffect60732 then
        f2_local30 = hasEffect60732
    elseif not hasEffect60732_2 then
        f2_local30 = hasEffect60732_2
    elseif not hasEffect60732_3 then
        f2_local30 = hasEffect60732_3
    elseif not hasEffect60732_4 then
        f2_local30 = hasEffect60732_4
    elseif not hasEffect60733 then
        f2_local30 = hasEffect60733
    elseif not hasEffect60733_2 then
        f2_local30 = hasEffect60733_2
    elseif not hasEffect60733_3 then
        f2_local30 = hasEffect60733_3
    elseif not hasEffect60734 then
        f2_local30 = hasEffect60734
    elseif not hasEffect60734_2 then
        f2_local30 = hasEffect60734_2
    else
        f2_local30 = hasEffect60735
    end
    if ai:GetHpRate(TARGET_TEAM_LEADER) <= 0.5 and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60638) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60638) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60638) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60638) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60638) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60638) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60638) == false and ai:HasSpecialEffectId(TARGET_SELF, 62840) == false then
        if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_SELF, 60614) == false then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[30] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_SELF, 60614) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[30] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_SELF, 60614) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[30] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true and ai:HasSpecialEffectId(TARGET_SELF, 60614) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[30] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_SELF, 60614) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[30] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_SELF, 60614) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[30] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_SELF, 60614) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[30] = 100
            end
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60638) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60606) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60606) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60606) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60606) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60606) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60606) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60606) == false then
        if ai:HasSpecialEffectId(TARGET_SELF, 62620) == true or ai:HasSpecialEffectId(TARGET_SELF, 62621) == true or ai:HasSpecialEffectId(TARGET_SELF, 62622) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62623) == true or ai:HasSpecialEffectId(TARGET_SELF, 62624) == true or ai:HasSpecialEffectId(TARGET_SELF, 62625) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62626) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                    probabilities[18] = 100
                else
                    probabilities[30] = 100
                end
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 5030) == true then
        probabilities[40] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 63140) == true then
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if distanceEnemy >= 20 then
                probabilities[46] = 100
            elseif distanceEnemy >= 15 then
                probabilities[47] = 100
            elseif distanceEnemy >= 10 then
                probabilities[6] = 40
                probabilities[47] = 50
                probabilities[48] = 10
            elseif distanceEnemy >= 1.5 then
                probabilities[48] = 100
            else
                probabilities[4] = 90
                probabilities[48] = 10
            end
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if distanceEnemy >= 15 then
                probabilities[46] = 100
            elseif distanceEnemy >= 10 then
                probabilities[6] = 35
                probabilities[47] = 65
            elseif distanceEnemy >= 4 then
                probabilities[6] = 35
                probabilities[47] = 55
                probabilities[48] = 10
            elseif distanceEnemy >= 1.5 then
                probabilities[48] = 70
                probabilities[6] = 30
            else
                probabilities[1] = 20
                probabilities[8] = 20
                probabilities[4] = 50
                probabilities[48] = 10
            end
        elseif distanceEnemy < 1 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 40
                probabilities[4] = 30
                probabilities[8] = 30
                probabilities[15] = 20
            else
                probabilities[21] = 30
                probabilities[8] = 30
            end
        elseif distanceEnemy < 3 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 50
                probabilities[4] = 10
                probabilities[8] = 30
                probabilities[15] = 30
            else
                probabilities[8] = 30
                probabilities[21] = 70
            end
        elseif distanceEnemy < 7 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
                probabilities[1] = 5
                probabilities[2] = 20
                probabilities[5] = 20
                probabilities[13] = 30
                probabilities[15] = 40
                probabilities[22] = 20
            else
                probabilities[21] = 100
            end
        elseif distanceEnemy < 13 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
                probabilities[1] = 5
                probabilities[2] = 35
                probabilities[5] = 35
                probabilities[13] = 30
                probabilities[22] = 5
            else
                probabilities[21] = 100
            end
        elseif distanceEnemy < 9999 then
            probabilities[22] = 100
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60697) == true and ai:HasSpecialEffectId(TARGET_SELF, 60690) == true then
        probabilities[34] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60749) == false and ai:HasSpecialEffectId(TARGET_SELF, 60690) == true then
        probabilities[34] = 100
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60690) == true then
        if distanceEnemy < 15 then
            probabilities[33] = 100
        elseif distanceEnemy < 25 then
            probabilities[33] = 100
        elseif distanceEnemy < 9999 then
            probabilities[33] = 100
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if distanceEnemy > 35 then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[46] = 50
            else
                probabilities[46] = 20
                probabilities[29] = 80
            end
        elseif distanceEnemy >= 29 then
            if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 999) then
                    probabilities[6] = 80
                    probabilities[27] = 10
                    probabilities[28] = 10
                else
                    probabilities[6] = 80
                    probabilities[47] = 20
                end
            elseif f2_local30 == true then
                if (ai:HasSpecialEffectId(TARGET_SELF, 7867) == true or ai:HasSpecialEffectId(TARGET_SELF, 7967) == true) and ai:HasSpecialEffectId(TARGET_ENE_1, 60730) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60731) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60732) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60733) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60734) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60735) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60736) == false or ai:HasSpecialEffectId(TARGET_ENE_2, 60730) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60731) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60732) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60733) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60734) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60735) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60736) == false and ai:HasSpecialEffectId(TARGET_SELF, 60606) == false then
                    probabilities[19] = 90
                    probabilities[47] = 10
                elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 999) then
                    probabilities[27] = 50
                    probabilities[28] = 50
                else
                    probabilities[6] = 40
                    probabilities[47] = 60
                end
            elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 999) then
                probabilities[27] = 50
                probabilities[28] = 50
            else
                probabilities[6] = 40
                probabilities[47] = 60
            end
        elseif distanceEnemy > 3 then
            if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
                probabilities[6] = 40
                probabilities[26] = 30
                probabilities[48] = 30
            elseif f2_local30 == true then
                if (ai:HasSpecialEffectId(TARGET_SELF, 7867) == true or ai:HasSpecialEffectId(TARGET_SELF, 7967) == true) and ai:HasSpecialEffectId(TARGET_SELF, 60606) == false then
                    probabilities[19] = 90
                    probabilities[48] = 10
                else
                    probabilities[26] = 60
                    probabilities[48] = 40
                end
            else
                probabilities[26] = 60
                probabilities[48] = 40
            end
        elseif distanceEnemy >= 0 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[4] = 80
                probabilities[26] = 10
                probabilities[48] = 10
            else
                probabilities[21] = 100
            end
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if distanceEnemy > 25 then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[46] = 50
            else
                probabilities[46] = 20
                probabilities[29] = 80
            end
        elseif distanceEnemy >= 20 then
            if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 999) then
                    probabilities[6] = 90
                    probabilities[47] = 10
                else
                    probabilities[6] = 70
                    probabilities[47] = 30
                end
            elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 999) then
                probabilities[27] = 30
                probabilities[28] = 30
                probabilities[6] = 40
                probabilities[47] = 10
            else
                probabilities[6] = 50
                probabilities[47] = 50
            end
        elseif distanceEnemy > 3 then
            if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 999) then
                    probabilities[6] = 40
                    probabilities[27] = 20
                    probabilities[28] = 20
                    probabilities[48] = 10
                else
                    probabilities[6] = 40
                    probabilities[26] = 40
                    probabilities[48] = 20
                end
            elseif ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 999) then
                probabilities[27] = 40
                probabilities[28] = 40
                probabilities[48] = 10
            else
                probabilities[26] = 80
                probabilities[48] = 20
            end
        elseif distanceEnemy >= 0 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[4] = 50
                probabilities[8] = 30
                probabilities[26] = 10
                probabilities[48] = 10
            else
                probabilities[27] = 20
                probabilities[28] = 20
                probabilities[8] = 40
                probabilities[21] = 60
            end
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 62535) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[18] = 100
            else
                probabilities[36] = 100
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62537) == true then
            probabilities[37] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62553) == false or ai:HasSpecialEffectId(TARGET_SELF, 62551) == false and ai:HasSpecialEffectId(TARGET_ENE_0, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_3, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_4, 60668) == false then
            probabilities[16] = 100
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60724) == false then
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                probabilities[41] = 100
            elseif distanceEnemy < 5 then
                probabilities[35] = 100
            elseif distanceEnemy < 60 then
                probabilities[38] = 50
                probabilities[39] = 50
            elseif distanceEnemy < 9999 then
                probabilities[20] = 100
            end
        elseif distanceEnemy < 1 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 20
                probabilities[4] = 50
                probabilities[7] = 30
                probabilities[14] = 30
            else
                probabilities[27] = 10
                probabilities[28] = 10
                probabilities[7] = 30
                probabilities[14] = 50
            end
        elseif distanceEnemy < 3 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                probabilities[1] = 30
                probabilities[4] = 10
                probabilities[7] = 30
                probabilities[14] = 30
            else
                probabilities[27] = 10
                probabilities[28] = 10
                probabilities[7] = 30
                probabilities[14] = 50
            end
        elseif distanceEnemy < 7 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
                probabilities[1] = 5
                probabilities[2] = 10
                probabilities[5] = 30
                probabilities[13] = 30
                probabilities[14] = 40
                probabilities[17] = 50
            else
                probabilities[1] = 5
                probabilities[2] = 10
                probabilities[5] = 30
                probabilities[13] = 30
                probabilities[14] = 80
                probabilities[17] = 40
            end
        elseif distanceEnemy < 13 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
                probabilities[1] = 5
                probabilities[2] = 10
                probabilities[5] = 30
                probabilities[13] = 30
                probabilities[14] = 20
                probabilities[17] = 40
            else
                probabilities[5] = 30
                probabilities[13] = 30
                probabilities[14] = 40
                probabilities[17] = 40
            end
        elseif distanceEnemy < 9999 then
            probabilities[20] = 100
        end
    elseif distanceEnemy < 1 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if ai:HasSpecialEffectId(TARGET_SELF, 60633) == true then
                probabilities[1] = 50
                probabilities[8] = 50
            else
                probabilities[1] = 40
                probabilities[4] = 30
                probabilities[8] = 30
                probabilities[15] = 20
            end
        else
            probabilities[21] = 10
            probabilities[8] = 30
            probabilities[27] = 30
            probabilities[28] = 30
        end
    elseif distanceEnemy < 3 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            if ai:HasSpecialEffectId(TARGET_SELF, 60633) == true then
                probabilities[1] = 50
                probabilities[8] = 30
            else
                probabilities[1] = 50
                probabilities[4] = 10
                probabilities[8] = 30
                probabilities[15] = 30
            end
        else
            probabilities[8] = 30
            probabilities[21] = 50
            probabilities[27] = 10
            probabilities[28] = 10
        end
    elseif distanceEnemy < 7 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            if ai:HasSpecialEffectId(TARGET_SELF, 60635) == true then
                probabilities[1] = 5
                probabilities[2] = 10
                probabilities[6] = 45
                probabilities[22] = 20
            else
                probabilities[1] = 5
                probabilities[2] = 20
                probabilities[5] = 20
                probabilities[13] = 30
                probabilities[15] = 40
                probabilities[22] = 20
            end
        else
            probabilities[21] = 100
        end
    elseif distanceEnemy < 13 then
        if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            if ai:HasSpecialEffectId(TARGET_SELF, 60635) == true then
                probabilities[6] = 30
                probabilities[22] = 30
            else
                probabilities[1] = 5
                probabilities[2] = 35
                probabilities[5] = 35
                probabilities[13] = 30
                probabilities[22] = 5
            end
        else
            probabilities[21] = 100
        end
    elseif distanceEnemy < 9999 then
        probabilities[20] = 80
        probabilities[22] = 20
    end
    probabilities[1] = SetCoolTime(ai, goal, 3000, 25, probabilities[1], 1)
    probabilities[2] = SetCoolTime(ai, goal, 3002, 15, probabilities[2], 1)
    probabilities[3] = SetCoolTime(ai, goal, 3004, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(ai, goal, 3010, 6, probabilities[4], 1)
    probabilities[5] = SetCoolTime(ai, goal, 3011, 10, probabilities[5], 1)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
            probabilities[6] = SetCoolTime(ai, goal, 3012, 5, probabilities[6], 1)
        else
            probabilities[6] = SetCoolTime(ai, goal, 3012, 40, probabilities[6], 1)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
            probabilities[6] = SetCoolTime(ai, goal, 3012, 5, probabilities[6], 1)
        else
            probabilities[6] = SetCoolTime(ai, goal, 3012, 30, probabilities[6], 1)
        end
    else
        probabilities[6] = SetCoolTime(ai, goal, 3012, 25, probabilities[6], 1)
    end
    probabilities[7] = SetCoolTime(ai, goal, 3005, 25, probabilities[7], 1)
    probabilities[8] = SetCoolTime(ai, goal, 3006, 30, probabilities[8], 1)
    if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
        probabilities[13] = SetCoolTime(ai, goal, 3017, 40, probabilities[13], 0)
    else
        probabilities[13] = SetCoolTime(ai, goal, 3017, 50, probabilities[13], 0)
    end
    probabilities[17] = SetCoolTime(ai, goal, 3025, 25, probabilities[17], 1)
    probabilities[19] = SetCoolTime(ai, goal, 3013, 40, probabilities[19], 1)
    probabilities[20] = SetCoolTime(ai, goal, 3013, 5, probabilities[20], 1)
    probabilities[29] = SetCoolTime(ai, goal, 3026, 25, probabilities[29], 0)
    probabilities[27] = SetCoolTime(ai, goal, 6002, 10, probabilities[27], 1)
    probabilities[27] = SetCoolTime(ai, goal, 6003, 10, probabilities[27], 1)
    probabilities[28] = SetCoolTime(ai, goal, 6003, 10, probabilities[28], 1)
    probabilities[28] = SetCoolTime(ai, goal, 6002, 10, probabilities[28], 1)
    probabilities[38] = SetCoolTime(ai, goal, 20012, 30, probabilities[38], 1)
    probabilities[39] = SetCoolTime(ai, goal, 20015, 30, probabilities[39], 1)
    if ai:HasSpecialEffectId(TARGET_SELF, 60640) == true or ai:HasSpecialEffectId(TARGET_SELF, 60606) == false then
        probabilities[14] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60646) == true or ai:GetHpRate(TARGET_SELF) > 0.6 then
        probabilities[15] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60638) == false then
        probabilities[13] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60606) == false and ai:HasSpecialEffectId(TARGET_SELF, 62555) == true then
        probabilities[2] = 0
        probabilities[5] = 0
        probabilities[14] = 0
        probabilities[15] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
        probabilities[19] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
        probabilities[17] = 0
    end
    if ai:HasSpecialEffectId(TARGET_ENE_0, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60668) == false then
        probabilities[17] = 0
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
        if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
            probabilities[17] = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
            probabilities[17] = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
            probabilities[17] = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
            probabilities[17] = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
            probabilities[17] = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
            probabilities[17] = 0
        elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true then
            probabilities[17] = 0
        end
    end
    acts[1] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act01)
    acts[2] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act02)
    acts[3] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act03)
    acts[4] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act04)
    acts[5] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act05)
    acts[6] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act06)
    acts[7] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act07)
    acts[8] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act08)
    acts[10] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act10)
    acts[11] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act11)
    acts[12] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act12)
    acts[13] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act13)
    acts[14] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act14)
    acts[15] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act15)
    acts[16] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act16)
    acts[17] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act17)
    acts[18] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act18)
    acts[19] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act19)
    acts[20] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act20)
    acts[21] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act21)
    acts[22] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act22)
    acts[23] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act23)
    acts[24] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act24)
    acts[25] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act25)
    acts[26] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act26)
    acts[27] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act27)
    acts[28] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act28)
    acts[29] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act29)
    acts[30] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act30)
    acts[31] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act31)
    acts[32] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act32)
    acts[33] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act33)
    acts[34] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act34)
    acts[35] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act35)
    acts[36] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act36)
    acts[37] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act37)
    acts[38] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act38)
    acts[39] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act39)
    acts[40] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act40)
    acts[41] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act41)
    acts[45] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act45)
    acts[46] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act46)
    acts[47] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act47)
    acts[48] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act48)
    acts[49] = REGIST_FUNC(ai, goal, AngelsDaughters762000_Act49)
    local actAfter = REGIST_FUNC(ai, goal, AngelsDaughters762000_ActAfter_AdjustSpace)
    Common_Battle_Activate(ai, goal, probabilities, acts, actAfter, paramTbls)
end

function AngelsDaughters762000_Act01(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 6
    local canRunDist = 999
    local forceRunMinDist = 1000000
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 5
    local animationId = 3000
    local successDist = 7
    local turnTime = 0
    local turnFaceAngle = 90
    local random_2 = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act02(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local random = ai:GetRandam_Int(1, 100)
    local stopDist = 10
    local canRunDist = 999
    local forceRunMinDist = 1000000
    local runProbability = 0
    local guardProbability = 0
    local walkLife = 3
    local runLife = 0
    Approach_Act_Flex(ai, goal, stopDist, canRunDist, forceRunMinDist, runProbability, guardProbability, walkLife, runLife)
    local goalLife = 3
    local animationId = 3002
    local successDist = 3
    local turnTime = 0
    local turnFaceAngle = 120
    local random_2 = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act03(ai, goal, paramTbl)
    local goalLife = 3
    local animationId = 3004
    local successDist = 20
    local turnTime = 2
    local turnFaceAngle = 60
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act04(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3010
    local successDist = 6
    local turnTime = 2
    local turnFaceAngle = 60
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act05(ai, goal, paramTbl)
    local goalLife = 3
    local animationId = 3011
    local successDist = 2
    local turnTime = 2
    local turnFaceAngle = 60
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act06(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3012
    local successDist = 999
    local turnTime = 1
    local turnFaceAngle = 30
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act07(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3005
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 120
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act08(ai, goal, paramTbl)
    local goalLife = 5
    local animationId = 3006
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act10(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3014
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act11(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3015
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act12(ai, goal, paramTbl)
    local goalLife = 15
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    local animationId = 3016
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act13(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 3017
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act14(ai, goal, paramTbl)
    local goalLife = 15
    local successDist = 0
    local turnTime = 2
    local turnFaceAngle = 30
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60601) == true then
        Attack1 = 3015
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60602) == true then
        Attack1 = 3014
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60603) == true then
        Attack1 = 3018
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, Attack1, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act15(ai, goal, paramTbl)
    local goalLife = 15
    local successDist = 0
    local turnTime = 2
    local turnFaceAngle = 30
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 60601) == true then
        Attack1 = 3020
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60602) == true then
        Attack1 = 3019
    elseif ai:HasSpecialEffectId(TARGET_SELF, 60603) == true then
        Attack1 = 3021
    end
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, Attack1, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act16(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3028
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_SELF, 7867) == true then
        if ai:HasSpecialEffectId(TARGET_ENE_1, 60668) == false then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_1, successDist, turnTime, turnFaceAngle, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_ENE_0, 60668) == false then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    elseif ai:HasSpecialEffectId(TARGET_SELF, 7967) == true then
        if ai:HasSpecialEffectId(TARGET_ENE_2, 60668) == false then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_2, successDist, turnTime, turnFaceAngle, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_ENE_1, 60668) == false then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_1, successDist, turnTime, turnFaceAngle, 0, 0)
        elseif ai:HasSpecialEffectId(TARGET_ENE_0, 60668) == false then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    else
        goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act17(ai, goal, paramTbl)
    local goalLife = 10
    local f18_local1 = 3025
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, 3025, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act18(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3026
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60689)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_SELF, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act19(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3013
    local successDist = 999
    local turnTime = 5
    local turnFaceAngle = 30
    local random = ai:GetRandam_Int(1, 100)
    if ai:HasSpecialEffectId(TARGET_ENE_0, 60730) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 60731) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 60732) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 60733) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 60734) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 60735) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 60736) == true then
        if ai:HasSpecialEffectId(TARGET_ENE_1, 60730) == true or ai:HasSpecialEffectId(TARGET_ENE_1, 60731) == true or ai:HasSpecialEffectId(TARGET_ENE_1, 60732) == true or ai:HasSpecialEffectId(TARGET_ENE_1, 60733) == true or ai:HasSpecialEffectId(TARGET_ENE_1, 60734) == true or ai:HasSpecialEffectId(TARGET_ENE_1, 60735) == true or ai:HasSpecialEffectId(TARGET_ENE_1, 60736) == true then
            if ai:HasSpecialEffectId(TARGET_ENE_2, 60730) == true or ai:HasSpecialEffectId(TARGET_ENE_2, 60731) == true or ai:HasSpecialEffectId(TARGET_ENE_2, 60732) == true or ai:HasSpecialEffectId(TARGET_ENE_2, 60733) == true or ai:HasSpecialEffectId(TARGET_ENE_2, 60734) == true or ai:HasSpecialEffectId(TARGET_ENE_2, 60735) == true or ai:HasSpecialEffectId(TARGET_ENE_2, 60736) == true then
                if random > 50 then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 0, ai:GetRandam_Int(60, 80), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 1, ai:GetRandam_Int(60, 80), true, true, -1)
                end
            else
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_2, successDist, turnTime, turnFaceAngle, 0, 0)
            end
        else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_1, successDist, turnTime, turnFaceAngle, 0, 0)
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 0, ai:GetRandam_Int(60, 80), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 1, ai:GetRandam_Int(60, 80), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act20(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3013
    local successDist = 999
    local turnTime = 2
    local turnFaceAngle = 30
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act21(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act22(ai, goal, paramTbl)
    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
    local stopDist = 3
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ApproachTarget, ai:GetRandam_Int(1, 2), TARGET_ENE_0, stopDist, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act23(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act24(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local f25_local1 = -1
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 0, ai:GetRandam_Int(60, 80), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 4), TARGET_ENE_0, 1, ai:GetRandam_Int(60, 80), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act25(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act26(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act27(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act28(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act29(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3026
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60688)
    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60689)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_SELF, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act30(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 20011
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act31(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3035
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act32(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act33(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    if random > 50 then
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, 0, ai:GetRandam_Int(60, 80), true, true, -1)
    else
        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, 1, ai:GetRandam_Int(60, 80), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act34(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3036
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act35(ai, goal, paramTbl)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, 1, 1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act36(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3030
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60680)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act37(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3031
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act38(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 20012
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act39(ai, goal, paramTbl)
    local goalLife = 15
    local animationId = 20015
    local successDist = 0
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_ENE_0, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act40(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act41(ai, goal, paramTbl)
    local goalLife = 10
    local animationId = 3026
    local successDist = 999
    local turnTime = 0
    local turnFaceAngle = 0
    local random = ai:GetRandam_Int(1, 100)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62507)
    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62508)
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, goalLife, animationId, TARGET_SELF, successDist, turnTime, turnFaceAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act45(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 5, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act46(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 63140) == true then
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
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 31, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 31, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 22, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 22, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_0, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act47(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if ai:HasSpecialEffectId(TARGET_SELF, 63140) == true then
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, proxi_size, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, proxi_size, 0) >= 2 then
        if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act48(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
    if ai:HasSpecialEffectId(TARGET_SELF, 63140) == true then
        if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
            elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
                goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
            elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
                if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
                else
                    goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
                end
            elseif random > 50 then
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
            else
                goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
            end
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 31, TARGET_ENE_0, true, -1)
        elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 22, TARGET_ENE_0, true, -1)
        elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
            if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
            else
                goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
            end
        elseif random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
        end
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, lineWidth, 0) >= 2 then
        goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
    elseif ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 2, lineWidth, 0) >= 2 or ai:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 2, lineWidth, 0) >= 2 then
        if ai:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 140, 90, 999) then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 2), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 60), true, true, -1)
        else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, -1)
        end
    elseif random > 50 then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 4)
    else
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 1.5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_Act49(ai, goal, paramTbl)
    local random = ai:GetRandam_Int(1, 100)
    local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 15, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
        end
    elseif paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if random > 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
        else
            goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
        end
    elseif ai:HasSpecialEffectId(TARGET_ENE_1, 60730) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, ai:GetRandam_Int(4, 5))
    elseif ai:HasSpecialEffectId(TARGET_ENE_2, 60730) == true then
        goal:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, ai:GetRandam_Int(1, 2), TARGET_ENE_1, 10, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, ai:GetRandam_Int(4, 5))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function AngelsDaughters762000_ActAfter_AdjustSpace(ai, goal, paramTbl)
    goal:AddSubGoal(GOAL_AngelsDaughters762000_AfterAttackAct, 10)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

Goal.Terminate = function (self, ai, goal)
end

Goal.Interrupt = function (self, ai, goal)
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(60722) then
        if ai:HasSpecialEffectId(TARGET_SELF, 62620) == true or ai:HasSpecialEffectId(TARGET_SELF, 62621) == true or ai:HasSpecialEffectId(TARGET_SELF, 62622) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62623) == true or ai:HasSpecialEffectId(TARGET_SELF, 62624) == true or ai:HasSpecialEffectId(TARGET_SELF, 62625) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            end
        elseif ai:HasSpecialEffectId(TARGET_SELF, 62626) == true then
            if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20014, TARGET_SELF, 200, 0, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_FindAttack) then
        if ai:GetNumber(0) >= 2 then
            ai:SetNumber(0, ai:GetNumber(0) + 1)
            fate = 100
        elseif ai:GetNumber(0) >= 1 then
            ai:SetNumber(0, ai:GetNumber(0) + 1)
            fate = fate + 10
        else
            ai:SetNumber(0, ai:GetNumber(0) + 1)
            fate = fate + 5
        end
        if fate >= 60 and InsideRange(ai, goal, 0, 120, 0, 2.5) and ai:GetTimer(0) <= 0 and ai:HasSpecialEffectId(TARGET_SELF, 60627) then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60628)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60629)
            ai:SetNumber(0, 0)
            ai:SetTimer(0, 4)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_Shoot) then
        if ai:GetNumber(2) >= 2 then
            ai:SetNumber(2, ai:GetNumber(2) + 1)
            fate = 100
        elseif ai:GetNumber(2) >= 1 then
            ai:SetNumber(2, ai:GetNumber(2) + 1)
            fate = fate + 10
        else
            ai:SetNumber(2, ai:GetNumber(2) + 1)
            fate = fate + 5
        end
        if fate >= 40 and ai:GetTimer(2) <= 1 and ai:HasSpecialEffectId(TARGET_SELF, 60627) then
            local random = ai:GetRandam_Int(1, 100)
            if 5 > targetDist then
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 3, 0, false)
                ai:SetNumber(2, 0)
                ai:SetTimer(2, 4)
                return true
            elseif targetDist < 15 then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62509)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3011, TARGET_ENE_0, 200, 0, 0, 0)
                ai:SetNumber(2, 0)
                ai:SetTimer(2, 4)
                return true
            elseif 40 > targetDist then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62509)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, 200, 0, 0, 0)
                ai:SetNumber(2, 0)
                ai:SetTimer(2, 4)
                return true
            else
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 3, 0, false)
                ai:SetNumber(2, 0)
                ai:SetTimer(2, 4)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(60628) then
            local random = ai:GetRandam_Int(1, 100)
            if random >= 70 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60628)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            elseif random >= 20 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60628)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60628)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, false)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(60629) then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60629)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 200, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(60627) and ai:HasSpecialEffectId(TARGET_SELF, 62641) == true then
        local random = ai:GetRandam_Int(1, 100)
        if random >= 60 and ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 10) then
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60627)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, 999, 0, 0, 0, 0)
            ai:SetNumber(0, 0)
            ai:SetTimer(0, 4)
            return true
        elseif ai:GetNumber(2) >= 1 then
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60627)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62509)
            ai:SetNumber(2, 0)
            ai:SetTimer(2, 4)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 3, 0, false)
            return true
        else
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60627)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62509)
            goal:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, 1, 1, TARGET_ENE_0, 3, 0, false)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(62509) then
        local random = ai:GetRandam_Int(1, 100)
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        if distanceEnemy < 6 then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62509)
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 200, 0, 0, 0)
            return true
        elseif distanceEnemy < 15 then
            if random >= 80 then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62509)
                return true
            elseif random >= 40 then
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62509)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3011, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62509)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        else
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62509)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) and ai:GetSpecialEffectActivateInterruptId(60641) then
        goal:ClearSubGoal()
        AngelsDaughters762000_Act26(ai, goal)
    end
    if (ai:HasSpecialEffectId(TARGET_SELF, 60737) == true or ai:HasSpecialEffectId(TARGET_SELF, 60738) == true or ai:HasSpecialEffectId(TARGET_SELF, 60739) == true or ai:HasSpecialEffectId(TARGET_SELF, 60740) == true or ai:HasSpecialEffectId(TARGET_SELF, 60741) == true or ai:HasSpecialEffectId(TARGET_SELF, 60742) == true or ai:HasSpecialEffectId(TARGET_SELF, 60743) == true) and ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 60648) == true and ai:GetSpecialEffectActivateInterruptId(60649) then
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60649)
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60688)
            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3037, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(60688) then
            if ai:HasSpecialEffectId(TARGET_SELF, 60737) == true then
                warpTARGET = TARGET_TEAM_MEMBER_1
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60738) == true then
                warpTARGET = TARGET_TEAM_MEMBER_2
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60739) == true then
                warpTARGET = TARGET_TEAM_MEMBER_3
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60740) == true then
                warpTARGET = TARGET_TEAM_MEMBER_4
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60741) == true then
                warpTARGET = TARGET_TEAM_MEMBER_5
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60742) == true then
                warpTARGET = TARGET_TEAM_MEMBER_6
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60743) == true then
                warpTARGET = TARGET_TEAM_MEMBER_7
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60737) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    directionType = AI_DIR_TYPE_FR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    directionType = AI_DIR_TYPE_R
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    directionType = AI_DIR_TYPE_BL
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    directionType = AI_DIR_TYPE_L
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    directionType = AI_DIR_TYPE_FL
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60738) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    directionType = AI_DIR_TYPE_FR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    directionType = AI_DIR_TYPE_R
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    directionType = AI_DIR_TYPE_BL
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    directionType = AI_DIR_TYPE_L
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    directionType = AI_DIR_TYPE_FL
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60739) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    directionType = AI_DIR_TYPE_FR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    directionType = AI_DIR_TYPE_R
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    directionType = AI_DIR_TYPE_BL
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    directionType = AI_DIR_TYPE_L
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    directionType = AI_DIR_TYPE_FL
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60740) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    directionType = AI_DIR_TYPE_FR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    directionType = AI_DIR_TYPE_R
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    directionType = AI_DIR_TYPE_BL
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    directionType = AI_DIR_TYPE_L
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    directionType = AI_DIR_TYPE_FL
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60741) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    directionType = AI_DIR_TYPE_FR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    directionType = AI_DIR_TYPE_R
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    directionType = AI_DIR_TYPE_BL
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    directionType = AI_DIR_TYPE_L
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    directionType = AI_DIR_TYPE_FL
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60742) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    directionType = AI_DIR_TYPE_FR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    directionType = AI_DIR_TYPE_R
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    directionType = AI_DIR_TYPE_BL
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    directionType = AI_DIR_TYPE_L
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    directionType = AI_DIR_TYPE_FL
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60743) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    directionType = AI_DIR_TYPE_FR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    directionType = AI_DIR_TYPE_R
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    directionType = AI_DIR_TYPE_BL
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    directionType = AI_DIR_TYPE_L
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    directionType = AI_DIR_TYPE_FL
                end
            end
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60688)
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTARGET, directionType, 8, warpTARGET, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, warpTARGET, 0, 0, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local random = ai:GetRandam_Int(1, 100)
        if ai:GetSpecialEffectActivateInterruptId(62710) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 62574) == true then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62710)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20013, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(62712) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 62574) == true then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62712)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20016, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local random = ai:GetRandam_Int(1, 100)
        if ai:GetSpecialEffectActivateInterruptId(62507) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
            local warpTarget = TARGET_ENE_0
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            if ai:IsInsideObserve(0) then
                warpTarget = TARGET_TEAM_MEMBER_10
            end
            if ai:IsInsideObserve(1) then
                warpTarget = TARGET_TEAM_MEMBER_11
            end
            if ai:IsInsideObserve(2) then
                warpTarget = TARGET_TEAM_MEMBER_12
            end
            if ai:IsInsideObserve(3) then
                warpTarget = TARGET_TEAM_MEMBER_13
            end
            if ai:IsInsideObserve(4) then
                warpTarget = TARGET_TEAM_MEMBER_14
            end
            if ai:IsInsideObserve(5) then
                warpTarget = TARGET_TEAM_MEMBER_15
            end
            if ai:IsInsideObserve(6) then
                warpTarget = TARGET_TEAM_MEMBER_16
            end
            if ai:IsInsideObserve(7) then
                warpTarget = TARGET_TEAM_MEMBER_17
            end
            local f51_local5 = 0
            local f51_local6 = 0
            local hitRadius = ai:GetMapHitRadius(TARGET_SELF)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
            ai:DeleteObserve(0)
            ai:DeleteObserve(1)
            ai:DeleteObserve(2)
            ai:DeleteObserve(3)
            ai:DeleteObserve(4)
            ai:DeleteObserve(5)
            ai:DeleteObserve(6)
            ai:DeleteObserve(7)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62507)
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTarget, AI_DIR_TYPE_F, 0, TARGET_SELF, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        if ai:GetSpecialEffectActivateInterruptId(62508) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if random_2 > 50 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62508)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20012, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62508)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20015, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local random = ai:GetRandam_Int(1, 100)
        if ai:GetSpecialEffectActivateInterruptId(60689) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60689)
            if ai:IsInsideObserve(0) then
                warpTARGET = TARGET_TEAM_MEMBER_10
            end
            if ai:IsInsideObserve(1) then
                warpTARGET = TARGET_TEAM_MEMBER_11
            end
            if ai:IsInsideObserve(2) then
                warpTARGET = TARGET_TEAM_MEMBER_12
            end
            if ai:IsInsideObserve(3) then
                warpTARGET = TARGET_TEAM_MEMBER_13
            end
            if ai:IsInsideObserve(4) then
                warpTARGET = TARGET_TEAM_MEMBER_14
            end
            if ai:IsInsideObserve(5) then
                warpTARGET = TARGET_TEAM_MEMBER_15
            end
            if ai:IsInsideObserve(6) then
                warpTARGET = TARGET_TEAM_MEMBER_16
            end
            if ai:IsInsideObserve(7) then
                warpTARGET = TARGET_TEAM_MEMBER_17
            end
            local f51_local3 = 0
            local f51_local4 = 0
            local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
            local f51_local8 = 0
            if ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FR, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_BL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_BR, 5 + lineWidth, lineWidth, 0) > 5 then
                ai:DeleteObserve(0)
                ai:DeleteObserve(1)
                ai:DeleteObserve(2)
                ai:DeleteObserve(3)
                ai:DeleteObserve(4)
                ai:DeleteObserve(5)
                ai:DeleteObserve(6)
                ai:DeleteObserve(7)
                goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTARGET, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, warpTARGET, 0, 0, 0, 0, 0)
            else
                ai:DeleteObserve(0)
                ai:DeleteObserve(1)
                ai:DeleteObserve(2)
                ai:DeleteObserve(3)
                ai:DeleteObserve(4)
                ai:DeleteObserve(5)
                ai:DeleteObserve(6)
                ai:DeleteObserve(7)
                goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_SELF, 0, 0, 0, 0, 0)
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60641) == false then
        if ai:GetSpecialEffectActivateInterruptId(60620) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:GetLatestSoundBehaviorID() == 762001 then
                goal:ClearSubGoal()
                return true
            elseif distanceEnemy < 7 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60620)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60620)
                goal:ClearSubGoal()
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(60621) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:GetLatestSoundBehaviorID() == 762001 then
                goal:ClearSubGoal()
                return true
            elseif ai:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, 90, 15) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60621)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60621)
                goal:ClearSubGoal()
                return true
            end
        end
    end
    if ai:HasSpecialEffectId(TARGET_SELF, 60606) == true then
        if ai:GetSpecialEffectActivateInterruptId(60625) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true or ai:HasSpecialEffectId(TARGET_SELF, 60671) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true or ai:HasSpecialEffectId(TARGET_SELF, 60672) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true or ai:HasSpecialEffectId(TARGET_SELF, 60673) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true or ai:HasSpecialEffectId(TARGET_SELF, 60674) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true or ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60614) == true or ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60614) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60614) == true or ai:HasSpecialEffectId(TARGET_SELF, 62560) == true or ai:HasSpecialEffectId(TARGET_ENE_0, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_1, 60668) == false and ai:HasSpecialEffectId(TARGET_ENE_2, 60668) == false then
                if distanceEnemy < 18 then
                    if ai:GetRemainingAttackCoolTime(3017) <= 0 then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60625)
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 200, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        AngelsDaughters762000_Act14(ai, goal)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60625)
                    return true
                end
            elseif random > 70 then
                if distanceEnemy < 18 then
                    if ai:GetRemainingAttackCoolTime(3017) <= 0 then
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60625)
                        goal:ClearSubGoal()
                        goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 200, 0, 0, 0)
                        return true
                    else
                        goal:ClearSubGoal()
                        AngelsDaughters762000_Act14(ai, goal)
                        return true
                    end
                else
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60625)
                    return true
                end
            else
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60625)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(5027) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if random > 50 then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20012, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            else
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                goal:ClearSubGoal()
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 20015, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
    end
    if ai:GetSpecialEffectActivateInterruptId(5026) then
        local random = ai:GetRandam_Int(1, 100)
        local targetOrigin = TARGET_ENE_0
        local f51_local2 = 0
        local f51_local3 = 0
        local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
        local distanceEnemy = ai:GetDist(TARGET_ENE_0)
        local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
        local f51_local7 = 0
        if ai:HasSpecialEffectId(TARGET_ENE_0, 60668) == true then
            targetOrigin = TARGET_ENE_0
        end
        if ai:HasSpecialEffectId(TARGET_ENE_1, 60668) == true then
            targetOrigin = TARGET_ENE_1
        end
        if ai:HasSpecialEffectId(TARGET_ENE_2, 60668) == true then
            targetOrigin = TARGET_ENE_2
        end
        if ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_F, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_B, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_L, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_R, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_FL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_FR, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_BL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(targetOrigin, AI_DIR_TYPE_BR, 5 + lineWidth, lineWidth, 0) > 5 then
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, targetOrigin, AI_DIR_TYPE_CENTER, 0, targetOrigin, 5, -2, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, targetOrigin, 0, 0, 0, 0, 0)
            return true
        else
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, warpTARGET, 0, 0, 0, 0, 0)
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:GetSpecialEffectActivateInterruptId(60626) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true then
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62505)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_SELF, 200, 0, 0, 0)
                return true
            else
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60626)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(60680) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60680)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3031, TARGET_ENE_0, 200, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(62506) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_SELF, 62560) == true or ai:IsInsideObserve(0) or ai:IsInsideObserve(1) or ai:IsInsideObserve(2) or ai:IsInsideObserve(3) or ai:IsInsideObserve(4) or ai:IsInsideObserve(5) or ai:IsInsideObserve(6) or ai:IsInsideObserve(7) then
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62506)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62505)
                goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_SELF, 999, 0, 0, 0, 0)
            else
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62506)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(62505) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random = ai:GetRandam_Int(1, 100)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62505)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            if ai:IsInsideObserve(0) then
                warpTARGET = TARGET_TEAM_MEMBER_10
            end
            if ai:IsInsideObserve(1) then
                warpTARGET = TARGET_TEAM_MEMBER_11
            end
            if ai:IsInsideObserve(2) then
                warpTARGET = TARGET_TEAM_MEMBER_12
            end
            if ai:IsInsideObserve(3) then
                warpTARGET = TARGET_TEAM_MEMBER_13
            end
            if ai:IsInsideObserve(4) then
                warpTARGET = TARGET_TEAM_MEMBER_14
            end
            if ai:IsInsideObserve(5) then
                warpTARGET = TARGET_TEAM_MEMBER_15
            end
            if ai:IsInsideObserve(6) then
                warpTARGET = TARGET_TEAM_MEMBER_16
            end
            if ai:IsInsideObserve(7) then
                warpTARGET = TARGET_TEAM_MEMBER_17
            end
            local f51_local4 = 0
            local f51_local5 = 0
            local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
            local distanceEnemy_3 = ai:GetDist(TARGET_ENE_0)
            local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
            local f51_local9 = 0
            if ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FR, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_BL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_BR, 5 + lineWidth, lineWidth, 0) > 5 then
                ai:DeleteObserve(0)
                ai:DeleteObserve(1)
                ai:DeleteObserve(2)
                ai:DeleteObserve(3)
                ai:DeleteObserve(4)
                ai:DeleteObserve(5)
                ai:DeleteObserve(6)
                ai:DeleteObserve(7)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62506)
                goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTARGET, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, warpTARGET, 0, 0, 0, 0, 0)
            else
                ai:DeleteObserve(0)
                ai:DeleteObserve(1)
                ai:DeleteObserve(2)
                ai:DeleteObserve(3)
                ai:DeleteObserve(4)
                ai:DeleteObserve(5)
                ai:DeleteObserve(6)
                ai:DeleteObserve(7)
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62506)
                goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_SELF, 0, 0, 0, 0, 0)
            end
        end
        if ai:HasSpecialEffectId(TARGET_SELF, 60690) == true then
            if ai:GetSpecialEffectActivateInterruptId(60685) then
                if ai:HasSpecialEffectId(TARGET_SELF, 60700) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60685)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60701) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60685)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60702) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60685)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60703) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60685)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60704) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60685)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60705) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60685)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60700) == true and ai:GetSpecialEffectActivateInterruptId(62510) then
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60701) == true and ai:GetSpecialEffectActivateInterruptId(62511) then
                if ai:HasSpecialEffectId(TARGET_SELF, 7867) == true or ai:HasSpecialEffectId(TARGET_SELF, 7967) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_1, 200, 0, 0, 0)
                    return true
                else
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60702) == true and ai:GetSpecialEffectActivateInterruptId(62512) then
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60703) == true and ai:GetSpecialEffectActivateInterruptId(62513) then
                if ai:HasSpecialEffectId(TARGET_SELF, 7867) == true or ai:HasSpecialEffectId(TARGET_SELF, 7967) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_2, 200, 0, 0, 0)
                    return true
                else
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                end
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60704) == true and ai:GetSpecialEffectActivateInterruptId(62514) then
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                goal:ClearSubGoal()
                ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
            if ai:HasSpecialEffectId(TARGET_SELF, 60705) == true and ai:GetSpecialEffectActivateInterruptId(62515) then
                if ai:HasSpecialEffectId(TARGET_SELF, 7867) == true or ai:HasSpecialEffectId(TARGET_SELF, 7967) == true then
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_1, 200, 0, 0, 0)
                    return true
                else
                    local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                    local random = ai:GetRandam_Int(1, 100)
                    goal:ClearSubGoal()
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 60684)
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62515)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 3035, TARGET_ENE_0, 200, 0, 0, 0)
                    return true
                end
            end
            if ai:GetSpecialEffectActivateInterruptId(60693) and ai:HasSpecialEffectId(TARGET_SELF, 60696) == true then
                local distanceEnemy = ai:GetDist(TARGET_ENE_0)
                local random = ai:GetRandam_Int(1, 100)
                goal:ClearSubGoal()
                ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 60693)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 60, 20009, TARGET_ENE_0, 200, 0, 0, 0)
                return true
            end
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if ai:HasSpecialEffectId(TARGET_SELF, 62544) == true and ai:GetSpecialEffectActivateInterruptId(62540) then
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                        if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                        if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false) then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false) then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false) then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false) then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60676) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false) then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    goal:ClearSubGoal()
                    ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                    ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                        if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false then
                            goal:ClearSubGoal()
                            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                            goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                            return true
                        end
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false) then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif ai:HasSpecialEffectId(TARGET_SELF, 60675) == true and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62544) == false and (ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false) then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62544) == false and ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 62544) == false then
                        goal:ClearSubGoal()
                        ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62540)
                        ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62545)
                        goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if ai:GetSpecialEffectActivateInterruptId(62545) then
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60606) == true then
                warpTARGET = TARGET_TEAM_MEMBER_1
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60606) == true then
                warpTARGET = TARGET_TEAM_MEMBER_2
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60606) == true then
                warpTARGET = TARGET_TEAM_MEMBER_3
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60606) == true then
                warpTARGET = TARGET_TEAM_MEMBER_4
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60606) == true then
                warpTARGET = TARGET_TEAM_MEMBER_5
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60606) == true then
                warpTARGET = TARGET_TEAM_MEMBER_6
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60606) == true then
                warpTARGET = TARGET_TEAM_MEMBER_7
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    ai:SetNumber(1, 1)
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    ai:SetNumber(1, 0)
                    directionType = AI_DIR_TYPE_BL
                end
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    ai:SetNumber(1, 1)
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    ai:SetNumber(1, 0)
                    directionType = AI_DIR_TYPE_BL
                end
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_3, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    ai:SetNumber(1, 1)
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    ai:SetNumber(1, 0)
                    directionType = AI_DIR_TYPE_BL
                end
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_4, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    ai:SetNumber(1, 1)
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    ai:SetNumber(1, 0)
                    directionType = AI_DIR_TYPE_BL
                end
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    ai:SetNumber(1, 1)
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    ai:SetNumber(1, 0)
                    directionType = AI_DIR_TYPE_BL
                end
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    ai:SetNumber(1, 1)
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60676) == true then
                    ai:SetNumber(1, 0)
                    directionType = AI_DIR_TYPE_BL
                end
            end
            if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_7, 60606) == true then
                if ai:HasSpecialEffectId(TARGET_SELF, 60670) == true then
                    ai:SetNumber(1, 1)
                    directionType = AI_DIR_TYPE_BR
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60671) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60672) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_1, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_2, 62547) == true then
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    else
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60673) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_5, 62547) == true or ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60674) == true then
                    if ai:HasSpecialEffectId(TARGET_TEAM_MEMBER_6, 62547) == true then
                        ai:SetNumber(1, 1)
                        directionType = AI_DIR_TYPE_BR
                    else
                        ai:SetNumber(1, 0)
                        directionType = AI_DIR_TYPE_BL
                    end
                end
                if ai:HasSpecialEffectId(TARGET_SELF, 60675) == true then
                    ai:SetNumber(1, 0)
                    directionType = AI_DIR_TYPE_BL
                end
            end
            ai:AddObserveSpecialEffectAttribute(TARGET_SELF, 62504)
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62545)
            goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTARGET, directionType, 7, TARGET_SELF, 0, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
        if ai:GetSpecialEffectActivateInterruptId(62504) then
            local random = ai:GetRandam_Int(1, 100)
            if ai:HasSpecialEffectId(TARGET_ENE_0, 60668) == true then
                hateTARGET = TARGET_ENE_0
            end
            if ai:HasSpecialEffectId(TARGET_ENE_1, 60668) == true then
                hateTARGET = TARGET_ENE_1
            end
            if ai:HasSpecialEffectId(TARGET_ENE_2, 60668) == true then
                hateTARGET = TARGET_ENE_2
            end
            goal:ClearSubGoal()
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 62504)
            if ai:GetNumber(1) == 0 then
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, hateTARGET, 999, 0, 0, 0, 0)
            else
                goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3039, hateTARGET, 999, 0, 0, 0, 0)
            end
            return true
        end
    end
    if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local random = ai:GetRandam_Int(1, 100)
        if ai:GetSpecialEffectActivateInterruptId(5025) then
            local distanceEnemy = ai:GetDist(TARGET_ENE_0)
            local random_2 = ai:GetRandam_Int(1, 100)
            local paramDoAdmire = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
            local warpTarget = TARGET_ENE_0
            ai:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            if ai:IsInsideObserve(10) then
                warpTarget = TARGET_TEAM_MEMBER_10
            end
            if ai:IsInsideObserve(11) then
                warpTarget = TARGET_TEAM_MEMBER_11
            end
            if ai:IsInsideObserve(12) then
                warpTarget = TARGET_TEAM_MEMBER_12
            end
            if ai:IsInsideObserve(13) then
                warpTarget = TARGET_TEAM_MEMBER_13
            end
            if ai:IsInsideObserve(14) then
                warpTarget = TARGET_TEAM_MEMBER_14
            end
            if ai:IsInsideObserve(15) then
                warpTarget = TARGET_TEAM_MEMBER_15
            end
            if ai:IsInsideObserve(16) then
                warpTarget = TARGET_TEAM_MEMBER_16
            end
            if ai:IsInsideObserve(17) then
                warpTarget = TARGET_TEAM_MEMBER_17
            end
            if ai:IsInsideObserve(20) then
                warpTarget = TARGET_TEAM_MEMBER_10
            end
            if ai:IsInsideObserve(21) then
                warpTarget = TARGET_TEAM_MEMBER_11
            end
            if ai:IsInsideObserve(22) then
                warpTarget = TARGET_TEAM_MEMBER_12
            end
            if ai:IsInsideObserve(23) then
                warpTarget = TARGET_TEAM_MEMBER_13
            end
            if ai:IsInsideObserve(24) then
                warpTarget = TARGET_TEAM_MEMBER_14
            end
            if ai:IsInsideObserve(25) then
                warpTarget = TARGET_TEAM_MEMBER_15
            end
            if ai:IsInsideObserve(26) then
                warpTarget = TARGET_TEAM_MEMBER_16
            end
            if ai:IsInsideObserve(27) then
                warpTarget = TARGET_TEAM_MEMBER_17
            end
            if ai:IsInsideObserve(30) then
                warpTarget = TARGET_TEAM_MEMBER_10
            end
            if ai:IsInsideObserve(31) then
                warpTarget = TARGET_TEAM_MEMBER_11
            end
            if ai:IsInsideObserve(32) then
                warpTarget = TARGET_TEAM_MEMBER_12
            end
            if ai:IsInsideObserve(33) then
                warpTarget = TARGET_TEAM_MEMBER_13
            end
            if ai:IsInsideObserve(34) then
                warpTarget = TARGET_TEAM_MEMBER_14
            end
            if ai:IsInsideObserve(35) then
                warpTarget = TARGET_TEAM_MEMBER_15
            end
            if ai:IsInsideObserve(36) then
                warpTarget = TARGET_TEAM_MEMBER_16
            end
            if ai:IsInsideObserve(37) then
                warpTarget = TARGET_TEAM_MEMBER_17
            end
            local f51_local5 = 0
            local f51_local6 = 0
            local lineWidth = ai:GetMapHitRadius(TARGET_SELF)
            local distanceEnemy_2 = ai:GetDist(TARGET_ENE_0)
            local angleToEnemy = ai:GetRelativeAngleFromTarget(TARGET_ENE_0)
            if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                warpDist = 32
            end
            if paramDoAdmire == 1 and ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                warpDist = 23
            end
            if ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_FR, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_BL, 5 + lineWidth, lineWidth, 0) > 5 and ai:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_BR, 5 + lineWidth, lineWidth, 0) > 5 then
                if random_2 >= 70 then
                    ai:DeleteObserve(10)
                    ai:DeleteObserve(11)
                    ai:DeleteObserve(12)
                    ai:DeleteObserve(13)
                    ai:DeleteObserve(14)
                    ai:DeleteObserve(15)
                    ai:DeleteObserve(16)
                    ai:DeleteObserve(17)
                    ai:DeleteObserve(20)
                    ai:DeleteObserve(21)
                    ai:DeleteObserve(22)
                    ai:DeleteObserve(23)
                    ai:DeleteObserve(24)
                    ai:DeleteObserve(25)
                    ai:DeleteObserve(26)
                    ai:DeleteObserve(27)
                    ai:DeleteObserve(30)
                    ai:DeleteObserve(31)
                    ai:DeleteObserve(32)
                    ai:DeleteObserve(33)
                    ai:DeleteObserve(34)
                    ai:DeleteObserve(35)
                    ai:DeleteObserve(36)
                    ai:DeleteObserve(37)
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTarget, AI_DIR_TYPE_F, warpDist, TARGET_SELF, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
                elseif random_2 < 70 and random_2 > 30 then
                    ai:DeleteObserve(10)
                    ai:DeleteObserve(11)
                    ai:DeleteObserve(12)
                    ai:DeleteObserve(13)
                    ai:DeleteObserve(14)
                    ai:DeleteObserve(15)
                    ai:DeleteObserve(16)
                    ai:DeleteObserve(17)
                    ai:DeleteObserve(20)
                    ai:DeleteObserve(21)
                    ai:DeleteObserve(22)
                    ai:DeleteObserve(23)
                    ai:DeleteObserve(24)
                    ai:DeleteObserve(25)
                    ai:DeleteObserve(26)
                    ai:DeleteObserve(27)
                    ai:DeleteObserve(30)
                    ai:DeleteObserve(31)
                    ai:DeleteObserve(32)
                    ai:DeleteObserve(33)
                    ai:DeleteObserve(34)
                    ai:DeleteObserve(35)
                    ai:DeleteObserve(36)
                    ai:DeleteObserve(37)
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTarget, AI_DIR_TYPE_FL, warpDist, TARGET_SELF, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
                elseif random_2 >= 0 then
                    ai:DeleteObserve(10)
                    ai:DeleteObserve(11)
                    ai:DeleteObserve(12)
                    ai:DeleteObserve(13)
                    ai:DeleteObserve(14)
                    ai:DeleteObserve(15)
                    ai:DeleteObserve(16)
                    ai:DeleteObserve(17)
                    ai:DeleteObserve(20)
                    ai:DeleteObserve(21)
                    ai:DeleteObserve(22)
                    ai:DeleteObserve(23)
                    ai:DeleteObserve(24)
                    ai:DeleteObserve(25)
                    ai:DeleteObserve(26)
                    ai:DeleteObserve(27)
                    ai:DeleteObserve(30)
                    ai:DeleteObserve(31)
                    ai:DeleteObserve(32)
                    ai:DeleteObserve(33)
                    ai:DeleteObserve(34)
                    ai:DeleteObserve(35)
                    ai:DeleteObserve(36)
                    ai:DeleteObserve(37)
                    goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, warpTarget, AI_DIR_TYPE_FR, warpDist, TARGET_SELF, 0, 0)
                    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
            else
                ai:DeleteObserve(10)
                ai:DeleteObserve(11)
                ai:DeleteObserve(12)
                ai:DeleteObserve(13)
                ai:DeleteObserve(14)
                ai:DeleteObserve(15)
                ai:DeleteObserve(16)
                ai:DeleteObserve(17)
                ai:DeleteObserve(20)
                ai:DeleteObserve(21)
                ai:DeleteObserve(22)
                ai:DeleteObserve(23)
                ai:DeleteObserve(24)
                ai:DeleteObserve(25)
                ai:DeleteObserve(26)
                ai:DeleteObserve(27)
                ai:DeleteObserve(30)
                ai:DeleteObserve(31)
                ai:DeleteObserve(32)
                ai:DeleteObserve(33)
                ai:DeleteObserve(34)
                ai:DeleteObserve(35)
                ai:DeleteObserve(36)
                ai:DeleteObserve(37)
                goal:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, 0, 0)
                goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_AngelsDaughters762000_AfterAttackAct, "AngelsDaughters762000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AngelsDaughters762000_AfterAttackAct, true)

Goal.Activate = function (self, ai, goal)
end

Goal.Update = function (self, ai, goal)
    return Update_Default_NoSubGoal(self, ai, goal)
end

