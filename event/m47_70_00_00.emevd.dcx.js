// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    if (IsMapVariation(0)) {
        if (EventFlag(47700000)) {
            $InitializeCommonEvent(0, 90055000, 47705200, 1, 47702200, 47700201);
            $InitializeCommonEvent(0, 90055001, 47705200, 1, 47700201, 47700200);
        }
        if (EventFlag(47700001)) {
            $InitializeCommonEvent(0, 90055000, 47705200, 2, 47702200, 47700201);
            $InitializeCommonEvent(0, 90055001, 47705200, 2, 47700201, 47700200);
        }
    }
    if (IsMapVariation(1)) {
        $InitializeCommonEvent(0, 90035000, 47700200);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015442, 47702200, 47700200);
    }
    $InitializeCommonEvent(0, 90035001, 47705800);
    $InitializeCommonEvent(0, 90065000, 47700800, 47700805);
    $InitializeCommonEvent(0, 90065001, 47705800, 47700800, 47700840, 47705802, 47705803, 47700805, 47700210, 47700200, 47700800, 920100, 47700205);
    $InitializeCommonEvent(0, 90065002, 47700800, 47705801, 47700805, 47700830, 47700840, 47700200, 47700800);
    if (!IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90065900, 47700800, 1, 0, 0, 1050, 920100, 904950600, 47700800);
    }
    $InitializeCommonEvent(0, 90015008, 47700205, 47700800, 920100, 47700800, 15316, 0);
    $InitializeCommonEvent(0, 90015012, 47705800, 47700200);
    $InitializeCommonEvent(1, 90015012, 47705801, 47700200);
    $InitializeCommonEvent(0, 90015020, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065010, 47700800, 47700805, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065011, 47700800, 47700830, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065012, 47700800, 47700840, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065013, 47700800, 47700840, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065014, 47700840, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065015, 47700800, 47700805, 47700840, 47700210, 47700200, 47700800);
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015443, 47702200, 47700800);
        $InitializeCommonEvent(0, 90015023, 47700200, 40, 0, 47705800, 47700800, 904950600, 47705801, 904950604, 0, 0);
        $InitializeCommonEvent(0, 90015030, 47700200, 47705800, 40, 920100, 0);
        $InitializeCommonEvent(0, 90015002, 0, 47700200, 47700800, 47705800, 1020, 920100, 110320, 904950600, 47700800);
        $InitializeCommonEvent(0, 90015470, 47702200, 47700200, 47700800, 47705800, 47705801, 0, 0);
    }
    if (IsMapVariation(2)) {
        $InitializeCommonEvent(0, 90015446, 47705800, 47700200, 47700800, 47702200);
    }
    $InitializeCommonEvent(0, 90065003, 47700800, 15310, 47701811, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065004, 47700800, 15310, 47701812, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065005, 47700800, 15310, 47701813, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065003, 47700800, 15311, 47701821, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065004, 47700800, 15311, 47701822, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065005, 47700800, 15311, 47701823, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065003, 47700800, 15312, 47701831, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065004, 47700800, 15312, 47701832, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065005, 47700800, 15312, 47701833, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065003, 47700800, 15313, 47701841, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065004, 47700800, 15313, 47701842, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065005, 47700800, 15313, 47701843, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065006, 47700800, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065007, 47700800, 47703801, 15310, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065007, 47700800, 47703802, 15311, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065007, 47700800, 47703803, 15312, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065007, 47700800, 47703804, 15313, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065008, 47700800, 15310, 15311, 15312, 15313, 47700220, 47700221, 47700222, 47700229, 47700225, 47700226, 47700227, 47700228, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065009, 47700800, 47700225, 47704801, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065009, 47700800, 47700226, 47704802, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065009, 47700800, 47700227, 47704803, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065009, 47700800, 47700228, 47704804, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065009, 47700800, 47700229, 47704810, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700810, 12550, 12552, 12554, 47700230, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700811, 12550, 12552, 12554, 47700231, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700812, 12550, 12552, 12554, 47700232, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700813, 12551, 12553, 12555, 47700233, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700814, 12551, 12553, 12555, 47700234, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700815, 12551, 12553, 12555, 47700235, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700816, 12551, 12553, 12555, 47700236, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700817, 12551, 12553, 12555, 47700237, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700818, 12551, 12553, 12555, 47700238, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700819, 12551, 12553, 12555, 47700239, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700820, 12551, 12553, 12555, 47700240, 47700200, 47700800);
    $InitializeCommonEvent(0, 90065016, 47700805, 47700821, 12551, 12553, 12555, 47700241, 47700200, 47700800);
    $InitializeCommonEvent(1, 90065016, 47700805, 47700822, 12551, 12553, 12555, 47700242, 47700200, 47700800);
    $InitializeCommonEvent(1, 90065016, 47700805, 47700823, 12551, 12553, 12555, 47700243, 47700200, 47700800);
    if (1 == 1) {
        $InitializeCommonEvent(0, 90015070, 1056402601, 47700000, 47700300);
        $InitializeCommonEvent(0, 90015070, 1028402600, 47700000, 47700300);
    }
    if (1 == 2) {
        $InitializeCommonEvent(0, 90015070, 1056402602, 47700000, 47700300);
        $InitializeCommonEvent(0, 90015070, 1028402601, 47700000, 47700300);
    }
    if (1 == 3) {
        $InitializeCommonEvent(0, 90015070, 1056402603, 47700000, 47700300);
        $InitializeCommonEvent(0, 90015070, 1028402602, 47700000, 47700300);
    }
    if (2 == 1) {
        $InitializeCommonEvent(0, 90015070, 1056402601, 47700000, 47700301);
        $InitializeCommonEvent(0, 90015070, 1028402600, 47700000, 47700301);
    }
    if (2 == 2) {
        $InitializeCommonEvent(0, 90015070, 1056402602, 47700000, 47700301);
        $InitializeCommonEvent(0, 90015070, 1028402601, 47700000, 47700301);
    }
    if (2 == 3) {
        $InitializeCommonEvent(0, 90015070, 1056402603, 47700000, 47700301);
        $InitializeCommonEvent(0, 90015070, 1028402602, 47700000, 47700301);
    }
});

