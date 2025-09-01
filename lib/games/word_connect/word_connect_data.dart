// lib/games/word_connect/word_connect_data.dart

class WordConnectLevel {
  /// The letters to be displayed in the circle, in order.
  final String letters;
  
  /// A set of all valid words that can be formed. Using a Set for fast lookups.
  final Set<String> solutions;

  WordConnectLevel({
    required this.letters,
    required this.solutions,
  });
}

final wordConnectLevels = [
  // --- 30 Four-Letter Puzzles ---
  WordConnectLevel(letters: "FCEA", solutions: {"ACE", "FACE", "CAFE"}),
  WordConnectLevel(letters: "ETRN", solutions: {"RENT", "TEN", "NET"}),
  WordConnectLevel(letters: "KCOR", solutions: {"CORK", "ROCK",  "ORC"}),
  WordConnectLevel(letters: "NLIE", solutions: {"LIE", "NIL", "LINE"}),
  WordConnectLevel(letters: "MDOE", solutions: {"MODE", "DEMO", "DOME"}),
  WordConnectLevel(letters: "EPOH", solutions: {"HOPE", "HOP", "HOE"}),
  WordConnectLevel(letters: "YURB", solutions: {"RUBY", "RUB", "BUY"}),
  WordConnectLevel(letters: "DINK", solutions: {"INK", "KID", "KIND",}),
  WordConnectLevel(letters: "DROW", solutions: {"WORD", "ROD", "ROW", "DOW"}),
  WordConnectLevel(letters: "INWG", solutions: {"WING", "WIN", "GIN", "WIG"}),
  WordConnectLevel(letters: "EALS", solutions: {"ALE", "SEA", "SALE", "SEAL"}),
  WordConnectLevel(letters: "WDRA", solutions: {"RAW", "WAR","WARD", "DRAW"}),
  WordConnectLevel(letters: "STAE", solutions: {"EAST", "SEAT", "ATE", "SEA", "SET"}),
  WordConnectLevel(letters: "DLOG", solutions: {"GOD", "LOG", "OLD", "GOLD", "DOG"}),
  WordConnectLevel(letters: "STPO", solutions: {"STOP", "POST", "SPOT", "TOP","POT"}),
  WordConnectLevel(letters: "RDIE", solutions: {"DIE", "IRE", "RED", "RIDE", "DIRE"}),
  WordConnectLevel(letters: "LMAE", solutions: {"AM", "ELM", "ALE", "MALE", "MEAL", "LAME"}),
  WordConnectLevel(letters: "REAC", solutions: {"ACE", "ARC", "CAR", "CARE", "EAR", "RACE"}),
  WordConnectLevel(letters: "ATSR", solutions: {"AT", "RAT", "SAT", "ART", "TAR", "STAR"}),
  WordConnectLevel(letters: "ALPE", solutions: {"ALP", "APE", "LAP", "PLEA", "PALE", "PEAL"}),
  WordConnectLevel(letters: "BREA", solutions: {"ARE", "BAR", "BARE", "EAR", "ERA", "BEAR"}),
  WordConnectLevel(letters: "TMAE", solutions: {"MAT", "EAT", "MATE", "MEAT", "TAME", "TEAM"}),
  WordConnectLevel(letters: "ADTE", solutions: {"ATE", "EAT", "TAD", "TEA", "DATE", "TEAD"}),
  WordConnectLevel(letters: "OBLW", solutions: {"BOWL", "BLOW", "LOW", "OWL", "BOW", "LOB"}),
  WordConnectLevel(letters: "CNOR", solutions: {"CON", "NOR", "CORN", "ROC", "ORC", "RON"}),
  WordConnectLevel(letters: "EILT", solutions: {"TILE", "LITE", "TIE", "LIT", "LET", "LIE"}),
  WordConnectLevel(letters: "TOAC", solutions: {"COAT", "TACO", "CAT", "COT", "OAT", "ACT"}),
  WordConnectLevel(letters: "TNED", solutions: {"DENT", "TEND", "NET", "TEN", "END", "DEN"}),
  WordConnectLevel(letters: "PART", solutions: {"PART", "TRAP", "TARP", "RAPT", "PAT", "PAR", "RAP"}),
  WordConnectLevel(letters: "NTOE", solutions: {"NOTE", "TONE", "ONE", "TEN", "NET", "TON", "TOE", "NOT"}),

  // --- 20 Five-Letter Puzzles ---
  WordConnectLevel(letters: "ALPEP", solutions: {"APE", "APP", "LAP", "PAL", "PALE", "PEA", "APPLE"}),
  WordConnectLevel(letters: "BCEHA", solutions: {"ACE", "ACHE", "BEACH", "CAB", "EACH"}),
  WordConnectLevel(letters: "CRAIH", solutions: {"ARC", "CAR", "CHI", "HAIR", "RICH", "CHAIR"}),
  WordConnectLevel(letters: "AREDM", solutions: {"ARM", "DAM", "DREAM", "EAR", "ERA", "ARE"}),
  WordConnectLevel(letters: "TREAH", solutions: {"ART", "EAR", "EAT", "HEART", "RAT", "TAR", "EARTH"}),
  WordConnectLevel(letters: "AECBR", solutions: {"BRACE", "RACE", "CARE", "CARB", "BRA", "BAR", "CAB"}),
  WordConnectLevel(letters: "PARGE", solutions: {"APE", "ARE", "GAP", "GRAPE", "PAR", "PEA", "REAP"}),
  WordConnectLevel(letters: "OUSHE", solutions: {"USE", "SUE", "SHOE", "HOSE", "HOE", "HOUSE"}),
  WordConnectLevel(letters: "DIINA", solutions: {"AID", "AND", "DAN", "INDIA", "IN"}),
  WordConnectLevel(letters: "LIMSE", solutions: {"SMILE", "SLIM", "MILE", "LIME", "LIES", "ISLE"}),
  WordConnectLevel(letters: "FINKE", solutions: {"FEN", "FIN", "FINK", "IF", "INK", "KINE", "KNIFE"}),
  WordConnectLevel(letters: "SEINP", solutions: {"PIN","NIP","SIN","PEN","PIE", "PINE","SINE", "SPIN","SNIPE","SPINE"}),
  WordConnectLevel(letters: "AENLG", solutions: {"AGE","GEL","NAG","LEG","LEAN","LANE","ANGLE","ANGEL","GALE"}),
  WordConnectLevel(letters: "SEONT", solutions: {"ONE","TEN","TON","SON","TOE","NOTE","TONE", "NOSE","STONE"}),
  WordConnectLevel(letters: "AEOCN", solutions: {"OCEAN", "CANE", "CONE", "CON", "CAN", "ONCE"}),
  WordConnectLevel(letters: "TIRAN", solutions: {"IN","AT","ANT","AIR","RAN","TIN","RAIN","TRAIN"}),
  WordConnectLevel(letters: "NOIPT", solutions: {"IT","PIT","TIP","ION","OPT","TOP","INTO","POINT"}),
  WordConnectLevel(letters: "ETQIU", solutions: {"TIE","QUIT","QUIET","QUITE"}),
  WordConnectLevel(letters: "RSACH", solutions: {"ASH","HAS","SAC","RASH","ARCH","CRASH"}),
  WordConnectLevel(letters: "LBATE", solutions: {"BAT","BET","TAB","ABLE","BELT","BEAT","TALE","LATE","TABLE"}),

  // --- 10 Six-Letter Puzzles ---
  WordConnectLevel(letters: "RAOGNE", solutions: {"ORANGE", "RANGE", "RANG", "GEAR", "RAGE", "NEAR", "EARN", "GORE"}),
  WordConnectLevel(letters: "UMSRME", solutions: {"SUMMER", "RUM", "SUM", "SUE", "USE", "RUSE", "MUSE"}),
  WordConnectLevel(letters: "NIWRET", solutions: {"WINTER", "WRITE", "RENT", "TIRE", "WREN", "TERN", "TWIN", "WINE"}),
  WordConnectLevel(letters: "RAESTH", solutions: {"HEART","EARTH","HASTE","SHARE","STARE","TEAR","EAST","HER"}),
  WordConnectLevel(letters: "APLTNE", solutions: {"PLANET", "PLANT", "LANE", "LATE", "PANE", "PANT", "PEAT", "LEAPT"}),
  WordConnectLevel(letters: "RPSNIG", solutions: {"SPRING", "RING", "GRIN", "PIG", "PIN", "RIG", "RIP", "GRIP"}),
  WordConnectLevel(letters: "IRBEDG", solutions: {"BRIDGE", "RIDGE", "RIDE", "GRID", "DIRE", "BRED", "BRIG", "GIRD"}),
  WordConnectLevel(letters: "IUGATR", solutions: {"AIR", "ART", "GUT", "RAG", "RAT", "RUG", "TAG", "GUITAR"}),
  WordConnectLevel(letters: "CAJEKT", solutions: {"ACE", "ACT", "ATE", "CAT", "EAT", "JET", "TEA", "JACKET"}),
  WordConnectLevel(letters: "GARDEN", solutions: {"GARDEN","DANGER","GRADE","ANGER","GEAR","DEAR","READ","NEAR","EARN"}),
];
