// Flag for communication to Seamless that it can return raw player number/count instead of capping them
export const NR6PF_NRSC_IPC = 11007000;

// Data for version check
export const NR6PF_INSTALL_CHECK = {
  // Flag which is set if a player fails the regulation.bin check
  INVALID_REGULATION: 11008100,
  // Flags which check that all current players have the mod installed
  P1: 11008101,
  P2: 11008102,
  P3: 11008103,
  P4: 11008104,
  P5: 11008105,
  P6: 11008106,
};

// Flags for whether the players are alive
export const aliveFlags = {
  P1: 7005,
  P2: 7006,
  P3: 7007,
  P4: 11007005,
  P5: 11007006,
  P6: 11007007,
};

// Flags for whether the players are under the effect of a Wending Grace or the Favor of Nolkateo, the Shrouded City
export const ownsRevivalTicket = {
  P1: 7010,
  P2: 7011,
  P3: 7012,
  P4: 11007010,
  P5: 11007011,
  P6: 11007012,
};

// Flags to track whether players have a mission active
export const missionPlayer = {
  P1: 7015,
  P2: 7016,
  P3: 7017,
  P4: 7018,
  P5: 7019,
  P6: 7020,
};

// Flags to track which player is targeted by Fell Omen
export const morgottTargeted = {
  P1: 8085,
  P2: 8086,
  P3: 8087,
  P4: 11008085,
  P5: 11008086,
  P6: 11008087,
};

// Flags for Balancers - mostly placeholder
// I was going to make Balancers raid summon 6 balancers but it was too much work and also unfun
export const balancersFlags = {
  start: {
    Ins1: 80012,
    Ins2: 80013,
    Ins3: 80014,
  },
  finishTimeout: {
    Ins1: 80015,
    Ins2: 80016,
    Ins3: 80017,
  },
  finishVictory: {
    Ins1: 80018,
    Ins2: 80019,
    Ins3: 80020,
  },
  flaskGuard: {
    Ins1: 95001,
    Ins2: 95002,
    Ins3: 95003,
  },
};