$Event(47702800, Default, function(chrEntityId, assetEntityId, chrEntityId2, eventFlagId, eventFlagId2, eventFlagId3) {
    EndIf(EventFlag(eventFlagId));
    EndIf(EventFlag(eventFlagId2));
    WaitFor(
        HPRatio(chrEntityId) <= 0
            && CharacterDead(47700810)
            && CharacterDead(47700811)
            && CharacterDead(47700812)
            && CharacterDead(47700813)
            && CharacterDead(47700814)
            && CharacterDead(47700815)
            && CharacterDead(47700816)
            && CharacterDead(47700817)
            && CharacterDead(47700818)
            && CharacterDead(47700819)
            && CharacterDead(47700820)
            && CharacterDead(47700821)
            && CharacterDead(47700822)
            && CharacterDead(47700823));
    DisableCharacterImmortality(47700805);
    DisableCharacter(47700805);
    ForceCharacterDeath(47700805, false);
    DisableCharacter(47700830);
    ForceCharacterDeath(47700830, false);
    DisableCharacter(47700840);
    ForceCharacterDeath(47700840, false);
    WaitFixedTimeSeconds(4);
    WaitFor(CharacterDead(chrEntityId));
    DisplayBossHealthBar(Disabled, chrEntityId, 0, 0);
    DisplayBossHealthBar(Disabled, 47700805, 1, 904950604);
    DisableCharacter(chrEntityId);
    if (assetEntityId != 0) {
        EnableAsset(assetEntityId);
    }
    if (chrEntityId2 != 0) {
        EnableCharacter(chrEntityId2);
    }
    if (!EventFlag(eventFlagId3)) {
        SetEventFlagID(eventFlagId, ON);
        EndEvent();
    }
    SetEventFlagID(eventFlagId2, ON);
});

