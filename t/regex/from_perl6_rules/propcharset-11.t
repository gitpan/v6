use v6-alpha;
use Test;
plan 173;
ok("\c[CIRCLED IDEOGRAPH TWO]"  ~~ m/^<!isInLetterlikeSymbols>.$/, q{Match unrelated externally inverted <isInLetterlikeSymbols>} );
ok("\c[CIRCLED IDEOGRAPH TWO]"  ~~ m/^<-isInLetterlikeSymbols>$/, q{Match unrelated internally inverted <isInLetterlikeSymbols>} );
ok("\c[CIRCLED IDEOGRAPH TWO]\c[ACCOUNT OF]" ~~ m/<+isInLetterlikeSymbols>/, q{Match unanchored <isInLetterlikeSymbols>} );

# InLowSurrogates


ok(!( "\x[B611]"  ~~ m/^<+isInLowSurrogates>$/ ), q{Don't match unrelated <isInLowSurrogates>} );
ok("\x[B611]"  ~~ m/^<!isInLowSurrogates>.$/, q{Match unrelated externally inverted <isInLowSurrogates>} );
ok("\x[B611]"  ~~ m/^<-isInLowSurrogates>$/, q{Match unrelated internally inverted <isInLowSurrogates>} );

# InMalayalam


ok("\x[0D00]" ~~ m/^<+isInMalayalam>$/, q{Match <isInMalayalam>} );
ok("\x[0D00]" ~~ m/^<[A]+isInMalayalam>$/, q{Match compound <isInMalayalam>} );
ok(!( "\x[0D00]" ~~ m/^<!isInMalayalam>.$/ ), q{Don't match externally inverted <isInMalayalam>} );
ok(!( "\x[0D00]" ~~ m/^<[A]-isInMalayalam>$/ ), q{Don't match compound inverted <isInMalayalam>} );
ok(!( "\x[0D00]" ~~ m/^<-isInMalayalam>$/ ), q{Don't match internally inverted <isInMalayalam>} );
ok(!( "\x[C011]"  ~~ m/^<+isInMalayalam>$/ ), q{Don't match unrelated <isInMalayalam>} );
ok("\x[C011]"  ~~ m/^<!isInMalayalam>.$/, q{Match unrelated externally inverted <isInMalayalam>} );
ok("\x[C011]"  ~~ m/^<-isInMalayalam>$/, q{Match unrelated internally inverted <isInMalayalam>} );
ok("\x[C011]\x[0D00]" ~~ m/<+isInMalayalam>/, q{Match unanchored <isInMalayalam>} );

# InMathematicalAlphanumericSymbols


ok(!( "\x[73FA]"  ~~ m/^<+isInMathematicalAlphanumericSymbols>$/ ), q{Don't match unrelated <isInMathematicalAlphanumericSymbols>} );
ok("\x[73FA]"  ~~ m/^<!isInMathematicalAlphanumericSymbols>.$/, q{Match unrelated externally inverted <isInMathematicalAlphanumericSymbols>} );
ok("\x[73FA]"  ~~ m/^<-isInMathematicalAlphanumericSymbols>$/, q{Match unrelated internally inverted <isInMathematicalAlphanumericSymbols>} );

# InMathematicalOperators


ok("\c[FOR ALL]" ~~ m/^<+isInMathematicalOperators>$/, q{Match <isInMathematicalOperators>} );
ok("\c[FOR ALL]" ~~ m/^<[A]+isInMathematicalOperators>$/, q{Match compound <isInMathematicalOperators>} );
ok(!( "\c[FOR ALL]" ~~ m/^<!isInMathematicalOperators>.$/ ), q{Don't match externally inverted <isInMathematicalOperators>} );
ok(!( "\c[FOR ALL]" ~~ m/^<[A]-isInMathematicalOperators>$/ ), q{Don't match compound inverted <isInMathematicalOperators>} );
ok(!( "\c[FOR ALL]" ~~ m/^<-isInMathematicalOperators>$/ ), q{Don't match internally inverted <isInMathematicalOperators>} );
ok(!( "\x[B389]"  ~~ m/^<+isInMathematicalOperators>$/ ), q{Don't match unrelated <isInMathematicalOperators>} );
ok("\x[B389]"  ~~ m/^<!isInMathematicalOperators>.$/, q{Match unrelated externally inverted <isInMathematicalOperators>} );
ok("\x[B389]"  ~~ m/^<-isInMathematicalOperators>$/, q{Match unrelated internally inverted <isInMathematicalOperators>} );
ok("\x[B389]\c[FOR ALL]" ~~ m/<+isInMathematicalOperators>/, q{Match unanchored <isInMathematicalOperators>} );

# InMiscellaneousMathematicalSymbolsA


ok("\x[27C0]" ~~ m/^<+isInMiscellaneousMathematicalSymbolsA>$/, q{Match <isInMiscellaneousMathematicalSymbolsA>} );
ok("\x[27C0]" ~~ m/^<[A]+isInMiscellaneousMathematicalSymbolsA>$/, q{Match compound <isInMiscellaneousMathematicalSymbolsA>} );
ok(!( "\x[27C0]" ~~ m/^<!isInMiscellaneousMathematicalSymbolsA>.$/ ), q{Don't match externally inverted <isInMiscellaneousMathematicalSymbolsA>} );
ok(!( "\x[27C0]" ~~ m/^<[A]-isInMiscellaneousMathematicalSymbolsA>$/ ), q{Don't match compound inverted <isInMiscellaneousMathematicalSymbolsA>} );
ok(!( "\x[27C0]" ~~ m/^<-isInMiscellaneousMathematicalSymbolsA>$/ ), q{Don't match internally inverted <isInMiscellaneousMathematicalSymbolsA>} );
ok(!( "\x[AAB2]"  ~~ m/^<+isInMiscellaneousMathematicalSymbolsA>$/ ), q{Don't match unrelated <isInMiscellaneousMathematicalSymbolsA>} );
ok("\x[AAB2]"  ~~ m/^<!isInMiscellaneousMathematicalSymbolsA>.$/, q{Match unrelated externally inverted <isInMiscellaneousMathematicalSymbolsA>} );
ok("\x[AAB2]"  ~~ m/^<-isInMiscellaneousMathematicalSymbolsA>$/, q{Match unrelated internally inverted <isInMiscellaneousMathematicalSymbolsA>} );
ok("\x[AAB2]\x[27C0]" ~~ m/<+isInMiscellaneousMathematicalSymbolsA>/, q{Match unanchored <isInMiscellaneousMathematicalSymbolsA>} );

# InMiscellaneousMathematicalSymbolsB


ok("\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<+isInMiscellaneousMathematicalSymbolsB>$/, q{Match <isInMiscellaneousMathematicalSymbolsB>} );
ok("\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<[A]+isInMiscellaneousMathematicalSymbolsB>$/, q{Match compound <isInMiscellaneousMathematicalSymbolsB>} );
ok(!( "\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<!isInMiscellaneousMathematicalSymbolsB>.$/ ), q{Don't match externally inverted <isInMiscellaneousMathematicalSymbolsB>} );
ok(!( "\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<[A]-isInMiscellaneousMathematicalSymbolsB>$/ ), q{Don't match compound inverted <isInMiscellaneousMathematicalSymbolsB>} );
ok(!( "\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<-isInMiscellaneousMathematicalSymbolsB>$/ ), q{Don't match internally inverted <isInMiscellaneousMathematicalSymbolsB>} );
ok(!( "\x[5793]"  ~~ m/^<+isInMiscellaneousMathematicalSymbolsB>$/ ), q{Don't match unrelated <isInMiscellaneousMathematicalSymbolsB>} );
ok("\x[5793]"  ~~ m/^<!isInMiscellaneousMathematicalSymbolsB>.$/, q{Match unrelated externally inverted <isInMiscellaneousMathematicalSymbolsB>} );
ok("\x[5793]"  ~~ m/^<-isInMiscellaneousMathematicalSymbolsB>$/, q{Match unrelated internally inverted <isInMiscellaneousMathematicalSymbolsB>} );
ok("\x[5793]\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/<+isInMiscellaneousMathematicalSymbolsB>/, q{Match unanchored <isInMiscellaneousMathematicalSymbolsB>} );

# InMiscellaneousSymbols


ok("\c[BLACK SUN WITH RAYS]" ~~ m/^<+isInMiscellaneousSymbols>$/, q{Match <isInMiscellaneousSymbols>} );
ok("\c[BLACK SUN WITH RAYS]" ~~ m/^<[A]+isInMiscellaneousSymbols>$/, q{Match compound <isInMiscellaneousSymbols>} );
ok(!( "\c[BLACK SUN WITH RAYS]" ~~ m/^<!isInMiscellaneousSymbols>.$/ ), q{Don't match externally inverted <isInMiscellaneousSymbols>} );
ok(!( "\c[BLACK SUN WITH RAYS]" ~~ m/^<[A]-isInMiscellaneousSymbols>$/ ), q{Don't match compound inverted <isInMiscellaneousSymbols>} );
ok(!( "\c[BLACK SUN WITH RAYS]" ~~ m/^<-isInMiscellaneousSymbols>$/ ), q{Don't match internally inverted <isInMiscellaneousSymbols>} );
ok(!( "\x[39D9]"  ~~ m/^<+isInMiscellaneousSymbols>$/ ), q{Don't match unrelated <isInMiscellaneousSymbols>} );
ok("\x[39D9]"  ~~ m/^<!isInMiscellaneousSymbols>.$/, q{Match unrelated externally inverted <isInMiscellaneousSymbols>} );
ok("\x[39D9]"  ~~ m/^<-isInMiscellaneousSymbols>$/, q{Match unrelated internally inverted <isInMiscellaneousSymbols>} );
ok("\x[39D9]\c[BLACK SUN WITH RAYS]" ~~ m/<+isInMiscellaneousSymbols>/, q{Match unanchored <isInMiscellaneousSymbols>} );

# InMiscellaneousTechnical


ok("\c[DIAMETER SIGN]" ~~ m/^<+isInMiscellaneousTechnical>$/, q{Match <isInMiscellaneousTechnical>} );
ok("\c[DIAMETER SIGN]" ~~ m/^<[A]+isInMiscellaneousTechnical>$/, q{Match compound <isInMiscellaneousTechnical>} );
ok(!( "\c[DIAMETER SIGN]" ~~ m/^<!isInMiscellaneousTechnical>.$/ ), q{Don't match externally inverted <isInMiscellaneousTechnical>} );
ok(!( "\c[DIAMETER SIGN]" ~~ m/^<[A]-isInMiscellaneousTechnical>$/ ), q{Don't match compound inverted <isInMiscellaneousTechnical>} );
ok(!( "\c[DIAMETER SIGN]" ~~ m/^<-isInMiscellaneousTechnical>$/ ), q{Don't match internally inverted <isInMiscellaneousTechnical>} );
ok(!( "\x[528A]"  ~~ m/^<+isInMiscellaneousTechnical>$/ ), q{Don't match unrelated <isInMiscellaneousTechnical>} );
ok("\x[528A]"  ~~ m/^<!isInMiscellaneousTechnical>.$/, q{Match unrelated externally inverted <isInMiscellaneousTechnical>} );
ok("\x[528A]"  ~~ m/^<-isInMiscellaneousTechnical>$/, q{Match unrelated internally inverted <isInMiscellaneousTechnical>} );
ok("\x[528A]\c[DIAMETER SIGN]" ~~ m/<+isInMiscellaneousTechnical>/, q{Match unanchored <isInMiscellaneousTechnical>} );

# InMongolian


ok("\c[MONGOLIAN BIRGA]" ~~ m/^<+isInMongolian>$/, q{Match <isInMongolian>} );
ok("\c[MONGOLIAN BIRGA]" ~~ m/^<[A]+isInMongolian>$/, q{Match compound <isInMongolian>} );
ok(!( "\c[MONGOLIAN BIRGA]" ~~ m/^<!isInMongolian>.$/ ), q{Don't match externally inverted <isInMongolian>} );
ok(!( "\c[MONGOLIAN BIRGA]" ~~ m/^<[A]-isInMongolian>$/ ), q{Don't match compound inverted <isInMongolian>} );
ok(!( "\c[MONGOLIAN BIRGA]" ~~ m/^<-isInMongolian>$/ ), q{Don't match internally inverted <isInMongolian>} );
ok(!( "\x[3985]"  ~~ m/^<+isInMongolian>$/ ), q{Don't match unrelated <isInMongolian>} );
ok("\x[3985]"  ~~ m/^<!isInMongolian>.$/, q{Match unrelated externally inverted <isInMongolian>} );
ok("\x[3985]"  ~~ m/^<-isInMongolian>$/, q{Match unrelated internally inverted <isInMongolian>} );
ok("\x[3985]\c[MONGOLIAN BIRGA]" ~~ m/<+isInMongolian>/, q{Match unanchored <isInMongolian>} );

# InMusicalSymbols


ok(!( "\x[7A59]"  ~~ m/^<+isInMusicalSymbols>$/ ), q{Don't match unrelated <isInMusicalSymbols>} );
ok("\x[7A59]"  ~~ m/^<!isInMusicalSymbols>.$/, q{Match unrelated externally inverted <isInMusicalSymbols>} );
ok("\x[7A59]"  ~~ m/^<-isInMusicalSymbols>$/, q{Match unrelated internally inverted <isInMusicalSymbols>} );

# InMyanmar


ok("\c[MYANMAR LETTER KA]" ~~ m/^<+isInMyanmar>$/, q{Match <isInMyanmar>} );
ok("\c[MYANMAR LETTER KA]" ~~ m/^<[A]+isInMyanmar>$/, q{Match compound <isInMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<!isInMyanmar>.$/ ), q{Don't match externally inverted <isInMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<[A]-isInMyanmar>$/ ), q{Don't match compound inverted <isInMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<-isInMyanmar>$/ ), q{Don't match internally inverted <isInMyanmar>} );
ok(!( "\x[5698]"  ~~ m/^<+isInMyanmar>$/ ), q{Don't match unrelated <isInMyanmar>} );
ok("\x[5698]"  ~~ m/^<!isInMyanmar>.$/, q{Match unrelated externally inverted <isInMyanmar>} );
ok("\x[5698]"  ~~ m/^<-isInMyanmar>$/, q{Match unrelated internally inverted <isInMyanmar>} );
ok("\x[5698]\c[MYANMAR LETTER KA]" ~~ m/<+isInMyanmar>/, q{Match unanchored <isInMyanmar>} );

# InNumberForms


ok("\x[2150]" ~~ m/^<+isInNumberForms>$/, q{Match <isInNumberForms>} );
ok("\x[2150]" ~~ m/^<[A]+isInNumberForms>$/, q{Match compound <isInNumberForms>} );
ok(!( "\x[2150]" ~~ m/^<!isInNumberForms>.$/ ), q{Don't match externally inverted <isInNumberForms>} );
ok(!( "\x[2150]" ~~ m/^<[A]-isInNumberForms>$/ ), q{Don't match compound inverted <isInNumberForms>} );
ok(!( "\x[2150]" ~~ m/^<-isInNumberForms>$/ ), q{Don't match internally inverted <isInNumberForms>} );
ok(!( "\x[C41B]"  ~~ m/^<+isInNumberForms>$/ ), q{Don't match unrelated <isInNumberForms>} );
ok("\x[C41B]"  ~~ m/^<!isInNumberForms>.$/, q{Match unrelated externally inverted <isInNumberForms>} );
ok("\x[C41B]"  ~~ m/^<-isInNumberForms>$/, q{Match unrelated internally inverted <isInNumberForms>} );
ok("\x[C41B]\x[2150]" ~~ m/<+isInNumberForms>/, q{Match unanchored <isInNumberForms>} );

# InOgham


ok("\c[OGHAM SPACE MARK]" ~~ m/^<+isInOgham>$/, q{Match <isInOgham>} );
ok("\c[OGHAM SPACE MARK]" ~~ m/^<[A]+isInOgham>$/, q{Match compound <isInOgham>} );
ok(!( "\c[OGHAM SPACE MARK]" ~~ m/^<!isInOgham>.$/ ), q{Don't match externally inverted <isInOgham>} );
ok(!( "\c[OGHAM SPACE MARK]" ~~ m/^<[A]-isInOgham>$/ ), q{Don't match compound inverted <isInOgham>} );
ok(!( "\c[OGHAM SPACE MARK]" ~~ m/^<-isInOgham>$/ ), q{Don't match internally inverted <isInOgham>} );
ok(!( "\x[2C8C]"  ~~ m/^<+isInOgham>$/ ), q{Don't match unrelated <isInOgham>} );
ok("\x[2C8C]"  ~~ m/^<!isInOgham>.$/, q{Match unrelated externally inverted <isInOgham>} );
ok("\x[2C8C]"  ~~ m/^<-isInOgham>$/, q{Match unrelated internally inverted <isInOgham>} );
ok("\x[2C8C]\c[OGHAM SPACE MARK]" ~~ m/<+isInOgham>/, q{Match unanchored <isInOgham>} );

# InOldItalic


ok(!( "\c[YI SYLLABLE MGAT]"  ~~ m/^<+isInOldItalic>$/ ), q{Don't match unrelated <isInOldItalic>} );
ok("\c[YI SYLLABLE MGAT]"  ~~ m/^<!isInOldItalic>.$/, q{Match unrelated externally inverted <isInOldItalic>} );
ok("\c[YI SYLLABLE MGAT]"  ~~ m/^<-isInOldItalic>$/, q{Match unrelated internally inverted <isInOldItalic>} );

# InOpticalCharacterRecognition


ok("\c[OCR HOOK]" ~~ m/^<+isInOpticalCharacterRecognition>$/, q{Match <isInOpticalCharacterRecognition>} );
ok("\c[OCR HOOK]" ~~ m/^<[A]+isInOpticalCharacterRecognition>$/, q{Match compound <isInOpticalCharacterRecognition>} );
ok(!( "\c[OCR HOOK]" ~~ m/^<!isInOpticalCharacterRecognition>.$/ ), q{Don't match externally inverted <isInOpticalCharacterRecognition>} );
ok(!( "\c[OCR HOOK]" ~~ m/^<[A]-isInOpticalCharacterRecognition>$/ ), q{Don't match compound inverted <isInOpticalCharacterRecognition>} );
ok(!( "\c[OCR HOOK]" ~~ m/^<-isInOpticalCharacterRecognition>$/ ), q{Don't match internally inverted <isInOpticalCharacterRecognition>} );
ok(!( "\x[CB83]"  ~~ m/^<+isInOpticalCharacterRecognition>$/ ), q{Don't match unrelated <isInOpticalCharacterRecognition>} );
ok("\x[CB83]"  ~~ m/^<!isInOpticalCharacterRecognition>.$/, q{Match unrelated externally inverted <isInOpticalCharacterRecognition>} );
ok("\x[CB83]"  ~~ m/^<-isInOpticalCharacterRecognition>$/, q{Match unrelated internally inverted <isInOpticalCharacterRecognition>} );
ok("\x[CB83]\c[OCR HOOK]" ~~ m/<+isInOpticalCharacterRecognition>/, q{Match unanchored <isInOpticalCharacterRecognition>} );

# InOriya


ok("\x[0B00]" ~~ m/^<+isInOriya>$/, q{Match <isInOriya>} );
ok("\x[0B00]" ~~ m/^<[A]+isInOriya>$/, q{Match compound <isInOriya>} );
ok(!( "\x[0B00]" ~~ m/^<!isInOriya>.$/ ), q{Don't match externally inverted <isInOriya>} );
ok(!( "\x[0B00]" ~~ m/^<[A]-isInOriya>$/ ), q{Don't match compound inverted <isInOriya>} );
ok(!( "\x[0B00]" ~~ m/^<-isInOriya>$/ ), q{Don't match internally inverted <isInOriya>} );
ok(!( "\x[6CE7]"  ~~ m/^<+isInOriya>$/ ), q{Don't match unrelated <isInOriya>} );
ok("\x[6CE7]"  ~~ m/^<!isInOriya>.$/, q{Match unrelated externally inverted <isInOriya>} );
ok("\x[6CE7]"  ~~ m/^<-isInOriya>$/, q{Match unrelated internally inverted <isInOriya>} );
ok("\x[6CE7]\x[0B00]" ~~ m/<+isInOriya>/, q{Match unanchored <isInOriya>} );

# InPrivateUseArea


ok(!( "\x[7662]"  ~~ m/^<+isInPrivateUseArea>$/ ), q{Don't match unrelated <isInPrivateUseArea>} );
ok("\x[7662]"  ~~ m/^<!isInPrivateUseArea>.$/, q{Match unrelated externally inverted <isInPrivateUseArea>} );
ok("\x[7662]"  ~~ m/^<-isInPrivateUseArea>$/, q{Match unrelated internally inverted <isInPrivateUseArea>} );

# InRunic


ok("\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<+isInRunic>$/, q{Match <isInRunic>} );
ok("\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<[A]+isInRunic>$/, q{Match compound <isInRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<!isInRunic>.$/ ), q{Don't match externally inverted <isInRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<[A]-isInRunic>$/ ), q{Don't match compound inverted <isInRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<-isInRunic>$/ ), q{Don't match internally inverted <isInRunic>} );
ok(!( "\x[47A1]"  ~~ m/^<+isInRunic>$/ ), q{Don't match unrelated <isInRunic>} );
ok("\x[47A1]"  ~~ m/^<!isInRunic>.$/, q{Match unrelated externally inverted <isInRunic>} );
ok("\x[47A1]"  ~~ m/^<-isInRunic>$/, q{Match unrelated internally inverted <isInRunic>} );
ok("\x[47A1]\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/<+isInRunic>/, q{Match unanchored <isInRunic>} );

# InSinhala


ok("\x[0D80]" ~~ m/^<+isInSinhala>$/, q{Match <isInSinhala>} );
ok("\x[0D80]" ~~ m/^<[A]+isInSinhala>$/, q{Match compound <isInSinhala>} );
ok(!( "\x[0D80]" ~~ m/^<!isInSinhala>.$/ ), q{Don't match externally inverted <isInSinhala>} );
ok(!( "\x[0D80]" ~~ m/^<[A]-isInSinhala>$/ ), q{Don't match compound inverted <isInSinhala>} );
ok(!( "\x[0D80]" ~~ m/^<-isInSinhala>$/ ), q{Don't match internally inverted <isInSinhala>} );
ok(!( "\x[1C39]"  ~~ m/^<+isInSinhala>$/ ), q{Don't match unrelated <isInSinhala>} );
ok("\x[1C39]"  ~~ m/^<!isInSinhala>.$/, q{Match unrelated externally inverted <isInSinhala>} );
ok("\x[1C39]"  ~~ m/^<-isInSinhala>$/, q{Match unrelated internally inverted <isInSinhala>} );
ok("\x[1C39]\x[0D80]" ~~ m/<+isInSinhala>/, q{Match unanchored <isInSinhala>} );

# InSmallFormVariants


ok(!( "\c[YI SYLLABLE FAP]"  ~~ m/^<+isInSmallFormVariants>$/ ), q{Don't match unrelated <isInSmallFormVariants>} );
ok("\c[YI SYLLABLE FAP]"  ~~ m/^<!isInSmallFormVariants>.$/, q{Match unrelated externally inverted <isInSmallFormVariants>} );
ok("\c[YI SYLLABLE FAP]"  ~~ m/^<-isInSmallFormVariants>$/, q{Match unrelated internally inverted <isInSmallFormVariants>} );

# InSpacingModifierLetters


ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<+isInSpacingModifierLetters>$/, q{Match <isInSpacingModifierLetters>} );
ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]+isInSpacingModifierLetters>$/, q{Match compound <isInSpacingModifierLetters>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<!isInSpacingModifierLetters>.$/ ), q{Don't match externally inverted <isInSpacingModifierLetters>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]-isInSpacingModifierLetters>$/ ), q{Don't match compound inverted <isInSpacingModifierLetters>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<-isInSpacingModifierLetters>$/ ), q{Don't match internally inverted <isInSpacingModifierLetters>} );
ok(!( "\x[08E8]"  ~~ m/^<+isInSpacingModifierLetters>$/ ), q{Don't match unrelated <isInSpacingModifierLetters>} );
ok("\x[08E8]"  ~~ m/^<!isInSpacingModifierLetters>.$/, q{Match unrelated externally inverted <isInSpacingModifierLetters>} );
ok("\x[08E8]"  ~~ m/^<-isInSpacingModifierLetters>$/, q{Match unrelated internally inverted <isInSpacingModifierLetters>} );
ok("\x[08E8]\c[MODIFIER LETTER SMALL H]" ~~ m/<+isInSpacingModifierLetters>/, q{Match unanchored <isInSpacingModifierLetters>} );

# InSpecials


ok(!( "\x[0C7E]"  ~~ m/^<+isInSpecials>$/ ), q{Don't match unrelated <isInSpecials>} );
ok("\x[0C7E]"  ~~ m/^<!isInSpecials>.$/, q{Match unrelated externally inverted <isInSpecials>} );
ok("\x[0C7E]"  ~~ m/^<-isInSpecials>$/, q{Match unrelated internally inverted <isInSpecials>} );

# InSuperscriptsAndSubscripts


ok("\c[SUPERSCRIPT ZERO]" ~~ m/^<+isInSuperscriptsAndSubscripts>$/, q{Match <isInSuperscriptsAndSubscripts>} );
ok("\c[SUPERSCRIPT ZERO]" ~~ m/^<[A]+isInSuperscriptsAndSubscripts>$/, q{Match compound <isInSuperscriptsAndSubscripts>} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<!isInSuperscriptsAndSubscripts>.$/ ), q{Don't match externally inverted <isInSuperscriptsAndSubscripts>} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<[A]-isInSuperscriptsAndSubscripts>$/ ), q{Don't match compound inverted <isInSuperscriptsAndSubscripts>} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<-isInSuperscriptsAndSubscripts>$/ ), q{Don't match internally inverted <isInSuperscriptsAndSubscripts>} );
ok(!( "\x[D378]"  ~~ m/^<+isInSuperscriptsAndSubscripts>$/ ), q{Don't match unrelated <isInSuperscriptsAndSubscripts>} );
ok("\x[D378]"  ~~ m/^<!isInSuperscriptsAndSubscripts>.$/, q{Match unrelated externally inverted <isInSuperscriptsAndSubscripts>} );
ok("\x[D378]"  ~~ m/^<-isInSuperscriptsAndSubscripts>$/, q{Match unrelated internally inverted <isInSuperscriptsAndSubscripts>} );
ok("\x[D378]\c[SUPERSCRIPT ZERO]" ~~ m/<+isInSuperscriptsAndSubscripts>/, q{Match unanchored <isInSuperscriptsAndSubscripts>} );

# InSupplementalArrowsA


ok("\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<+isInSupplementalArrowsA>$/, q{Match <isInSupplementalArrowsA>} );
ok("\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<[A]+isInSupplementalArrowsA>$/, q{Match compound <isInSupplementalArrowsA>} );
ok(!( "\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<!isInSupplementalArrowsA>.$/ ), q{Don't match externally inverted <isInSupplementalArrowsA>} );
ok(!( "\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<[A]-isInSupplementalArrowsA>$/ ), q{Don't match compound inverted <isInSupplementalArrowsA>} );
ok(!( "\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<-isInSupplementalArrowsA>$/ ), q{Don't match internally inverted <isInSupplementalArrowsA>} );
