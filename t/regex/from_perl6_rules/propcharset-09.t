use v6-alpha;
use Test;
plan 173;
force_todo(7);
ok(!( "\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<!isInCombiningDiacriticalMarksforSymbols>.$/ ), q{Don't match externally inverted <isInCombiningDiacriticalMarksforSymbols>} );
ok(!( "\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<[A]-isInCombiningDiacriticalMarksforSymbols>$/ ), q{Don't match compound inverted <isInCombiningDiacriticalMarksforSymbols>} );
ok(!( "\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<-isInCombiningDiacriticalMarksforSymbols>$/ ), q{Don't match internally inverted <isInCombiningDiacriticalMarksforSymbols>} );
ok(!( "\c[YI SYLLABLE NZOX]"  ~~ m/^<+isInCombiningDiacriticalMarksforSymbols>$/ ), q{Don't match unrelated <isInCombiningDiacriticalMarksforSymbols>} );
ok("\c[YI SYLLABLE NZOX]"  ~~ m/^<!isInCombiningDiacriticalMarksforSymbols>.$/, q{Match unrelated externally inverted <isInCombiningDiacriticalMarksforSymbols>} );
ok("\c[YI SYLLABLE NZOX]"  ~~ m/^<-isInCombiningDiacriticalMarksforSymbols>$/, q{Match unrelated internally inverted <isInCombiningDiacriticalMarksforSymbols>} );
ok("\c[YI SYLLABLE NZOX]\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/<+isInCombiningDiacriticalMarksforSymbols>/, q{Match unanchored <isInCombiningDiacriticalMarksforSymbols>} );

# InCombiningHalfMarks


ok(!( "\x[7140]"  ~~ m/^<+isInCombiningHalfMarks>$/ ), q{Don't match unrelated <isInCombiningHalfMarks>} );
ok("\x[7140]"  ~~ m/^<!isInCombiningHalfMarks>.$/, q{Match unrelated externally inverted <isInCombiningHalfMarks>} );
ok("\x[7140]"  ~~ m/^<-isInCombiningHalfMarks>$/, q{Match unrelated internally inverted <isInCombiningHalfMarks>} );

# InControlPictures


ok("\c[SYMBOL FOR NULL]" ~~ m/^<+isInControlPictures>$/, q{Match <isInControlPictures>} );
ok("\c[SYMBOL FOR NULL]" ~~ m/^<[A]+isInControlPictures>$/, q{Match compound <isInControlPictures>} );
ok(!( "\c[SYMBOL FOR NULL]" ~~ m/^<!isInControlPictures>.$/ ), q{Don't match externally inverted <isInControlPictures>} );
ok(!( "\c[SYMBOL FOR NULL]" ~~ m/^<[A]-isInControlPictures>$/ ), q{Don't match compound inverted <isInControlPictures>} );
ok(!( "\c[SYMBOL FOR NULL]" ~~ m/^<-isInControlPictures>$/ ), q{Don't match internally inverted <isInControlPictures>} );
ok(!( "\x[CBBF]"  ~~ m/^<+isInControlPictures>$/ ), q{Don't match unrelated <isInControlPictures>} );
ok("\x[CBBF]"  ~~ m/^<!isInControlPictures>.$/, q{Match unrelated externally inverted <isInControlPictures>} );
ok("\x[CBBF]"  ~~ m/^<-isInControlPictures>$/, q{Match unrelated internally inverted <isInControlPictures>} );
ok("\x[CBBF]\c[SYMBOL FOR NULL]" ~~ m/<+isInControlPictures>/, q{Match unanchored <isInControlPictures>} );

# InCurrencySymbols


ok("\c[EURO-CURRENCY SIGN]" ~~ m/^<+isInCurrencySymbols>$/, q{Match <isInCurrencySymbols>} );
ok("\c[EURO-CURRENCY SIGN]" ~~ m/^<[A]+isInCurrencySymbols>$/, q{Match compound <isInCurrencySymbols>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<!isInCurrencySymbols>.$/ ), q{Don't match externally inverted <isInCurrencySymbols>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<[A]-isInCurrencySymbols>$/ ), q{Don't match compound inverted <isInCurrencySymbols>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<-isInCurrencySymbols>$/ ), q{Don't match internally inverted <isInCurrencySymbols>} );
ok(!( "\x[D040]"  ~~ m/^<+isInCurrencySymbols>$/ ), q{Don't match unrelated <isInCurrencySymbols>} );
ok("\x[D040]"  ~~ m/^<!isInCurrencySymbols>.$/, q{Match unrelated externally inverted <isInCurrencySymbols>} );
ok("\x[D040]"  ~~ m/^<-isInCurrencySymbols>$/, q{Match unrelated internally inverted <isInCurrencySymbols>} );
ok("\x[D040]\c[EURO-CURRENCY SIGN]" ~~ m/<+isInCurrencySymbols>/, q{Match unanchored <isInCurrencySymbols>} );

# InCyrillic


ok("\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<+isInCyrillic>$/, q{Match <isInCyrillic>} );
ok("\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<[A]+isInCyrillic>$/, q{Match compound <isInCyrillic>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<!isInCyrillic>.$/ ), q{Don't match externally inverted <isInCyrillic>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<[A]-isInCyrillic>$/ ), q{Don't match compound inverted <isInCyrillic>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<-isInCyrillic>$/ ), q{Don't match internally inverted <isInCyrillic>} );
ok(!( "\x[9C58]"  ~~ m/^<+isInCyrillic>$/ ), q{Don't match unrelated <isInCyrillic>} );
ok("\x[9C58]"  ~~ m/^<!isInCyrillic>.$/, q{Match unrelated externally inverted <isInCyrillic>} );
ok("\x[9C58]"  ~~ m/^<-isInCyrillic>$/, q{Match unrelated internally inverted <isInCyrillic>} );
ok("\x[9C58]\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/<+isInCyrillic>/, q{Match unanchored <isInCyrillic>} );

# InCyrillicSupplementary


ok("\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<+isInCyrillicSupplementary>$/, q{Match <isInCyrillicSupplementary>} );
ok("\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<[A]+isInCyrillicSupplementary>$/, q{Match compound <isInCyrillicSupplementary>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<!isInCyrillicSupplementary>.$/ ), q{Don't match externally inverted <isInCyrillicSupplementary>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<[A]-isInCyrillicSupplementary>$/ ), q{Don't match compound inverted <isInCyrillicSupplementary>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/^<-isInCyrillicSupplementary>$/ ), q{Don't match internally inverted <isInCyrillicSupplementary>} );
ok(!( "\x[857A]"  ~~ m/^<+isInCyrillicSupplementary>$/ ), q{Don't match unrelated <isInCyrillicSupplementary>} );
ok("\x[857A]"  ~~ m/^<!isInCyrillicSupplementary>.$/, q{Match unrelated externally inverted <isInCyrillicSupplementary>} );
ok("\x[857A]"  ~~ m/^<-isInCyrillicSupplementary>$/, q{Match unrelated internally inverted <isInCyrillicSupplementary>} );
ok("\x[857A]\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/<+isInCyrillicSupplementary>/, q{Match unanchored <isInCyrillicSupplementary>} );

# InDeseret


ok(!( "\c[LATIN SMALL LETTER I WITH DOUBLE GRAVE]"  ~~ m/^<+isInDeseret>$/ ), q{Don't match unrelated <isInDeseret>} );
ok("\c[LATIN SMALL LETTER I WITH DOUBLE GRAVE]"  ~~ m/^<!isInDeseret>.$/, q{Match unrelated externally inverted <isInDeseret>} );
ok("\c[LATIN SMALL LETTER I WITH DOUBLE GRAVE]"  ~~ m/^<-isInDeseret>$/, q{Match unrelated internally inverted <isInDeseret>} );

# InDevanagari


ok("\x[0900]" ~~ m/^<+isInDevanagari>$/, q{Match <isInDevanagari>} );
ok("\x[0900]" ~~ m/^<[A]+isInDevanagari>$/, q{Match compound <isInDevanagari>} );
ok(!( "\x[0900]" ~~ m/^<!isInDevanagari>.$/ ), q{Don't match externally inverted <isInDevanagari>} );
ok(!( "\x[0900]" ~~ m/^<[A]-isInDevanagari>$/ ), q{Don't match compound inverted <isInDevanagari>} );
ok(!( "\x[0900]" ~~ m/^<-isInDevanagari>$/ ), q{Don't match internally inverted <isInDevanagari>} );
ok(!( "\x[3837]"  ~~ m/^<+isInDevanagari>$/ ), q{Don't match unrelated <isInDevanagari>} );
ok("\x[3837]"  ~~ m/^<!isInDevanagari>.$/, q{Match unrelated externally inverted <isInDevanagari>} );
ok("\x[3837]"  ~~ m/^<-isInDevanagari>$/, q{Match unrelated internally inverted <isInDevanagari>} );
ok("\x[3837]\x[0900]" ~~ m/<+isInDevanagari>/, q{Match unanchored <isInDevanagari>} );

# InDingbats


ok("\x[2700]" ~~ m/^<+isInDingbats>$/, q{Match <isInDingbats>} );
ok("\x[2700]" ~~ m/^<[A]+isInDingbats>$/, q{Match compound <isInDingbats>} );
ok(!( "\x[2700]" ~~ m/^<!isInDingbats>.$/ ), q{Don't match externally inverted <isInDingbats>} );
ok(!( "\x[2700]" ~~ m/^<[A]-isInDingbats>$/ ), q{Don't match compound inverted <isInDingbats>} );
ok(!( "\x[2700]" ~~ m/^<-isInDingbats>$/ ), q{Don't match internally inverted <isInDingbats>} );
ok(!( "\x[C9CC]"  ~~ m/^<+isInDingbats>$/ ), q{Don't match unrelated <isInDingbats>} );
ok("\x[C9CC]"  ~~ m/^<!isInDingbats>.$/, q{Match unrelated externally inverted <isInDingbats>} );
ok("\x[C9CC]"  ~~ m/^<-isInDingbats>$/, q{Match unrelated internally inverted <isInDingbats>} );
ok("\x[C9CC]\x[2700]" ~~ m/<+isInDingbats>/, q{Match unanchored <isInDingbats>} );

# InEnclosedAlphanumerics


ok("\c[CIRCLED DIGIT ONE]" ~~ m/^<+isInEnclosedAlphanumerics>$/, q{Match <isInEnclosedAlphanumerics>} );
ok("\c[CIRCLED DIGIT ONE]" ~~ m/^<[A]+isInEnclosedAlphanumerics>$/, q{Match compound <isInEnclosedAlphanumerics>} );
ok(!( "\c[CIRCLED DIGIT ONE]" ~~ m/^<!isInEnclosedAlphanumerics>.$/ ), q{Don't match externally inverted <isInEnclosedAlphanumerics>} );
ok(!( "\c[CIRCLED DIGIT ONE]" ~~ m/^<[A]-isInEnclosedAlphanumerics>$/ ), q{Don't match compound inverted <isInEnclosedAlphanumerics>} );
ok(!( "\c[CIRCLED DIGIT ONE]" ~~ m/^<-isInEnclosedAlphanumerics>$/ ), q{Don't match internally inverted <isInEnclosedAlphanumerics>} );
ok(!( "\x[CCB8]"  ~~ m/^<+isInEnclosedAlphanumerics>$/ ), q{Don't match unrelated <isInEnclosedAlphanumerics>} );
ok("\x[CCB8]"  ~~ m/^<!isInEnclosedAlphanumerics>.$/, q{Match unrelated externally inverted <isInEnclosedAlphanumerics>} );
ok("\x[CCB8]"  ~~ m/^<-isInEnclosedAlphanumerics>$/, q{Match unrelated internally inverted <isInEnclosedAlphanumerics>} );
ok("\x[CCB8]\c[CIRCLED DIGIT ONE]" ~~ m/<+isInEnclosedAlphanumerics>/, q{Match unanchored <isInEnclosedAlphanumerics>} );

# InEnclosedCJKLettersAndMonths


ok("\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<+isInEnclosedCJKLettersAndMonths>$/, q{Match <isInEnclosedCJKLettersAndMonths>} );
ok("\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<[A]+isInEnclosedCJKLettersAndMonths>$/, q{Match compound <isInEnclosedCJKLettersAndMonths>} );
ok(!( "\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<!isInEnclosedCJKLettersAndMonths>.$/ ), q{Don't match externally inverted <isInEnclosedCJKLettersAndMonths>} );
ok(!( "\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<[A]-isInEnclosedCJKLettersAndMonths>$/ ), q{Don't match compound inverted <isInEnclosedCJKLettersAndMonths>} );
ok(!( "\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<-isInEnclosedCJKLettersAndMonths>$/ ), q{Don't match internally inverted <isInEnclosedCJKLettersAndMonths>} );
ok(!( "\x[8883]"  ~~ m/^<+isInEnclosedCJKLettersAndMonths>$/ ), q{Don't match unrelated <isInEnclosedCJKLettersAndMonths>} );
ok("\x[8883]"  ~~ m/^<!isInEnclosedCJKLettersAndMonths>.$/, q{Match unrelated externally inverted <isInEnclosedCJKLettersAndMonths>} );
ok("\x[8883]"  ~~ m/^<-isInEnclosedCJKLettersAndMonths>$/, q{Match unrelated internally inverted <isInEnclosedCJKLettersAndMonths>} );
ok("\x[8883]\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/<+isInEnclosedCJKLettersAndMonths>/, q{Match unanchored <isInEnclosedCJKLettersAndMonths>} );

# InEthiopic


ok("\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<+isInEthiopic>$/, q{Match <isInEthiopic>} );
ok("\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<[A]+isInEthiopic>$/, q{Match compound <isInEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<!isInEthiopic>.$/ ), q{Don't match externally inverted <isInEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<[A]-isInEthiopic>$/ ), q{Don't match compound inverted <isInEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<-isInEthiopic>$/ ), q{Don't match internally inverted <isInEthiopic>} );
ok(!( "\c[MALAYALAM DIGIT NINE]"  ~~ m/^<+isInEthiopic>$/ ), q{Don't match unrelated <isInEthiopic>} );
ok("\c[MALAYALAM DIGIT NINE]"  ~~ m/^<!isInEthiopic>.$/, q{Match unrelated externally inverted <isInEthiopic>} );
ok("\c[MALAYALAM DIGIT NINE]"  ~~ m/^<-isInEthiopic>$/, q{Match unrelated internally inverted <isInEthiopic>} );
ok("\c[MALAYALAM DIGIT NINE]\c[ETHIOPIC SYLLABLE HA]" ~~ m/<+isInEthiopic>/, q{Match unanchored <isInEthiopic>} );

# InGeneralPunctuation


ok("\c[EN QUAD]" ~~ m/^<+isInGeneralPunctuation>$/, q{Match <isInGeneralPunctuation>} );
ok("\c[EN QUAD]" ~~ m/^<[A]+isInGeneralPunctuation>$/, q{Match compound <isInGeneralPunctuation>} );
ok(!( "\c[EN QUAD]" ~~ m/^<!isInGeneralPunctuation>.$/ ), q{Don't match externally inverted <isInGeneralPunctuation>} );
ok(!( "\c[EN QUAD]" ~~ m/^<[A]-isInGeneralPunctuation>$/ ), q{Don't match compound inverted <isInGeneralPunctuation>} );
ok(!( "\c[EN QUAD]" ~~ m/^<-isInGeneralPunctuation>$/ ), q{Don't match internally inverted <isInGeneralPunctuation>} );
ok(!( "\x[BBC9]"  ~~ m/^<+isInGeneralPunctuation>$/ ), q{Don't match unrelated <isInGeneralPunctuation>} );
ok("\x[BBC9]"  ~~ m/^<!isInGeneralPunctuation>.$/, q{Match unrelated externally inverted <isInGeneralPunctuation>} );
ok("\x[BBC9]"  ~~ m/^<-isInGeneralPunctuation>$/, q{Match unrelated internally inverted <isInGeneralPunctuation>} );
ok("\x[BBC9]\c[EN QUAD]" ~~ m/<+isInGeneralPunctuation>/, q{Match unanchored <isInGeneralPunctuation>} );

# InGeometricShapes


ok("\c[BLACK SQUARE]" ~~ m/^<+isInGeometricShapes>$/, q{Match <isInGeometricShapes>} );
ok("\c[BLACK SQUARE]" ~~ m/^<[A]+isInGeometricShapes>$/, q{Match compound <isInGeometricShapes>} );
ok(!( "\c[BLACK SQUARE]" ~~ m/^<!isInGeometricShapes>.$/ ), q{Don't match externally inverted <isInGeometricShapes>} );
ok(!( "\c[BLACK SQUARE]" ~~ m/^<[A]-isInGeometricShapes>$/ ), q{Don't match compound inverted <isInGeometricShapes>} );
ok(!( "\c[BLACK SQUARE]" ~~ m/^<-isInGeometricShapes>$/ ), q{Don't match internally inverted <isInGeometricShapes>} );
ok(!( "\x[C58A]"  ~~ m/^<+isInGeometricShapes>$/ ), q{Don't match unrelated <isInGeometricShapes>} );
ok("\x[C58A]"  ~~ m/^<!isInGeometricShapes>.$/, q{Match unrelated externally inverted <isInGeometricShapes>} );
ok("\x[C58A]"  ~~ m/^<-isInGeometricShapes>$/, q{Match unrelated internally inverted <isInGeometricShapes>} );
ok("\x[C58A]\c[BLACK SQUARE]" ~~ m/<+isInGeometricShapes>/, q{Match unanchored <isInGeometricShapes>} );

# InGeorgian


ok("\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<+isInGeorgian>$/, q{Match <isInGeorgian>} );
ok("\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<[A]+isInGeorgian>$/, q{Match compound <isInGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<!isInGeorgian>.$/ ), q{Don't match externally inverted <isInGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<[A]-isInGeorgian>$/ ), q{Don't match compound inverted <isInGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<-isInGeorgian>$/ ), q{Don't match internally inverted <isInGeorgian>} );
ok(!( "\c[ARMENIAN CAPITAL LETTER BEN]"  ~~ m/^<+isInGeorgian>$/ ), q{Don't match unrelated <isInGeorgian>} );
ok("\c[ARMENIAN CAPITAL LETTER BEN]"  ~~ m/^<!isInGeorgian>.$/, q{Match unrelated externally inverted <isInGeorgian>} );
ok("\c[ARMENIAN CAPITAL LETTER BEN]"  ~~ m/^<-isInGeorgian>$/, q{Match unrelated internally inverted <isInGeorgian>} );
ok("\c[ARMENIAN CAPITAL LETTER BEN]\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/<+isInGeorgian>/, q{Match unanchored <isInGeorgian>} );

# InGothic


ok(!( "\x[1A5A]"  ~~ m/^<+isInGothic>$/ ), q{Don't match unrelated <isInGothic>} );
ok("\x[1A5A]"  ~~ m/^<!isInGothic>.$/, q{Match unrelated externally inverted <isInGothic>} );
ok("\x[1A5A]"  ~~ m/^<-isInGothic>$/, q{Match unrelated internally inverted <isInGothic>} );

# InGreekExtended


ok("\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<+isInGreekExtended>$/, q{Match <isInGreekExtended>} );
ok("\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<[A]+isInGreekExtended>$/, q{Match compound <isInGreekExtended>} );
ok(!( "\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<!isInGreekExtended>.$/ ), q{Don't match externally inverted <isInGreekExtended>} );
ok(!( "\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<[A]-isInGreekExtended>$/ ), q{Don't match compound inverted <isInGreekExtended>} );
ok(!( "\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<-isInGreekExtended>$/ ), q{Don't match internally inverted <isInGreekExtended>} );
ok(!( "\x[39F3]"  ~~ m/^<+isInGreekExtended>$/ ), q{Don't match unrelated <isInGreekExtended>} );
ok("\x[39F3]"  ~~ m/^<!isInGreekExtended>.$/, q{Match unrelated externally inverted <isInGreekExtended>} );
ok("\x[39F3]"  ~~ m/^<-isInGreekExtended>$/, q{Match unrelated internally inverted <isInGreekExtended>} );
ok("\x[39F3]\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/<+isInGreekExtended>/, q{Match unanchored <isInGreekExtended>} );

# InGreekAndCoptic


ok("\x[0370]" ~~ m/^<+isInGreekAndCoptic>$/, q{Match <isInGreekAndCoptic>} );
ok("\x[0370]" ~~ m/^<[A]+isInGreekAndCoptic>$/, q{Match compound <isInGreekAndCoptic>} );
ok(!( "\x[0370]" ~~ m/^<!isInGreekAndCoptic>.$/ ), q{Don't match externally inverted <isInGreekAndCoptic>} );
ok(!( "\x[0370]" ~~ m/^<[A]-isInGreekAndCoptic>$/ ), q{Don't match compound inverted <isInGreekAndCoptic>} );
ok(!( "\x[0370]" ~~ m/^<-isInGreekAndCoptic>$/ ), q{Don't match internally inverted <isInGreekAndCoptic>} );
ok(!( "\x[8CFE]"  ~~ m/^<+isInGreekAndCoptic>$/ ), q{Don't match unrelated <isInGreekAndCoptic>} );
ok("\x[8CFE]"  ~~ m/^<!isInGreekAndCoptic>.$/, q{Match unrelated externally inverted <isInGreekAndCoptic>} );
ok("\x[8CFE]"  ~~ m/^<-isInGreekAndCoptic>$/, q{Match unrelated internally inverted <isInGreekAndCoptic>} );
ok("\x[8CFE]\x[0370]" ~~ m/<+isInGreekAndCoptic>/, q{Match unanchored <isInGreekAndCoptic>} );

# InGujarati


ok("\x[0A80]" ~~ m/^<+isInGujarati>$/, q{Match <isInGujarati>} );
ok("\x[0A80]" ~~ m/^<[A]+isInGujarati>$/, q{Match compound <isInGujarati>} );
ok(!( "\x[0A80]" ~~ m/^<!isInGujarati>.$/ ), q{Don't match externally inverted <isInGujarati>} );
ok(!( "\x[0A80]" ~~ m/^<[A]-isInGujarati>$/ ), q{Don't match compound inverted <isInGujarati>} );
ok(!( "\x[0A80]" ~~ m/^<-isInGujarati>$/ ), q{Don't match internally inverted <isInGujarati>} );
ok(!( "\x[B022]"  ~~ m/^<+isInGujarati>$/ ), q{Don't match unrelated <isInGujarati>} );
ok("\x[B022]"  ~~ m/^<!isInGujarati>.$/, q{Match unrelated externally inverted <isInGujarati>} );
ok("\x[B022]"  ~~ m/^<-isInGujarati>$/, q{Match unrelated internally inverted <isInGujarati>} );
ok("\x[B022]\x[0A80]" ~~ m/<+isInGujarati>/, q{Match unanchored <isInGujarati>} );

# InGurmukhi


ok("\x[0A00]" ~~ m/^<+isInGurmukhi>$/, q{Match <isInGurmukhi>} );
ok("\x[0A00]" ~~ m/^<[A]+isInGurmukhi>$/, q{Match compound <isInGurmukhi>} );
ok(!( "\x[0A00]" ~~ m/^<!isInGurmukhi>.$/ ), q{Don't match externally inverted <isInGurmukhi>} );
ok(!( "\x[0A00]" ~~ m/^<[A]-isInGurmukhi>$/ ), q{Don't match compound inverted <isInGurmukhi>} );
ok(!( "\x[0A00]" ~~ m/^<-isInGurmukhi>$/ ), q{Don't match internally inverted <isInGurmukhi>} );
ok(!( "\x[8FC3]"  ~~ m/^<+isInGurmukhi>$/ ), q{Don't match unrelated <isInGurmukhi>} );
ok("\x[8FC3]"  ~~ m/^<!isInGurmukhi>.$/, q{Match unrelated externally inverted <isInGurmukhi>} );
ok("\x[8FC3]"  ~~ m/^<-isInGurmukhi>$/, q{Match unrelated internally inverted <isInGurmukhi>} );
ok("\x[8FC3]\x[0A00]" ~~ m/<+isInGurmukhi>/, q{Match unanchored <isInGurmukhi>} );

# InHalfwidthAndFullwidthForms


ok(!( "\x[36A3]"  ~~ m/^<+isInHalfwidthAndFullwidthForms>$/ ), q{Don't match unrelated <isInHalfwidthAndFullwidthForms>} );
ok("\x[36A3]"  ~~ m/^<!isInHalfwidthAndFullwidthForms>.$/, q{Match unrelated externally inverted <isInHalfwidthAndFullwidthForms>} );
ok("\x[36A3]"  ~~ m/^<-isInHalfwidthAndFullwidthForms>$/, q{Match unrelated internally inverted <isInHalfwidthAndFullwidthForms>} );

# InHangulCompatibilityJamo


ok("\x[3130]" ~~ m/^<+isInHangulCompatibilityJamo>$/, q{Match <isInHangulCompatibilityJamo>} );
ok("\x[3130]" ~~ m/^<[A]+isInHangulCompatibilityJamo>$/, q{Match compound <isInHangulCompatibilityJamo>} );
ok(!( "\x[3130]" ~~ m/^<!isInHangulCompatibilityJamo>.$/ ), q{Don't match externally inverted <isInHangulCompatibilityJamo>} );
ok(!( "\x[3130]" ~~ m/^<[A]-isInHangulCompatibilityJamo>$/ ), q{Don't match compound inverted <isInHangulCompatibilityJamo>} );
ok(!( "\x[3130]" ~~ m/^<-isInHangulCompatibilityJamo>$/ ), q{Don't match internally inverted <isInHangulCompatibilityJamo>} );
ok(!( "\x[BAF0]"  ~~ m/^<+isInHangulCompatibilityJamo>$/ ), q{Don't match unrelated <isInHangulCompatibilityJamo>} );
ok("\x[BAF0]"  ~~ m/^<!isInHangulCompatibilityJamo>.$/, q{Match unrelated externally inverted <isInHangulCompatibilityJamo>} );
ok("\x[BAF0]"  ~~ m/^<-isInHangulCompatibilityJamo>$/, q{Match unrelated internally inverted <isInHangulCompatibilityJamo>} );
ok("\x[BAF0]\x[3130]" ~~ m/<+isInHangulCompatibilityJamo>/, q{Match unanchored <isInHangulCompatibilityJamo>} );

# InHangulJamo


ok("\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<+isInHangulJamo>$/, q{Match <isInHangulJamo>} );