$Event(47702810, Restart, function(chrEntityId, eventFlagId, eventFlagId2, eventFlagId3, nameId, eventFlagId4, eventFlagId5) {
    if (EventFlag(eventFlagId4) || EventFlag(eventFlagId5)) {
        DisableCharacter(chrEntityId);
        DisableCharacterCollision(chrEntityId);
        ForceCharacterDeath(chrEntityId, false);
        DisableCharacter(47700805);
        DisableCharacterCollision(47700805);
        ForceCharacterDeath(47700805, false);
        DisableCharacter(47700810);
        DisableCharacter(47700811);
        DisableCharacterCollision(47700810);
        DisableCharacterCollision(47700811);
        ForceCharacterDeath(47700810, false);
        ForceCharacterDeath(47700811, false);
        DisableCharacter(47700812);
        DisableCharacterCollision(47700812);
        ForceCharacterDeath(47700812, false);
        DisableCharacter(47700813);
        DisableCharacter(47700814);
        DisableCharacter(47700815);
        DisableCharacterCollision(47700813);
        DisableCharacterCollision(47700814);
        DisableCharacterCollision(47700815);
        ForceCharacterDeath(47700813, false);
        ForceCharacterDeath(47700814, false);
        ForceCharacterDeath(47700815, false);
        DisableCharacter(47700816);
        DisableCharacter(47700817);
        DisableCharacterCollision(47700816);
        DisableCharacterCollision(47700817);
        ForceCharacterDeath(47700816, false);
        ForceCharacterDeath(47700817, false);
        DisableCharacter(47700818);
        DisableCharacter(47700819);
        DisableCharacterCollision(47700818);
        DisableCharacterCollision(47700819);
        ForceCharacterDeath(47700818, false);
        ForceCharacterDeath(47700819, false);
        DisableCharacter(47700820);
        DisableCharacter(47700821);
        DisableCharacterCollision(47700820);
        DisableCharacterCollision(47700821);
        ForceCharacterDeath(47700820, false);
        ForceCharacterDeath(47700821, false);
        DisableCharacter(47700822);
        DisableCharacterCollision(47700822);
        ForceCharacterDeath(47700822, false);
        DisableCharacter(47700823);
        DisableCharacterCollision(47700823);
        ForceCharacterDeath(47700823, false);
        ForceCharacterDeath(47700830, false);
        DisableCharacter(47700840);
        DisableCharacterCollision(47700840);
        ForceCharacterDeath(47700840, false);
        EndEvent();
    }
L0:
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterAI(chrEntityId);
    DisableCharacter(47700805);
    DisableCharacterCollision(47700805);
    DisableCharacterAI(47700805);
    DisableCharacter(47700810);
    DisableCharacter(47700811);
    DisableCharacterCollision(47700810);
    DisableCharacterCollision(47700811);
    DisableCharacterAI(47700810);
    DisableCharacterAI(47700811);
    DisableCharacter(47700812);
    DisableCharacterCollision(47700812);
    DisableCharacterAI(47700812);
    DisableCharacter(47700813);
    DisableCharacter(47700814);
    DisableCharacter(47700815);
    DisableCharacterCollision(47700813);
    DisableCharacterCollision(47700814);
    DisableCharacterCollision(47700815);
    DisableCharacterAI(47700813);
    DisableCharacterAI(47700814);
    DisableCharacterAI(47700815);
    DisableCharacter(47700816);
    DisableCharacter(47700817);
    DisableCharacterCollision(47700816);
    DisableCharacterCollision(47700817);
    DisableCharacterAI(47700816);
    DisableCharacterAI(47700817);
    DisableCharacter(47700818);
    DisableCharacter(47700819);
    DisableCharacterCollision(47700818);
    DisableCharacterCollision(47700819);
    DisableCharacterAI(47700818);
    DisableCharacterAI(47700819);
    DisableCharacter(47700820);
    DisableCharacter(47700821);
    DisableCharacterCollision(47700820);
    DisableCharacterCollision(47700821);
    DisableCharacterAI(47700820);
    DisableCharacterAI(47700821);
    DisableCharacter(47700822);
    DisableCharacterCollision(47700822);
    DisableCharacterAI(47700822);
    DisableCharacter(47700823);
    DisableCharacterCollision(47700823);
    DisableCharacterAI(47700823);
    DisableCharacterAI(47700830);
    DisableCharacter(47700840);
    DisableCharacterCollision(47700840);
    DisableCharacterAI(47700840);
    flag = EventFlag(7515) && (EventFlag(eventFlagId) || EventFlag(eventFlagId2));
    WaitFor(EventFlag(eventFlagId3));
    WaitFixedTimeSeconds(1);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    SetSpEffect(chrEntityId, 15319);
    SetSpEffect(chrEntityId, 42223);
    SetSpEffect(chrEntityId, 42224);
    SetSpEffect(chrEntityId, 42225);
    SetSpEffect(chrEntityId, 42241);
    SetSpEffect(chrEntityId, 42242);
    EnableCharacter(47700805);
    DisableCharacterGravity(47700805);
    DisableLockOnPoint(47700805, 220);
    EnableCharacterImmortality(47700805);
    SetCharacterEventTarget(47700800, 47700805);
    EnableCharacter(47700810);
    EnableCharacter(47700811);
    EnableCharacterCollision(47700810);
    EnableCharacterCollision(47700811);
    SetSpEffect(47700810, 12559);
    SetSpEffect(47700811, 12559);
    SetSpEffect(47700810, 12554);
    SetSpEffect(47700811, 12554);
    EnableCharacter(47700812);
    EnableCharacterCollision(47700812);
    SetSpEffect(47700812, 12559);
    SetSpEffect(47700812, 12554);
    EnableCharacter(47700813);
    EnableCharacter(47700814);
    EnableCharacter(47700815);
    EnableCharacterCollision(47700813);
    EnableCharacterCollision(47700814);
    EnableCharacterCollision(47700815);
    SetSpEffect(47700813, 12559);
    SetSpEffect(47700814, 12559);
    SetSpEffect(47700815, 12559);
    SetSpEffect(47700813, 12555);
    SetSpEffect(47700814, 12555);
    SetSpEffect(47700815, 12555);
    EnableCharacter(47700816);
    EnableCharacter(47700817);
    EnableCharacterCollision(47700816);
    EnableCharacterCollision(47700817);
    SetSpEffect(47700816, 12559);
    SetSpEffect(47700817, 12559);
    SetSpEffect(47700816, 12555);
    SetSpEffect(47700817, 12555);
    EnableCharacter(47700822);
    EnableCharacterCollision(47700822);
    SetSpEffect(47700822, 12559);
    SetSpEffect(47700822, 12555);
    EnableCharacter(47700818);
    EnableCharacter(47700819);
    EnableCharacterCollision(47700818);
    EnableCharacterCollision(47700819);
    SetSpEffect(47700818, 12559);
    SetSpEffect(47700819, 12559);
    SetSpEffect(47700818, 12555);
    SetSpEffect(47700819, 12555);
    EnableCharacter(47700820);
    EnableCharacter(47700821);
    EnableCharacterCollision(47700820);
    EnableCharacterCollision(47700821);
    SetSpEffect(47700820, 12559);
    SetSpEffect(47700821, 12559);
    SetSpEffect(47700820, 12555);
    SetSpEffect(47700821, 12555);
    EnableCharacter(47700823);
    EnableCharacterCollision(47700823);
    SetSpEffect(47700823, 12559);
    SetSpEffect(47700823, 12555);
    DisableCharacterHPBarDisplay(47700840);
    DisableCharacterHPBarDisplay(chrEntityId);
    DisableCharacterHPBarDisplay(47700805);
    EnableCharacterAI(47700800);
    EnableCharacterAI(47700805);
    EnableCharacterAI(47700810);
    EnableCharacterAI(47700811);
    EnableCharacterAI(47700812);
    EnableCharacterAI(47700813);
    EnableCharacterAI(47700814);
    EnableCharacterAI(47700815);
    EnableCharacterAI(47700816);
    EnableCharacterAI(47700817);
    EnableCharacterAI(47700818);
    EnableCharacterAI(47700819);
    EnableCharacterAI(47700820);
    EnableCharacterAI(47700821);
    EnableCharacterAI(47700822);
    EnableCharacterAI(47700823);
    EnableCharacterAI(47700830);
    EnableCharacterAI(47700840);
    SetNetworkUpdateRate(47700800, true, CharacterUpdateFrequency.AlwaysUpdate);
    DisplayBossHealthBar(Enabled, chrEntityId, 0, nameId);
    DisplayBossHealthBar(Enabled, 47700805, 1, 904950604);
});

