use v6-alpha;
use Test;
plan 179;
force_todo(80..81, 118..119, 166..167);ok(!( "\c[KATAKANA LETTER SMALL KU]" ~~ m/^<!isInKatakanaPhoneticExtensions>.$/ ), q{Don't match negated <?isInKatakanaPhoneticExtensions>} );
ok(!( "\c[KATAKANA LETTER SMALL KU]" ~~ m/^<-isInKatakanaPhoneticExtensions>$/ ), q{Don't match inverted <?isInKatakanaPhoneticExtensions>} );
ok(!( "\x[97C2]"  ~~ m/^<?isInKatakanaPhoneticExtensions>$/ ), q{Don't match unrelated <?isInKatakanaPhoneticExtensions>} );
ok("\x[97C2]"  ~~ m/^<!isInKatakanaPhoneticExtensions>.$/, q{Match unrelated negated <?isInKatakanaPhoneticExtensions>} );
ok("\x[97C2]"  ~~ m/^<-isInKatakanaPhoneticExtensions>$/, q{Match unrelated inverted <?isInKatakanaPhoneticExtensions>} );
ok("\x[97C2]\c[KATAKANA LETTER SMALL KU]" ~~ m/<?isInKatakanaPhoneticExtensions>/, q{Match unanchored <?isInKatakanaPhoneticExtensions>} );

# InKhmer


ok("\c[KHMER LETTER KA]" ~~ m/^<?isInKhmer>$/, q{Match <?isInKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<!isInKhmer>.$/ ), q{Don't match negated <?isInKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<-isInKhmer>$/ ), q{Don't match inverted <?isInKhmer>} );
ok(!( "\x[CAFA]"  ~~ m/^<?isInKhmer>$/ ), q{Don't match unrelated <?isInKhmer>} );
ok("\x[CAFA]"  ~~ m/^<!isInKhmer>.$/, q{Match unrelated negated <?isInKhmer>} );
ok("\x[CAFA]"  ~~ m/^<-isInKhmer>$/, q{Match unrelated inverted <?isInKhmer>} );
ok("\x[CAFA]\c[KHMER LETTER KA]" ~~ m/<?isInKhmer>/, q{Match unanchored <?isInKhmer>} );

# InLao


ok("\x[0E80]" ~~ m/^<?isInLao>$/, q{Match <?isInLao>} );
ok(!( "\x[0E80]" ~~ m/^<!isInLao>.$/ ), q{Don't match negated <?isInLao>} );
ok(!( "\x[0E80]" ~~ m/^<-isInLao>$/ ), q{Don't match inverted <?isInLao>} );
ok(!( "\x[07BF]"  ~~ m/^<?isInLao>$/ ), q{Don't match unrelated <?isInLao>} );
ok("\x[07BF]"  ~~ m/^<!isInLao>.$/, q{Match unrelated negated <?isInLao>} );
ok("\x[07BF]"  ~~ m/^<-isInLao>$/, q{Match unrelated inverted <?isInLao>} );
ok("\x[07BF]\x[0E80]" ~~ m/<?isInLao>/, q{Match unanchored <?isInLao>} );

# InLatin1Supplement


ok("\x[0080]" ~~ m/^<?isInLatin1Supplement>$/, q{Match <?isInLatin1Supplement>} );
ok(!( "\x[0080]" ~~ m/^<!isInLatin1Supplement>.$/ ), q{Don't match negated <?isInLatin1Supplement>} );
ok(!( "\x[0080]" ~~ m/^<-isInLatin1Supplement>$/ ), q{Don't match inverted <?isInLatin1Supplement>} );
ok(!( "\x[D062]"  ~~ m/^<?isInLatin1Supplement>$/ ), q{Don't match unrelated <?isInLatin1Supplement>} );
ok("\x[D062]"  ~~ m/^<!isInLatin1Supplement>.$/, q{Match unrelated negated <?isInLatin1Supplement>} );
ok("\x[D062]"  ~~ m/^<-isInLatin1Supplement>$/, q{Match unrelated inverted <?isInLatin1Supplement>} );
ok("\x[D062]\x[0080]" ~~ m/<?isInLatin1Supplement>/, q{Match unanchored <?isInLatin1Supplement>} );

# InLatinExtendedA


ok("\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<?isInLatinExtendedA>$/, q{Match <?isInLatinExtendedA>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<!isInLatinExtendedA>.$/ ), q{Don't match negated <?isInLatinExtendedA>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<-isInLatinExtendedA>$/ ), q{Don't match inverted <?isInLatinExtendedA>} );
ok(!( "\c[IDEOGRAPHIC ANNOTATION EARTH MARK]"  ~~ m/^<?isInLatinExtendedA>$/ ), q{Don't match unrelated <?isInLatinExtendedA>} );
ok("\c[IDEOGRAPHIC ANNOTATION EARTH MARK]"  ~~ m/^<!isInLatinExtendedA>.$/, q{Match unrelated negated <?isInLatinExtendedA>} );
ok("\c[IDEOGRAPHIC ANNOTATION EARTH MARK]"  ~~ m/^<-isInLatinExtendedA>$/, q{Match unrelated inverted <?isInLatinExtendedA>} );
ok("\c[IDEOGRAPHIC ANNOTATION EARTH MARK]\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/<?isInLatinExtendedA>/, q{Match unanchored <?isInLatinExtendedA>} );

# InLatinExtendedAdditional


ok("\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<?isInLatinExtendedAdditional>$/, q{Match <?isInLatinExtendedAdditional>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<!isInLatinExtendedAdditional>.$/ ), q{Don't match negated <?isInLatinExtendedAdditional>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<-isInLatinExtendedAdditional>$/ ), q{Don't match inverted <?isInLatinExtendedAdditional>} );
ok(!( "\x[9A44]"  ~~ m/^<?isInLatinExtendedAdditional>$/ ), q{Don't match unrelated <?isInLatinExtendedAdditional>} );
ok("\x[9A44]"  ~~ m/^<!isInLatinExtendedAdditional>.$/, q{Match unrelated negated <?isInLatinExtendedAdditional>} );
ok("\x[9A44]"  ~~ m/^<-isInLatinExtendedAdditional>$/, q{Match unrelated inverted <?isInLatinExtendedAdditional>} );
ok("\x[9A44]\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/<?isInLatinExtendedAdditional>/, q{Match unanchored <?isInLatinExtendedAdditional>} );

# InLatinExtendedB


ok("\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<?isInLatinExtendedB>$/, q{Match <?isInLatinExtendedB>} );
ok(!( "\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<!isInLatinExtendedB>.$/ ), q{Don't match negated <?isInLatinExtendedB>} );
ok(!( "\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<-isInLatinExtendedB>$/ ), q{Don't match inverted <?isInLatinExtendedB>} );
ok(!( "\x[7544]"  ~~ m/^<?isInLatinExtendedB>$/ ), q{Don't match unrelated <?isInLatinExtendedB>} );
ok("\x[7544]"  ~~ m/^<!isInLatinExtendedB>.$/, q{Match unrelated negated <?isInLatinExtendedB>} );
ok("\x[7544]"  ~~ m/^<-isInLatinExtendedB>$/, q{Match unrelated inverted <?isInLatinExtendedB>} );
ok("\x[7544]\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/<?isInLatinExtendedB>/, q{Match unanchored <?isInLatinExtendedB>} );

# InLetterlikeSymbols


ok("\c[ACCOUNT OF]" ~~ m/^<?isInLetterlikeSymbols>$/, q{Match <?isInLetterlikeSymbols>} );
ok(!( "\c[ACCOUNT OF]" ~~ m/^<!isInLetterlikeSymbols>.$/ ), q{Don't match negated <?isInLetterlikeSymbols>} );
ok(!( "\c[ACCOUNT OF]" ~~ m/^<-isInLetterlikeSymbols>$/ ), q{Don't match inverted <?isInLetterlikeSymbols>} );
ok(!( "\c[LATIN CAPITAL LETTER X WITH DOT ABOVE]"  ~~ m/^<?isInLetterlikeSymbols>$/ ), q{Don't match unrelated <?isInLetterlikeSymbols>} );
ok("\c[LATIN CAPITAL LETTER X WITH DOT ABOVE]"  ~~ m/^<!isInLetterlikeSymbols>.$/, q{Match unrelated negated <?isInLetterlikeSymbols>} );
ok("\c[LATIN CAPITAL LETTER X WITH DOT ABOVE]"  ~~ m/^<-isInLetterlikeSymbols>$/, q{Match unrelated inverted <?isInLetterlikeSymbols>} );
ok("\c[LATIN CAPITAL LETTER X WITH DOT ABOVE]\c[ACCOUNT OF]" ~~ m/<?isInLetterlikeSymbols>/, q{Match unanchored <?isInLetterlikeSymbols>} );

# InLowSurrogates


ok(!( "\x[5ECC]"  ~~ m/^<?isInLowSurrogates>$/ ), q{Don't match unrelated <?isInLowSurrogates>} );
ok("\x[5ECC]"  ~~ m/^<!isInLowSurrogates>.$/, q{Match unrelated negated <?isInLowSurrogates>} );
ok("\x[5ECC]"  ~~ m/^<-isInLowSurrogates>$/, q{Match unrelated inverted <?isInLowSurrogates>} );

# InMalayalam


ok("\x[0D00]" ~~ m/^<?isInMalayalam>$/, q{Match <?isInMalayalam>} );
ok(!( "\x[0D00]" ~~ m/^<!isInMalayalam>.$/ ), q{Don't match negated <?isInMalayalam>} );
ok(!( "\x[0D00]" ~~ m/^<-isInMalayalam>$/ ), q{Don't match inverted <?isInMalayalam>} );
ok(!( "\x[3457]"  ~~ m/^<?isInMalayalam>$/ ), q{Don't match unrelated <?isInMalayalam>} );
ok("\x[3457]"  ~~ m/^<!isInMalayalam>.$/, q{Match unrelated negated <?isInMalayalam>} );
ok("\x[3457]"  ~~ m/^<-isInMalayalam>$/, q{Match unrelated inverted <?isInMalayalam>} );
ok("\x[3457]\x[0D00]" ~~ m/<?isInMalayalam>/, q{Match unanchored <?isInMalayalam>} );

# InMathematicalAlphanumericSymbols


ok(!( "\x[6B79]"  ~~ m/^<?isInMathematicalAlphanumericSymbols>$/ ), q{Don't match unrelated <?isInMathematicalAlphanumericSymbols>} );
ok("\x[6B79]"  ~~ m/^<!isInMathematicalAlphanumericSymbols>.$/, q{Match unrelated negated <?isInMathematicalAlphanumericSymbols>} );
ok("\x[6B79]"  ~~ m/^<-isInMathematicalAlphanumericSymbols>$/, q{Match unrelated inverted <?isInMathematicalAlphanumericSymbols>} );

# InMathematicalOperators


ok("\c[FOR ALL]" ~~ m/^<?isInMathematicalOperators>$/, q{Match <?isInMathematicalOperators>} );
ok(!( "\c[FOR ALL]" ~~ m/^<!isInMathematicalOperators>.$/ ), q{Don't match negated <?isInMathematicalOperators>} );
ok(!( "\c[FOR ALL]" ~~ m/^<-isInMathematicalOperators>$/ ), q{Don't match inverted <?isInMathematicalOperators>} );
ok(!( "\x[BBC6]"  ~~ m/^<?isInMathematicalOperators>$/ ), q{Don't match unrelated <?isInMathematicalOperators>} );
ok("\x[BBC6]"  ~~ m/^<!isInMathematicalOperators>.$/, q{Match unrelated negated <?isInMathematicalOperators>} );
ok("\x[BBC6]"  ~~ m/^<-isInMathematicalOperators>$/, q{Match unrelated inverted <?isInMathematicalOperators>} );
ok("\x[BBC6]\c[FOR ALL]" ~~ m/<?isInMathematicalOperators>/, q{Match unanchored <?isInMathematicalOperators>} );

# InMiscellaneousMathematicalSymbolsA


ok("\x[27C0]" ~~ m/^<?isInMiscellaneousMathematicalSymbolsA>$/, q{Match <?isInMiscellaneousMathematicalSymbolsA>} );
ok(!( "\x[27C0]" ~~ m/^<!isInMiscellaneousMathematicalSymbolsA>.$/ ), q{Don't match negated <?isInMiscellaneousMathematicalSymbolsA>} );
ok(!( "\x[27C0]" ~~ m/^<-isInMiscellaneousMathematicalSymbolsA>$/ ), q{Don't match inverted <?isInMiscellaneousMathematicalSymbolsA>} );
ok(!( "\x[065D]"  ~~ m/^<?isInMiscellaneousMathematicalSymbolsA>$/ ), q{Don't match unrelated <?isInMiscellaneousMathematicalSymbolsA>} );
ok("\x[065D]"  ~~ m/^<!isInMiscellaneousMathematicalSymbolsA>.$/, q{Match unrelated negated <?isInMiscellaneousMathematicalSymbolsA>} );
ok("\x[065D]"  ~~ m/^<-isInMiscellaneousMathematicalSymbolsA>$/, q{Match unrelated inverted <?isInMiscellaneousMathematicalSymbolsA>} );
ok("\x[065D]\x[27C0]" ~~ m/<?isInMiscellaneousMathematicalSymbolsA>/, q{Match unanchored <?isInMiscellaneousMathematicalSymbolsA>} );

# InMiscellaneousMathematicalSymbolsB


ok("\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<?isInMiscellaneousMathematicalSymbolsB>$/, q{Match <?isInMiscellaneousMathematicalSymbolsB>} );
ok(!( "\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<!isInMiscellaneousMathematicalSymbolsB>.$/ ), q{Don't match negated <?isInMiscellaneousMathematicalSymbolsB>} );
ok(!( "\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/^<-isInMiscellaneousMathematicalSymbolsB>$/ ), q{Don't match inverted <?isInMiscellaneousMathematicalSymbolsB>} );
ok(!( "\x[56A6]"  ~~ m/^<?isInMiscellaneousMathematicalSymbolsB>$/ ), q{Don't match unrelated <?isInMiscellaneousMathematicalSymbolsB>} );
ok("\x[56A6]"  ~~ m/^<!isInMiscellaneousMathematicalSymbolsB>.$/, q{Match unrelated negated <?isInMiscellaneousMathematicalSymbolsB>} );
ok("\x[56A6]"  ~~ m/^<-isInMiscellaneousMathematicalSymbolsB>$/, q{Match unrelated inverted <?isInMiscellaneousMathematicalSymbolsB>} );
ok("\x[56A6]\c[TRIPLE VERTICAL BAR DELIMITER]" ~~ m/<?isInMiscellaneousMathematicalSymbolsB>/, q{Match unanchored <?isInMiscellaneousMathematicalSymbolsB>} );

# InMiscellaneousSymbols


ok("\c[BLACK SUN WITH RAYS]" ~~ m/^<?isInMiscellaneousSymbols>$/, q{Match <?isInMiscellaneousSymbols>} );
ok(!( "\c[BLACK SUN WITH RAYS]" ~~ m/^<!isInMiscellaneousSymbols>.$/ ), q{Don't match negated <?isInMiscellaneousSymbols>} );
ok(!( "\c[BLACK SUN WITH RAYS]" ~~ m/^<-isInMiscellaneousSymbols>$/ ), q{Don't match inverted <?isInMiscellaneousSymbols>} );
ok(!( "\x[3EE7]"  ~~ m/^<?isInMiscellaneousSymbols>$/ ), q{Don't match unrelated <?isInMiscellaneousSymbols>} );
ok("\x[3EE7]"  ~~ m/^<!isInMiscellaneousSymbols>.$/, q{Match unrelated negated <?isInMiscellaneousSymbols>} );
ok("\x[3EE7]"  ~~ m/^<-isInMiscellaneousSymbols>$/, q{Match unrelated inverted <?isInMiscellaneousSymbols>} );
ok("\x[3EE7]\c[BLACK SUN WITH RAYS]" ~~ m/<?isInMiscellaneousSymbols>/, q{Match unanchored <?isInMiscellaneousSymbols>} );

# InMiscellaneousTechnical


ok("\c[DIAMETER SIGN]" ~~ m/^<?isInMiscellaneousTechnical>$/, q{Match <?isInMiscellaneousTechnical>} );
ok(!( "\c[DIAMETER SIGN]" ~~ m/^<!isInMiscellaneousTechnical>.$/ ), q{Don't match negated <?isInMiscellaneousTechnical>} );
ok(!( "\c[DIAMETER SIGN]" ~~ m/^<-isInMiscellaneousTechnical>$/ ), q{Don't match inverted <?isInMiscellaneousTechnical>} );
ok(!( "\x[2EFC]"  ~~ m/^<?isInMiscellaneousTechnical>$/ ), q{Don't match unrelated <?isInMiscellaneousTechnical>} );
ok("\x[2EFC]"  ~~ m/^<!isInMiscellaneousTechnical>.$/, q{Match unrelated negated <?isInMiscellaneousTechnical>} );
ok("\x[2EFC]"  ~~ m/^<-isInMiscellaneousTechnical>$/, q{Match unrelated inverted <?isInMiscellaneousTechnical>} );
ok("\x[2EFC]\c[DIAMETER SIGN]" ~~ m/<?isInMiscellaneousTechnical>/, q{Match unanchored <?isInMiscellaneousTechnical>} );

# InMongolian


ok("\c[MONGOLIAN BIRGA]" ~~ m/^<?isInMongolian>$/, q{Match <?isInMongolian>} );
ok(!( "\c[MONGOLIAN BIRGA]" ~~ m/^<!isInMongolian>.$/ ), q{Don't match negated <?isInMongolian>} );
ok(!( "\c[MONGOLIAN BIRGA]" ~~ m/^<-isInMongolian>$/ ), q{Don't match inverted <?isInMongolian>} );
ok(!( "\x[AFB4]"  ~~ m/^<?isInMongolian>$/ ), q{Don't match unrelated <?isInMongolian>} );
ok("\x[AFB4]"  ~~ m/^<!isInMongolian>.$/, q{Match unrelated negated <?isInMongolian>} );
ok("\x[AFB4]"  ~~ m/^<-isInMongolian>$/, q{Match unrelated inverted <?isInMongolian>} );
ok("\x[AFB4]\c[MONGOLIAN BIRGA]" ~~ m/<?isInMongolian>/, q{Match unanchored <?isInMongolian>} );

# InMusicalSymbols


ok(!( "\x[0CE4]"  ~~ m/^<?isInMusicalSymbols>$/ ), q{Don't match unrelated <?isInMusicalSymbols>} );
ok("\x[0CE4]"  ~~ m/^<!isInMusicalSymbols>.$/, q{Match unrelated negated <?isInMusicalSymbols>} );
ok("\x[0CE4]"  ~~ m/^<-isInMusicalSymbols>$/, q{Match unrelated inverted <?isInMusicalSymbols>} );

# InMyanmar


ok("\c[MYANMAR LETTER KA]" ~~ m/^<?isInMyanmar>$/, q{Match <?isInMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<!isInMyanmar>.$/ ), q{Don't match negated <?isInMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<-isInMyanmar>$/ ), q{Don't match inverted <?isInMyanmar>} );
ok(!( "\x[1DDB]"  ~~ m/^<?isInMyanmar>$/ ), q{Don't match unrelated <?isInMyanmar>} );
ok("\x[1DDB]"  ~~ m/^<!isInMyanmar>.$/, q{Match unrelated negated <?isInMyanmar>} );
ok("\x[1DDB]"  ~~ m/^<-isInMyanmar>$/, q{Match unrelated inverted <?isInMyanmar>} );
ok("\x[1DDB]\c[MYANMAR LETTER KA]" ~~ m/<?isInMyanmar>/, q{Match unanchored <?isInMyanmar>} );

# InNumberForms


ok("\x[2150]" ~~ m/^<?isInNumberForms>$/, q{Match <?isInNumberForms>} );
ok(!( "\x[2150]" ~~ m/^<!isInNumberForms>.$/ ), q{Don't match negated <?isInNumberForms>} );
ok(!( "\x[2150]" ~~ m/^<-isInNumberForms>$/ ), q{Don't match inverted <?isInNumberForms>} );
ok(!( "\c[BLACK RIGHT-POINTING SMALL TRIANGLE]"  ~~ m/^<?isInNumberForms>$/ ), q{Don't match unrelated <?isInNumberForms>} );
ok("\c[BLACK RIGHT-POINTING SMALL TRIANGLE]"  ~~ m/^<!isInNumberForms>.$/, q{Match unrelated negated <?isInNumberForms>} );
ok("\c[BLACK RIGHT-POINTING SMALL TRIANGLE]"  ~~ m/^<-isInNumberForms>$/, q{Match unrelated inverted <?isInNumberForms>} );
ok("\c[BLACK RIGHT-POINTING SMALL TRIANGLE]\x[2150]" ~~ m/<?isInNumberForms>/, q{Match unanchored <?isInNumberForms>} );

# InOgham


ok("\c[OGHAM SPACE MARK]" ~~ m/^<?isInOgham>$/, q{Match <?isInOgham>} );
ok(!( "\c[OGHAM SPACE MARK]" ~~ m/^<!isInOgham>.$/ ), q{Don't match negated <?isInOgham>} );
ok(!( "\c[OGHAM SPACE MARK]" ~~ m/^<-isInOgham>$/ ), q{Don't match inverted <?isInOgham>} );
ok(!( "\x[768C]"  ~~ m/^<?isInOgham>$/ ), q{Don't match unrelated <?isInOgham>} );
ok("\x[768C]"  ~~ m/^<!isInOgham>.$/, q{Match unrelated negated <?isInOgham>} );
ok("\x[768C]"  ~~ m/^<-isInOgham>$/, q{Match unrelated inverted <?isInOgham>} );
ok("\x[768C]\c[OGHAM SPACE MARK]" ~~ m/<?isInOgham>/, q{Match unanchored <?isInOgham>} );

# InOldItalic


ok(!( "\x[C597]"  ~~ m/^<?isInOldItalic>$/ ), q{Don't match unrelated <?isInOldItalic>} );
ok("\x[C597]"  ~~ m/^<!isInOldItalic>.$/, q{Match unrelated negated <?isInOldItalic>} );
ok("\x[C597]"  ~~ m/^<-isInOldItalic>$/, q{Match unrelated inverted <?isInOldItalic>} );

# InOpticalCharacterRecognition


ok("\c[OCR HOOK]" ~~ m/^<?isInOpticalCharacterRecognition>$/, q{Match <?isInOpticalCharacterRecognition>} );
ok(!( "\c[OCR HOOK]" ~~ m/^<!isInOpticalCharacterRecognition>.$/ ), q{Don't match negated <?isInOpticalCharacterRecognition>} );
ok(!( "\c[OCR HOOK]" ~~ m/^<-isInOpticalCharacterRecognition>$/ ), q{Don't match inverted <?isInOpticalCharacterRecognition>} );
ok(!( "\x[BE80]"  ~~ m/^<?isInOpticalCharacterRecognition>$/ ), q{Don't match unrelated <?isInOpticalCharacterRecognition>} );
ok("\x[BE80]"  ~~ m/^<!isInOpticalCharacterRecognition>.$/, q{Match unrelated negated <?isInOpticalCharacterRecognition>} );
ok("\x[BE80]"  ~~ m/^<-isInOpticalCharacterRecognition>$/, q{Match unrelated inverted <?isInOpticalCharacterRecognition>} );
ok("\x[BE80]\c[OCR HOOK]" ~~ m/<?isInOpticalCharacterRecognition>/, q{Match unanchored <?isInOpticalCharacterRecognition>} );

# InOriya


ok("\x[0B00]" ~~ m/^<?isInOriya>$/, q{Match <?isInOriya>} );
ok(!( "\x[0B00]" ~~ m/^<!isInOriya>.$/ ), q{Don't match negated <?isInOriya>} );
ok(!( "\x[0B00]" ~~ m/^<-isInOriya>$/ ), q{Don't match inverted <?isInOriya>} );
ok(!( "\c[YI SYLLABLE GGEX]"  ~~ m/^<?isInOriya>$/ ), q{Don't match unrelated <?isInOriya>} );
ok("\c[YI SYLLABLE GGEX]"  ~~ m/^<!isInOriya>.$/, q{Match unrelated negated <?isInOriya>} );
ok("\c[YI SYLLABLE GGEX]"  ~~ m/^<-isInOriya>$/, q{Match unrelated inverted <?isInOriya>} );
ok("\c[YI SYLLABLE GGEX]\x[0B00]" ~~ m/<?isInOriya>/, q{Match unanchored <?isInOriya>} );

# InPrivateUseArea


ok(!( "\x[B6B1]"  ~~ m/^<?isInPrivateUseArea>$/ ), q{Don't match unrelated <?isInPrivateUseArea>} );
ok("\x[B6B1]"  ~~ m/^<!isInPrivateUseArea>.$/, q{Match unrelated negated <?isInPrivateUseArea>} );
ok("\x[B6B1]"  ~~ m/^<-isInPrivateUseArea>$/, q{Match unrelated inverted <?isInPrivateUseArea>} );

# InRunic


ok("\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<?isInRunic>$/, q{Match <?isInRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<!isInRunic>.$/ ), q{Don't match negated <?isInRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<-isInRunic>$/ ), q{Don't match inverted <?isInRunic>} );
ok(!( "\c[SINHALA LETTER MAHAAPRAANA KAYANNA]"  ~~ m/^<?isInRunic>$/ ), q{Don't match unrelated <?isInRunic>} );
ok("\c[SINHALA LETTER MAHAAPRAANA KAYANNA]"  ~~ m/^<!isInRunic>.$/, q{Match unrelated negated <?isInRunic>} );
ok("\c[SINHALA LETTER MAHAAPRAANA KAYANNA]"  ~~ m/^<-isInRunic>$/, q{Match unrelated inverted <?isInRunic>} );
ok("\c[SINHALA LETTER MAHAAPRAANA KAYANNA]\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/<?isInRunic>/, q{Match unanchored <?isInRunic>} );

# InSinhala


ok("\x[0D80]" ~~ m/^<?isInSinhala>$/, q{Match <?isInSinhala>} );
ok(!( "\x[0D80]" ~~ m/^<!isInSinhala>.$/ ), q{Don't match negated <?isInSinhala>} );
ok(!( "\x[0D80]" ~~ m/^<-isInSinhala>$/ ), q{Don't match inverted <?isInSinhala>} );
ok(!( "\x[1060]"  ~~ m/^<?isInSinhala>$/ ), q{Don't match unrelated <?isInSinhala>} );
ok("\x[1060]"  ~~ m/^<!isInSinhala>.$/, q{Match unrelated negated <?isInSinhala>} );
ok("\x[1060]"  ~~ m/^<-isInSinhala>$/, q{Match unrelated inverted <?isInSinhala>} );
ok("\x[1060]\x[0D80]" ~~ m/<?isInSinhala>/, q{Match unanchored <?isInSinhala>} );

# InSmallFormVariants


ok(!( "\x[5285]"  ~~ m/^<?isInSmallFormVariants>$/ ), q{Don't match unrelated <?isInSmallFormVariants>} );
ok("\x[5285]"  ~~ m/^<!isInSmallFormVariants>.$/, q{Match unrelated negated <?isInSmallFormVariants>} );
ok("\x[5285]"  ~~ m/^<-isInSmallFormVariants>$/, q{Match unrelated inverted <?isInSmallFormVariants>} );

# InSpacingModifierLetters


ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<?isInSpacingModifierLetters>$/, q{Match <?isInSpacingModifierLetters>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<!isInSpacingModifierLetters>.$/ ), q{Don't match negated <?isInSpacingModifierLetters>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<-isInSpacingModifierLetters>$/ ), q{Don't match inverted <?isInSpacingModifierLetters>} );
ok(!( "\x[5326]"  ~~ m/^<?isInSpacingModifierLetters>$/ ), q{Don't match unrelated <?isInSpacingModifierLetters>} );
ok("\x[5326]"  ~~ m/^<!isInSpacingModifierLetters>.$/, q{Match unrelated negated <?isInSpacingModifierLetters>} );
ok("\x[5326]"  ~~ m/^<-isInSpacingModifierLetters>$/, q{Match unrelated inverted <?isInSpacingModifierLetters>} );
ok("\x[5326]\c[MODIFIER LETTER SMALL H]" ~~ m/<?isInSpacingModifierLetters>/, q{Match unanchored <?isInSpacingModifierLetters>} );

# InSpecials


ok(!( "\x[3DF1]"  ~~ m/^<?isInSpecials>$/ ), q{Don't match unrelated <?isInSpecials>} );
