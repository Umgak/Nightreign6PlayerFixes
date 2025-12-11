// ==EMEVD==
// @docs    nr-common.emedf.json
// @compress    DCX_KRAK
// @game    Sekiro
// @string    "W:\\CL\\data\\Param\\event\\common_func.emevd\u0000W:\\CL\\data\\Param\\event\\common_macro.emevd\u0000\u0000\u0000\u0000\u0000\u0000"
// @linked    [0,82]
// @version    3.6.2
// ==/EMEVD==

$Event(0, Default, function() {
    $InitializeEvent(0, 49422900, 49420800);
    $InitializeEvent(1, 49422900, 49420801);
    $InitializeEvent(2, 49422900, 49420802);
    $InitializeEvent(3, 49422900, 49420803);
});

$Event(49422900, Restart, function(chrEntityId) {
    WaitFor(PlayAreaCurrentTimeInRange(23, 0, 0, 23, 59, 0) && !InsidePlayArea(chrEntityId, 0));
    DisableCharacterAI(chrEntityId);
    WaitFor(ElapsedFrames(1));
    ClearCharactersAITarget(chrEntityId);
    RequestCharacterAIReplan(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 0, false, false, false);
    WaitFor(InsidePlayArea(chrEntityId, 0) && !PlayAreaCurrentTimeInRange(23, 0, 0, 23, 59, 0));
    EnableCharacterAI(chrEntityId);
    RestartEvent();
});

$Event(49422910, Default, function(chrEntityId) {
    WaitFor(CharacterHasSpEffect(20000, 99210));
    DisableCharacterAI(chrEntityId);
    WaitFor(ElapsedFrames(1));
    ClearCharactersAITarget(chrEntityId);
    RequestCharacterAIReplan(chrEntityId);
    ForceAnimationPlayback(chrEntityId, 0, false, false, false);
    WaitFor(!CharacterHasSpEffect(20000, 99210));
    EnableCharacterAI(chrEntityId);
});