$Event(47702820, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42220)
            && !CharacterHasSpEffect(chrEntityId, 42221)
            && !CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702821, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42221)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42227);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702822, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42228);
    SetSpEffect(chrEntityId, 42226);
    SetSpEffect(chrEntityId, 42227);
    RestartEvent();
});

$Event(47702823, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42220)
            && !CharacterHasSpEffect(chrEntityId, 42221)
            && !CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702824, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42221)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42227);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702825, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42228);
    SetSpEffect(chrEntityId, 42226);
    SetSpEffect(chrEntityId, 42227);
    RestartEvent();
});

$Event(47702826, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42220)
            && !CharacterHasSpEffect(chrEntityId, 42221)
            && !CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702827, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42221)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42227);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702828, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42228);
    SetSpEffect(chrEntityId, 42226);
    SetSpEffect(chrEntityId, 42227);
    RestartEvent();
});

$Event(47702829, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42220)
            && !CharacterHasSpEffect(chrEntityId, 42221)
            && !CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702830, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42221)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42227);
    SetSpEffect(chrEntityId, 42226);
    RestartEvent();
});

$Event(47702831, Restart, function(chrEntityId, generatorEntityId, spEffectId) {
    if (EventFlag(47700800)) {
        DisableGenerator(generatorEntityId);
        EndEvent();
    }
L0:
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 42222)
            && CharacterHasSpEffect(chrEntityId, spEffectId)
            && !CharacterDead(chrEntityId));
    EnableGenerator(generatorEntityId);
    WaitFixedTimeSeconds(3);
    DisableGenerator(generatorEntityId);
    SetSpEffect(chrEntityId, 42228);
    SetSpEffect(chrEntityId, 42226);
    SetSpEffect(chrEntityId, 42227);
    RestartEvent();
});

