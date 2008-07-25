use v6-alpha;
use Test;
plan 219;
{
ok(!( "\x[fe7d]\x[25db]" ~~ m/^ <-[\c[ARABIC SHADDA MEDIAL FORM;LOWER HALF INVERSE WHITE CIRCLE]]>/ ), 'Negative charclass ARABIC SHADDA MEDIAL FORM;LOWER HALF INVERSE WHITE CIRCLE');
ok(!( "\x[fe7d]" ~~ m/^ \C[ARABIC SHADDA MEDIAL FORM]/ ), 'Negative named ARABIC SHADDA MEDIAL FORM nomatch');
ok("\x[25db]" ~~ m/^ \C[ARABIC SHADDA MEDIAL FORM]/, 'Negative named ARABIC SHADDA MEDIAL FORM match');
ok(!( "\x[fe7d]" ~~ m/^ <[\C[ARABIC SHADDA MEDIAL FORM]]>/ ), 'Negative charclass named ARABIC SHADDA MEDIAL FORM nomatch');
ok("\x[25db]" ~~ m/^ <[\C[ARABIC SHADDA MEDIAL FORM]]>/, 'Negative charclass named ARABIC SHADDA MEDIAL FORM match');
ok(!( "\x[fe7d]" ~~ m/^ \X[FE7D]/ ), 'Negative hex \X[FE7D] nomatch');
ok(!( "\x[fe7d]" ~~ m/^ <[\X[FE7D]]>/ ), 'Negative charclass hex \X[FE7D] nomatch');
ok("\x[fe7d]" ~~ m/^ \X[25DB]/, 'Negative hex \X[25DB] match');
ok("\x[fe7d]" ~~ m/^ <[\X[25DB]]>/, 'Negative charclass hex \X[25DB] match');
ok("abc\x[a15d]def" ~~ m/\c[YI SYLLABLE NDO]/, 'Unanchored named YI SYLLABLE NDO');
ok("abc\c[YI SYLLABLE NDO]def" ~~ m/\x[A15D]/, 'Unanchored \x[A15D]');
ok("abc\c[YI SYLLABLE NDO]def" ~~ m/\o[120535]/, 'Unanchored \o[120535]');
ok("abc\x[a15d]def" ~~ m/^ abc \c[YI SYLLABLE NDO] def $/, 'Anchored YI SYLLABLE NDO');
ok("abc\x[a15d]\x[fe7d]def" ~~ m/\c[YI SYLLABLE NDO; ARABIC SHADDA MEDIAL FORM]/, 'Multiple YI SYLLABLE NDO; ARABIC SHADDA MEDIAL FORM');
ok("\x[a15d]\x[fe7d]" ~~ m/<[\c[YI SYLLABLE NDO; ARABIC SHADDA MEDIAL FORM]]>/, 'Charclass multiple YI SYLLABLE NDO; ARABIC SHADDA MEDIAL FORM');
ok(!( "\x[a15d]\x[fe7d]" ~~ m/^ <-[\c[YI SYLLABLE NDO; ARABIC SHADDA MEDIAL FORM]]>/ ), 'Negative charclass YI SYLLABLE NDO; ARABIC SHADDA MEDIAL FORM');
ok(!( "\x[a15d]" ~~ m/^ \C[YI SYLLABLE NDO]/ ), 'Negative named YI SYLLABLE NDO nomatch');
ok("\x[fe7d]" ~~ m/^ \C[YI SYLLABLE NDO]/, 'Negative named YI SYLLABLE NDO match');
ok(!( "\x[a15d]" ~~ m/^ <[\C[YI SYLLABLE NDO]]>/ ), 'Negative charclass named YI SYLLABLE NDO nomatch');
ok("\x[fe7d]" ~~ m/^ <[\C[YI SYLLABLE NDO]]>/, 'Negative charclass named YI SYLLABLE NDO match');
ok(!( "\x[a15d]" ~~ m/^ \X[A15D]/ ), 'Negative hex \X[A15D] nomatch');
ok(!( "\x[a15d]" ~~ m/^ <[\X[A15D]]>/ ), 'Negative charclass hex \X[A15D] nomatch');
ok("\x[a15d]" ~~ m/^ \X[FE7D]/, 'Negative hex \X[FE7D] match');
ok("\x[a15d]" ~~ m/^ <[\X[FE7D]]>/, 'Negative charclass hex \X[FE7D] match');
ok("abc\x[2964]def" ~~ m/\c[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]/, 'Unanchored named RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN');
ok("abc\c[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]def" ~~ m/\x[2964]/, 'Unanchored \x[2964]');
ok("abc\c[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]def" ~~ m/\o[24544]/, 'Unanchored \o[24544]');
ok("abc\x[2964]def" ~~ m/^ abc \c[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN] def $/, 'Anchored RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN');
ok("abc\x[2964]\x[a15d]def" ~~ m/\c[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN;YI SYLLABLE NDO]/, 'Multiple RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN;YI SYLLABLE NDO');
ok("\x[2964]\x[a15d]" ~~ m/<[\c[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN;YI SYLLABLE NDO]]>/, 'Charclass multiple RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN;YI SYLLABLE NDO');
ok(!( "\x[2964]\x[a15d]" ~~ m/^ <-[\c[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN;YI SYLLABLE NDO]]>/ ), 'Negative charclass RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN;YI SYLLABLE NDO');
ok(!( "\x[2964]" ~~ m/^ \C[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]/ ), 'Negative named RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN nomatch');
ok("\x[a15d]" ~~ m/^ \C[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]/, 'Negative named RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN match');
ok(!( "\x[2964]" ~~ m/^ <[\C[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]]>/ ), 'Negative charclass named RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN nomatch');
ok("\x[a15d]" ~~ m/^ <[\C[RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]]>/, 'Negative charclass named RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN match');
ok(!( "\x[2964]" ~~ m/^ \X[2964]/ ), 'Negative hex \X[2964] nomatch');
ok(!( "\x[2964]" ~~ m/^ <[\X[2964]]>/ ), 'Negative charclass hex \X[2964] nomatch');
ok("\x[2964]" ~~ m/^ \X[A15D]/, 'Negative hex \X[A15D] match');
ok("\x[2964]" ~~ m/^ <[\X[A15D]]>/, 'Negative charclass hex \X[A15D] match');
ok("abc\x[ff6d]def" ~~ m/\c[HALFWIDTH KATAKANA LETTER SMALL YU]/, 'Unanchored named HALFWIDTH KATAKANA LETTER SMALL YU');
ok("abc\c[HALFWIDTH KATAKANA LETTER SMALL YU]def" ~~ m/\x[FF6D]/, 'Unanchored \x[FF6D]');
ok("abc\c[HALFWIDTH KATAKANA LETTER SMALL YU]def" ~~ m/\o[177555]/, 'Unanchored \o[177555]');
ok("abc\x[ff6d]def" ~~ m/^ abc \c[HALFWIDTH KATAKANA LETTER SMALL YU] def $/, 'Anchored HALFWIDTH KATAKANA LETTER SMALL YU');
ok("abc\x[ff6d]\x[2964]def" ~~ m/\c[HALFWIDTH KATAKANA LETTER SMALL YU; RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]/, 'Multiple HALFWIDTH KATAKANA LETTER SMALL YU; RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN');
ok("\x[ff6d]\x[2964]" ~~ m/<[\c[HALFWIDTH KATAKANA LETTER SMALL YU; RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]]>/, 'Charclass multiple HALFWIDTH KATAKANA LETTER SMALL YU; RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN');
ok(!( "\x[ff6d]\x[2964]" ~~ m/^ <-[\c[HALFWIDTH KATAKANA LETTER SMALL YU; RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN]]>/ ), 'Negative charclass HALFWIDTH KATAKANA LETTER SMALL YU; RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN');
ok(!( "\x[ff6d]" ~~ m/^ \C[HALFWIDTH KATAKANA LETTER SMALL YU]/ ), 'Negative named HALFWIDTH KATAKANA LETTER SMALL YU nomatch');
ok("\x[2964]" ~~ m/^ \C[HALFWIDTH KATAKANA LETTER SMALL YU]/, 'Negative named HALFWIDTH KATAKANA LETTER SMALL YU match');
ok(!( "\x[ff6d]" ~~ m/^ <[\C[HALFWIDTH KATAKANA LETTER SMALL YU]]>/ ), 'Negative charclass named HALFWIDTH KATAKANA LETTER SMALL YU nomatch');
ok("\x[2964]" ~~ m/^ <[\C[HALFWIDTH KATAKANA LETTER SMALL YU]]>/, 'Negative charclass named HALFWIDTH KATAKANA LETTER SMALL YU match');
ok(!( "\x[ff6d]" ~~ m/^ \X[FF6D]/ ), 'Negative hex \X[FF6D] nomatch');
ok(!( "\x[ff6d]" ~~ m/^ <[\X[FF6D]]>/ ), 'Negative charclass hex \X[FF6D] nomatch');
ok("\x[ff6d]" ~~ m/^ \X[2964]/, 'Negative hex \X[2964] match');
ok("\x[ff6d]" ~~ m/^ <[\X[2964]]>/, 'Negative charclass hex \X[2964] match');
ok("abc\x[36]def" ~~ m/\c[DIGIT SIX]/, 'Unanchored named DIGIT SIX');
ok("abc\c[DIGIT SIX]def" ~~ m/\x[36]/, 'Unanchored \x[36]');
ok("abc\c[DIGIT SIX]def" ~~ m/\o[66]/, 'Unanchored \o[66]');
ok("abc\x[36]def" ~~ m/^ abc \c[DIGIT SIX] def $/, 'Anchored DIGIT SIX');
ok("abc\x[36]\x[ff6d]def" ~~ m/\c[DIGIT SIX;HALFWIDTH KATAKANA LETTER SMALL YU]/, 'Multiple DIGIT SIX;HALFWIDTH KATAKANA LETTER SMALL YU');
ok("\x[36]\x[ff6d]" ~~ m/<[\c[DIGIT SIX;HALFWIDTH KATAKANA LETTER SMALL YU]]>/, 'Charclass multiple DIGIT SIX;HALFWIDTH KATAKANA LETTER SMALL YU');
ok(!( "\x[36]\x[ff6d]" ~~ m/^ <-[\c[DIGIT SIX;HALFWIDTH KATAKANA LETTER SMALL YU]]>/ ), 'Negative charclass DIGIT SIX;HALFWIDTH KATAKANA LETTER SMALL YU');
ok(!( "\x[36]" ~~ m/^ \C[DIGIT SIX]/ ), 'Negative named DIGIT SIX nomatch');
ok("\x[ff6d]" ~~ m/^ \C[DIGIT SIX]/, 'Negative named DIGIT SIX match');
ok(!( "\x[36]" ~~ m/^ <[\C[DIGIT SIX]]>/ ), 'Negative charclass named DIGIT SIX nomatch');
ok("\x[ff6d]" ~~ m/^ <[\C[DIGIT SIX]]>/, 'Negative charclass named DIGIT SIX match');
ok(!( "\x[36]" ~~ m/^ \X[36]/ ), 'Negative hex \X[36] nomatch');
ok(!( "\x[36]" ~~ m/^ <[\X[36]]>/ ), 'Negative charclass hex \X[36] nomatch');
ok("\x[36]" ~~ m/^ \X[FF6D]/, 'Negative hex \X[FF6D] match');
ok("\x[36]" ~~ m/^ <[\X[FF6D]]>/, 'Negative charclass hex \X[FF6D] match');
ok("abc\x[1323]def" ~~ m/\c[ETHIOPIC SYLLABLE THAA]/, 'Unanchored named ETHIOPIC SYLLABLE THAA');
ok("abc\c[ETHIOPIC SYLLABLE THAA]def" ~~ m/\x[1323]/, 'Unanchored \x[1323]');
ok("abc\c[ETHIOPIC SYLLABLE THAA]def" ~~ m/\o[11443]/, 'Unanchored \o[11443]');
ok("abc\x[1323]def" ~~ m/^ abc \c[ETHIOPIC SYLLABLE THAA] def $/, 'Anchored ETHIOPIC SYLLABLE THAA');
ok("abc\x[1323]\x[36]def" ~~ m/\c[ETHIOPIC SYLLABLE THAA; DIGIT SIX]/, 'Multiple ETHIOPIC SYLLABLE THAA; DIGIT SIX');
ok("\x[1323]\x[36]" ~~ m/<[\c[ETHIOPIC SYLLABLE THAA; DIGIT SIX]]>/, 'Charclass multiple ETHIOPIC SYLLABLE THAA; DIGIT SIX');
ok(!( "\x[1323]\x[36]" ~~ m/^ <-[\c[ETHIOPIC SYLLABLE THAA; DIGIT SIX]]>/ ), 'Negative charclass ETHIOPIC SYLLABLE THAA; DIGIT SIX');
ok(!( "\x[1323]" ~~ m/^ \C[ETHIOPIC SYLLABLE THAA]/ ), 'Negative named ETHIOPIC SYLLABLE THAA nomatch');
ok("\x[36]" ~~ m/^ \C[ETHIOPIC SYLLABLE THAA]/, 'Negative named ETHIOPIC SYLLABLE THAA match');
ok(!( "\x[1323]" ~~ m/^ <[\C[ETHIOPIC SYLLABLE THAA]]>/ ), 'Negative charclass named ETHIOPIC SYLLABLE THAA nomatch');
ok("\x[36]" ~~ m/^ <[\C[ETHIOPIC SYLLABLE THAA]]>/, 'Negative charclass named ETHIOPIC SYLLABLE THAA match');
ok(!( "\x[1323]" ~~ m/^ \X[1323]/ ), 'Negative hex \X[1323] nomatch');
ok(!( "\x[1323]" ~~ m/^ <[\X[1323]]>/ ), 'Negative charclass hex \X[1323] nomatch');
ok("\x[1323]" ~~ m/^ \X[36]/, 'Negative hex \X[36] match');
ok("\x[1323]" ~~ m/^ <[\X[36]]>/, 'Negative charclass hex \X[36] match');
ok("abc\x[1697]def" ~~ m/\c[OGHAM LETTER UILLEANN]/, 'Unanchored named OGHAM LETTER UILLEANN');
ok("abc\c[OGHAM LETTER UILLEANN]def" ~~ m/\x[1697]/, 'Unanchored \x[1697]');
ok("abc\c[OGHAM LETTER UILLEANN]def" ~~ m/\o[13227]/, 'Unanchored \o[13227]');
ok("abc\x[1697]def" ~~ m/^ abc \c[OGHAM LETTER UILLEANN] def $/, 'Anchored OGHAM LETTER UILLEANN');
ok("abc\x[1697]\x[1323]def" ~~ m/\c[OGHAM LETTER UILLEANN;ETHIOPIC SYLLABLE THAA]/, 'Multiple OGHAM LETTER UILLEANN;ETHIOPIC SYLLABLE THAA');
ok("\x[1697]\x[1323]" ~~ m/<[\c[OGHAM LETTER UILLEANN;ETHIOPIC SYLLABLE THAA]]>/, 'Charclass multiple OGHAM LETTER UILLEANN;ETHIOPIC SYLLABLE THAA');
ok(!( "\x[1697]\x[1323]" ~~ m/^ <-[\c[OGHAM LETTER UILLEANN;ETHIOPIC SYLLABLE THAA]]>/ ), 'Negative charclass OGHAM LETTER UILLEANN;ETHIOPIC SYLLABLE THAA');
ok(!( "\x[1697]" ~~ m/^ \C[OGHAM LETTER UILLEANN]/ ), 'Negative named OGHAM LETTER UILLEANN nomatch');
ok("\x[1323]" ~~ m/^ \C[OGHAM LETTER UILLEANN]/, 'Negative named OGHAM LETTER UILLEANN match');
ok(!( "\x[1697]" ~~ m/^ <[\C[OGHAM LETTER UILLEANN]]>/ ), 'Negative charclass named OGHAM LETTER UILLEANN nomatch');
ok("\x[1323]" ~~ m/^ <[\C[OGHAM LETTER UILLEANN]]>/, 'Negative charclass named OGHAM LETTER UILLEANN match');
ok(!( "\x[1697]" ~~ m/^ \X[1697]/ ), 'Negative hex \X[1697] nomatch');
ok(!( "\x[1697]" ~~ m/^ <[\X[1697]]>/ ), 'Negative charclass hex \X[1697] nomatch');
ok("\x[1697]" ~~ m/^ \X[1323]/, 'Negative hex \X[1323] match');
ok("\x[1697]" ~~ m/^ <[\X[1323]]>/, 'Negative charclass hex \X[1323] match');
ok("abc\x[fe8b]def" ~~ m/\c[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]/, 'Unanchored named ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM');
ok("abc\c[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]def" ~~ m/\x[fe8b]/, 'Unanchored \x[fe8b]');
ok("abc\c[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]def" ~~ m/\o[177213]/, 'Unanchored \o[177213]');
ok("abc\x[fe8b]def" ~~ m/^ abc \c[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM] def $/, 'Anchored ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM');
ok("abc\x[fe8b]\x[1697]def" ~~ m/\c[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM;OGHAM LETTER UILLEANN]/, 'Multiple ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM;OGHAM LETTER UILLEANN');
ok("\x[fe8b]\x[1697]" ~~ m/<[\c[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM;OGHAM LETTER UILLEANN]]>/, 'Charclass multiple ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM;OGHAM LETTER UILLEANN');
ok(!( "\x[fe8b]\x[1697]" ~~ m/^ <-[\c[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM;OGHAM LETTER UILLEANN]]>/ ), 'Negative charclass ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM;OGHAM LETTER UILLEANN');
ok(!( "\x[fe8b]" ~~ m/^ \C[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]/ ), 'Negative named ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM nomatch');
ok("\x[1697]" ~~ m/^ \C[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]/, 'Negative named ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM match');
ok(!( "\x[fe8b]" ~~ m/^ <[\C[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]]>/ ), 'Negative charclass named ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM nomatch');
ok("\x[1697]" ~~ m/^ <[\C[ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]]>/, 'Negative charclass named ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM match');
ok(!( "\x[fe8b]" ~~ m/^ \X[FE8B]/ ), 'Negative hex \X[FE8B] nomatch');
ok(!( "\x[fe8b]" ~~ m/^ <[\X[FE8B]]>/ ), 'Negative charclass hex \X[FE8B] nomatch');
ok("\x[fe8b]" ~~ m/^ \X[1697]/, 'Negative hex \X[1697] match');
ok("\x[fe8b]" ~~ m/^ <[\X[1697]]>/, 'Negative charclass hex \X[1697] match');
ok("abc\x[16de]def" ~~ m/\c[RUNIC LETTER DAGAZ DAEG D]/, 'Unanchored named RUNIC LETTER DAGAZ DAEG D');
ok("abc\c[RUNIC LETTER DAGAZ DAEG D]def" ~~ m/\x[16DE]/, 'Unanchored \x[16DE]');
ok("abc\c[RUNIC LETTER DAGAZ DAEG D]def" ~~ m/\o[13336]/, 'Unanchored \o[13336]');
ok("abc\x[16de]def" ~~ m/^ abc \c[RUNIC LETTER DAGAZ DAEG D] def $/, 'Anchored RUNIC LETTER DAGAZ DAEG D');
ok("abc\x[16de]\x[fe8b]def" ~~ m/\c[RUNIC LETTER DAGAZ DAEG D;ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]/, 'Multiple RUNIC LETTER DAGAZ DAEG D;ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM');
ok("\x[16de]\x[fe8b]" ~~ m/<[\c[RUNIC LETTER DAGAZ DAEG D;ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]]>/, 'Charclass multiple RUNIC LETTER DAGAZ DAEG D;ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM');
ok(!( "\x[16de]\x[fe8b]" ~~ m/^ <-[\c[RUNIC LETTER DAGAZ DAEG D;ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM]]>/ ), 'Negative charclass RUNIC LETTER DAGAZ DAEG D;ARABIC LETTER YEH WITH HAMZA ABOVE INITIAL FORM');
ok(!( "\x[16de]" ~~ m/^ \C[RUNIC LETTER DAGAZ DAEG D]/ ), 'Negative named RUNIC LETTER DAGAZ DAEG D nomatch');
ok("\x[fe8b]" ~~ m/^ \C[RUNIC LETTER DAGAZ DAEG D]/, 'Negative named RUNIC LETTER DAGAZ DAEG D match');
ok(!( "\x[16de]" ~~ m/^ <[\C[RUNIC LETTER DAGAZ DAEG D]]>/ ), 'Negative charclass named RUNIC LETTER DAGAZ DAEG D nomatch');
ok("\x[fe8b]" ~~ m/^ <[\C[RUNIC LETTER DAGAZ DAEG D]]>/, 'Negative charclass named RUNIC LETTER DAGAZ DAEG D match');
ok(!( "\x[16de]" ~~ m/^ \X[16DE]/ ), 'Negative hex \X[16DE] nomatch');
ok(!( "\x[16de]" ~~ m/^ <[\X[16DE]]>/ ), 'Negative charclass hex \X[16DE] nomatch');
ok("\x[16de]" ~~ m/^ \X[FE8B]/, 'Negative hex \X[FE8B] match');
ok("\x[16de]" ~~ m/^ <[\X[FE8B]]>/, 'Negative charclass hex \X[FE8B] match');
ok("abc\x[64]def" ~~ m/\c[LATIN SMALL LETTER D]/, 'Unanchored named LATIN SMALL LETTER D');
ok("abc\c[LATIN SMALL LETTER D]def" ~~ m/\x[64]/, 'Unanchored \x[64]');
ok("abc\c[LATIN SMALL LETTER D]def" ~~ m/\o[144]/, 'Unanchored \o[144]');
ok("abc\x[64]def" ~~ m/^ abc \c[LATIN SMALL LETTER D] def $/, 'Anchored LATIN SMALL LETTER D');
ok("abc\x[64]\x[16de]def" ~~ m/\c[LATIN SMALL LETTER D;RUNIC LETTER DAGAZ DAEG D]/, 'Multiple LATIN SMALL LETTER D;RUNIC LETTER DAGAZ DAEG D');
ok("\x[64]\x[16de]" ~~ m/<[\c[LATIN SMALL LETTER D;RUNIC LETTER DAGAZ DAEG D]]>/, 'Charclass multiple LATIN SMALL LETTER D;RUNIC LETTER DAGAZ DAEG D');
ok(!( "\x[64]\x[16de]" ~~ m/^ <-[\c[LATIN SMALL LETTER D;RUNIC LETTER DAGAZ DAEG D]]>/ ), 'Negative charclass LATIN SMALL LETTER D;RUNIC LETTER DAGAZ DAEG D');
ok(!( "\x[64]" ~~ m/^ \C[LATIN SMALL LETTER D]/ ), 'Negative named LATIN SMALL LETTER D nomatch');
ok("\x[16de]" ~~ m/^ \C[LATIN SMALL LETTER D]/, 'Negative named LATIN SMALL LETTER D match');
ok(!( "\x[64]" ~~ m/^ <[\C[LATIN SMALL LETTER D]]>/ ), 'Negative charclass named LATIN SMALL LETTER D nomatch');
ok("\x[16de]" ~~ m/^ <[\C[LATIN SMALL LETTER D]]>/, 'Negative charclass named LATIN SMALL LETTER D match');
ok(!( "\x[64]" ~~ m/^ \X[64]/ ), 'Negative hex \X[64] nomatch');
ok(!( "\x[64]" ~~ m/^ <[\X[64]]>/ ), 'Negative charclass hex \X[64] nomatch');
ok("\x[64]" ~~ m/^ \X[16DE]/, 'Negative hex \X[16DE] match');
ok("\x[64]" ~~ m/^ <[\X[16DE]]>/, 'Negative charclass hex \X[16DE] match');
ok("abc\x[2724]def" ~~ m/\c[HEAVY FOUR BALLOON-SPOKED ASTERISK]/, 'Unanchored named HEAVY FOUR BALLOON-SPOKED ASTERISK');
ok("abc\c[HEAVY FOUR BALLOON-SPOKED ASTERISK]def" ~~ m/\x[2724]/, 'Unanchored \x[2724]');
ok("abc\c[HEAVY FOUR BALLOON-SPOKED ASTERISK]def" ~~ m/\o[23444]/, 'Unanchored \o[23444]');
ok("abc\x[2724]def" ~~ m/^ abc \c[HEAVY FOUR BALLOON-SPOKED ASTERISK] def $/, 'Anchored HEAVY FOUR BALLOON-SPOKED ASTERISK');
ok("abc\x[2724]\x[64]def" ~~ m/\c[HEAVY FOUR BALLOON-SPOKED ASTERISK;LATIN SMALL LETTER D]/, 'Multiple HEAVY FOUR BALLOON-SPOKED ASTERISK;LATIN SMALL LETTER D');
ok("\x[2724]\x[64]" ~~ m/<[\c[HEAVY FOUR BALLOON-SPOKED ASTERISK;LATIN SMALL LETTER D]]>/, 'Charclass multiple HEAVY FOUR BALLOON-SPOKED ASTERISK;LATIN SMALL LETTER D');
ok(!( "\x[2724]\x[64]" ~~ m/^ <-[\c[HEAVY FOUR BALLOON-SPOKED ASTERISK;LATIN SMALL LETTER D]]>/ ), 'Negative charclass HEAVY FOUR BALLOON-SPOKED ASTERISK;LATIN SMALL LETTER D');
ok(!( "\x[2724]" ~~ m/^ \C[HEAVY FOUR BALLOON-SPOKED ASTERISK]/ ), 'Negative named HEAVY FOUR BALLOON-SPOKED ASTERISK nomatch');
ok("\x[64]" ~~ m/^ \C[HEAVY FOUR BALLOON-SPOKED ASTERISK]/, 'Negative named HEAVY FOUR BALLOON-SPOKED ASTERISK match');
ok(!( "\x[2724]" ~~ m/^ <[\C[HEAVY FOUR BALLOON-SPOKED ASTERISK]]>/ ), 'Negative charclass named HEAVY FOUR BALLOON-SPOKED ASTERISK nomatch');
ok("\x[64]" ~~ m/^ <[\C[HEAVY FOUR BALLOON-SPOKED ASTERISK]]>/, 'Negative charclass named HEAVY FOUR BALLOON-SPOKED ASTERISK match');
ok(!( "\x[2724]" ~~ m/^ \X[2724]/ ), 'Negative hex \X[2724] nomatch');
ok(!( "\x[2724]" ~~ m/^ <[\X[2724]]>/ ), 'Negative charclass hex \X[2724] nomatch');
ok("\x[2724]" ~~ m/^ \X[64]/, 'Negative hex \X[64] match');
ok("\x[2724]" ~~ m/^ <[\X[64]]>/, 'Negative charclass hex \X[64] match');
ok("abc\x[2719]def" ~~ m/\c[OUTLINED GREEK CROSS]/, 'Unanchored named OUTLINED GREEK CROSS');
ok("abc\c[OUTLINED GREEK CROSS]def" ~~ m/\x[2719]/, 'Unanchored \x[2719]');
ok("abc\c[OUTLINED GREEK CROSS]def" ~~ m/\o[23431]/, 'Unanchored \o[23431]');
ok("abc\x[2719]def" ~~ m/^ abc \c[OUTLINED GREEK CROSS] def $/, 'Anchored OUTLINED GREEK CROSS');
ok("abc\x[2719]\x[2724]def" ~~ m/\c[OUTLINED GREEK CROSS;HEAVY FOUR BALLOON-SPOKED ASTERISK]/, 'Multiple OUTLINED GREEK CROSS;HEAVY FOUR BALLOON-SPOKED ASTERISK');
ok("\x[2719]\x[2724]" ~~ m/<[\c[OUTLINED GREEK CROSS;HEAVY FOUR BALLOON-SPOKED ASTERISK]]>/, 'Charclass multiple OUTLINED GREEK CROSS;HEAVY FOUR BALLOON-SPOKED ASTERISK');
ok(!( "\x[2719]\x[2724]" ~~ m/^ <-[\c[OUTLINED GREEK CROSS;HEAVY FOUR BALLOON-SPOKED ASTERISK]]>/ ), 'Negative charclass OUTLINED GREEK CROSS;HEAVY FOUR BALLOON-SPOKED ASTERISK');
ok(!( "\x[2719]" ~~ m/^ \C[OUTLINED GREEK CROSS]/ ), 'Negative named OUTLINED GREEK CROSS nomatch');
ok("\x[2724]" ~~ m/^ \C[OUTLINED GREEK CROSS]/, 'Negative named OUTLINED GREEK CROSS match');
ok(!( "\x[2719]" ~~ m/^ <[\C[OUTLINED GREEK CROSS]]>/ ), 'Negative charclass named OUTLINED GREEK CROSS nomatch');
ok("\x[2724]" ~~ m/^ <[\C[OUTLINED GREEK CROSS]]>/, 'Negative charclass named OUTLINED GREEK CROSS match');
ok(!( "\x[2719]" ~~ m/^ \X[2719]/ ), 'Negative hex \X[2719] nomatch');
ok(!( "\x[2719]" ~~ m/^ <[\X[2719]]>/ ), 'Negative charclass hex \X[2719] nomatch');
ok("\x[2719]" ~~ m/^ \X[2724]/, 'Negative hex \X[2724] match');
ok("\x[2719]" ~~ m/^ <[\X[2724]]>/, 'Negative charclass hex \X[2724] match');
ok("abc\x[e97]def" ~~ m/\c[LAO LETTER THO TAM]/, 'Unanchored named LAO LETTER THO TAM');
ok("abc\c[LAO LETTER THO TAM]def" ~~ m/\x[e97]/, 'Unanchored \x[e97]');
ok("abc\c[LAO LETTER THO TAM]def" ~~ m/\o[7227]/, 'Unanchored \o[7227]');
ok("abc\x[e97]def" ~~ m/^ abc \c[LAO LETTER THO TAM] def $/, 'Anchored LAO LETTER THO TAM');
ok("abc\x[e97]\x[2719]def" ~~ m/\c[LAO LETTER THO TAM; OUTLINED GREEK CROSS]/, 'Multiple LAO LETTER THO TAM; OUTLINED GREEK CROSS');
ok("\x[e97]\x[2719]" ~~ m/<[\c[LAO LETTER THO TAM; OUTLINED GREEK CROSS]]>/, 'Charclass multiple LAO LETTER THO TAM; OUTLINED GREEK CROSS');
ok(!( "\x[e97]\x[2719]" ~~ m/^ <-[\c[LAO LETTER THO TAM; OUTLINED GREEK CROSS]]>/ ), 'Negative charclass LAO LETTER THO TAM; OUTLINED GREEK CROSS');
ok(!( "\x[e97]" ~~ m/^ \C[LAO LETTER THO TAM]/ ), 'Negative named LAO LETTER THO TAM nomatch');
ok("\x[2719]" ~~ m/^ \C[LAO LETTER THO TAM]/, 'Negative named LAO LETTER THO TAM match');
ok(!( "\x[e97]" ~~ m/^ <[\C[LAO LETTER THO TAM]]>/ ), 'Negative charclass named LAO LETTER THO TAM nomatch');
ok("\x[2719]" ~~ m/^ <[\C[LAO LETTER THO TAM]]>/, 'Negative charclass named LAO LETTER THO TAM match');
ok(!( "\x[e97]" ~~ m/^ \X[E97]/ ), 'Negative hex \X[E97] nomatch');
ok(!( "\x[e97]" ~~ m/^ <[\X[E97]]>/ ), 'Negative charclass hex \X[E97] nomatch');
ok("\x[e97]" ~~ m/^ \X[2719]/, 'Negative hex \X[2719] match');
ok("\x[e97]" ~~ m/^ <[\X[2719]]>/, 'Negative charclass hex \X[2719] match');
ok("abc\x[a42d]def" ~~ m/\c[YI SYLLABLE JJYT]/, 'Unanchored named YI SYLLABLE JJYT');
ok("abc\c[YI SYLLABLE JJYT]def" ~~ m/\x[a42d]/, 'Unanchored \x[a42d]');
ok("abc\c[YI SYLLABLE JJYT]def" ~~ m/\o[122055]/, 'Unanchored \o[122055]');
ok("abc\x[a42d]def" ~~ m/^ abc \c[YI SYLLABLE JJYT] def $/, 'Anchored YI SYLLABLE JJYT');
ok("abc\x[a42d]\x[e97]def" ~~ m/\c[YI SYLLABLE JJYT;LAO LETTER THO TAM]/, 'Multiple YI SYLLABLE JJYT;LAO LETTER THO TAM');
ok("\x[a42d]\x[e97]" ~~ m/<[\c[YI SYLLABLE JJYT;LAO LETTER THO TAM]]>/, 'Charclass multiple YI SYLLABLE JJYT;LAO LETTER THO TAM');
ok(!( "\x[a42d]\x[e97]" ~~ m/^ <-[\c[YI SYLLABLE JJYT;LAO LETTER THO TAM]]>/ ), 'Negative charclass YI SYLLABLE JJYT;LAO LETTER THO TAM');
ok(!( "\x[a42d]" ~~ m/^ \C[YI SYLLABLE JJYT]/ ), 'Negative named YI SYLLABLE JJYT nomatch');
ok("\x[e97]" ~~ m/^ \C[YI SYLLABLE JJYT]/, 'Negative named YI SYLLABLE JJYT match');
ok(!( "\x[a42d]" ~~ m/^ <[\C[YI SYLLABLE JJYT]]>/ ), 'Negative charclass named YI SYLLABLE JJYT nomatch');
ok("\x[e97]" ~~ m/^ <[\C[YI SYLLABLE JJYT]]>/, 'Negative charclass named YI SYLLABLE JJYT match');
ok(!( "\x[a42d]" ~~ m/^ \X[A42D]/ ), 'Negative hex \X[A42D] nomatch');
ok(!( "\x[a42d]" ~~ m/^ <[\X[A42D]]>/ ), 'Negative charclass hex \X[A42D] nomatch');
ok("\x[a42d]" ~~ m/^ \X[E97]/, 'Negative hex \X[E97] match');
ok("\x[a42d]" ~~ m/^ <[\X[E97]]>/, 'Negative charclass hex \X[E97] match');
ok("abc\x[ff6e]def" ~~ m/\c[HALFWIDTH KATAKANA LETTER SMALL YO]/, 'Unanchored named HALFWIDTH KATAKANA LETTER SMALL YO');
ok("abc\c[HALFWIDTH KATAKANA LETTER SMALL YO]def" ~~ m/\x[FF6E]/, 'Unanchored \x[FF6E]');
ok("abc\c[HALFWIDTH KATAKANA LETTER SMALL YO]def" ~~ m/\o[177556]/, 'Unanchored \o[177556]');
ok("abc\x[ff6e]def" ~~ m/^ abc \c[HALFWIDTH KATAKANA LETTER SMALL YO] def $/, 'Anchored HALFWIDTH KATAKANA LETTER SMALL YO');
ok("abc\x[ff6e]\x[a42d]def" ~~ m/\c[HALFWIDTH KATAKANA LETTER SMALL YO;YI SYLLABLE JJYT]/, 'Multiple HALFWIDTH KATAKANA LETTER SMALL YO;YI SYLLABLE JJYT');
ok("\x[ff6e]\x[a42d]" ~~ m/<[\c[HALFWIDTH KATAKANA LETTER SMALL YO;YI SYLLABLE JJYT]]>/, 'Charclass multiple HALFWIDTH KATAKANA LETTER SMALL YO;YI SYLLABLE JJYT');
ok(!( "\x[ff6e]\x[a42d]" ~~ m/^ <-[\c[HALFWIDTH KATAKANA LETTER SMALL YO;YI SYLLABLE JJYT]]>/ ), 'Negative charclass HALFWIDTH KATAKANA LETTER SMALL YO;YI SYLLABLE JJYT');
ok(!( "\x[ff6e]" ~~ m/^ \C[HALFWIDTH KATAKANA LETTER SMALL YO]/ ), 'Negative named HALFWIDTH KATAKANA LETTER SMALL YO nomatch');
ok("\x[a42d]" ~~ m/^ \C[HALFWIDTH KATAKANA LETTER SMALL YO]/, 'Negative named HALFWIDTH KATAKANA LETTER SMALL YO match');
ok(!( "\x[ff6e]" ~~ m/^ <[\C[HALFWIDTH KATAKANA LETTER SMALL YO]]>/ ), 'Negative charclass named HALFWIDTH KATAKANA LETTER SMALL YO nomatch');
ok("\x[a42d]" ~~ m/^ <[\C[HALFWIDTH KATAKANA LETTER SMALL YO]]>/, 'Negative charclass named HALFWIDTH KATAKANA LETTER SMALL YO match');
ok(!( "\x[ff6e]" ~~ m/^ \X[FF6E]/ ), 'Negative hex \X[FF6E] nomatch');
ok(!( "\x[ff6e]" ~~ m/^ <[\X[FF6E]]>/ ), 'Negative charclass hex \X[FF6E] nomatch');
ok("\x[ff6e]" ~~ m/^ \X[A42D]/, 'Negative hex \X[A42D] match');
ok("\x[ff6e]" ~~ m/^ <[\X[A42D]]>/, 'Negative charclass hex \X[A42D] match');
 

}
