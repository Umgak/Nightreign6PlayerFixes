// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 16112800);
    $InitializeEvent(0, 16112802);
    $InitializeEvent(0, 16112801);
    $InitializeEvent(0, 16112803);
    $InitializeEvent(0, 16112810);
});

$Event(16112800, Restart, function() {
    UnknownHero200490();
    SetSpEffect(10000, 9570);
    DisableCharacterHPBarDisplay(16110800);
    SetNetworkUpdateRate(16110800, true, CharacterUpdateFrequency.AlwaysUpdate);
    SetAlwaysDrawCharacter(16110800, ON);
    SetCameraAngle(9.68, 3.85);
    SetNetworkUpdateRate(16110700, true, CharacterUpdateFrequency.AlwaysUpdate);
    SetAlwaysDrawCharacter(16110700, ON);
    SetSpEffect(16110700, 9575);
    SetNetworkUpdateRate(16110710, true, CharacterUpdateFrequency.AlwaysUpdate);
    SetAlwaysDrawCharacter(16110710, ON);
    SetSpEffect(16110710, 9575);
    SetBossBGM(761030, BossBGMState.Start);
    WaitFor(EntityInRadiusOfEntity(16110800, 10000, 30, 1));
    DisplayBossHealthBar(Enabled, 16110800, 0, 911000100);
});

$Event(16112801, Restart, function() {
    WaitFor(CharacterDead(16110800));
    WaitFor(ElapsedSeconds(2));
    WaitFixedTimeFrames(1);
    FadeToBlack(1, 1, true, 0);
    SetEventFlagID(10001962, ON);
    SetEventFlagID(10001961, ON);
    SetEventFlagID(10001802, ON);
    WaitFixedTimeSeconds(1);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(16112802, Restart, function() {
    EnableCharacterImmortality(16110700);
    EnableCharacterImmortality(16110710);
    WaitFor(ElapsedSeconds(5));
    DisableCharacterImmortality(16110700);
    DisableCharacterImmortality(16110710);
});

$Event(16112803, Restart, function() {
    WaitFor(EventFlag(72100));
    SetEventFlagID(10001802, ON);
    WaitFixedTimeFrames(1);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});

$Event(16112810, Restart, function() {
    WaitFor(CharacterDead(10000));
    WaitFor(ElapsedSeconds(3.5));
    WaitFixedTimeFrames(1);
    FadeToBlack(1, 1, true, 0);
    SetEventFlagID(10001961, ON);
    SetEventFlagID(10001802, ON);
    WaitFixedTimeSeconds(1);
    WarpPlayer(10, 0, 0, 0, 0, 0);
});