$Event(47702832, Restart, function(chrEntityId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId, 42232));
    ClearSpEffect(chrEntityId, 42234);
    ClearSpEffect(chrEntityId, 42235);
    ClearSpEffect(chrEntityId, 42236);
    ClearSpEffect(chrEntityId, 42237);
    ClearSpEffect(chrEntityId, 42238);
    ClearSpEffect(chrEntityId, 42239);
    ClearSpEffect(chrEntityId, 42240);
    SetSpEffect(chrEntityId, 42243);
    SetSpEffect(chrEntityId, 42244);
    SetSpEffect(chrEntityId, 42226);
    SetSpEffect(chrEntityId, 42227);
    SetSpEffect(chrEntityId, 42228);
    DisableGenerator(47701811);
    DisableGenerator(47701812);
    DisableGenerator(47701813);
    DisableGenerator(47701821);
    DisableGenerator(47701822);
    DisableGenerator(47701823);
    DisableGenerator(47701831);
    DisableGenerator(47701832);
    DisableGenerator(47701833);
    DisableGenerator(47701841);
    DisableGenerator(47701842);
    DisableGenerator(47701843);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702840, Restart, function(chrEntityId, spEffectId, entityId, entityId2, entityId3, entityId4, spEffectId2, spEffectId3, spEffectId4, spEffectId5, entityId5) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId, spEffectId));
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    BatchSetEventFlags(47702837, 47702839, OFF);
    RandomlySetEventFlagInRange(47702837, 47702839, ON);
    GotoIf(L1, CharacterHasSpEffect(chrEntityId, spEffectId2));
    GotoIf(L2, CharacterHasSpEffect(chrEntityId, spEffectId3));
    GotoIf(L3, CharacterHasSpEffect(chrEntityId, spEffectId4));
    GotoIf(L4, CharacterHasSpEffect(chrEntityId, spEffectId5));
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId5, -1, chrEntityId);
    Goto(L0);
L1:
    GotoIf(S1, EventFlag(47702837));
    GotoIf(S0, EventFlag(47702838));
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId2, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S0:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId3, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S1:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId4, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
L2:
    GotoIf(S3, EventFlag(47702838));
    GotoIf(S2, EventFlag(47702839));
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S2:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId3, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S3:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId4, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
L3:
    GotoIf(S5, EventFlag(47702839));
    GotoIf(S4, EventFlag(47702837));
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S4:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId2, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S5:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId4, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
L4:
    GotoIf(S7, EventFlag(47702837));
    GotoIf(S6, EventFlag(47702838));
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S6:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId2, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
S7:
    WarpCharacterAndCopyFloor(chrEntityId, TargetEntityType.Area, entityId3, -1, chrEntityId);
    EnableCharacter(chrEntityId);
    EnableCharacterCollision(chrEntityId);
    Goto(L0);
L0:
    ForceAnimationPlayback(chrEntityId, 3022, true, false, false);
    RequestCharacterAIReplan(chrEntityId);
    WaitFixedTimeSeconds(5);
    RestartEvent();
});

