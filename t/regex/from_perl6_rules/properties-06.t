use v6-alpha;
use Test;
plan 178;
ok(!( "\x[7315]"  ~~ m/^<?isInArabic>$/ ), q{Don't match unrelated <?isInArabic>} );
ok("\x[7315]"  ~~ m/^<!isInArabic>.$/, q{Match unrelated negated <?isInArabic>} );
ok("\x[7315]"  ~~ m/^<-isInArabic>$/, q{Match unrelated inverted <?isInArabic>} );
ok("\x[7315]\c[ARABIC NUMBER SIGN]" ~~ m/<?isInArabic>/, q{Match unanchored <?isInArabic>} );

# InArabicPresentationFormsA


ok(!( "\x[8340]"  ~~ m/^<?isInArabicPresentationFormsA>$/ ), q{Don't match unrelated <?isInArabicPresentationFormsA>} );
ok("\x[8340]"  ~~ m/^<!isInArabicPresentationFormsA>.$/, q{Match unrelated negated <?isInArabicPresentationFormsA>} );
ok("\x[8340]"  ~~ m/^<-isInArabicPresentationFormsA>$/, q{Match unrelated inverted <?isInArabicPresentationFormsA>} );

# InArabicPresentationFormsB


ok(!( "\x[BEEC]"  ~~ m/^<?isInArabicPresentationFormsB>$/ ), q{Don't match unrelated <?isInArabicPresentationFormsB>} );
ok("\x[BEEC]"  ~~ m/^<!isInArabicPresentationFormsB>.$/, q{Match unrelated negated <?isInArabicPresentationFormsB>} );
ok("\x[BEEC]"  ~~ m/^<-isInArabicPresentationFormsB>$/, q{Match unrelated inverted <?isInArabicPresentationFormsB>} );

# InArmenian


ok("\x[0530]" ~~ m/^<?isInArmenian>$/, q{Match <?isInArmenian>} );
ok(!( "\x[0530]" ~~ m/^<!isInArmenian>.$/ ), q{Don't match negated <?isInArmenian>} );
ok(!( "\x[0530]" ~~ m/^<-isInArmenian>$/ ), q{Don't match inverted <?isInArmenian>} );
ok(!( "\x[3B0D]"  ~~ m/^<?isInArmenian>$/ ), q{Don't match unrelated <?isInArmenian>} );
ok("\x[3B0D]"  ~~ m/^<!isInArmenian>.$/, q{Match unrelated negated <?isInArmenian>} );
ok("\x[3B0D]"  ~~ m/^<-isInArmenian>$/, q{Match unrelated inverted <?isInArmenian>} );
ok("\x[3B0D]\x[0530]" ~~ m/<?isInArmenian>/, q{Match unanchored <?isInArmenian>} );

# InArrows


ok("\c[LEFTWARDS ARROW]" ~~ m/^<?isInArrows>$/, q{Match <?isInArrows>} );
ok(!( "\c[LEFTWARDS ARROW]" ~~ m/^<!isInArrows>.$/ ), q{Don't match negated <?isInArrows>} );
ok(!( "\c[LEFTWARDS ARROW]" ~~ m/^<-isInArrows>$/ ), q{Don't match inverted <?isInArrows>} );
ok(!( "\x[C401]"  ~~ m/^<?isInArrows>$/ ), q{Don't match unrelated <?isInArrows>} );
ok("\x[C401]"  ~~ m/^<!isInArrows>.$/, q{Match unrelated negated <?isInArrows>} );
ok("\x[C401]"  ~~ m/^<-isInArrows>$/, q{Match unrelated inverted <?isInArrows>} );
ok("\x[C401]\c[LEFTWARDS ARROW]" ~~ m/<?isInArrows>/, q{Match unanchored <?isInArrows>} );

# InBasicLatin


ok("\c[NULL]" ~~ m/^<?isInBasicLatin>$/, q{Match <?isInBasicLatin>} );
ok(!( "\c[NULL]" ~~ m/^<!isInBasicLatin>.$/ ), q{Don't match negated <?isInBasicLatin>} );
ok(!( "\c[NULL]" ~~ m/^<-isInBasicLatin>$/ ), q{Don't match inverted <?isInBasicLatin>} );
ok(!( "\x[46EA]"  ~~ m/^<?isInBasicLatin>$/ ), q{Don't match unrelated <?isInBasicLatin>} );
ok("\x[46EA]"  ~~ m/^<!isInBasicLatin>.$/, q{Match unrelated negated <?isInBasicLatin>} );
ok("\x[46EA]"  ~~ m/^<-isInBasicLatin>$/, q{Match unrelated inverted <?isInBasicLatin>} );
ok("\x[46EA]\c[NULL]" ~~ m/<?isInBasicLatin>/, q{Match unanchored <?isInBasicLatin>} );

# InBengali


ok("\x[0980]" ~~ m/^<?isInBengali>$/, q{Match <?isInBengali>} );
ok(!( "\x[0980]" ~~ m/^<!isInBengali>.$/ ), q{Don't match negated <?isInBengali>} );
ok(!( "\x[0980]" ~~ m/^<-isInBengali>$/ ), q{Don't match inverted <?isInBengali>} );
ok(!( "\c[YI SYLLABLE HMY]"  ~~ m/^<?isInBengali>$/ ), q{Don't match unrelated <?isInBengali>} );
ok("\c[YI SYLLABLE HMY]"  ~~ m/^<!isInBengali>.$/, q{Match unrelated negated <?isInBengali>} );
ok("\c[YI SYLLABLE HMY]"  ~~ m/^<-isInBengali>$/, q{Match unrelated inverted <?isInBengali>} );
ok("\c[YI SYLLABLE HMY]\x[0980]" ~~ m/<?isInBengali>/, q{Match unanchored <?isInBengali>} );

# InBlockElements


ok("\c[UPPER HALF BLOCK]" ~~ m/^<?isInBlockElements>$/, q{Match <?isInBlockElements>} );
ok(!( "\c[UPPER HALF BLOCK]" ~~ m/^<!isInBlockElements>.$/ ), q{Don't match negated <?isInBlockElements>} );
ok(!( "\c[UPPER HALF BLOCK]" ~~ m/^<-isInBlockElements>$/ ), q{Don't match inverted <?isInBlockElements>} );
ok(!( "\x[5F41]"  ~~ m/^<?isInBlockElements>$/ ), q{Don't match unrelated <?isInBlockElements>} );
ok("\x[5F41]"  ~~ m/^<!isInBlockElements>.$/, q{Match unrelated negated <?isInBlockElements>} );
ok("\x[5F41]"  ~~ m/^<-isInBlockElements>$/, q{Match unrelated inverted <?isInBlockElements>} );
ok("\x[5F41]\c[UPPER HALF BLOCK]" ~~ m/<?isInBlockElements>/, q{Match unanchored <?isInBlockElements>} );

# InBopomofo


ok("\x[3100]" ~~ m/^<?isInBopomofo>$/, q{Match <?isInBopomofo>} );
ok(!( "\x[3100]" ~~ m/^<!isInBopomofo>.$/ ), q{Don't match negated <?isInBopomofo>} );
ok(!( "\x[3100]" ~~ m/^<-isInBopomofo>$/ ), q{Don't match inverted <?isInBopomofo>} );
ok(!( "\x[9F8E]"  ~~ m/^<?isInBopomofo>$/ ), q{Don't match unrelated <?isInBopomofo>} );
ok("\x[9F8E]"  ~~ m/^<!isInBopomofo>.$/, q{Match unrelated negated <?isInBopomofo>} );
ok("\x[9F8E]"  ~~ m/^<-isInBopomofo>$/, q{Match unrelated inverted <?isInBopomofo>} );
ok("\x[9F8E]\x[3100]" ~~ m/<?isInBopomofo>/, q{Match unanchored <?isInBopomofo>} );

# InBopomofoExtended


ok("\c[BOPOMOFO LETTER BU]" ~~ m/^<?isInBopomofoExtended>$/, q{Match <?isInBopomofoExtended>} );
ok(!( "\c[BOPOMOFO LETTER BU]" ~~ m/^<!isInBopomofoExtended>.$/ ), q{Don't match negated <?isInBopomofoExtended>} );
ok(!( "\c[BOPOMOFO LETTER BU]" ~~ m/^<-isInBopomofoExtended>$/ ), q{Don't match inverted <?isInBopomofoExtended>} );
ok(!( "\x[43A6]"  ~~ m/^<?isInBopomofoExtended>$/ ), q{Don't match unrelated <?isInBopomofoExtended>} );
ok("\x[43A6]"  ~~ m/^<!isInBopomofoExtended>.$/, q{Match unrelated negated <?isInBopomofoExtended>} );
ok("\x[43A6]"  ~~ m/^<-isInBopomofoExtended>$/, q{Match unrelated inverted <?isInBopomofoExtended>} );
ok("\x[43A6]\c[BOPOMOFO LETTER BU]" ~~ m/<?isInBopomofoExtended>/, q{Match unanchored <?isInBopomofoExtended>} );

# InBoxDrawing


ok("\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<?isInBoxDrawing>$/, q{Match <?isInBoxDrawing>} );
ok(!( "\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<!isInBoxDrawing>.$/ ), q{Don't match negated <?isInBoxDrawing>} );
ok(!( "\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/^<-isInBoxDrawing>$/ ), q{Don't match inverted <?isInBoxDrawing>} );
ok(!( "\x[7865]"  ~~ m/^<?isInBoxDrawing>$/ ), q{Don't match unrelated <?isInBoxDrawing>} );
ok("\x[7865]"  ~~ m/^<!isInBoxDrawing>.$/, q{Match unrelated negated <?isInBoxDrawing>} );
ok("\x[7865]"  ~~ m/^<-isInBoxDrawing>$/, q{Match unrelated inverted <?isInBoxDrawing>} );
ok("\x[7865]\c[BOX DRAWINGS LIGHT HORIZONTAL]" ~~ m/<?isInBoxDrawing>/, q{Match unanchored <?isInBoxDrawing>} );

# InBraillePatterns


ok("\c[BRAILLE PATTERN BLANK]" ~~ m/^<?isInBraillePatterns>$/, q{Match <?isInBraillePatterns>} );
ok(!( "\c[BRAILLE PATTERN BLANK]" ~~ m/^<!isInBraillePatterns>.$/ ), q{Don't match negated <?isInBraillePatterns>} );
ok(!( "\c[BRAILLE PATTERN BLANK]" ~~ m/^<-isInBraillePatterns>$/ ), q{Don't match inverted <?isInBraillePatterns>} );
ok(!( "\c[THAI CHARACTER KHO KHAI]"  ~~ m/^<?isInBraillePatterns>$/ ), q{Don't match unrelated <?isInBraillePatterns>} );
ok("\c[THAI CHARACTER KHO KHAI]"  ~~ m/^<!isInBraillePatterns>.$/, q{Match unrelated negated <?isInBraillePatterns>} );
ok("\c[THAI CHARACTER KHO KHAI]"  ~~ m/^<-isInBraillePatterns>$/, q{Match unrelated inverted <?isInBraillePatterns>} );
ok("\c[THAI CHARACTER KHO KHAI]\c[BRAILLE PATTERN BLANK]" ~~ m/<?isInBraillePatterns>/, q{Match unanchored <?isInBraillePatterns>} );

# InBuhid


ok("\c[BUHID LETTER A]" ~~ m/^<?isInBuhid>$/, q{Match <?isInBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<!isInBuhid>.$/ ), q{Don't match negated <?isInBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<-isInBuhid>$/ ), q{Don't match inverted <?isInBuhid>} );
ok(!( "\x[D208]"  ~~ m/^<?isInBuhid>$/ ), q{Don't match unrelated <?isInBuhid>} );
ok("\x[D208]"  ~~ m/^<!isInBuhid>.$/, q{Match unrelated negated <?isInBuhid>} );
ok("\x[D208]"  ~~ m/^<-isInBuhid>$/, q{Match unrelated inverted <?isInBuhid>} );
ok("\x[D208]\c[BUHID LETTER A]" ~~ m/<?isInBuhid>/, q{Match unanchored <?isInBuhid>} );

# InByzantineMusicalSymbols


ok(!( "\x[9B1D]"  ~~ m/^<?isInByzantineMusicalSymbols>$/ ), q{Don't match unrelated <?isInByzantineMusicalSymbols>} );
ok("\x[9B1D]"  ~~ m/^<!isInByzantineMusicalSymbols>.$/, q{Match unrelated negated <?isInByzantineMusicalSymbols>} );
ok("\x[9B1D]"  ~~ m/^<-isInByzantineMusicalSymbols>$/, q{Match unrelated inverted <?isInByzantineMusicalSymbols>} );

# InCJKCompatibility


ok("\c[SQUARE APAATO]" ~~ m/^<?isInCJKCompatibility>$/, q{Match <?isInCJKCompatibility>} );
ok(!( "\c[SQUARE APAATO]" ~~ m/^<!isInCJKCompatibility>.$/ ), q{Don't match negated <?isInCJKCompatibility>} );
ok(!( "\c[SQUARE APAATO]" ~~ m/^<-isInCJKCompatibility>$/ ), q{Don't match inverted <?isInCJKCompatibility>} );
ok(!( "\x[B8A5]"  ~~ m/^<?isInCJKCompatibility>$/ ), q{Don't match unrelated <?isInCJKCompatibility>} );
ok("\x[B8A5]"  ~~ m/^<!isInCJKCompatibility>.$/, q{Match unrelated negated <?isInCJKCompatibility>} );
ok("\x[B8A5]"  ~~ m/^<-isInCJKCompatibility>$/, q{Match unrelated inverted <?isInCJKCompatibility>} );
ok("\x[B8A5]\c[SQUARE APAATO]" ~~ m/<?isInCJKCompatibility>/, q{Match unanchored <?isInCJKCompatibility>} );

# InCJKCompatibilityForms


ok(!( "\x[3528]"  ~~ m/^<?isInCJKCompatibilityForms>$/ ), q{Don't match unrelated <?isInCJKCompatibilityForms>} );
ok("\x[3528]"  ~~ m/^<!isInCJKCompatibilityForms>.$/, q{Match unrelated negated <?isInCJKCompatibilityForms>} );
ok("\x[3528]"  ~~ m/^<-isInCJKCompatibilityForms>$/, q{Match unrelated inverted <?isInCJKCompatibilityForms>} );

# InCJKCompatibilityIdeographs


ok(!( "\x[69F7]"  ~~ m/^<?isInCJKCompatibilityIdeographs>$/ ), q{Don't match unrelated <?isInCJKCompatibilityIdeographs>} );
ok("\x[69F7]"  ~~ m/^<!isInCJKCompatibilityIdeographs>.$/, q{Match unrelated negated <?isInCJKCompatibilityIdeographs>} );
ok("\x[69F7]"  ~~ m/^<-isInCJKCompatibilityIdeographs>$/, q{Match unrelated inverted <?isInCJKCompatibilityIdeographs>} );

# InCJKCompatibilityIdeographsSupplement


ok(!( "\c[CANADIAN SYLLABICS NUNAVIK HO]"  ~~ m/^<?isInCJKCompatibilityIdeographsSupplement>$/ ), q{Don't match unrelated <?isInCJKCompatibilityIdeographsSupplement>} );
ok("\c[CANADIAN SYLLABICS NUNAVIK HO]"  ~~ m/^<!isInCJKCompatibilityIdeographsSupplement>.$/, q{Match unrelated negated <?isInCJKCompatibilityIdeographsSupplement>} );
ok("\c[CANADIAN SYLLABICS NUNAVIK HO]"  ~~ m/^<-isInCJKCompatibilityIdeographsSupplement>$/, q{Match unrelated inverted <?isInCJKCompatibilityIdeographsSupplement>} );

# InCJKRadicalsSupplement


ok("\c[CJK RADICAL REPEAT]" ~~ m/^<?isInCJKRadicalsSupplement>$/, q{Match <?isInCJKRadicalsSupplement>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<!isInCJKRadicalsSupplement>.$/ ), q{Don't match negated <?isInCJKRadicalsSupplement>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<-isInCJKRadicalsSupplement>$/ ), q{Don't match inverted <?isInCJKRadicalsSupplement>} );
ok(!( "\x[37B4]"  ~~ m/^<?isInCJKRadicalsSupplement>$/ ), q{Don't match unrelated <?isInCJKRadicalsSupplement>} );
ok("\x[37B4]"  ~~ m/^<!isInCJKRadicalsSupplement>.$/, q{Match unrelated negated <?isInCJKRadicalsSupplement>} );
ok("\x[37B4]"  ~~ m/^<-isInCJKRadicalsSupplement>$/, q{Match unrelated inverted <?isInCJKRadicalsSupplement>} );
ok("\x[37B4]\c[CJK RADICAL REPEAT]" ~~ m/<?isInCJKRadicalsSupplement>/, q{Match unanchored <?isInCJKRadicalsSupplement>} );

# InCJKSymbolsAndPunctuation


ok("\c[IDEOGRAPHIC SPACE]" ~~ m/^<?isInCJKSymbolsAndPunctuation>$/, q{Match <?isInCJKSymbolsAndPunctuation>} );
ok(!( "\c[IDEOGRAPHIC SPACE]" ~~ m/^<!isInCJKSymbolsAndPunctuation>.$/ ), q{Don't match negated <?isInCJKSymbolsAndPunctuation>} );
ok(!( "\c[IDEOGRAPHIC SPACE]" ~~ m/^<-isInCJKSymbolsAndPunctuation>$/ ), q{Don't match inverted <?isInCJKSymbolsAndPunctuation>} );
ok(!( "\x[80AA]"  ~~ m/^<?isInCJKSymbolsAndPunctuation>$/ ), q{Don't match unrelated <?isInCJKSymbolsAndPunctuation>} );
ok("\x[80AA]"  ~~ m/^<!isInCJKSymbolsAndPunctuation>.$/, q{Match unrelated negated <?isInCJKSymbolsAndPunctuation>} );
ok("\x[80AA]"  ~~ m/^<-isInCJKSymbolsAndPunctuation>$/, q{Match unrelated inverted <?isInCJKSymbolsAndPunctuation>} );
ok("\x[80AA]\c[IDEOGRAPHIC SPACE]" ~~ m/<?isInCJKSymbolsAndPunctuation>/, q{Match unanchored <?isInCJKSymbolsAndPunctuation>} );

# InCJKUnifiedIdeographs


ok("\x[4E00]" ~~ m/^<?isInCJKUnifiedIdeographs>$/, q{Match <?isInCJKUnifiedIdeographs>} );
ok(!( "\x[4E00]" ~~ m/^<!isInCJKUnifiedIdeographs>.$/ ), q{Don't match negated <?isInCJKUnifiedIdeographs>} );
ok(!( "\x[4E00]" ~~ m/^<-isInCJKUnifiedIdeographs>$/ ), q{Don't match inverted <?isInCJKUnifiedIdeographs>} );
ok(!( "\x[3613]"  ~~ m/^<?isInCJKUnifiedIdeographs>$/ ), q{Don't match unrelated <?isInCJKUnifiedIdeographs>} );
ok("\x[3613]"  ~~ m/^<!isInCJKUnifiedIdeographs>.$/, q{Match unrelated negated <?isInCJKUnifiedIdeographs>} );
ok("\x[3613]"  ~~ m/^<-isInCJKUnifiedIdeographs>$/, q{Match unrelated inverted <?isInCJKUnifiedIdeographs>} );
ok("\x[3613]\x[4E00]" ~~ m/<?isInCJKUnifiedIdeographs>/, q{Match unanchored <?isInCJKUnifiedIdeographs>} );

# InCJKUnifiedIdeographsExtensionA


ok("\x[3400]" ~~ m/^<?isInCJKUnifiedIdeographsExtensionA>$/, q{Match <?isInCJKUnifiedIdeographsExtensionA>} );
ok(!( "\x[3400]" ~~ m/^<!isInCJKUnifiedIdeographsExtensionA>.$/ ), q{Don't match negated <?isInCJKUnifiedIdeographsExtensionA>} );
ok(!( "\x[3400]" ~~ m/^<-isInCJKUnifiedIdeographsExtensionA>$/ ), q{Don't match inverted <?isInCJKUnifiedIdeographsExtensionA>} );
ok(!( "\c[SQUARE HOORU]"  ~~ m/^<?isInCJKUnifiedIdeographsExtensionA>$/ ), q{Don't match unrelated <?isInCJKUnifiedIdeographsExtensionA>} );
ok("\c[SQUARE HOORU]"  ~~ m/^<!isInCJKUnifiedIdeographsExtensionA>.$/, q{Match unrelated negated <?isInCJKUnifiedIdeographsExtensionA>} );
ok("\c[SQUARE HOORU]"  ~~ m/^<-isInCJKUnifiedIdeographsExtensionA>$/, q{Match unrelated inverted <?isInCJKUnifiedIdeographsExtensionA>} );
ok("\c[SQUARE HOORU]\x[3400]" ~~ m/<?isInCJKUnifiedIdeographsExtensionA>/, q{Match unanchored <?isInCJKUnifiedIdeographsExtensionA>} );

# InCJKUnifiedIdeographsExtensionB


ok(!( "\x[AC3B]"  ~~ m/^<?isInCJKUnifiedIdeographsExtensionB>$/ ), q{Don't match unrelated <?isInCJKUnifiedIdeographsExtensionB>} );
ok("\x[AC3B]"  ~~ m/^<!isInCJKUnifiedIdeographsExtensionB>.$/, q{Match unrelated negated <?isInCJKUnifiedIdeographsExtensionB>} );
ok("\x[AC3B]"  ~~ m/^<-isInCJKUnifiedIdeographsExtensionB>$/, q{Match unrelated inverted <?isInCJKUnifiedIdeographsExtensionB>} );

# InCherokee


ok("\c[CHEROKEE LETTER A]" ~~ m/^<?isInCherokee>$/, q{Match <?isInCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<!isInCherokee>.$/ ), q{Don't match negated <?isInCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<-isInCherokee>$/ ), q{Don't match inverted <?isInCherokee>} );
ok(!( "\x[985F]"  ~~ m/^<?isInCherokee>$/ ), q{Don't match unrelated <?isInCherokee>} );
ok("\x[985F]"  ~~ m/^<!isInCherokee>.$/, q{Match unrelated negated <?isInCherokee>} );
ok("\x[985F]"  ~~ m/^<-isInCherokee>$/, q{Match unrelated inverted <?isInCherokee>} );
ok("\x[985F]\c[CHEROKEE LETTER A]" ~~ m/<?isInCherokee>/, q{Match unanchored <?isInCherokee>} );

# InCombiningDiacriticalMarks


ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isInCombiningDiacriticalMarks>$/, q{Match <?isInCombiningDiacriticalMarks>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isInCombiningDiacriticalMarks>.$/ ), q{Don't match negated <?isInCombiningDiacriticalMarks>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isInCombiningDiacriticalMarks>$/ ), q{Don't match inverted <?isInCombiningDiacriticalMarks>} );
ok(!( "\x[76DA]"  ~~ m/^<?isInCombiningDiacriticalMarks>$/ ), q{Don't match unrelated <?isInCombiningDiacriticalMarks>} );
ok("\x[76DA]"  ~~ m/^<!isInCombiningDiacriticalMarks>.$/, q{Match unrelated negated <?isInCombiningDiacriticalMarks>} );
ok("\x[76DA]"  ~~ m/^<-isInCombiningDiacriticalMarks>$/, q{Match unrelated inverted <?isInCombiningDiacriticalMarks>} );
ok("\x[76DA]\c[COMBINING GRAVE ACCENT]" ~~ m/<?isInCombiningDiacriticalMarks>/, q{Match unanchored <?isInCombiningDiacriticalMarks>} );

# InCombiningDiacriticalMarksforSymbols


ok("\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<?isInCombiningDiacriticalMarksforSymbols>$/, q{Match <?isInCombiningDiacriticalMarksforSymbols>} );
ok(!( "\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<!isInCombiningDiacriticalMarksforSymbols>.$/ ), q{Don't match negated <?isInCombiningDiacriticalMarksforSymbols>} );
ok(!( "\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<-isInCombiningDiacriticalMarksforSymbols>$/ ), q{Don't match inverted <?isInCombiningDiacriticalMarksforSymbols>} );
ok(!( "\x[7345]"  ~~ m/^<?isInCombiningDiacriticalMarksforSymbols>$/ ), q{Don't match unrelated <?isInCombiningDiacriticalMarksforSymbols>} );
ok("\x[7345]"  ~~ m/^<!isInCombiningDiacriticalMarksforSymbols>.$/, q{Match unrelated negated <?isInCombiningDiacriticalMarksforSymbols>} );
ok("\x[7345]"  ~~ m/^<-isInCombiningDiacriticalMarksforSymbols>$/, q{Match unrelated inverted <?isInCombiningDiacriticalMarksforSymbols>} );
ok("\x[7345]\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/<?isInCombiningDiacriticalMarksforSymbols>/, q{Match unanchored <?isInCombiningDiacriticalMarksforSymbols>} );

# InCombiningHalfMarks


ok(!( "\x[6C2E]"  ~~ m/^<?isInCombiningHalfMarks>$/ ), q{Don't match unrelated <?isInCombiningHalfMarks>} );
ok("\x[6C2E]"  ~~ m/^<!isInCombiningHalfMarks>.$/, q{Match unrelated negated <?isInCombiningHalfMarks>} );
ok("\x[6C2E]"  ~~ m/^<-isInCombiningHalfMarks>$/, q{Match unrelated inverted <?isInCombiningHalfMarks>} );

# InControlPictures


ok("\c[SYMBOL FOR NULL]" ~~ m/^<?isInControlPictures>$/, q{Match <?isInControlPictures>} );
ok(!( "\c[SYMBOL FOR NULL]" ~~ m/^<!isInControlPictures>.$/ ), q{Don't match negated <?isInControlPictures>} );
ok(!( "\c[SYMBOL FOR NULL]" ~~ m/^<-isInControlPictures>$/ ), q{Don't match inverted <?isInControlPictures>} );
ok(!( "\x[BCE2]"  ~~ m/^<?isInControlPictures>$/ ), q{Don't match unrelated <?isInControlPictures>} );
ok("\x[BCE2]"  ~~ m/^<!isInControlPictures>.$/, q{Match unrelated negated <?isInControlPictures>} );
ok("\x[BCE2]"  ~~ m/^<-isInControlPictures>$/, q{Match unrelated inverted <?isInControlPictures>} );
ok("\x[BCE2]\c[SYMBOL FOR NULL]" ~~ m/<?isInControlPictures>/, q{Match unanchored <?isInControlPictures>} );

# InCurrencySymbols


ok("\c[EURO-CURRENCY SIGN]" ~~ m/^<?isInCurrencySymbols>$/, q{Match <?isInCurrencySymbols>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<!isInCurrencySymbols>.$/ ), q{Don't match negated <?isInCurrencySymbols>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<-isInCurrencySymbols>$/ ), q{Don't match inverted <?isInCurrencySymbols>} );
ok(!( "\x[8596]"  ~~ m/^<?isInCurrencySymbols>$/ ), q{Don't match unrelated <?isInCurrencySymbols>} );
ok("\x[8596]"  ~~ m/^<!isInCurrencySymbols>.$/, q{Match unrelated negated <?isInCurrencySymbols>} );
ok("\x[8596]"  ~~ m/^<-isInCurrencySymbols>$/, q{Match unrelated inverted <?isInCurrencySymbols>} );
ok("\x[8596]\c[EURO-CURRENCY SIGN]" ~~ m/<?isInCurrencySymbols>/, q{Match unanchored <?isInCurrencySymbols>} );

# InCyrillic


ok("\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<?isInCyrillic>$/, q{Match <?isInCyrillic>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<!isInCyrillic>.$/ ), q{Don't match negated <?isInCyrillic>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<-isInCyrillic>$/ ), q{Don't match inverted <?isInCyrillic>} );
ok(!( "\x[51B2]"  ~~ m/^<?isInCyrillic>$/ ), q{Don't match unrelated <?isInCyrillic>} );
ok("\x[51B2]"  ~~ m/^<!isInCyrillic>.$/, q{Match unrelated negated <?isInCyrillic>} );
ok("\x[51B2]"  ~~ m/^<-isInCyrillic>$/, q{Match unrelated inverted <?isInCyrillic>} );
ok("\x[51B2]\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/<?isInCyrillic>/, q{Match unanchored <?isInCyrillic>} );

# InCyrillicSupplementary


ok("\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<?isInCyrillicSupplementary>$/, q{Match <?isInCyrillicSupplementary>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<!isInCyrillicSupplementary>.$/ ), q{Don't match negated <?isInCyrillicSupplementary>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<-isInCyrillicSupplementary>$/ ), q{Don't match inverted <?isInCyrillicSupplementary>} );
