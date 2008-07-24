use v6-alpha;
use Test;
plan 119;
{
ok("\x[3DF1]"  ~~ m/^<!isInSpecials>.$/, q{Match unrelated negated <?isInSpecials>} );
ok("\x[3DF1]"  ~~ m/^<-isInSpecials>$/, q{Match unrelated inverted <?isInSpecials>} );

# InSuperscriptsAndSubscripts


ok("\c[SUPERSCRIPT ZERO]" ~~ m/^<?isInSuperscriptsAndSubscripts>$/, q{Match <?isInSuperscriptsAndSubscripts>} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<!isInSuperscriptsAndSubscripts>.$/ ), q{Don't match negated <?isInSuperscriptsAndSubscripts>} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<-isInSuperscriptsAndSubscripts>$/ ), q{Don't match inverted <?isInSuperscriptsAndSubscripts>} );
ok(!( "\x[3E71]"  ~~ m/^<?isInSuperscriptsAndSubscripts>$/ ), q{Don't match unrelated <?isInSuperscriptsAndSubscripts>} );
ok("\x[3E71]"  ~~ m/^<!isInSuperscriptsAndSubscripts>.$/, q{Match unrelated negated <?isInSuperscriptsAndSubscripts>} );
ok("\x[3E71]"  ~~ m/^<-isInSuperscriptsAndSubscripts>$/, q{Match unrelated inverted <?isInSuperscriptsAndSubscripts>} );
ok("\x[3E71]\c[SUPERSCRIPT ZERO]" ~~ m/<?isInSuperscriptsAndSubscripts>/, q{Match unanchored <?isInSuperscriptsAndSubscripts>} );

# InSupplementalArrowsA


ok("\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<?isInSupplementalArrowsA>$/, q{Match <?isInSupplementalArrowsA>} );
ok(!( "\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<!isInSupplementalArrowsA>.$/ ), q{Don't match negated <?isInSupplementalArrowsA>} );
ok(!( "\c[UPWARDS QUADRUPLE ARROW]" ~~ m/^<-isInSupplementalArrowsA>$/ ), q{Don't match inverted <?isInSupplementalArrowsA>} );
ok(!( "\c[GREEK SMALL LETTER OMICRON WITH TONOS]"  ~~ m/^<?isInSupplementalArrowsA>$/ ), q{Don't match unrelated <?isInSupplementalArrowsA>} );
ok("\c[GREEK SMALL LETTER OMICRON WITH TONOS]"  ~~ m/^<!isInSupplementalArrowsA>.$/, q{Match unrelated negated <?isInSupplementalArrowsA>} );
ok("\c[GREEK SMALL LETTER OMICRON WITH TONOS]"  ~~ m/^<-isInSupplementalArrowsA>$/, q{Match unrelated inverted <?isInSupplementalArrowsA>} );
ok("\c[GREEK SMALL LETTER OMICRON WITH TONOS]\c[UPWARDS QUADRUPLE ARROW]" ~~ m/<?isInSupplementalArrowsA>/, q{Match unanchored <?isInSupplementalArrowsA>} );

# InSupplementalArrowsB


ok("\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<?isInSupplementalArrowsB>$/, q{Match <?isInSupplementalArrowsB>} );
ok(!( "\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<!isInSupplementalArrowsB>.$/ ), q{Don't match negated <?isInSupplementalArrowsB>} );
ok(!( "\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<-isInSupplementalArrowsB>$/ ), q{Don't match inverted <?isInSupplementalArrowsB>} );
ok(!( "\x[C1A9]"  ~~ m/^<?isInSupplementalArrowsB>$/ ), q{Don't match unrelated <?isInSupplementalArrowsB>} );
ok("\x[C1A9]"  ~~ m/^<!isInSupplementalArrowsB>.$/, q{Match unrelated negated <?isInSupplementalArrowsB>} );
ok("\x[C1A9]"  ~~ m/^<-isInSupplementalArrowsB>$/, q{Match unrelated inverted <?isInSupplementalArrowsB>} );
ok("\x[C1A9]\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/<?isInSupplementalArrowsB>/, q{Match unanchored <?isInSupplementalArrowsB>} );

# InSupplementalMathematicalOperators


ok("\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<?isInSupplementalMathematicalOperators>$/, q{Match <?isInSupplementalMathematicalOperators>} );
ok(!( "\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<!isInSupplementalMathematicalOperators>.$/ ), q{Don't match negated <?isInSupplementalMathematicalOperators>} );
ok(!( "\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<-isInSupplementalMathematicalOperators>$/ ), q{Don't match inverted <?isInSupplementalMathematicalOperators>} );
ok(!( "\x[9EBD]"  ~~ m/^<?isInSupplementalMathematicalOperators>$/ ), q{Don't match unrelated <?isInSupplementalMathematicalOperators>} );
ok("\x[9EBD]"  ~~ m/^<!isInSupplementalMathematicalOperators>.$/, q{Match unrelated negated <?isInSupplementalMathematicalOperators>} );
ok("\x[9EBD]"  ~~ m/^<-isInSupplementalMathematicalOperators>$/, q{Match unrelated inverted <?isInSupplementalMathematicalOperators>} );
ok("\x[9EBD]\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/<?isInSupplementalMathematicalOperators>/, q{Match unanchored <?isInSupplementalMathematicalOperators>} );

# InSupplementaryPrivateUseAreaA


ok(!( "\x[07E3]"  ~~ m/^<?isInSupplementaryPrivateUseAreaA>$/ ), q{Don't match unrelated <?isInSupplementaryPrivateUseAreaA>} );
ok("\x[07E3]"  ~~ m/^<!isInSupplementaryPrivateUseAreaA>.$/, q{Match unrelated negated <?isInSupplementaryPrivateUseAreaA>} );
ok("\x[07E3]"  ~~ m/^<-isInSupplementaryPrivateUseAreaA>$/, q{Match unrelated inverted <?isInSupplementaryPrivateUseAreaA>} );

# InSupplementaryPrivateUseAreaB


ok(!( "\x[4C48]"  ~~ m/^<?isInSupplementaryPrivateUseAreaB>$/ ), q{Don't match unrelated <?isInSupplementaryPrivateUseAreaB>} );
ok("\x[4C48]"  ~~ m/^<!isInSupplementaryPrivateUseAreaB>.$/, q{Match unrelated negated <?isInSupplementaryPrivateUseAreaB>} );
ok("\x[4C48]"  ~~ m/^<-isInSupplementaryPrivateUseAreaB>$/, q{Match unrelated inverted <?isInSupplementaryPrivateUseAreaB>} );

# InSyriac


ok("\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<?isInSyriac>$/, q{Match <?isInSyriac>} );
ok(!( "\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<!isInSyriac>.$/ ), q{Don't match negated <?isInSyriac>} );
ok(!( "\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<-isInSyriac>$/ ), q{Don't match inverted <?isInSyriac>} );
ok(!( "\c[YI SYLLABLE NZIEP]"  ~~ m/^<?isInSyriac>$/ ), q{Don't match unrelated <?isInSyriac>} );
ok("\c[YI SYLLABLE NZIEP]"  ~~ m/^<!isInSyriac>.$/, q{Match unrelated negated <?isInSyriac>} );
ok("\c[YI SYLLABLE NZIEP]"  ~~ m/^<-isInSyriac>$/, q{Match unrelated inverted <?isInSyriac>} );
ok("\c[YI SYLLABLE NZIEP]\c[SYRIAC END OF PARAGRAPH]" ~~ m/<?isInSyriac>/, q{Match unanchored <?isInSyriac>} );

# InTagalog


ok("\c[TAGALOG LETTER A]" ~~ m/^<?isInTagalog>$/, q{Match <?isInTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<!isInTagalog>.$/ ), q{Don't match negated <?isInTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<-isInTagalog>$/ ), q{Don't match inverted <?isInTagalog>} );
ok(!( "\c[GEORGIAN LETTER BAN]"  ~~ m/^<?isInTagalog>$/ ), q{Don't match unrelated <?isInTagalog>} );
ok("\c[GEORGIAN LETTER BAN]"  ~~ m/^<!isInTagalog>.$/, q{Match unrelated negated <?isInTagalog>} );
ok("\c[GEORGIAN LETTER BAN]"  ~~ m/^<-isInTagalog>$/, q{Match unrelated inverted <?isInTagalog>} );
ok("\c[GEORGIAN LETTER BAN]\c[TAGALOG LETTER A]" ~~ m/<?isInTagalog>/, q{Match unanchored <?isInTagalog>} );

# InTagbanwa


ok("\c[TAGBANWA LETTER A]" ~~ m/^<?isInTagbanwa>$/, q{Match <?isInTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<!isInTagbanwa>.$/ ), q{Don't match negated <?isInTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<-isInTagbanwa>$/ ), q{Don't match inverted <?isInTagbanwa>} );
ok(!( "\x[5776]"  ~~ m/^<?isInTagbanwa>$/ ), q{Don't match unrelated <?isInTagbanwa>} );
ok("\x[5776]"  ~~ m/^<!isInTagbanwa>.$/, q{Match unrelated negated <?isInTagbanwa>} );
ok("\x[5776]"  ~~ m/^<-isInTagbanwa>$/, q{Match unrelated inverted <?isInTagbanwa>} );
ok("\x[5776]\c[TAGBANWA LETTER A]" ~~ m/<?isInTagbanwa>/, q{Match unanchored <?isInTagbanwa>} );

# InTags


ok(!( "\x[3674]"  ~~ m/^<?isInTags>$/ ), q{Don't match unrelated <?isInTags>} );
ok("\x[3674]"  ~~ m/^<!isInTags>.$/, q{Match unrelated negated <?isInTags>} );
ok("\x[3674]"  ~~ m/^<-isInTags>$/, q{Match unrelated inverted <?isInTags>} );

# InTamil


ok("\x[0B80]" ~~ m/^<?isInTamil>$/, q{Match <?isInTamil>} );
ok(!( "\x[0B80]" ~~ m/^<!isInTamil>.$/ ), q{Don't match negated <?isInTamil>} );
ok(!( "\x[0B80]" ~~ m/^<-isInTamil>$/ ), q{Don't match inverted <?isInTamil>} );
ok(!( "\x[B58F]"  ~~ m/^<?isInTamil>$/ ), q{Don't match unrelated <?isInTamil>} );
ok("\x[B58F]"  ~~ m/^<!isInTamil>.$/, q{Match unrelated negated <?isInTamil>} );
ok("\x[B58F]"  ~~ m/^<-isInTamil>$/, q{Match unrelated inverted <?isInTamil>} );
ok("\x[B58F]\x[0B80]" ~~ m/<?isInTamil>/, q{Match unanchored <?isInTamil>} );

# InTelugu


ok("\x[0C00]" ~~ m/^<?isInTelugu>$/, q{Match <?isInTelugu>} );
ok(!( "\x[0C00]" ~~ m/^<!isInTelugu>.$/ ), q{Don't match negated <?isInTelugu>} );
ok(!( "\x[0C00]" ~~ m/^<-isInTelugu>$/ ), q{Don't match inverted <?isInTelugu>} );
ok(!( "\x[8AC5]"  ~~ m/^<?isInTelugu>$/ ), q{Don't match unrelated <?isInTelugu>} );
ok("\x[8AC5]"  ~~ m/^<!isInTelugu>.$/, q{Match unrelated negated <?isInTelugu>} );
ok("\x[8AC5]"  ~~ m/^<-isInTelugu>$/, q{Match unrelated inverted <?isInTelugu>} );
ok("\x[8AC5]\x[0C00]" ~~ m/<?isInTelugu>/, q{Match unanchored <?isInTelugu>} );

# InThaana


ok("\c[THAANA LETTER HAA]" ~~ m/^<?isInThaana>$/, q{Match <?isInThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<!isInThaana>.$/ ), q{Don't match negated <?isInThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<-isInThaana>$/ ), q{Don't match inverted <?isInThaana>} );
ok(!( "\x[BB8F]"  ~~ m/^<?isInThaana>$/ ), q{Don't match unrelated <?isInThaana>} );
ok("\x[BB8F]"  ~~ m/^<!isInThaana>.$/, q{Match unrelated negated <?isInThaana>} );
ok("\x[BB8F]"  ~~ m/^<-isInThaana>$/, q{Match unrelated inverted <?isInThaana>} );
ok("\x[BB8F]\c[THAANA LETTER HAA]" ~~ m/<?isInThaana>/, q{Match unanchored <?isInThaana>} );

# InThai


ok("\x[0E00]" ~~ m/^<?isInThai>$/, q{Match <?isInThai>} );
ok(!( "\x[0E00]" ~~ m/^<!isInThai>.$/ ), q{Don't match negated <?isInThai>} );
ok(!( "\x[0E00]" ~~ m/^<-isInThai>$/ ), q{Don't match inverted <?isInThai>} );
ok(!( "\x[9395]"  ~~ m/^<?isInThai>$/ ), q{Don't match unrelated <?isInThai>} );
ok("\x[9395]"  ~~ m/^<!isInThai>.$/, q{Match unrelated negated <?isInThai>} );
ok("\x[9395]"  ~~ m/^<-isInThai>$/, q{Match unrelated inverted <?isInThai>} );
ok("\x[9395]\x[0E00]" ~~ m/<?isInThai>/, q{Match unanchored <?isInThai>} );

# InTibetan


ok("\c[TIBETAN SYLLABLE OM]" ~~ m/^<?isInTibetan>$/, q{Match <?isInTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<!isInTibetan>.$/ ), q{Don't match negated <?isInTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<-isInTibetan>$/ ), q{Don't match inverted <?isInTibetan>} );
ok(!( "\x[957A]"  ~~ m/^<?isInTibetan>$/ ), q{Don't match unrelated <?isInTibetan>} );
ok("\x[957A]"  ~~ m/^<!isInTibetan>.$/, q{Match unrelated negated <?isInTibetan>} );
ok("\x[957A]"  ~~ m/^<-isInTibetan>$/, q{Match unrelated inverted <?isInTibetan>} );
ok("\x[957A]\c[TIBETAN SYLLABLE OM]" ~~ m/<?isInTibetan>/, q{Match unanchored <?isInTibetan>} );

# InUnifiedCanadianAboriginalSyllabics


ok("\x[1400]" ~~ m/^<?isInUnifiedCanadianAboriginalSyllabics>$/, q{Match <?isInUnifiedCanadianAboriginalSyllabics>} );
ok(!( "\x[1400]" ~~ m/^<!isInUnifiedCanadianAboriginalSyllabics>.$/ ), q{Don't match negated <?isInUnifiedCanadianAboriginalSyllabics>} );
ok(!( "\x[1400]" ~~ m/^<-isInUnifiedCanadianAboriginalSyllabics>$/ ), q{Don't match inverted <?isInUnifiedCanadianAboriginalSyllabics>} );
ok(!( "\x[9470]"  ~~ m/^<?isInUnifiedCanadianAboriginalSyllabics>$/ ), q{Don't match unrelated <?isInUnifiedCanadianAboriginalSyllabics>} );
ok("\x[9470]"  ~~ m/^<!isInUnifiedCanadianAboriginalSyllabics>.$/, q{Match unrelated negated <?isInUnifiedCanadianAboriginalSyllabics>} );
ok("\x[9470]"  ~~ m/^<-isInUnifiedCanadianAboriginalSyllabics>$/, q{Match unrelated inverted <?isInUnifiedCanadianAboriginalSyllabics>} );
ok("\x[9470]\x[1400]" ~~ m/<?isInUnifiedCanadianAboriginalSyllabics>/, q{Match unanchored <?isInUnifiedCanadianAboriginalSyllabics>} );

# InVariationSelectors


ok(!( "\x[764D]"  ~~ m/^<?isInVariationSelectors>$/ ), q{Don't match unrelated <?isInVariationSelectors>} );
ok("\x[764D]"  ~~ m/^<!isInVariationSelectors>.$/, q{Match unrelated negated <?isInVariationSelectors>} );
ok("\x[764D]"  ~~ m/^<-isInVariationSelectors>$/, q{Match unrelated inverted <?isInVariationSelectors>} );

# InYiRadicals


ok("\c[YI RADICAL QOT]" ~~ m/^<?isInYiRadicals>$/, q{Match <?isInYiRadicals>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<!isInYiRadicals>.$/ ), q{Don't match negated <?isInYiRadicals>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<-isInYiRadicals>$/ ), q{Don't match inverted <?isInYiRadicals>} );
ok(!( "\x[3A4E]"  ~~ m/^<?isInYiRadicals>$/ ), q{Don't match unrelated <?isInYiRadicals>} );
ok("\x[3A4E]"  ~~ m/^<!isInYiRadicals>.$/, q{Match unrelated negated <?isInYiRadicals>} );
ok("\x[3A4E]"  ~~ m/^<-isInYiRadicals>$/, q{Match unrelated inverted <?isInYiRadicals>} );
ok("\x[3A4E]\c[YI RADICAL QOT]" ~~ m/<?isInYiRadicals>/, q{Match unanchored <?isInYiRadicals>} );

# InYiSyllables


ok("\c[YI SYLLABLE IT]" ~~ m/^<?isInYiSyllables>$/, q{Match <?isInYiSyllables>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<!isInYiSyllables>.$/ ), q{Don't match negated <?isInYiSyllables>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<-isInYiSyllables>$/ ), q{Don't match inverted <?isInYiSyllables>} );
ok(!( "\c[PARALLEL WITH HORIZONTAL STROKE]"  ~~ m/^<?isInYiSyllables>$/ ), q{Don't match unrelated <?isInYiSyllables>} );
ok("\c[PARALLEL WITH HORIZONTAL STROKE]"  ~~ m/^<!isInYiSyllables>.$/, q{Match unrelated negated <?isInYiSyllables>} );
ok("\c[PARALLEL WITH HORIZONTAL STROKE]"  ~~ m/^<-isInYiSyllables>$/, q{Match unrelated inverted <?isInYiSyllables>} );
ok("\c[PARALLEL WITH HORIZONTAL STROKE]\c[YI SYLLABLE IT]" ~~ m/<?isInYiSyllables>/, q{Match unanchored <?isInYiSyllables>} );


}

