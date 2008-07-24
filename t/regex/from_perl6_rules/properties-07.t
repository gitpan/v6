use v6-alpha;
use Test;
plan 188;
force_todo(999);
ok(!( "\x[7BD9]"  ~~ m/^<?isInCyrillicSupplementary>$/ ), q{Don't match unrelated <?isInCyrillicSupplementary>} );
ok("\x[7BD9]"  ~~ m/^<!isInCyrillicSupplementary>.$/, q{Match unrelated negated <?isInCyrillicSupplementary>} );
ok("\x[7BD9]"  ~~ m/^<-isInCyrillicSupplementary>$/, q{Match unrelated inverted <?isInCyrillicSupplementary>} );
ok("\x[7BD9]\c[CYRILLIC CAPITAL LETTER KOMI DE]" ~~ m/<?isInCyrillicSupplementary>/, q{Match unanchored <?isInCyrillicSupplementary>} );

# InDeseret


ok(!( "\c[TAMIL DIGIT FOUR]"  ~~ m/^<?isInDeseret>$/ ), q{Don't match unrelated <?isInDeseret>} );
ok("\c[TAMIL DIGIT FOUR]"  ~~ m/^<!isInDeseret>.$/, q{Match unrelated negated <?isInDeseret>} );
ok("\c[TAMIL DIGIT FOUR]"  ~~ m/^<-isInDeseret>$/, q{Match unrelated inverted <?isInDeseret>} );

# InDevanagari


ok("\x[0900]" ~~ m/^<?isInDevanagari>$/, q{Match <?isInDevanagari>} );
ok(!( "\x[0900]" ~~ m/^<!isInDevanagari>.$/ ), q{Don't match negated <?isInDevanagari>} );
ok(!( "\x[0900]" ~~ m/^<-isInDevanagari>$/ ), q{Don't match inverted <?isInDevanagari>} );
ok(!( "\x[BB12]"  ~~ m/^<?isInDevanagari>$/ ), q{Don't match unrelated <?isInDevanagari>} );
ok("\x[BB12]"  ~~ m/^<!isInDevanagari>.$/, q{Match unrelated negated <?isInDevanagari>} );
ok("\x[BB12]"  ~~ m/^<-isInDevanagari>$/, q{Match unrelated inverted <?isInDevanagari>} );
ok("\x[BB12]\x[0900]" ~~ m/<?isInDevanagari>/, q{Match unanchored <?isInDevanagari>} );

# InDingbats


ok("\x[2700]" ~~ m/^<?isInDingbats>$/, q{Match <?isInDingbats>} );
ok(!( "\x[2700]" ~~ m/^<!isInDingbats>.$/ ), q{Don't match negated <?isInDingbats>} );
ok(!( "\x[2700]" ~~ m/^<-isInDingbats>$/ ), q{Don't match inverted <?isInDingbats>} );
ok(!( "\x[D7A8]"  ~~ m/^<?isInDingbats>$/ ), q{Don't match unrelated <?isInDingbats>} );
ok("\x[D7A8]"  ~~ m/^<!isInDingbats>.$/, q{Match unrelated negated <?isInDingbats>} );
ok("\x[D7A8]"  ~~ m/^<-isInDingbats>$/, q{Match unrelated inverted <?isInDingbats>} );
ok("\x[D7A8]\x[2700]" ~~ m/<?isInDingbats>/, q{Match unanchored <?isInDingbats>} );

# InEnclosedAlphanumerics


ok("\c[CIRCLED DIGIT ONE]" ~~ m/^<?isInEnclosedAlphanumerics>$/, q{Match <?isInEnclosedAlphanumerics>} );
ok(!( "\c[CIRCLED DIGIT ONE]" ~~ m/^<!isInEnclosedAlphanumerics>.$/ ), q{Don't match negated <?isInEnclosedAlphanumerics>} );
ok(!( "\c[CIRCLED DIGIT ONE]" ~~ m/^<-isInEnclosedAlphanumerics>$/ ), q{Don't match inverted <?isInEnclosedAlphanumerics>} );
ok(!( "\x[C3A2]"  ~~ m/^<?isInEnclosedAlphanumerics>$/ ), q{Don't match unrelated <?isInEnclosedAlphanumerics>} );
ok("\x[C3A2]"  ~~ m/^<!isInEnclosedAlphanumerics>.$/, q{Match unrelated negated <?isInEnclosedAlphanumerics>} );
ok("\x[C3A2]"  ~~ m/^<-isInEnclosedAlphanumerics>$/, q{Match unrelated inverted <?isInEnclosedAlphanumerics>} );
ok("\x[C3A2]\c[CIRCLED DIGIT ONE]" ~~ m/<?isInEnclosedAlphanumerics>/, q{Match unanchored <?isInEnclosedAlphanumerics>} );

# InEnclosedCJKLettersAndMonths


ok("\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<?isInEnclosedCJKLettersAndMonths>$/, q{Match <?isInEnclosedCJKLettersAndMonths>} );
ok(!( "\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<!isInEnclosedCJKLettersAndMonths>.$/ ), q{Don't match negated <?isInEnclosedCJKLettersAndMonths>} );
ok(!( "\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/^<-isInEnclosedCJKLettersAndMonths>$/ ), q{Don't match inverted <?isInEnclosedCJKLettersAndMonths>} );
ok(!( "\x[5B44]"  ~~ m/^<?isInEnclosedCJKLettersAndMonths>$/ ), q{Don't match unrelated <?isInEnclosedCJKLettersAndMonths>} );
ok("\x[5B44]"  ~~ m/^<!isInEnclosedCJKLettersAndMonths>.$/, q{Match unrelated negated <?isInEnclosedCJKLettersAndMonths>} );
ok("\x[5B44]"  ~~ m/^<-isInEnclosedCJKLettersAndMonths>$/, q{Match unrelated inverted <?isInEnclosedCJKLettersAndMonths>} );
ok("\x[5B44]\c[PARENTHESIZED HANGUL KIYEOK]" ~~ m/<?isInEnclosedCJKLettersAndMonths>/, q{Match unanchored <?isInEnclosedCJKLettersAndMonths>} );

# InEthiopic


ok("\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<?isInEthiopic>$/, q{Match <?isInEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<!isInEthiopic>.$/ ), q{Don't match negated <?isInEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<-isInEthiopic>$/ ), q{Don't match inverted <?isInEthiopic>} );
ok(!( "\x[BBAE]"  ~~ m/^<?isInEthiopic>$/ ), q{Don't match unrelated <?isInEthiopic>} );
ok("\x[BBAE]"  ~~ m/^<!isInEthiopic>.$/, q{Match unrelated negated <?isInEthiopic>} );
ok("\x[BBAE]"  ~~ m/^<-isInEthiopic>$/, q{Match unrelated inverted <?isInEthiopic>} );
ok("\x[BBAE]\c[ETHIOPIC SYLLABLE HA]" ~~ m/<?isInEthiopic>/, q{Match unanchored <?isInEthiopic>} );

# InGeneralPunctuation


ok("\c[EN QUAD]" ~~ m/^<?isInGeneralPunctuation>$/, q{Match <?isInGeneralPunctuation>} );
ok(!( "\c[EN QUAD]" ~~ m/^<!isInGeneralPunctuation>.$/ ), q{Don't match negated <?isInGeneralPunctuation>} );
ok(!( "\c[EN QUAD]" ~~ m/^<-isInGeneralPunctuation>$/ ), q{Don't match inverted <?isInGeneralPunctuation>} );
ok(!( "\c[MEDIUM RIGHT PARENTHESIS ORNAMENT]"  ~~ m/^<?isInGeneralPunctuation>$/ ), q{Don't match unrelated <?isInGeneralPunctuation>} );
ok("\c[MEDIUM RIGHT PARENTHESIS ORNAMENT]"  ~~ m/^<!isInGeneralPunctuation>.$/, q{Match unrelated negated <?isInGeneralPunctuation>} );
ok("\c[MEDIUM RIGHT PARENTHESIS ORNAMENT]"  ~~ m/^<-isInGeneralPunctuation>$/, q{Match unrelated inverted <?isInGeneralPunctuation>} );
ok("\c[MEDIUM RIGHT PARENTHESIS ORNAMENT]\c[EN QUAD]" ~~ m/<?isInGeneralPunctuation>/, q{Match unanchored <?isInGeneralPunctuation>} );

# InGeometricShapes


ok("\c[BLACK SQUARE]" ~~ m/^<?isInGeometricShapes>$/, q{Match <?isInGeometricShapes>} );
ok(!( "\c[BLACK SQUARE]" ~~ m/^<!isInGeometricShapes>.$/ ), q{Don't match negated <?isInGeometricShapes>} );
ok(!( "\c[BLACK SQUARE]" ~~ m/^<-isInGeometricShapes>$/ ), q{Don't match inverted <?isInGeometricShapes>} );
ok(!( "\x[B700]"  ~~ m/^<?isInGeometricShapes>$/ ), q{Don't match unrelated <?isInGeometricShapes>} );
ok("\x[B700]"  ~~ m/^<!isInGeometricShapes>.$/, q{Match unrelated negated <?isInGeometricShapes>} );
ok("\x[B700]"  ~~ m/^<-isInGeometricShapes>$/, q{Match unrelated inverted <?isInGeometricShapes>} );
ok("\x[B700]\c[BLACK SQUARE]" ~~ m/<?isInGeometricShapes>/, q{Match unanchored <?isInGeometricShapes>} );

# InGeorgian


ok("\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<?isInGeorgian>$/, q{Match <?isInGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<!isInGeorgian>.$/ ), q{Don't match negated <?isInGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<-isInGeorgian>$/ ), q{Don't match inverted <?isInGeorgian>} );
ok(!( "\c[IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR ONE]"  ~~ m/^<?isInGeorgian>$/ ), q{Don't match unrelated <?isInGeorgian>} );
ok("\c[IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR ONE]"  ~~ m/^<!isInGeorgian>.$/, q{Match unrelated negated <?isInGeorgian>} );
ok("\c[IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR ONE]"  ~~ m/^<-isInGeorgian>$/, q{Match unrelated inverted <?isInGeorgian>} );
ok("\c[IDEOGRAPHIC TELEGRAPH SYMBOL FOR HOUR ONE]\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/<?isInGeorgian>/, q{Match unanchored <?isInGeorgian>} );

# InGothic


ok(!( "\x[4825]"  ~~ m/^<?isInGothic>$/ ), q{Don't match unrelated <?isInGothic>} );
ok("\x[4825]"  ~~ m/^<!isInGothic>.$/, q{Match unrelated negated <?isInGothic>} );
ok("\x[4825]"  ~~ m/^<-isInGothic>$/, q{Match unrelated inverted <?isInGothic>} );

# InGreekExtended


ok("\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<?isInGreekExtended>$/, q{Match <?isInGreekExtended>} );
ok(!( "\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<!isInGreekExtended>.$/ ), q{Don't match negated <?isInGreekExtended>} );
ok(!( "\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/^<-isInGreekExtended>$/ ), q{Don't match inverted <?isInGreekExtended>} );
ok(!( "\x[B9B7]"  ~~ m/^<?isInGreekExtended>$/ ), q{Don't match unrelated <?isInGreekExtended>} );
ok("\x[B9B7]"  ~~ m/^<!isInGreekExtended>.$/, q{Match unrelated negated <?isInGreekExtended>} );
ok("\x[B9B7]"  ~~ m/^<-isInGreekExtended>$/, q{Match unrelated inverted <?isInGreekExtended>} );
ok("\x[B9B7]\c[GREEK SMALL LETTER ALPHA WITH PSILI]" ~~ m/<?isInGreekExtended>/, q{Match unanchored <?isInGreekExtended>} );

# InGreekAndCoptic


ok("\x[0370]" ~~ m/^<?isInGreekAndCoptic>$/, q{Match <?isInGreekAndCoptic>} );
ok(!( "\x[0370]" ~~ m/^<!isInGreekAndCoptic>.$/ ), q{Don't match negated <?isInGreekAndCoptic>} );
ok(!( "\x[0370]" ~~ m/^<-isInGreekAndCoptic>$/ ), q{Don't match inverted <?isInGreekAndCoptic>} );
ok(!( "\x[7197]"  ~~ m/^<?isInGreekAndCoptic>$/ ), q{Don't match unrelated <?isInGreekAndCoptic>} );
ok("\x[7197]"  ~~ m/^<!isInGreekAndCoptic>.$/, q{Match unrelated negated <?isInGreekAndCoptic>} );
ok("\x[7197]"  ~~ m/^<-isInGreekAndCoptic>$/, q{Match unrelated inverted <?isInGreekAndCoptic>} );
ok("\x[7197]\x[0370]" ~~ m/<?isInGreekAndCoptic>/, q{Match unanchored <?isInGreekAndCoptic>} );

# InGujarati


ok("\x[0A80]" ~~ m/^<?isInGujarati>$/, q{Match <?isInGujarati>} );
ok(!( "\x[0A80]" ~~ m/^<!isInGujarati>.$/ ), q{Don't match negated <?isInGujarati>} );
ok(!( "\x[0A80]" ~~ m/^<-isInGujarati>$/ ), q{Don't match inverted <?isInGujarati>} );
ok(!( "\x[3B63]"  ~~ m/^<?isInGujarati>$/ ), q{Don't match unrelated <?isInGujarati>} );
ok("\x[3B63]"  ~~ m/^<!isInGujarati>.$/, q{Match unrelated negated <?isInGujarati>} );
ok("\x[3B63]"  ~~ m/^<-isInGujarati>$/, q{Match unrelated inverted <?isInGujarati>} );
ok("\x[3B63]\x[0A80]" ~~ m/<?isInGujarati>/, q{Match unanchored <?isInGujarati>} );

# InGurmukhi


ok("\x[0A00]" ~~ m/^<?isInGurmukhi>$/, q{Match <?isInGurmukhi>} );
ok(!( "\x[0A00]" ~~ m/^<!isInGurmukhi>.$/ ), q{Don't match negated <?isInGurmukhi>} );
ok(!( "\x[0A00]" ~~ m/^<-isInGurmukhi>$/ ), q{Don't match inverted <?isInGurmukhi>} );
ok(!( "\x[10C8]"  ~~ m/^<?isInGurmukhi>$/ ), q{Don't match unrelated <?isInGurmukhi>} );
ok("\x[10C8]"  ~~ m/^<!isInGurmukhi>.$/, q{Match unrelated negated <?isInGurmukhi>} );
ok("\x[10C8]"  ~~ m/^<-isInGurmukhi>$/, q{Match unrelated inverted <?isInGurmukhi>} );
ok("\x[10C8]\x[0A00]" ~~ m/<?isInGurmukhi>/, q{Match unanchored <?isInGurmukhi>} );

# InHalfwidthAndFullwidthForms


ok(!( "\x[CA55]"  ~~ m/^<?isInHalfwidthAndFullwidthForms>$/ ), q{Don't match unrelated <?isInHalfwidthAndFullwidthForms>} );
ok("\x[CA55]"  ~~ m/^<!isInHalfwidthAndFullwidthForms>.$/, q{Match unrelated negated <?isInHalfwidthAndFullwidthForms>} );
ok("\x[CA55]"  ~~ m/^<-isInHalfwidthAndFullwidthForms>$/, q{Match unrelated inverted <?isInHalfwidthAndFullwidthForms>} );

# InHangulCompatibilityJamo


ok("\x[3130]" ~~ m/^<?isInHangulCompatibilityJamo>$/, q{Match <?isInHangulCompatibilityJamo>} );
ok(!( "\x[3130]" ~~ m/^<!isInHangulCompatibilityJamo>.$/ ), q{Don't match negated <?isInHangulCompatibilityJamo>} );
ok(!( "\x[3130]" ~~ m/^<-isInHangulCompatibilityJamo>$/ ), q{Don't match inverted <?isInHangulCompatibilityJamo>} );
ok(!( "\c[MEASURED BY]"  ~~ m/^<?isInHangulCompatibilityJamo>$/ ), q{Don't match unrelated <?isInHangulCompatibilityJamo>} );
ok("\c[MEASURED BY]"  ~~ m/^<!isInHangulCompatibilityJamo>.$/, q{Match unrelated negated <?isInHangulCompatibilityJamo>} );
ok("\c[MEASURED BY]"  ~~ m/^<-isInHangulCompatibilityJamo>$/, q{Match unrelated inverted <?isInHangulCompatibilityJamo>} );
ok("\c[MEASURED BY]\x[3130]" ~~ m/<?isInHangulCompatibilityJamo>/, q{Match unanchored <?isInHangulCompatibilityJamo>} );

# InHangulJamo


ok("\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<?isInHangulJamo>$/, q{Match <?isInHangulJamo>} );
ok(!( "\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<!isInHangulJamo>.$/ ), q{Don't match negated <?isInHangulJamo>} );
ok(!( "\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<-isInHangulJamo>$/ ), q{Don't match inverted <?isInHangulJamo>} );
ok(!( "\x[3B72]"  ~~ m/^<?isInHangulJamo>$/ ), q{Don't match unrelated <?isInHangulJamo>} );
ok("\x[3B72]"  ~~ m/^<!isInHangulJamo>.$/, q{Match unrelated negated <?isInHangulJamo>} );
ok("\x[3B72]"  ~~ m/^<-isInHangulJamo>$/, q{Match unrelated inverted <?isInHangulJamo>} );
ok("\x[3B72]\c[HANGUL CHOSEONG KIYEOK]" ~~ m/<?isInHangulJamo>/, q{Match unanchored <?isInHangulJamo>} );

# InHangulSyllables


ok("\x[CD95]" ~~ m/^<?isInHangulSyllables>$/, q{Match <?isInHangulSyllables>} );
ok(!( "\x[CD95]" ~~ m/^<!isInHangulSyllables>.$/ ), q{Don't match negated <?isInHangulSyllables>} );
ok(!( "\x[CD95]" ~~ m/^<-isInHangulSyllables>$/ ), q{Don't match inverted <?isInHangulSyllables>} );
ok(!( "\x[D7B0]"  ~~ m/^<?isInHangulSyllables>$/ ), q{Don't match unrelated <?isInHangulSyllables>} );
ok("\x[D7B0]"  ~~ m/^<!isInHangulSyllables>.$/, q{Match unrelated negated <?isInHangulSyllables>} );
ok("\x[D7B0]"  ~~ m/^<-isInHangulSyllables>$/, q{Match unrelated inverted <?isInHangulSyllables>} );
ok("\x[D7B0]\x[CD95]" ~~ m/<?isInHangulSyllables>/, q{Match unanchored <?isInHangulSyllables>} );

# InHanunoo


ok("\c[HANUNOO LETTER A]" ~~ m/^<?isInHanunoo>$/, q{Match <?isInHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<!isInHanunoo>.$/ ), q{Don't match negated <?isInHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<-isInHanunoo>$/ ), q{Don't match inverted <?isInHanunoo>} );
ok(!( "\x[6F4F]"  ~~ m/^<?isInHanunoo>$/ ), q{Don't match unrelated <?isInHanunoo>} );
ok("\x[6F4F]"  ~~ m/^<!isInHanunoo>.$/, q{Match unrelated negated <?isInHanunoo>} );
ok("\x[6F4F]"  ~~ m/^<-isInHanunoo>$/, q{Match unrelated inverted <?isInHanunoo>} );
ok("\x[6F4F]\c[HANUNOO LETTER A]" ~~ m/<?isInHanunoo>/, q{Match unanchored <?isInHanunoo>} );

# InHebrew


ok("\x[0590]" ~~ m/^<?isInHebrew>$/, q{Match <?isInHebrew>} );
ok(!( "\x[0590]" ~~ m/^<!isInHebrew>.$/ ), q{Don't match negated <?isInHebrew>} );
ok(!( "\x[0590]" ~~ m/^<-isInHebrew>$/ ), q{Don't match inverted <?isInHebrew>} );
ok(!( "\x[0777]"  ~~ m/^<?isInHebrew>$/ ), q{Don't match unrelated <?isInHebrew>} );
ok("\x[0777]"  ~~ m/^<!isInHebrew>.$/, q{Match unrelated negated <?isInHebrew>} );
ok("\x[0777]"  ~~ m/^<-isInHebrew>$/, q{Match unrelated inverted <?isInHebrew>} );
ok("\x[0777]\x[0590]" ~~ m/<?isInHebrew>/, q{Match unanchored <?isInHebrew>} );

# InHighPrivateUseSurrogates


ok(!( "\x[D04F]"  ~~ m/^<?isInHighPrivateUseSurrogates>$/ ), q{Don't match unrelated <?isInHighPrivateUseSurrogates>} );
ok("\x[D04F]"  ~~ m/^<!isInHighPrivateUseSurrogates>.$/, q{Match unrelated negated <?isInHighPrivateUseSurrogates>} );
ok("\x[D04F]"  ~~ m/^<-isInHighPrivateUseSurrogates>$/, q{Match unrelated inverted <?isInHighPrivateUseSurrogates>} );

# InHighSurrogates


ok(!( "\x[D085]"  ~~ m/^<?isInHighSurrogates>$/ ), q{Don't match unrelated <?isInHighSurrogates>} );
ok("\x[D085]"  ~~ m/^<!isInHighSurrogates>.$/, q{Match unrelated negated <?isInHighSurrogates>} );
ok("\x[D085]"  ~~ m/^<-isInHighSurrogates>$/, q{Match unrelated inverted <?isInHighSurrogates>} );

# InHiragana


ok("\x[3040]" ~~ m/^<?isInHiragana>$/, q{Match <?isInHiragana>} );
ok(!( "\x[3040]" ~~ m/^<!isInHiragana>.$/ ), q{Don't match negated <?isInHiragana>} );
ok(!( "\x[3040]" ~~ m/^<-isInHiragana>$/ ), q{Don't match inverted <?isInHiragana>} );
ok(!( "\x[AC7C]"  ~~ m/^<?isInHiragana>$/ ), q{Don't match unrelated <?isInHiragana>} );
ok("\x[AC7C]"  ~~ m/^<!isInHiragana>.$/, q{Match unrelated negated <?isInHiragana>} );
ok("\x[AC7C]"  ~~ m/^<-isInHiragana>$/, q{Match unrelated inverted <?isInHiragana>} );
ok("\x[AC7C]\x[3040]" ~~ m/<?isInHiragana>/, q{Match unanchored <?isInHiragana>} );

# InIPAExtensions


ok("\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<?isInIPAExtensions>$/, q{Match <?isInIPAExtensions>} );
ok(!( "\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<!isInIPAExtensions>.$/ ), q{Don't match negated <?isInIPAExtensions>} );
ok(!( "\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<-isInIPAExtensions>$/ ), q{Don't match inverted <?isInIPAExtensions>} );
ok(!( "\c[HANGUL LETTER SSANGIEUNG]"  ~~ m/^<?isInIPAExtensions>$/ ), q{Don't match unrelated <?isInIPAExtensions>} );
ok("\c[HANGUL LETTER SSANGIEUNG]"  ~~ m/^<!isInIPAExtensions>.$/, q{Match unrelated negated <?isInIPAExtensions>} );
ok("\c[HANGUL LETTER SSANGIEUNG]"  ~~ m/^<-isInIPAExtensions>$/, q{Match unrelated inverted <?isInIPAExtensions>} );
ok("\c[HANGUL LETTER SSANGIEUNG]\c[LATIN SMALL LETTER TURNED A]" ~~ m/<?isInIPAExtensions>/, q{Match unanchored <?isInIPAExtensions>} );

# InIdeographicDescriptionCharacters


ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<?isInIdeographicDescriptionCharacters>$/, q{Match <?isInIdeographicDescriptionCharacters>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<!isInIdeographicDescriptionCharacters>.$/ ), q{Don't match negated <?isInIdeographicDescriptionCharacters>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<-isInIdeographicDescriptionCharacters>$/ ), q{Don't match inverted <?isInIdeographicDescriptionCharacters>} );
ok(!( "\x[9160]"  ~~ m/^<?isInIdeographicDescriptionCharacters>$/ ), q{Don't match unrelated <?isInIdeographicDescriptionCharacters>} );
ok("\x[9160]"  ~~ m/^<!isInIdeographicDescriptionCharacters>.$/, q{Match unrelated negated <?isInIdeographicDescriptionCharacters>} );
ok("\x[9160]"  ~~ m/^<-isInIdeographicDescriptionCharacters>$/, q{Match unrelated inverted <?isInIdeographicDescriptionCharacters>} );
ok("\x[9160]\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/<?isInIdeographicDescriptionCharacters>/, q{Match unanchored <?isInIdeographicDescriptionCharacters>} );

# InKanbun


ok("\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<?isInKanbun>$/, q{Match <?isInKanbun>} );
ok(!( "\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<!isInKanbun>.$/ ), q{Don't match negated <?isInKanbun>} );
ok(!( "\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<-isInKanbun>$/ ), q{Don't match inverted <?isInKanbun>} );
ok(!( "\x[A80C]"  ~~ m/^<?isInKanbun>$/ ), q{Don't match unrelated <?isInKanbun>} );
ok("\x[A80C]"  ~~ m/^<!isInKanbun>.$/, q{Match unrelated negated <?isInKanbun>} );
ok("\x[A80C]"  ~~ m/^<-isInKanbun>$/, q{Match unrelated inverted <?isInKanbun>} );
ok("\x[A80C]\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/<?isInKanbun>/, q{Match unanchored <?isInKanbun>} );

# InKangxiRadicals


ok("\c[KANGXI RADICAL ONE]" ~~ m/^<?isInKangxiRadicals>$/, q{Match <?isInKangxiRadicals>} );
ok(!( "\c[KANGXI RADICAL ONE]" ~~ m/^<!isInKangxiRadicals>.$/ ), q{Don't match negated <?isInKangxiRadicals>} );
ok(!( "\c[KANGXI RADICAL ONE]" ~~ m/^<-isInKangxiRadicals>$/ ), q{Don't match inverted <?isInKangxiRadicals>} );
ok(!( "\x[891A]"  ~~ m/^<?isInKangxiRadicals>$/ ), q{Don't match unrelated <?isInKangxiRadicals>} );
ok("\x[891A]"  ~~ m/^<!isInKangxiRadicals>.$/, q{Match unrelated negated <?isInKangxiRadicals>} );
ok("\x[891A]"  ~~ m/^<-isInKangxiRadicals>$/, q{Match unrelated inverted <?isInKangxiRadicals>} );
ok("\x[891A]\c[KANGXI RADICAL ONE]" ~~ m/<?isInKangxiRadicals>/, q{Match unanchored <?isInKangxiRadicals>} );

# InKannada


ok("\x[0C80]" ~~ m/^<?isInKannada>$/, q{Match <?isInKannada>} );
ok(!( "\x[0C80]" ~~ m/^<!isInKannada>.$/ ), q{Don't match negated <?isInKannada>} );
ok(!( "\x[0C80]" ~~ m/^<-isInKannada>$/ ), q{Don't match inverted <?isInKannada>} );
ok(!( "\x[B614]"  ~~ m/^<?isInKannada>$/ ), q{Don't match unrelated <?isInKannada>} );
ok("\x[B614]"  ~~ m/^<!isInKannada>.$/, q{Match unrelated negated <?isInKannada>} );
ok("\x[B614]"  ~~ m/^<-isInKannada>$/, q{Match unrelated inverted <?isInKannada>} );
ok("\x[B614]\x[0C80]" ~~ m/<?isInKannada>/, q{Match unanchored <?isInKannada>} );

# InKatakana


ok("\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<?isInKatakana>$/, q{Match <?isInKatakana>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<!isInKatakana>.$/ ), q{Don't match negated <?isInKatakana>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<-isInKatakana>$/ ), q{Don't match inverted <?isInKatakana>} );
ok(!( "\x[7EB8]"  ~~ m/^<?isInKatakana>$/ ), q{Don't match unrelated <?isInKatakana>} );
ok("\x[7EB8]"  ~~ m/^<!isInKatakana>.$/, q{Match unrelated negated <?isInKatakana>} );
ok("\x[7EB8]"  ~~ m/^<-isInKatakana>$/, q{Match unrelated inverted <?isInKatakana>} );
ok("\x[7EB8]\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/<?isInKatakana>/, q{Match unanchored <?isInKatakana>} );

# InKatakanaPhoneticExtensions


ok("\c[KATAKANA LETTER SMALL KU]" ~~ m/^<?isInKatakanaPhoneticExtensions>$/, q{Match <?isInKatakanaPhoneticExtensions>} );
