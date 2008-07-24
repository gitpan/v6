use v6-alpha;
use Test;
plan 181;
force_todo(42, 43, 89, 125, 126, 144, 167, 168);

ok("\x[857B]"  ~~ m/^<!isLogicalOrderException>.$/, q{Match unrelated negated <?isLogicalOrderException>} );
ok("\x[857B]"  ~~ m/^<-isLogicalOrderException>$/, q{Match unrelated inverted <?isLogicalOrderException>} );
ok(!( "\x[857B]" ~~ m/^<?isLogicalOrderException>$/ ), q{Don't match related <?isLogicalOrderException>} );
ok("\x[857B]" ~~ m/^<!isLogicalOrderException>.$/, q{Match related negated <?isLogicalOrderException>} );
ok("\x[857B]" ~~ m/^<-isLogicalOrderException>$/, q{Match related inverted <?isLogicalOrderException>} );
ok("\x[857B]\x[857B]\c[THAI CHARACTER SARA E]" ~~ m/<?isLogicalOrderException>/, q{Match unanchored <?isLogicalOrderException>} );

# NoncharacterCodePoint


ok(!( "\c[LATIN LETTER REVERSED GLOTTAL STOP WITH STROKE]"  ~~ m/^<?isNoncharacterCodePoint>$/ ), q{Don't match unrelated <?isNoncharacterCodePoint>} );
ok("\c[LATIN LETTER REVERSED GLOTTAL STOP WITH STROKE]"  ~~ m/^<!isNoncharacterCodePoint>.$/, q{Match unrelated negated <?isNoncharacterCodePoint>} );
ok("\c[LATIN LETTER REVERSED GLOTTAL STOP WITH STROKE]"  ~~ m/^<-isNoncharacterCodePoint>$/, q{Match unrelated inverted <?isNoncharacterCodePoint>} );
ok(!( "\c[ARABIC-INDIC DIGIT ZERO]" ~~ m/^<?isNoncharacterCodePoint>$/ ), q{Don't match related <?isNoncharacterCodePoint>} );
ok("\c[ARABIC-INDIC DIGIT ZERO]" ~~ m/^<!isNoncharacterCodePoint>.$/, q{Match related negated <?isNoncharacterCodePoint>} );
ok("\c[ARABIC-INDIC DIGIT ZERO]" ~~ m/^<-isNoncharacterCodePoint>$/, q{Match related inverted <?isNoncharacterCodePoint>} );

# OtherAlphabetic


ok("\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<?isOtherAlphabetic>$/, q{Match <?isOtherAlphabetic>} );
ok(!( "\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<!isOtherAlphabetic>.$/ ), q{Don't match negated <?isOtherAlphabetic>} );
ok(!( "\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<-isOtherAlphabetic>$/ ), q{Don't match inverted <?isOtherAlphabetic>} );
ok(!( "\x[413C]"  ~~ m/^<?isOtherAlphabetic>$/ ), q{Don't match unrelated <?isOtherAlphabetic>} );
ok("\x[413C]"  ~~ m/^<!isOtherAlphabetic>.$/, q{Match unrelated negated <?isOtherAlphabetic>} );
ok("\x[413C]"  ~~ m/^<-isOtherAlphabetic>$/, q{Match unrelated inverted <?isOtherAlphabetic>} );
ok("\x[413C]\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/<?isOtherAlphabetic>/, q{Match unanchored <?isOtherAlphabetic>} );

# OtherDefaultIgnorableCodePoint


ok("\c[HANGUL FILLER]" ~~ m/^<?isOtherDefaultIgnorableCodePoint>$/, q{Match <?isOtherDefaultIgnorableCodePoint>} );
ok(!( "\c[HANGUL FILLER]" ~~ m/^<!isOtherDefaultIgnorableCodePoint>.$/ ), q{Don't match negated <?isOtherDefaultIgnorableCodePoint>} );
ok(!( "\c[HANGUL FILLER]" ~~ m/^<-isOtherDefaultIgnorableCodePoint>$/ ), q{Don't match inverted <?isOtherDefaultIgnorableCodePoint>} );
ok(!( "\c[VERTICAL BAR DOUBLE LEFT TURNSTILE]"  ~~ m/^<?isOtherDefaultIgnorableCodePoint>$/ ), q{Don't match unrelated <?isOtherDefaultIgnorableCodePoint>} );
ok("\c[VERTICAL BAR DOUBLE LEFT TURNSTILE]"  ~~ m/^<!isOtherDefaultIgnorableCodePoint>.$/, q{Match unrelated negated <?isOtherDefaultIgnorableCodePoint>} );
ok("\c[VERTICAL BAR DOUBLE LEFT TURNSTILE]"  ~~ m/^<-isOtherDefaultIgnorableCodePoint>$/, q{Match unrelated inverted <?isOtherDefaultIgnorableCodePoint>} );
ok("\c[VERTICAL BAR DOUBLE LEFT TURNSTILE]\c[HANGUL FILLER]" ~~ m/<?isOtherDefaultIgnorableCodePoint>/, q{Match unanchored <?isOtherDefaultIgnorableCodePoint>} );

# OtherGraphemeExtend


ok("\c[BENGALI VOWEL SIGN AA]" ~~ m/^<?isOtherGraphemeExtend>$/, q{Match <?isOtherGraphemeExtend>} );
ok(!( "\c[BENGALI VOWEL SIGN AA]" ~~ m/^<!isOtherGraphemeExtend>.$/ ), q{Don't match negated <?isOtherGraphemeExtend>} );
ok(!( "\c[BENGALI VOWEL SIGN AA]" ~~ m/^<-isOtherGraphemeExtend>$/ ), q{Don't match inverted <?isOtherGraphemeExtend>} );
ok(!( "\c[APL FUNCTIONAL SYMBOL EPSILON UNDERBAR]"  ~~ m/^<?isOtherGraphemeExtend>$/ ), q{Don't match unrelated <?isOtherGraphemeExtend>} );
ok("\c[APL FUNCTIONAL SYMBOL EPSILON UNDERBAR]"  ~~ m/^<!isOtherGraphemeExtend>.$/, q{Match unrelated negated <?isOtherGraphemeExtend>} );
ok("\c[APL FUNCTIONAL SYMBOL EPSILON UNDERBAR]"  ~~ m/^<-isOtherGraphemeExtend>$/, q{Match unrelated inverted <?isOtherGraphemeExtend>} );
ok("\c[APL FUNCTIONAL SYMBOL EPSILON UNDERBAR]\c[BENGALI VOWEL SIGN AA]" ~~ m/<?isOtherGraphemeExtend>/, q{Match unanchored <?isOtherGraphemeExtend>} );

# OtherLowercase


ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<?isOtherLowercase>$/, q{Match <?isOtherLowercase>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<!isOtherLowercase>.$/ ), q{Don't match negated <?isOtherLowercase>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<-isOtherLowercase>$/ ), q{Don't match inverted <?isOtherLowercase>} );
ok(!( "\c[HANGUL LETTER NIEUN-CIEUC]"  ~~ m/^<?isOtherLowercase>$/ ), q{Don't match unrelated <?isOtherLowercase>} );
ok("\c[HANGUL LETTER NIEUN-CIEUC]"  ~~ m/^<!isOtherLowercase>.$/, q{Match unrelated negated <?isOtherLowercase>} );
ok("\c[HANGUL LETTER NIEUN-CIEUC]"  ~~ m/^<-isOtherLowercase>$/, q{Match unrelated inverted <?isOtherLowercase>} );
ok("\c[HANGUL LETTER NIEUN-CIEUC]\c[MODIFIER LETTER SMALL H]" ~~ m/<?isOtherLowercase>/, q{Match unanchored <?isOtherLowercase>} );

# OtherMath


ok("\c[LEFT PARENTHESIS]" ~~ m/^<?isOtherMath>$/, q{Match <?isOtherMath>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isOtherMath>.$/ ), q{Don't match negated <?isOtherMath>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isOtherMath>$/ ), q{Don't match inverted <?isOtherMath>} );
ok(!( "\x[B43A]"  ~~ m/^<?isOtherMath>$/ ), q{Don't match unrelated <?isOtherMath>} );
ok("\x[B43A]"  ~~ m/^<!isOtherMath>.$/, q{Match unrelated negated <?isOtherMath>} );
ok("\x[B43A]"  ~~ m/^<-isOtherMath>$/, q{Match unrelated inverted <?isOtherMath>} );
ok("\x[B43A]\c[LEFT PARENTHESIS]" ~~ m/<?isOtherMath>/, q{Match unanchored <?isOtherMath>} );

# OtherUppercase


ok("\c[ROMAN NUMERAL ONE]" ~~ m/^<?isOtherUppercase>$/, q{Match <?isOtherUppercase>} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<!isOtherUppercase>.$/ ), q{Don't match negated <?isOtherUppercase>} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<-isOtherUppercase>$/ ), q{Don't match inverted <?isOtherUppercase>} );
ok(!( "\x[D246]"  ~~ m/^<?isOtherUppercase>$/ ), q{Don't match unrelated <?isOtherUppercase>} );
ok("\x[D246]"  ~~ m/^<!isOtherUppercase>.$/, q{Match unrelated negated <?isOtherUppercase>} );
ok("\x[D246]"  ~~ m/^<-isOtherUppercase>$/, q{Match unrelated inverted <?isOtherUppercase>} );
ok("\x[D246]\c[ROMAN NUMERAL ONE]" ~~ m/<?isOtherUppercase>/, q{Match unanchored <?isOtherUppercase>} );

# QuotationMark


ok("\c[QUOTATION MARK]" ~~ m/^<?isQuotationMark>$/, q{Match <?isQuotationMark>} );
ok(!( "\c[QUOTATION MARK]" ~~ m/^<!isQuotationMark>.$/ ), q{Don't match negated <?isQuotationMark>} );
ok(!( "\c[QUOTATION MARK]" ~~ m/^<-isQuotationMark>$/ ), q{Don't match inverted <?isQuotationMark>} );
ok(!( "\x[C890]"  ~~ m/^<?isQuotationMark>$/ ), q{Don't match unrelated <?isQuotationMark>} );
ok("\x[C890]"  ~~ m/^<!isQuotationMark>.$/, q{Match unrelated negated <?isQuotationMark>} );
ok("\x[C890]"  ~~ m/^<-isQuotationMark>$/, q{Match unrelated inverted <?isQuotationMark>} );
ok("\x[C890]\c[QUOTATION MARK]" ~~ m/<?isQuotationMark>/, q{Match unanchored <?isQuotationMark>} );

# Radical


ok("\c[CJK RADICAL REPEAT]" ~~ m/^<?isRadical>$/, q{Match <?isRadical>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<!isRadical>.$/ ), q{Don't match negated <?isRadical>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<-isRadical>$/ ), q{Don't match inverted <?isRadical>} );
ok(!( "\c[HANGUL JONGSEONG CHIEUCH]"  ~~ m/^<?isRadical>$/ ), q{Don't match unrelated <?isRadical>} );
ok("\c[HANGUL JONGSEONG CHIEUCH]"  ~~ m/^<!isRadical>.$/, q{Match unrelated negated <?isRadical>} );
ok("\c[HANGUL JONGSEONG CHIEUCH]"  ~~ m/^<-isRadical>$/, q{Match unrelated inverted <?isRadical>} );
ok("\c[HANGUL JONGSEONG CHIEUCH]\c[CJK RADICAL REPEAT]" ~~ m/<?isRadical>/, q{Match unanchored <?isRadical>} );

# SoftDotted


ok("\c[LATIN SMALL LETTER I]" ~~ m/^<?isSoftDotted>$/, q{Match <?isSoftDotted>} );
ok(!( "\c[LATIN SMALL LETTER I]" ~~ m/^<!isSoftDotted>.$/ ), q{Don't match negated <?isSoftDotted>} );
ok(!( "\c[LATIN SMALL LETTER I]" ~~ m/^<-isSoftDotted>$/ ), q{Don't match inverted <?isSoftDotted>} );
ok(!( "\x[ADEF]"  ~~ m/^<?isSoftDotted>$/ ), q{Don't match unrelated <?isSoftDotted>} );
ok("\x[ADEF]"  ~~ m/^<!isSoftDotted>.$/, q{Match unrelated negated <?isSoftDotted>} );
ok("\x[ADEF]"  ~~ m/^<-isSoftDotted>$/, q{Match unrelated inverted <?isSoftDotted>} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<?isSoftDotted>$/ ), q{Don't match related <?isSoftDotted>} );
ok("\c[DOLLAR SIGN]" ~~ m/^<!isSoftDotted>.$/, q{Match related negated <?isSoftDotted>} );
ok("\c[DOLLAR SIGN]" ~~ m/^<-isSoftDotted>$/, q{Match related inverted <?isSoftDotted>} );
ok("\x[ADEF]\c[DOLLAR SIGN]\c[LATIN SMALL LETTER I]" ~~ m/<?isSoftDotted>/, q{Match unanchored <?isSoftDotted>} );

# TerminalPunctuation


ok("\c[EXCLAMATION MARK]" ~~ m/^<?isTerminalPunctuation>$/, q{Match <?isTerminalPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isTerminalPunctuation>.$/ ), q{Don't match negated <?isTerminalPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isTerminalPunctuation>$/ ), q{Don't match inverted <?isTerminalPunctuation>} );
ok(!( "\x[3C9D]"  ~~ m/^<?isTerminalPunctuation>$/ ), q{Don't match unrelated <?isTerminalPunctuation>} );
ok("\x[3C9D]"  ~~ m/^<!isTerminalPunctuation>.$/, q{Match unrelated negated <?isTerminalPunctuation>} );
ok("\x[3C9D]"  ~~ m/^<-isTerminalPunctuation>$/, q{Match unrelated inverted <?isTerminalPunctuation>} );
ok("\x[3C9D]\c[EXCLAMATION MARK]" ~~ m/<?isTerminalPunctuation>/, q{Match unanchored <?isTerminalPunctuation>} );

# UnifiedIdeograph


ok("\x[7896]" ~~ m/^<?isUnifiedIdeograph>$/, q{Match <?isUnifiedIdeograph>} );
ok(!( "\x[7896]" ~~ m/^<!isUnifiedIdeograph>.$/ ), q{Don't match negated <?isUnifiedIdeograph>} );
ok(!( "\x[7896]" ~~ m/^<-isUnifiedIdeograph>$/ ), q{Don't match inverted <?isUnifiedIdeograph>} );
ok(!( "\x[9FA6]"  ~~ m/^<?isUnifiedIdeograph>$/ ), q{Don't match unrelated <?isUnifiedIdeograph>} );
ok("\x[9FA6]"  ~~ m/^<!isUnifiedIdeograph>.$/, q{Match unrelated negated <?isUnifiedIdeograph>} );
ok("\x[9FA6]"  ~~ m/^<-isUnifiedIdeograph>$/, q{Match unrelated inverted <?isUnifiedIdeograph>} );
ok("\x[9FA6]\x[7896]" ~~ m/<?isUnifiedIdeograph>/, q{Match unanchored <?isUnifiedIdeograph>} );

# WhiteSpace


ok("\c[CHARACTER TABULATION]" ~~ m/^<?isWhiteSpace>$/, q{Match <?isWhiteSpace>} );
ok(!( "\c[CHARACTER TABULATION]" ~~ m/^<!isWhiteSpace>.$/ ), q{Don't match negated <?isWhiteSpace>} );
ok(!( "\c[CHARACTER TABULATION]" ~~ m/^<-isWhiteSpace>$/ ), q{Don't match inverted <?isWhiteSpace>} );
ok(!( "\x[6358]"  ~~ m/^<?isWhiteSpace>$/ ), q{Don't match unrelated <?isWhiteSpace>} );
ok("\x[6358]"  ~~ m/^<!isWhiteSpace>.$/, q{Match unrelated negated <?isWhiteSpace>} );
ok("\x[6358]"  ~~ m/^<-isWhiteSpace>$/, q{Match unrelated inverted <?isWhiteSpace>} );
ok("\x[6358]\c[CHARACTER TABULATION]" ~~ m/<?isWhiteSpace>/, q{Match unanchored <?isWhiteSpace>} );

# Alphabetic      # Lu + Ll + Lt + Lm + Lo + OtherAlphabetic


ok("\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<?isAlphabetic>$/, q{Match (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok(!( "\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<!isAlphabetic>.$/ ), q{Don't match negated (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok(!( "\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<-isAlphabetic>$/ ), q{Don't match inverted (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok(!( "\x[0855]"  ~~ m/^<?isAlphabetic>$/ ), q{Don't match unrelated (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok("\x[0855]"  ~~ m/^<!isAlphabetic>.$/, q{Match unrelated negated (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok("\x[0855]"  ~~ m/^<-isAlphabetic>$/, q{Match unrelated inverted (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok("\x[0855]\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/<?isAlphabetic>/, q{Match unanchored (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );

# Lowercase       # Ll + OtherLowercase


ok("\c[LATIN SMALL LETTER A]" ~~ m/^<?isLowercase>$/, q{Match (Ll + OtherLowercase)} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<!isLowercase>.$/ ), q{Don't match negated (Ll + OtherLowercase)} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<-isLowercase>$/ ), q{Don't match inverted (Ll + OtherLowercase)} );
ok(!( "\x[6220]"  ~~ m/^<?isLowercase>$/ ), q{Don't match unrelated (Ll + OtherLowercase)} );
ok("\x[6220]"  ~~ m/^<!isLowercase>.$/, q{Match unrelated negated (Ll + OtherLowercase)} );
ok("\x[6220]"  ~~ m/^<-isLowercase>$/, q{Match unrelated inverted (Ll + OtherLowercase)} );
ok(!( "\x[6220]" ~~ m/^<?isLowercase>$/ ), q{Don't match related (Ll + OtherLowercase)} );
ok("\x[6220]" ~~ m/^<!isLowercase>.$/, q{Match related negated (Ll + OtherLowercase)} );
ok("\x[6220]" ~~ m/^<-isLowercase>$/, q{Match related inverted (Ll + OtherLowercase)} );
ok("\x[6220]\x[6220]\c[LATIN SMALL LETTER A]" ~~ m/<?isLowercase>/, q{Match unanchored (Ll + OtherLowercase)} );

# Uppercase       # Lu + OtherUppercase


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<?isUppercase>$/, q{Match (Lu + OtherUppercase)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isUppercase>.$/ ), q{Don't match negated (Lu + OtherUppercase)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isUppercase>$/ ), q{Don't match inverted (Lu + OtherUppercase)} );
ok(!( "\x[C080]"  ~~ m/^<?isUppercase>$/ ), q{Don't match unrelated (Lu + OtherUppercase)} );
ok("\x[C080]"  ~~ m/^<!isUppercase>.$/, q{Match unrelated negated (Lu + OtherUppercase)} );
ok("\x[C080]"  ~~ m/^<-isUppercase>$/, q{Match unrelated inverted (Lu + OtherUppercase)} );
ok("\x[C080]\c[LATIN CAPITAL LETTER A]" ~~ m/<?isUppercase>/, q{Match unanchored (Lu + OtherUppercase)} );

# Math            # Sm + OtherMath


ok("\c[LEFT PARENTHESIS]" ~~ m/^<?isMath>$/, q{Match (Sm + OtherMath)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isMath>.$/ ), q{Don't match negated (Sm + OtherMath)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isMath>$/ ), q{Don't match inverted (Sm + OtherMath)} );
ok(!( "\x[D4D2]"  ~~ m/^<?isMath>$/ ), q{Don't match unrelated (Sm + OtherMath)} );
ok("\x[D4D2]"  ~~ m/^<!isMath>.$/, q{Match unrelated negated (Sm + OtherMath)} );
ok("\x[D4D2]"  ~~ m/^<-isMath>$/, q{Match unrelated inverted (Sm + OtherMath)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMath>$/ ), q{Don't match related (Sm + OtherMath)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMath>.$/, q{Match related negated (Sm + OtherMath)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMath>$/, q{Match related inverted (Sm + OtherMath)} );
ok("\x[D4D2]\c[COMBINING GRAVE ACCENT]\c[LEFT PARENTHESIS]" ~~ m/<?isMath>/, q{Match unanchored (Sm + OtherMath)} );

# ID_Start        # Lu + Ll + Lt + Lm + Lo + Nl


ok("\x[C276]" ~~ m/^<?isID_Start>$/, q{Match (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok(!( "\x[C276]" ~~ m/^<!isID_Start>.$/ ), q{Don't match negated (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok(!( "\x[C276]" ~~ m/^<-isID_Start>$/ ), q{Don't match inverted (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok(!( "\x[D7A4]"  ~~ m/^<?isID_Start>$/ ), q{Don't match unrelated (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok("\x[D7A4]"  ~~ m/^<!isID_Start>.$/, q{Match unrelated negated (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok("\x[D7A4]"  ~~ m/^<-isID_Start>$/, q{Match unrelated inverted (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok("\x[D7A4]\x[C276]" ~~ m/<?isID_Start>/, q{Match unanchored (Lu + Ll + Lt + Lm + Lo + Nl)} );

# ID_Continue     # ID_Start + Mn + Mc + Nd + Pc


ok("\x[949B]" ~~ m/^<?isID_Continue>$/, q{Match (ID_Start + Mn + Mc + Nd + Pc)} );
ok(!( "\x[949B]" ~~ m/^<!isID_Continue>.$/ ), q{Don't match negated (ID_Start + Mn + Mc + Nd + Pc)} );
ok(!( "\x[949B]" ~~ m/^<-isID_Continue>$/ ), q{Don't match inverted (ID_Start + Mn + Mc + Nd + Pc)} );
ok(!( "\x[9FA6]"  ~~ m/^<?isID_Continue>$/ ), q{Don't match unrelated (ID_Start + Mn + Mc + Nd + Pc)} );
ok("\x[9FA6]"  ~~ m/^<!isID_Continue>.$/, q{Match unrelated negated (ID_Start + Mn + Mc + Nd + Pc)} );
ok("\x[9FA6]"  ~~ m/^<-isID_Continue>$/, q{Match unrelated inverted (ID_Start + Mn + Mc + Nd + Pc)} );
ok("\x[9FA6]\x[949B]" ~~ m/<?isID_Continue>/, q{Match unanchored (ID_Start + Mn + Mc + Nd + Pc)} );

# Any             # Any character


ok("\x[C709]" ~~ m/^<?isAny>$/, q{Match (Any character)} );
ok(!( "\x[C709]" ~~ m/^<!isAny>.$/ ), q{Don't match negated (Any character)} );
ok(!( "\x[C709]" ~~ m/^<-isAny>$/ ), q{Don't match inverted (Any character)} );
ok("\x[C709]" ~~ m/<?isAny>/, q{Match unanchored (Any character)} );

# Assigned        # Any non-Cn character (i.e. synonym for \P{Cn})


ok("\x[C99D]" ~~ m/^<?isAssigned>$/, q{Match (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok(!( "\x[C99D]" ~~ m/^<!isAssigned>.$/ ), q{Don't match negated (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok(!( "\x[C99D]" ~~ m/^<-isAssigned>$/ ), q{Don't match inverted (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok(!( "\x[D7A4]"  ~~ m/^<?isAssigned>$/ ), q{Don't match unrelated (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok("\x[D7A4]"  ~~ m/^<!isAssigned>.$/, q{Match unrelated negated (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok("\x[D7A4]"  ~~ m/^<-isAssigned>$/, q{Match unrelated inverted (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok("\x[D7A4]\x[C99D]" ~~ m/<?isAssigned>/, q{Match unanchored (Any non-Cn character (i.e. synonym for \P{Cn}))} );

# Unassigned      # Synonym for \p{Cn}


ok("\x[27EC]" ~~ m/^<?isUnassigned>$/, q{Match (Synonym for \p{Cn})} );
ok(!( "\x[27EC]" ~~ m/^<!isUnassigned>.$/ ), q{Don't match negated (Synonym for \p{Cn})} );
ok(!( "\x[27EC]" ~~ m/^<-isUnassigned>$/ ), q{Don't match inverted (Synonym for \p{Cn})} );
ok(!( "\c[RIGHT OUTER JOIN]"  ~~ m/^<?isUnassigned>$/ ), q{Don't match unrelated (Synonym for \p{Cn})} );
ok("\c[RIGHT OUTER JOIN]"  ~~ m/^<!isUnassigned>.$/, q{Match unrelated negated (Synonym for \p{Cn})} );
ok("\c[RIGHT OUTER JOIN]"  ~~ m/^<-isUnassigned>$/, q{Match unrelated inverted (Synonym for \p{Cn})} );
ok("\c[RIGHT OUTER JOIN]\x[27EC]" ~~ m/<?isUnassigned>/, q{Match unanchored (Synonym for \p{Cn})} );

# Common          # Codepoint not explicitly assigned to a script


ok("\x[0C7E]" ~~ m/^<?isCommon>$/, q{Match (Codepoint not explicitly assigned to a script)} );
ok(!( "\x[0C7E]" ~~ m/^<!isCommon>.$/ ), q{Don't match negated (Codepoint not explicitly assigned to a script)} );
ok(!( "\x[0C7E]" ~~ m/^<-isCommon>$/ ), q{Don't match inverted (Codepoint not explicitly assigned to a script)} );
ok(!( "\c[KANNADA SIGN ANUSVARA]"  ~~ m/^<?isCommon>$/ ), q{Don't match unrelated (Codepoint not explicitly assigned to a script)} );
ok("\c[KANNADA SIGN ANUSVARA]"  ~~ m/^<!isCommon>.$/, q{Match unrelated negated (Codepoint not explicitly assigned to a script)} );
ok("\c[KANNADA SIGN ANUSVARA]"  ~~ m/^<-isCommon>$/, q{Match unrelated inverted (Codepoint not explicitly assigned to a script)} );
ok(!( "\c[KHMER VOWEL INHERENT AQ]" ~~ m/^<?isCommon>$/ ), q{Don't match related (Codepoint not explicitly assigned to a script)} );
ok("\c[KHMER VOWEL INHERENT AQ]" ~~ m/^<!isCommon>.$/, q{Match related negated (Codepoint not explicitly assigned to a script)} );
ok("\c[KHMER VOWEL INHERENT AQ]" ~~ m/^<-isCommon>$/, q{Match related inverted (Codepoint not explicitly assigned to a script)} );
ok("\c[KANNADA SIGN ANUSVARA]\c[KHMER VOWEL INHERENT AQ]\x[0C7E]" ~~ m/<?isCommon>/, q{Match unanchored (Codepoint not explicitly assigned to a script)} );

# InAlphabeticPresentationForms


ok(!( "\x[531A]"  ~~ m/^<?isInAlphabeticPresentationForms>$/ ), q{Don't match unrelated <?isInAlphabeticPresentationForms>} );
ok("\x[531A]"  ~~ m/^<!isInAlphabeticPresentationForms>.$/, q{Match unrelated negated <?isInAlphabeticPresentationForms>} );
ok("\x[531A]"  ~~ m/^<-isInAlphabeticPresentationForms>$/, q{Match unrelated inverted <?isInAlphabeticPresentationForms>} );

# InArabic


ok("\c[ARABIC NUMBER SIGN]" ~~ m/^<?isInArabic>$/, q{Match <?isInArabic>} );
ok(!( "\c[ARABIC NUMBER SIGN]" ~~ m/^<!isInArabic>.$/ ), q{Don't match negated <?isInArabic>} );
ok(!( "\c[ARABIC NUMBER SIGN]" ~~ m/^<-isInArabic>$/ ), q{Don't match inverted <?isInArabic>} );
