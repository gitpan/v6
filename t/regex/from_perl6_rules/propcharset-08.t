use v6-alpha;
use Test;
plan 173;
force_todo(163..164, 171..173);

# InArabicPresentationFormsB


ok(!( "\x[B2EA]"  ~~ m/^<+isInArabicPresentationFormsB>$/ ), q{Don't match unrelated <isInArabicPresentationFormsB>} );
ok("\x[B2EA]"  ~~ m/^<!isInArabicPresentationFormsB>.$/, q{Match unrelated externally inverted <isInArabicPresentationFormsB>} );
ok("\x[B2EA]"  ~~ m/^<-isInArabicPresentationFormsB>$/, q{Match unrelated internally inverted <isInArabicPresentationFormsB>} );

# InArmenian


ok("\x[0530]" ~~ m/^<+isInArmenian>$/, q{Match <isInArmenian>} );
ok("\x[0530]" ~~ m/^<[A]+isInArmenian>$/, q{Match compound <isInArmenian>} );
ok(!( "\x[0530]" ~~ m/^<!isInArmenian>.$/ ), q{Don't match externally inverted <isInArmenian>} );
ok(!( "\x[0530]" ~~ m/^<[A]-isInArmenian>$/ ), q{Don't match compound inverted <isInArmenian>} );
ok(!( "\x[0530]" ~~ m/^<-isInArmenian>$/ ), q{Don't match internally inverted <isInArmenian>} );
ok(!( "\c[ETHIOPIC SYLLABLE QHWAA]"  ~~ m/^<+isInArmenian>$/ ), q{Don't match unrelated <isInArmenian>} );
ok("\c[ETHIOPIC SYLLABLE QHWAA]"  ~~ m/^<!isInArmenian>.$/, q{Match unrelated externally inverted <isInArmenian>} );
ok("\c[ETHIOPIC SYLLABLE QHWAA]"  ~~ m/^<-isInArmenian>$/, q{Match unrelated internally inverted <isInArmenian>} );
ok("\c[ETHIOPIC SYLLABLE QHWAA]\x[0530]" ~~ m/<+isInArmenian>/, q{Match unanchored <isInArmenian>} );

# InArrows


ok("\c[LEFTWARDS ARROW]" ~~ m/^<+isInArrows>$/, q{Match <isInArrows>} );
ok("\c[LEFTWARDS ARROW]" ~~ m/^<[A]+isInArrows>$/, q{Match compound <isInArrows>} );
ok(!( "\c[LEFTWARDS ARROW]" ~~ m/^<!isInArrows>.$/ ), q{Don't match externally inverted <isInArrows>} );
ok(!( "\c[LEFTWARDS ARROW]" ~~ m/^<[A]-isInArrows>$/ ), q{Don't match compound inverted <isInArrows>} );
ok(!( "\c[LEFTWARDS ARROW]" ~~ m/^<-isInArrows>$/ ), q{Don't match internally inverted <isInArrows>} );
ok(!( "\x[74FA]"  ~~ m/^<+isInArrows>$/ ), q{Don't match unrelated <isInArrows>} );
ok("\x[74FA]"  ~~ m/^<!isInArrows>.$/, q{Match unrelated externally inverted <isInArrows>} );
ok("\x[74FA]"  ~~ m/^<-isInArrows>$/, q{Match unrelated internally inverted <isInArrows>} );
ok("\x[74FA]\c[LEFTWARDS ARROW]" ~~ m/<+isInArrows>/, q{Match unanchored <isInArrows>} );

# InBasicLatin


ok("\c[NULL]" ~~ m/^<+isInBasicLatin>$/, q{Match <isInBasicLatin>} );
ok("\c[NULL]" ~~ m/^<[A]+isInBasicLatin>$/, q{Match compound <isInBasicLatin>} );
ok(!( "\c[NULL]" ~~ m/^<!isInBasicLatin>.$/ ), q{Don't match externally inverted <isInBasicLatin>} );
ok(!( "\c[NULL]" ~~ m/^<[A]-isInBasicLatin>$/ ), q{Don't match compound inverted <isInBasicLatin>} );
ok(!( "\c[NULL]" ~~ m/^<-isInBasicLatin>$/ ), q{Don't match internally inverted <isInBasicLatin>} );
ok(!( "\x[ADFF]"  ~~ m/^<+isInBasicLatin>$/ ), q{Don't match unrelated <isInBasicLatin>} );
ok("\x[ADFF]"  ~~ m/^<!isInBasicLatin>.$/, q{Match unrelated externally inverted <isInBasicLatin>} );
ok("\x[ADFF]"  ~~ m/^<-isInBasicLatin>$/, q{Match unrelated internally inverted <isInBasicLatin>} );
ok("\x[ADFF]\c[NULL]" ~~ m/<+isInBasicLatin>/, q{Match unanchored <isInBasicLatin>} );

# InBengali


ok("\x[0980]" ~~ m/^<+isInBengali>$/, q{Match <isInBengali>} );
ok("\x[0980]" ~~ m/^<[A]+isInBengali>$/, q{Match compound <isInBengali>} );
ok(!( "\x[0980]" ~~ m/^<!isInBengali>.$/ ), q{Don't match externally inverted <isInBengali>} );
ok(!( "\x[0980]" ~~ m/^<[A]-isInBengali>$/ ), q{Don't match compound inverted <isInBengali>} );
ok(!( "\x[0980]" ~~ m/^<-isInBengali>$/ ), q{Don't match internally inverted <isInBengali>} );
ok(!( "\x[3409]"  ~~ m/^<+isInBengali>$/ ), q{Don't match unrelated <isInBengali>} );
ok("\x[3409]"  ~~ m/^<!isInBengali>.$/, q{Match unrelated externally inverted <isInBengali>} );
ok("\x[3409]"  ~~ m/^<-isInBengali>$/, q{Match unrelated internally inverted <isInBengali>} );
ok("\x[3409]\x[0980]" ~~ m/<+isInBengali>/, q{Match unanchored <isInBengali>} );

# InBlockElements


ok("\c[UPPER HALF BLOCK]" ~~ m/^<+isInBlockElements>$/, q{Match <isInBlockElements>} );
ok("\c[UPPER HALF BLOCK]" ~~ m/^<[A]+isInBlockElements>$/, q{Match compound <isInBlockElements>} );
ok(!( "\c[UPPER HALF BLOCK]" ~~ m/^<!isInBlockElements>.$/ ), q{Don't match externally inverted <isInBlockElements>} );
ok(!( "\c[UPPER HALF BLOCK]" ~~ m/^<[A]-isInBlockElements>$/ ), q{Don't match compound inverted <isInBlockElements>} );
ok(!( "\c[UPPER HALF BLOCK]" ~~ m/^<-isInBlockElements>$/ ), q{Don't match internally inverted <isInBlockElements>} );
ok(!( "\x[77B1]"  ~~ m/^<+isInBlockElements>$/ ), q{Don't match unrelated <isInBlockElements>} );
ok("\x[77B1]"  ~~ m/^<!isInBlockElements>.$/, q{Match unrelated externally inverted <isInBlockElements>} );
ok("\x[77B1]"  ~~ m/^<-isInBlockElements>$/, q{Match unrelated internally inverted <isInBlockElements>} );
ok("\x[77B1]\c[UPPER HALF BLOCK]" ~~ m/<+isInBlockElements>/, q{Match unanchored <isInBlockElements>} );

# InBopomofo


ok("\x[3100]" ~~ m/^<+isInBopomofo>$/, q{Match <isInBopomofo>} );
ok("\x[3100]" ~~ m/^<[A]+isInBopomofo>$/, q{Match compound <isInBopomofo>} );
ok(!( "\x[3100]" ~~ m/^<!isInBopomofo>.$/ ), q{Don't match externally inverted <isInBopomofo>} );
ok(!( "\x[3100]" ~~ m/^<[A]-isInBopomofo>$/ ), q{Don't match compound inverted <isInBopomofo>} );
ok(!( "\x[3100]" ~~ m/^<-isInBopomofo>$/ ), q{Don't match internally inverted <isInBopomofo>} );
ok(!( "\x[701E]"  ~~ m/^<+isInBopomofo>$/ ), q{Don't match unrelated <isInBopomofo>} );
ok("\x[701E]"  ~~ m/^<!isInBopomofo>.$/, q{Match unrelated externally inverted <isInBopomofo>} );
ok("\x[701E]"  ~~ m/^<-isInBopomofo>$/, q{Match unrelated internally inverted <isInBopomofo>} );
ok("\x[701E]\x[3100]" ~~ m/<+isInBopomofo>/, q{Match unanchored <isInBopomofo>} );

# InBopomofoExtended


ok("\c[BOPOMOFO LETTER BU]" ~~ m/^<+isInBopomofoExtended>$/, q{Match <isInBopomofoExtended>} );
ok("\c[BOPOMOFO LETTER BU]" ~~ m/^<[A]+isInBopomofoExtended>$/, q{Match compound <isInBopomofoExtended>} );
ok(!( "\c[BOPOMOFO LETTER BU]" ~~ m/^<!isInBopomofoExtended>.$/ ), q{Don't match externally inverted <isInBopomofoExtended>} );
ok(!( "\c[BOPOMOFO LETTER BU]" ~~ m/^<[A]-isInBopomofoExtended>$/ ), q{Don't match compound inverted <isInBopomofoExtended>} );
ok(!( "\c[BOPOMOFO LETTER BU]" ~~ m/^<-isInBopomofoExtended>$/ ), q{Don't match internally inverted <isInBopomofoExtended>} );
ok(!( "\c[YI SYLLABLE TIE]"  ~~ m/^<+isInBopomofoExtended>$/ ), q{Don't match unrelated <isInBopomofoExtended>} );
ok("\c[YI SYLLABLE TIE]"  ~~ m/^<!isInBopomofoExtended>.$/, q{Match unrelated externally inverted <isInBopomofoExtended>} );
ok("\c[YI SYLLABLE TIE]"  ~~ m/^<-isInBopomofoExtended>$/, q{Match unrelated internally inverted <isInBopomofoExtended>} );
ok("\c[YI SYLLABLE TIE]\c[BOPOMOFO LETTER BU]" ~~ m/<+isInBopomofoExtended>/, q{Match unanchored <isInBopomofoExtended>} );

# InBoxDrawing


ok("\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<+isInBoxDrawing>$/, q{Match <isInBoxDrawing>} );
ok("\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<[A]+isInBoxDrawing>$/, q{Match compound <isInBoxDrawing>} );
ok(!( "\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<!isInBoxDrawing>.$/ ), q{Don't match externally inverted <isInBoxDrawing>} );
ok(!( "\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<[A]-isInBoxDrawing>$/ ), q{Don't match compound inverted <isInBoxDrawing>} );
ok(!( "\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<-isInBoxDrawing>$/ ), q{Don't match internally inverted <isInBoxDrawing>} );
ok(!( "\x[D2FB]"  ~~ m/^<+isInBoxDrawing>$/ ), q{Don't match unrelated <isInBoxDrawing>} );
ok("\x[D2FB]"  ~~ m/^<!isInBoxDrawing>.$/, q{Match unrelated externally inverted <isInBoxDrawing>} );
ok("\x[D2FB]"  ~~ m/^<-isInBoxDrawing>$/, q{Match unrelated internally inverted <isInBoxDrawing>} );
ok("\x[D2FB]\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/<+isInBoxDrawing>/, q{Match unanchored <isInBoxDrawing>} );

# InBraillePatterns


ok("\c[BRAILLE PATTERN BLANK]" ~~ m/^<+isInBraillePatterns>$/, q{Match <isInBraillePatterns>} );
ok("\c[BRAILLE PATTERN BLANK]" ~~ m/^<[A]+isInBraillePatterns>$/, q{Match compound <isInBraillePatterns>} );
ok(!( "\c[BRAILLE PATTERN BLANK]" ~~ m/^<!isInBraillePatterns>.$/ ), q{Don't match externally inverted <isInBraillePatterns>} );
ok(!( "\c[BRAILLE PATTERN BLANK]" ~~ m/^<[A]-isInBraillePatterns>$/ ), q{Don't match compound inverted <isInBraillePatterns>} );
ok(!( "\c[BRAILLE PATTERN BLANK]" ~~ m/^<-isInBraillePatterns>$/ ), q{Don't match internally inverted <isInBraillePatterns>} );
ok(!( "\x[4FE4]"  ~~ m/^<+isInBraillePatterns>$/ ), q{Don't match unrelated <isInBraillePatterns>} );
ok("\x[4FE4]"  ~~ m/^<!isInBraillePatterns>.$/, q{Match unrelated externally inverted <isInBraillePatterns>} );
ok("\x[4FE4]"  ~~ m/^<-isInBraillePatterns>$/, q{Match unrelated internally inverted <isInBraillePatterns>} );
ok("\x[4FE4]\c[BRAILLE PATTERN BLANK]" ~~ m/<+isInBraillePatterns>/, q{Match unanchored <isInBraillePatterns>} );

# InBuhid


ok("\c[BUHID LETTER A]" ~~ m/^<+isInBuhid>$/, q{Match <isInBuhid>} );
ok("\c[BUHID LETTER A]" ~~ m/^<[A]+isInBuhid>$/, q{Match compound <isInBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<!isInBuhid>.$/ ), q{Don't match externally inverted <isInBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<[A]-isInBuhid>$/ ), q{Don't match compound inverted <isInBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<-isInBuhid>$/ ), q{Don't match internally inverted <isInBuhid>} );
ok(!( "\x[996F]"  ~~ m/^<+isInBuhid>$/ ), q{Don't match unrelated <isInBuhid>} );
ok("\x[996F]"  ~~ m/^<!isInBuhid>.$/, q{Match unrelated externally inverted <isInBuhid>} );
ok("\x[996F]"  ~~ m/^<-isInBuhid>$/, q{Match unrelated internally inverted <isInBuhid>} );
ok("\x[996F]\c[BUHID LETTER A]" ~~ m/<+isInBuhid>/, q{Match unanchored <isInBuhid>} );

# InByzantineMusicalSymbols


ok(!( "\x[802A]"  ~~ m/^<+isInByzantineMusicalSymbols>$/ ), q{Don't match unrelated <isInByzantineMusicalSymbols>} );
ok("\x[802A]"  ~~ m/^<!isInByzantineMusicalSymbols>.$/, q{Match unrelated externally inverted <isInByzantineMusicalSymbols>} );
ok("\x[802A]"  ~~ m/^<-isInByzantineMusicalSymbols>$/, q{Match unrelated internally inverted <isInByzantineMusicalSymbols>} );

# InCJKCompatibility


ok("\c[SQUARE APAATO]" ~~ m/^<+isInCJKCompatibility>$/, q{Match <isInCJKCompatibility>} );
ok("\c[SQUARE APAATO]" ~~ m/^<[A]+isInCJKCompatibility>$/, q{Match compound <isInCJKCompatibility>} );
ok(!( "\c[SQUARE APAATO]" ~~ m/^<!isInCJKCompatibility>.$/ ), q{Don't match externally inverted <isInCJKCompatibility>} );
ok(!( "\c[SQUARE APAATO]" ~~ m/^<[A]-isInCJKCompatibility>$/ ), q{Don't match compound inverted <isInCJKCompatibility>} );
ok(!( "\c[SQUARE APAATO]" ~~ m/^<-isInCJKCompatibility>$/ ), q{Don't match internally inverted <isInCJKCompatibility>} );
ok(!( "\x[2B99]"  ~~ m/^<+isInCJKCompatibility>$/ ), q{Don't match unrelated <isInCJKCompatibility>} );
ok("\x[2B99]"  ~~ m/^<!isInCJKCompatibility>.$/, q{Match unrelated externally inverted <isInCJKCompatibility>} );
ok("\x[2B99]"  ~~ m/^<-isInCJKCompatibility>$/, q{Match unrelated internally inverted <isInCJKCompatibility>} );
ok("\x[2B99]\c[SQUARE APAATO]" ~~ m/<+isInCJKCompatibility>/, q{Match unanchored <isInCJKCompatibility>} );

# InCJKCompatibilityForms


ok(!( "\x[342B]"  ~~ m/^<+isInCJKCompatibilityForms>$/ ), q{Don't match unrelated <isInCJKCompatibilityForms>} );
ok("\x[342B]"  ~~ m/^<!isInCJKCompatibilityForms>.$/, q{Match unrelated externally inverted <isInCJKCompatibilityForms>} );
ok("\x[342B]"  ~~ m/^<-isInCJKCompatibilityForms>$/, q{Match unrelated internally inverted <isInCJKCompatibilityForms>} );

# InCJKCompatibilityIdeographs


ok(!( "\c[BLACK SQUARE]"  ~~ m/^<+isInCJKCompatibilityIdeographs>$/ ), q{Don't match unrelated <isInCJKCompatibilityIdeographs>} );
ok("\c[BLACK SQUARE]"  ~~ m/^<!isInCJKCompatibilityIdeographs>.$/, q{Match unrelated externally inverted <isInCJKCompatibilityIdeographs>} );
ok("\c[BLACK SQUARE]"  ~~ m/^<-isInCJKCompatibilityIdeographs>$/, q{Match unrelated internally inverted <isInCJKCompatibilityIdeographs>} );

# InCJKCompatibilityIdeographsSupplement


ok(!( "\x[A90E]"  ~~ m/^<+isInCJKCompatibilityIdeographsSupplement>$/ ), q{Don't match unrelated <isInCJKCompatibilityIdeographsSupplement>} );
ok("\x[A90E]"  ~~ m/^<!isInCJKCompatibilityIdeographsSupplement>.$/, q{Match unrelated externally inverted <isInCJKCompatibilityIdeographsSupplement>} );
ok("\x[A90E]"  ~~ m/^<-isInCJKCompatibilityIdeographsSupplement>$/, q{Match unrelated internally inverted <isInCJKCompatibilityIdeographsSupplement>} );

# InCJKRadicalsSupplement


ok("\c[CJK RADICAL REPEAT]" ~~ m/^<+isInCJKRadicalsSupplement>$/, q{Match <isInCJKRadicalsSupplement>} );
ok("\c[CJK RADICAL REPEAT]" ~~ m/^<[A]+isInCJKRadicalsSupplement>$/, q{Match compound <isInCJKRadicalsSupplement>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<!isInCJKRadicalsSupplement>.$/ ), q{Don't match externally inverted <isInCJKRadicalsSupplement>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<[A]-isInCJKRadicalsSupplement>$/ ), q{Don't match compound inverted <isInCJKRadicalsSupplement>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<-isInCJKRadicalsSupplement>$/ ), q{Don't match internally inverted <isInCJKRadicalsSupplement>} );
ok(!( "\x[563B]"  ~~ m/^<+isInCJKRadicalsSupplement>$/ ), q{Don't match unrelated <isInCJKRadicalsSupplement>} );
ok("\x[563B]"  ~~ m/^<!isInCJKRadicalsSupplement>.$/, q{Match unrelated externally inverted <isInCJKRadicalsSupplement>} );
ok("\x[563B]"  ~~ m/^<-isInCJKRadicalsSupplement>$/, q{Match unrelated internally inverted <isInCJKRadicalsSupplement>} );
ok("\x[563B]\c[CJK RADICAL REPEAT]" ~~ m/<+isInCJKRadicalsSupplement>/, q{Match unanchored <isInCJKRadicalsSupplement>} );

# InCJKSymbolsAndPunctuation


ok("\c[IDEOGRAPHIC SPACE]" ~~ m/^<+isInCJKSymbolsAndPunctuation>$/, q{Match <isInCJKSymbolsAndPunctuation>} );
ok("\c[IDEOGRAPHIC SPACE]" ~~ m/^<[A]+isInCJKSymbolsAndPunctuation>$/, q{Match compound <isInCJKSymbolsAndPunctuation>} );
ok(!( "\c[IDEOGRAPHIC SPACE]" ~~ m/^<!isInCJKSymbolsAndPunctuation>.$/ ), q{Don't match externally inverted <isInCJKSymbolsAndPunctuation>} );
ok(!( "\c[IDEOGRAPHIC SPACE]" ~~ m/^<[A]-isInCJKSymbolsAndPunctuation>$/ ), q{Don't match compound inverted <isInCJKSymbolsAndPunctuation>} );
ok(!( "\c[IDEOGRAPHIC SPACE]" ~~ m/^<-isInCJKSymbolsAndPunctuation>$/ ), q{Don't match internally inverted <isInCJKSymbolsAndPunctuation>} );
ok(!( "\x[3BE6]"  ~~ m/^<+isInCJKSymbolsAndPunctuation>$/ ), q{Don't match unrelated <isInCJKSymbolsAndPunctuation>} );
ok("\x[3BE6]"  ~~ m/^<!isInCJKSymbolsAndPunctuation>.$/, q{Match unrelated externally inverted <isInCJKSymbolsAndPunctuation>} );
ok("\x[3BE6]"  ~~ m/^<-isInCJKSymbolsAndPunctuation>$/, q{Match unrelated internally inverted <isInCJKSymbolsAndPunctuation>} );
ok("\x[3BE6]\c[IDEOGRAPHIC SPACE]" ~~ m/<+isInCJKSymbolsAndPunctuation>/, q{Match unanchored <isInCJKSymbolsAndPunctuation>} );

# InCJKUnifiedIdeographs


ok("\x[4E00]" ~~ m/^<+isInCJKUnifiedIdeographs>$/, q{Match <isInCJKUnifiedIdeographs>} );
ok("\x[4E00]" ~~ m/^<[A]+isInCJKUnifiedIdeographs>$/, q{Match compound <isInCJKUnifiedIdeographs>} );
ok(!( "\x[4E00]" ~~ m/^<!isInCJKUnifiedIdeographs>.$/ ), q{Don't match externally inverted <isInCJKUnifiedIdeographs>} );
ok(!( "\x[4E00]" ~~ m/^<[A]-isInCJKUnifiedIdeographs>$/ ), q{Don't match compound inverted <isInCJKUnifiedIdeographs>} );
ok(!( "\x[4E00]" ~~ m/^<-isInCJKUnifiedIdeographs>$/ ), q{Don't match internally inverted <isInCJKUnifiedIdeographs>} );
ok(!( "\x[436E]"  ~~ m/^<+isInCJKUnifiedIdeographs>$/ ), q{Don't match unrelated <isInCJKUnifiedIdeographs>} );
ok("\x[436E]"  ~~ m/^<!isInCJKUnifiedIdeographs>.$/, q{Match unrelated externally inverted <isInCJKUnifiedIdeographs>} );
ok("\x[436E]"  ~~ m/^<-isInCJKUnifiedIdeographs>$/, q{Match unrelated internally inverted <isInCJKUnifiedIdeographs>} );
ok("\x[436E]\x[4E00]" ~~ m/<+isInCJKUnifiedIdeographs>/, q{Match unanchored <isInCJKUnifiedIdeographs>} );

# InCJKUnifiedIdeographsExtensionA


ok("\x[4993]" ~~ m/^<+isInCJKUnifiedIdeographsExtensionA>$/, q{Match <isInCJKUnifiedIdeographsExtensionA>} );
ok("\x[4993]" ~~ m/^<[A]+isInCJKUnifiedIdeographsExtensionA>$/, q{Match compound <isInCJKUnifiedIdeographsExtensionA>} );
ok(!( "\x[4993]" ~~ m/^<!isInCJKUnifiedIdeographsExtensionA>.$/ ), q{Don't match externally inverted <isInCJKUnifiedIdeographsExtensionA>} );
ok(!( "\x[4993]" ~~ m/^<[A]-isInCJKUnifiedIdeographsExtensionA>$/ ), q{Don't match compound inverted <isInCJKUnifiedIdeographsExtensionA>} );
ok(!( "\x[4993]" ~~ m/^<-isInCJKUnifiedIdeographsExtensionA>$/ ), q{Don't match internally inverted <isInCJKUnifiedIdeographsExtensionA>} );
ok(!( "\c[HEXAGRAM FOR THE CREATIVE HEAVEN]"  ~~ m/^<+isInCJKUnifiedIdeographsExtensionA>$/ ), q{Don't match unrelated <isInCJKUnifiedIdeographsExtensionA>} );
ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]"  ~~ m/^<!isInCJKUnifiedIdeographsExtensionA>.$/, q{Match unrelated externally inverted <isInCJKUnifiedIdeographsExtensionA>} );
ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]"  ~~ m/^<-isInCJKUnifiedIdeographsExtensionA>$/, q{Match unrelated internally inverted <isInCJKUnifiedIdeographsExtensionA>} );
ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]\x[4993]" ~~ m/<+isInCJKUnifiedIdeographsExtensionA>/, q{Match unanchored <isInCJKUnifiedIdeographsExtensionA>} );

# InCJKUnifiedIdeographsExtensionB


ok(!( "\x[3E5A]"  ~~ m/^<+isInCJKUnifiedIdeographsExtensionB>$/ ), q{Don't match unrelated <isInCJKUnifiedIdeographsExtensionB>} );
ok("\x[3E5A]"  ~~ m/^<!isInCJKUnifiedIdeographsExtensionB>.$/, q{Match unrelated externally inverted <isInCJKUnifiedIdeographsExtensionB>} );
ok("\x[3E5A]"  ~~ m/^<-isInCJKUnifiedIdeographsExtensionB>$/, q{Match unrelated internally inverted <isInCJKUnifiedIdeographsExtensionB>} );

# InCherokee


ok("\c[CHEROKEE LETTER A]" ~~ m/^<+isInCherokee>$/, q{Match <isInCherokee>} );
ok("\c[CHEROKEE LETTER A]" ~~ m/^<[A]+isInCherokee>$/, q{Match compound <isInCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<!isInCherokee>.$/ ), q{Don't match externally inverted <isInCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<[A]-isInCherokee>$/ ), q{Don't match compound inverted <isInCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<-isInCherokee>$/ ), q{Don't match internally inverted <isInCherokee>} );
ok(!( "\x[B311]"  ~~ m/^<+isInCherokee>$/ ), q{Don't match unrelated <isInCherokee>} );
ok("\x[B311]"  ~~ m/^<!isInCherokee>.$/, q{Match unrelated externally inverted <isInCherokee>} );
ok("\x[B311]"  ~~ m/^<-isInCherokee>$/, q{Match unrelated internally inverted <isInCherokee>} );
ok("\x[B311]\c[CHEROKEE LETTER A]" ~~ m/<+isInCherokee>/, q{Match unanchored <isInCherokee>} );

# InCombiningDiacriticalMarks


ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isInCombiningDiacriticalMarks>$/, q{Match <isInCombiningDiacriticalMarks>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]+isInCombiningDiacriticalMarks>$/, q{Match compound <isInCombiningDiacriticalMarks>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isInCombiningDiacriticalMarks>.$/ ), q{Don't match externally inverted <isInCombiningDiacriticalMarks>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]-isInCombiningDiacriticalMarks>$/ ), q{Don't match compound inverted <isInCombiningDiacriticalMarks>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isInCombiningDiacriticalMarks>$/ ), q{Don't match internally inverted <isInCombiningDiacriticalMarks>} );
ok(!( "\x[81B8]"  ~~ m/^<+isInCombiningDiacriticalMarks>$/ ), q{Don't match unrelated <isInCombiningDiacriticalMarks>} );
ok("\x[81B8]"  ~~ m/^<!isInCombiningDiacriticalMarks>.$/, q{Match unrelated externally inverted <isInCombiningDiacriticalMarks>} );
ok("\x[81B8]"  ~~ m/^<-isInCombiningDiacriticalMarks>$/, q{Match unrelated internally inverted <isInCombiningDiacriticalMarks>} );
ok("\x[81B8]\c[COMBINING GRAVE ACCENT]" ~~ m/<+isInCombiningDiacriticalMarks>/, q{Match unanchored <isInCombiningDiacriticalMarks>} );

# InCombiningDiacriticalMarksforSymbols


ok("\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<+isInCombiningDiacriticalMarksforSymbols>$/, q{Match <isInCombiningDiacriticalMarksforSymbols>} );
ok("\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<[A]+isInCombiningDiacriticalMarksforSymbols>$/, q{Match compound <isInCombiningDiacriticalMarksforSymbols>} );
