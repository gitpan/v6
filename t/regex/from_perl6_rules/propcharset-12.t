use v6-alpha;
use Test;
plan 133;
{
ok(!( "\c[LIMBU DIGIT SEVEN]"  ~~ m/^<+isInSupplementalArrowsA>$/ ), q{Don't match unrelated <isInSupplementalArrowsA>} );
ok("\c[LIMBU DIGIT SEVEN]"  ~~ m/^<!isInSupplementalArrowsA>.$/, q{Match unrelated externally inverted <isInSupplementalArrowsA>} );
ok("\c[LIMBU DIGIT SEVEN]"  ~~ m/^<-isInSupplementalArrowsA>$/, q{Match unrelated internally inverted <isInSupplementalArrowsA>} );
ok("\c[LIMBU DIGIT SEVEN]\c[UPWARDS QUADRUPLE ARROW]" ~~ m/<+isInSupplementalArrowsA>/, q{Match unanchored <isInSupplementalArrowsA>} );

# InSupplementalArrowsB


ok("\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<+isInSupplementalArrowsB>$/, q{Match <isInSupplementalArrowsB>} );
ok("\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<[A]+isInSupplementalArrowsB>$/, q{Match compound <isInSupplementalArrowsB>} );
ok(!( "\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<!isInSupplementalArrowsB>.$/ ), q{Don't match externally inverted <isInSupplementalArrowsB>} );
ok(!( "\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<[A]-isInSupplementalArrowsB>$/ ), q{Don't match compound inverted <isInSupplementalArrowsB>} );
ok(!( "\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/^<-isInSupplementalArrowsB>$/ ), q{Don't match internally inverted <isInSupplementalArrowsB>} );
ok(!( "\x[1D7D]"  ~~ m/^<+isInSupplementalArrowsB>$/ ), q{Don't match unrelated <isInSupplementalArrowsB>} );
ok("\x[1D7D]"  ~~ m/^<!isInSupplementalArrowsB>.$/, q{Match unrelated externally inverted <isInSupplementalArrowsB>} );
ok("\x[1D7D]"  ~~ m/^<-isInSupplementalArrowsB>$/, q{Match unrelated internally inverted <isInSupplementalArrowsB>} );
ok("\x[1D7D]\c[RIGHTWARDS TWO-HEADED ARROW WITH VERTICAL STROKE]" ~~ m/<+isInSupplementalArrowsB>/, q{Match unanchored <isInSupplementalArrowsB>} );

# InSupplementalMathematicalOperators


ok("\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<+isInSupplementalMathematicalOperators>$/, q{Match <isInSupplementalMathematicalOperators>} );
ok("\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<[A]+isInSupplementalMathematicalOperators>$/, q{Match compound <isInSupplementalMathematicalOperators>} );
ok(!( "\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<!isInSupplementalMathematicalOperators>.$/ ), q{Don't match externally inverted <isInSupplementalMathematicalOperators>} );
ok(!( "\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<[A]-isInSupplementalMathematicalOperators>$/ ), q{Don't match compound inverted <isInSupplementalMathematicalOperators>} );
ok(!( "\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/^<-isInSupplementalMathematicalOperators>$/ ), q{Don't match internally inverted <isInSupplementalMathematicalOperators>} );
ok(!( "\c[YI SYLLABLE TAX]"  ~~ m/^<+isInSupplementalMathematicalOperators>$/ ), q{Don't match unrelated <isInSupplementalMathematicalOperators>} );
ok("\c[YI SYLLABLE TAX]"  ~~ m/^<!isInSupplementalMathematicalOperators>.$/, q{Match unrelated externally inverted <isInSupplementalMathematicalOperators>} );
ok("\c[YI SYLLABLE TAX]"  ~~ m/^<-isInSupplementalMathematicalOperators>$/, q{Match unrelated internally inverted <isInSupplementalMathematicalOperators>} );
ok("\c[YI SYLLABLE TAX]\c[N-ARY CIRCLED DOT OPERATOR]" ~~ m/<+isInSupplementalMathematicalOperators>/, q{Match unanchored <isInSupplementalMathematicalOperators>} );

# InSupplementaryPrivateUseAreaA


ok(!( "\c[TIBETAN LETTER PHA]"  ~~ m/^<+isInSupplementaryPrivateUseAreaA>$/ ), q{Don't match unrelated <isInSupplementaryPrivateUseAreaA>} );
ok("\c[TIBETAN LETTER PHA]"  ~~ m/^<!isInSupplementaryPrivateUseAreaA>.$/, q{Match unrelated externally inverted <isInSupplementaryPrivateUseAreaA>} );
ok("\c[TIBETAN LETTER PHA]"  ~~ m/^<-isInSupplementaryPrivateUseAreaA>$/, q{Match unrelated internally inverted <isInSupplementaryPrivateUseAreaA>} );

# InSupplementaryPrivateUseAreaB


ok(!( "\x[7E65]"  ~~ m/^<+isInSupplementaryPrivateUseAreaB>$/ ), q{Don't match unrelated <isInSupplementaryPrivateUseAreaB>} );
ok("\x[7E65]"  ~~ m/^<!isInSupplementaryPrivateUseAreaB>.$/, q{Match unrelated externally inverted <isInSupplementaryPrivateUseAreaB>} );
ok("\x[7E65]"  ~~ m/^<-isInSupplementaryPrivateUseAreaB>$/, q{Match unrelated internally inverted <isInSupplementaryPrivateUseAreaB>} );

# InSyriac


ok("\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<+isInSyriac>$/, q{Match <isInSyriac>} );
ok("\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<[A]+isInSyriac>$/, q{Match compound <isInSyriac>} );
ok(!( "\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<!isInSyriac>.$/ ), q{Don't match externally inverted <isInSyriac>} );
ok(!( "\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<[A]-isInSyriac>$/ ), q{Don't match compound inverted <isInSyriac>} );
ok(!( "\c[SYRIAC END OF PARAGRAPH]" ~~ m/^<-isInSyriac>$/ ), q{Don't match internally inverted <isInSyriac>} );
ok(!( "\x[CA1C]"  ~~ m/^<+isInSyriac>$/ ), q{Don't match unrelated <isInSyriac>} );
ok("\x[CA1C]"  ~~ m/^<!isInSyriac>.$/, q{Match unrelated externally inverted <isInSyriac>} );
ok("\x[CA1C]"  ~~ m/^<-isInSyriac>$/, q{Match unrelated internally inverted <isInSyriac>} );
ok("\x[CA1C]\c[SYRIAC END OF PARAGRAPH]" ~~ m/<+isInSyriac>/, q{Match unanchored <isInSyriac>} );

# InTagalog


ok("\c[TAGALOG LETTER A]" ~~ m/^<+isInTagalog>$/, q{Match <isInTagalog>} );
ok("\c[TAGALOG LETTER A]" ~~ m/^<[A]+isInTagalog>$/, q{Match compound <isInTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<!isInTagalog>.$/ ), q{Don't match externally inverted <isInTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<[A]-isInTagalog>$/ ), q{Don't match compound inverted <isInTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<-isInTagalog>$/ ), q{Don't match internally inverted <isInTagalog>} );
ok(!( "\x[D49E]"  ~~ m/^<+isInTagalog>$/ ), q{Don't match unrelated <isInTagalog>} );
ok("\x[D49E]"  ~~ m/^<!isInTagalog>.$/, q{Match unrelated externally inverted <isInTagalog>} );
ok("\x[D49E]"  ~~ m/^<-isInTagalog>$/, q{Match unrelated internally inverted <isInTagalog>} );
ok("\x[D49E]\c[TAGALOG LETTER A]" ~~ m/<+isInTagalog>/, q{Match unanchored <isInTagalog>} );

# InTagbanwa


ok("\c[TAGBANWA LETTER A]" ~~ m/^<+isInTagbanwa>$/, q{Match <isInTagbanwa>} );
ok("\c[TAGBANWA LETTER A]" ~~ m/^<[A]+isInTagbanwa>$/, q{Match compound <isInTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<!isInTagbanwa>.$/ ), q{Don't match externally inverted <isInTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<[A]-isInTagbanwa>$/ ), q{Don't match compound inverted <isInTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<-isInTagbanwa>$/ ), q{Don't match internally inverted <isInTagbanwa>} );
ok(!( "\x[AFAA]"  ~~ m/^<+isInTagbanwa>$/ ), q{Don't match unrelated <isInTagbanwa>} );
ok("\x[AFAA]"  ~~ m/^<!isInTagbanwa>.$/, q{Match unrelated externally inverted <isInTagbanwa>} );
ok("\x[AFAA]"  ~~ m/^<-isInTagbanwa>$/, q{Match unrelated internally inverted <isInTagbanwa>} );
ok("\x[AFAA]\c[TAGBANWA LETTER A]" ~~ m/<+isInTagbanwa>/, q{Match unanchored <isInTagbanwa>} );

# InTags


ok(!( "\x[CA38]"  ~~ m/^<+isInTags>$/ ), q{Don't match unrelated <isInTags>} );
ok("\x[CA38]"  ~~ m/^<!isInTags>.$/, q{Match unrelated externally inverted <isInTags>} );
ok("\x[CA38]"  ~~ m/^<-isInTags>$/, q{Match unrelated internally inverted <isInTags>} );

# InTamil


ok("\x[0B80]" ~~ m/^<+isInTamil>$/, q{Match <isInTamil>} );
ok("\x[0B80]" ~~ m/^<[A]+isInTamil>$/, q{Match compound <isInTamil>} );
ok(!( "\x[0B80]" ~~ m/^<!isInTamil>.$/ ), q{Don't match externally inverted <isInTamil>} );
ok(!( "\x[0B80]" ~~ m/^<[A]-isInTamil>$/ ), q{Don't match compound inverted <isInTamil>} );
ok(!( "\x[0B80]" ~~ m/^<-isInTamil>$/ ), q{Don't match internally inverted <isInTamil>} );
ok(!( "\x[D44B]"  ~~ m/^<+isInTamil>$/ ), q{Don't match unrelated <isInTamil>} );
ok("\x[D44B]"  ~~ m/^<!isInTamil>.$/, q{Match unrelated externally inverted <isInTamil>} );
ok("\x[D44B]"  ~~ m/^<-isInTamil>$/, q{Match unrelated internally inverted <isInTamil>} );
ok("\x[D44B]\x[0B80]" ~~ m/<+isInTamil>/, q{Match unanchored <isInTamil>} );

# InTelugu


ok("\x[0C00]" ~~ m/^<+isInTelugu>$/, q{Match <isInTelugu>} );
ok("\x[0C00]" ~~ m/^<[A]+isInTelugu>$/, q{Match compound <isInTelugu>} );
ok(!( "\x[0C00]" ~~ m/^<!isInTelugu>.$/ ), q{Don't match externally inverted <isInTelugu>} );
ok(!( "\x[0C00]" ~~ m/^<[A]-isInTelugu>$/ ), q{Don't match compound inverted <isInTelugu>} );
ok(!( "\x[0C00]" ~~ m/^<-isInTelugu>$/ ), q{Don't match internally inverted <isInTelugu>} );
ok(!( "\x[D3E7]"  ~~ m/^<+isInTelugu>$/ ), q{Don't match unrelated <isInTelugu>} );
ok("\x[D3E7]"  ~~ m/^<!isInTelugu>.$/, q{Match unrelated externally inverted <isInTelugu>} );
ok("\x[D3E7]"  ~~ m/^<-isInTelugu>$/, q{Match unrelated internally inverted <isInTelugu>} );
ok("\x[D3E7]\x[0C00]" ~~ m/<+isInTelugu>/, q{Match unanchored <isInTelugu>} );

# InThaana


ok("\c[THAANA LETTER HAA]" ~~ m/^<+isInThaana>$/, q{Match <isInThaana>} );
ok("\c[THAANA LETTER HAA]" ~~ m/^<[A]+isInThaana>$/, q{Match compound <isInThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<!isInThaana>.$/ ), q{Don't match externally inverted <isInThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<[A]-isInThaana>$/ ), q{Don't match compound inverted <isInThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<-isInThaana>$/ ), q{Don't match internally inverted <isInThaana>} );
ok(!( "\c[YI SYLLABLE QIT]"  ~~ m/^<+isInThaana>$/ ), q{Don't match unrelated <isInThaana>} );
ok("\c[YI SYLLABLE QIT]"  ~~ m/^<!isInThaana>.$/, q{Match unrelated externally inverted <isInThaana>} );
ok("\c[YI SYLLABLE QIT]"  ~~ m/^<-isInThaana>$/, q{Match unrelated internally inverted <isInThaana>} );
ok("\c[YI SYLLABLE QIT]\c[THAANA LETTER HAA]" ~~ m/<+isInThaana>/, q{Match unanchored <isInThaana>} );

# InThai


ok("\x[0E00]" ~~ m/^<+isInThai>$/, q{Match <isInThai>} );
ok("\x[0E00]" ~~ m/^<[A]+isInThai>$/, q{Match compound <isInThai>} );
ok(!( "\x[0E00]" ~~ m/^<!isInThai>.$/ ), q{Don't match externally inverted <isInThai>} );
ok(!( "\x[0E00]" ~~ m/^<[A]-isInThai>$/ ), q{Don't match compound inverted <isInThai>} );
ok(!( "\x[0E00]" ~~ m/^<-isInThai>$/ ), q{Don't match internally inverted <isInThai>} );
ok(!( "\x[BCED]"  ~~ m/^<+isInThai>$/ ), q{Don't match unrelated <isInThai>} );
ok("\x[BCED]"  ~~ m/^<!isInThai>.$/, q{Match unrelated externally inverted <isInThai>} );
ok("\x[BCED]"  ~~ m/^<-isInThai>$/, q{Match unrelated internally inverted <isInThai>} );
ok("\x[BCED]\x[0E00]" ~~ m/<+isInThai>/, q{Match unanchored <isInThai>} );

# InTibetan


ok("\c[TIBETAN SYLLABLE OM]" ~~ m/^<+isInTibetan>$/, q{Match <isInTibetan>} );
ok("\c[TIBETAN SYLLABLE OM]" ~~ m/^<[A]+isInTibetan>$/, q{Match compound <isInTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<!isInTibetan>.$/ ), q{Don't match externally inverted <isInTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<[A]-isInTibetan>$/ ), q{Don't match compound inverted <isInTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<-isInTibetan>$/ ), q{Don't match internally inverted <isInTibetan>} );
ok(!( "\c[ARABIC SIGN SINDHI AMPERSAND]"  ~~ m/^<+isInTibetan>$/ ), q{Don't match unrelated <isInTibetan>} );
ok("\c[ARABIC SIGN SINDHI AMPERSAND]"  ~~ m/^<!isInTibetan>.$/, q{Match unrelated externally inverted <isInTibetan>} );
ok("\c[ARABIC SIGN SINDHI AMPERSAND]"  ~~ m/^<-isInTibetan>$/, q{Match unrelated internally inverted <isInTibetan>} );
ok("\c[ARABIC SIGN SINDHI AMPERSAND]\c[TIBETAN SYLLABLE OM]" ~~ m/<+isInTibetan>/, q{Match unanchored <isInTibetan>} );

# InUnifiedCanadianAboriginalSyllabics


ok("\x[1400]" ~~ m/^<+isInUnifiedCanadianAboriginalSyllabics>$/, q{Match <isInUnifiedCanadianAboriginalSyllabics>} );
ok("\x[1400]" ~~ m/^<[A]+isInUnifiedCanadianAboriginalSyllabics>$/, q{Match compound <isInUnifiedCanadianAboriginalSyllabics>} );
ok(!( "\x[1400]" ~~ m/^<!isInUnifiedCanadianAboriginalSyllabics>.$/ ), q{Don't match externally inverted <isInUnifiedCanadianAboriginalSyllabics>} );
ok(!( "\x[1400]" ~~ m/^<[A]-isInUnifiedCanadianAboriginalSyllabics>$/ ), q{Don't match compound inverted <isInUnifiedCanadianAboriginalSyllabics>} );
ok(!( "\x[1400]" ~~ m/^<-isInUnifiedCanadianAboriginalSyllabics>$/ ), q{Don't match internally inverted <isInUnifiedCanadianAboriginalSyllabics>} );
ok(!( "\x[49D8]"  ~~ m/^<+isInUnifiedCanadianAboriginalSyllabics>$/ ), q{Don't match unrelated <isInUnifiedCanadianAboriginalSyllabics>} );
ok("\x[49D8]"  ~~ m/^<!isInUnifiedCanadianAboriginalSyllabics>.$/, q{Match unrelated externally inverted <isInUnifiedCanadianAboriginalSyllabics>} );
ok("\x[49D8]"  ~~ m/^<-isInUnifiedCanadianAboriginalSyllabics>$/, q{Match unrelated internally inverted <isInUnifiedCanadianAboriginalSyllabics>} );
ok("\x[49D8]\x[1400]" ~~ m/<+isInUnifiedCanadianAboriginalSyllabics>/, q{Match unanchored <isInUnifiedCanadianAboriginalSyllabics>} );

# InVariationSelectors


ok(!( "\x[5307]"  ~~ m/^<+isInVariationSelectors>$/ ), q{Don't match unrelated <isInVariationSelectors>} );
ok("\x[5307]"  ~~ m/^<!isInVariationSelectors>.$/, q{Match unrelated externally inverted <isInVariationSelectors>} );
ok("\x[5307]"  ~~ m/^<-isInVariationSelectors>$/, q{Match unrelated internally inverted <isInVariationSelectors>} );

# InYiRadicals


ok("\c[YI RADICAL QOT]" ~~ m/^<+isInYiRadicals>$/, q{Match <isInYiRadicals>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<[A]+isInYiRadicals>$/, q{Match compound <isInYiRadicals>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<!isInYiRadicals>.$/ ), q{Don't match externally inverted <isInYiRadicals>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<[A]-isInYiRadicals>$/ ), q{Don't match compound inverted <isInYiRadicals>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<-isInYiRadicals>$/ ), q{Don't match internally inverted <isInYiRadicals>} );
ok(!( "\x[7CAD]"  ~~ m/^<+isInYiRadicals>$/ ), q{Don't match unrelated <isInYiRadicals>} );
ok("\x[7CAD]"  ~~ m/^<!isInYiRadicals>.$/, q{Match unrelated externally inverted <isInYiRadicals>} );
ok("\x[7CAD]"  ~~ m/^<-isInYiRadicals>$/, q{Match unrelated internally inverted <isInYiRadicals>} );
ok("\x[7CAD]\c[YI RADICAL QOT]" ~~ m/<+isInYiRadicals>/, q{Match unanchored <isInYiRadicals>} );

# InYiSyllables


ok("\c[YI SYLLABLE IT]" ~~ m/^<+isInYiSyllables>$/, q{Match <isInYiSyllables>} );
ok("\c[YI SYLLABLE IT]" ~~ m/^<[A]+isInYiSyllables>$/, q{Match compound <isInYiSyllables>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<!isInYiSyllables>.$/ ), q{Don't match externally inverted <isInYiSyllables>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<[A]-isInYiSyllables>$/ ), q{Don't match compound inverted <isInYiSyllables>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<-isInYiSyllables>$/ ), q{Don't match internally inverted <isInYiSyllables>} );
ok(!( "\c[BRAILLE PATTERN DOTS-1578]"  ~~ m/^<+isInYiSyllables>$/ ), q{Don't match unrelated <isInYiSyllables>} );
ok("\c[BRAILLE PATTERN DOTS-1578]"  ~~ m/^<!isInYiSyllables>.$/, q{Match unrelated externally inverted <isInYiSyllables>} );
ok("\c[BRAILLE PATTERN DOTS-1578]"  ~~ m/^<-isInYiSyllables>$/, q{Match unrelated internally inverted <isInYiSyllables>} );
ok("\c[BRAILLE PATTERN DOTS-1578]\c[YI SYLLABLE IT]" ~~ m/<+isInYiSyllables>/, q{Match unanchored <isInYiSyllables>} );


}