$Event(47702841, Restart, function(chrEntityId, areaEntityId, areaEntityId2, areaEntityId3, areaEntityId4, spEffectId, spEffectId2, spEffectId3, spEffectId4) {
    EndIf(EventFlag(47700800));
    area = InArea(chrEntityId, areaEntityId);
    area2 = InArea(chrEntityId, areaEntityId2);
    area3 = InArea(chrEntityId, areaEntityId3);
    area4 = InArea(chrEntityId, areaEntityId4);
    WaitFor(area || area2 || area3 || area4);
    if (area.Passed) {
        SetSpEffect(chrEntityId, spEffectId);
    }
L2:
    if (area2.Passed) {
        SetSpEffect(chrEntityId, spEffectId2);
    }
L3:
    if (area3.Passed) {
        SetSpEffect(chrEntityId, spEffectId3);
    }
L4:
    if (area4.Passed) {
        SetSpEffect(chrEntityId, spEffectId4);
    }
L5:
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702842, Restart, function(chrEntityId, chrEntityId2) {
    EndIf(EventFlag(47700800));
    WaitFor(
        CharacterHasSpEffect(chrEntityId, 15317)
            && (HPRatio(chrEntityId) < 0.4 || HPRatio(chrEntityId2) < 0.4));
    ClearSpEffect(chrEntityId, 15317);
    SetSpEffect(chrEntityId, 15316);
});

$Event(47702843, Restart, function() {
    EndIf(EventFlag(47700800));
    WaitFor(HPRatio(47700830) == 0);
    SetSpEffect(47700800, 42216);
});

$Event(47702844, Restart, function() {
    EndIf(EventFlag(47700800));
    WaitFor(HPRatio(47700840) == 0);
    SetSpEffect(47700800, 42217);
});

$Event(47702850, Restart, function(chrEntityId, chrEntityId2) {
    WaitFor(CharacterHasSpEffect(chrEntityId, 17691));
    EnableCharacter(chrEntityId2);
    EnableCharacterCollision(chrEntityId2);
    EnableCharacterHPBarDisplay(chrEntityId2);
    WarpCharacterAndCopyFloor(chrEntityId2, TargetEntityType.Character, chrEntityId, 120, chrEntityId);
    ForceAnimationPlayback(chrEntityId2, 20008, false, false, false);
    RestartEvent();
});

$Event(47702851, Restart, function(chrEntityId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId, 17692));
    ClearSpEffect(chrEntityId, 17692);
    DisableCharacter(chrEntityId);
    DisableCharacterCollision(chrEntityId);
    DisableCharacterHPBarDisplay(chrEntityId);
    RestartEvent();
});

$Event(47702852, Restart, function() {
    EndIf(EventFlag(47700800));
    WaitFor(HPRatio(47700800) == 0 && CharacterHPValue(47700805) > 100 && HPRatio(47700840) > 0);
    SetSpEffect(47700800, 42219);
    WaitFixedTimeFrames(120);
    EnableCharacter(47700840);
    EnableCharacterCollision(47700840);
    EnableCharacterHPBarDisplay(47700840);
    WarpCharacterAndCopyFloor(47700840, TargetEntityType.Character, 47700800, 220, 47700800);
    ForceAnimationPlayback(47700840, 20007, false, false, false);
});

$Event(47702890, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702891, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702892, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702893, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702894, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702895, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702896, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702897, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702898, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702899, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702900, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702901, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702902, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702903, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702904, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702905, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702906, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702907, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702908, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702909, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702910, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702911, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702912, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702913, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702914, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702915, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702916, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, eventFlagId) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && HPRatio(chrEntityId2) <= 0);
    SetSpEffect(chrEntityId, spEffectId);
    ClearSpEffect(chrEntityId2, spEffectId2);
    SetNetworkconnectedEventFlagID(eventFlagId, ON);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

$Event(47702917, Restart, function(chrEntityId, chrEntityId2, spEffectId, spEffectId2, spEffectId3, spEffectId4, spEffectId5, spEffectId6, eventFlagId, eventFlagId2) {
    EndIf(EventFlag(47700800));
    WaitFor(CharacterHasSpEffect(chrEntityId2, spEffectId2) && EventFlag(eventFlagId2));
    if (!EventFlag(eventFlagId)) {
        SetSpEffect(chrEntityId2, spEffectId5);
    } else {
        SetSpEffect(chrEntityId2, spEffectId6);
    }
L0:
    SetSpEffect(chrEntityId, spEffectId);
    SetSpEffect(chrEntityId2, spEffectId4);
    SetSpEffect(chrEntityId2, spEffectId3);
    SetNetworkconnectedEventFlagID(eventFlagId2, OFF);
    WaitFixedTimeSeconds(1);
    RestartEvent();
});

