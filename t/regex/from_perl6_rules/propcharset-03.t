use v6-alpha;
use Test;
plan 205;
force_todo(120, 122, 1..2, 118, 119, 126, 145..146);
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isModifierSymbol>$/, q{Match related internally inverted <isModifierSymbol>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isModifierSymbol>.$/, q{Match related externally inverted <isModifierSymbol>} );
ok("\x[69E7]\c[COMBINING GRAVE ACCENT]\c[CIRCUMFLEX ACCENT]" ~~ m/<+isModifierSymbol>/, q{Match unanchored <isModifierSymbol>} );

# So          OtherSymbol


ok("\c[YI RADICAL QOT]" ~~ m/^<+isSo>$/, q{Match <isSo> (OtherSymbol)} );
ok("\c[YI RADICAL QOT]" ~~ m/^<[A]+isSo>$/, q{Match compound <isSo> (OtherSymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<!isSo>.$/ ), q{Don't match externally inverted <isSo> (OtherSymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<[A]-isSo>$/ ), q{Don't match compound inverted <isSo> (OtherSymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<-isSo>$/ ), q{Don't match internally inverted <isSo> (OtherSymbol)} );
ok(!( "\x[8C90]"  ~~ m/^<+isSo>$/ ), q{Don't match unrelated <isSo> (OtherSymbol)} );
ok("\x[8C90]"  ~~ m/^<!isSo>.$/, q{Match unrelated externally inverted <isSo> (OtherSymbol)} );
ok("\x[8C90]"  ~~ m/^<-isSo>$/, q{Match unrelated internally inverted <isSo> (OtherSymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<+isSo>$/ ), q{Don't match related <isSo> (OtherSymbol)} );
ok("\c[DOLLAR SIGN]" ~~ m/^<-isSo>$/, q{Match related internally inverted <isSo> (OtherSymbol)} );
ok("\c[DOLLAR SIGN]" ~~ m/^<!isSo>.$/, q{Match related externally inverted <isSo> (OtherSymbol)} );
ok("\x[8C90]\c[DOLLAR SIGN]\c[YI RADICAL QOT]" ~~ m/<+isSo>/, q{Match unanchored <isSo> (OtherSymbol)} );

ok("\c[YI RADICAL QOT]" ~~ m/^<+isOtherSymbol>$/, q{Match <isOtherSymbol>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<[A]+isOtherSymbol>$/, q{Match compound <isOtherSymbol>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<!isOtherSymbol>.$/ ), q{Don't match externally inverted <isOtherSymbol>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<[A]-isOtherSymbol>$/ ), q{Don't match compound inverted <isOtherSymbol>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<-isOtherSymbol>$/ ), q{Don't match internally inverted <isOtherSymbol>} );
ok(!( "\x[95A7]"  ~~ m/^<+isOtherSymbol>$/ ), q{Don't match unrelated <isOtherSymbol>} );
ok("\x[95A7]"  ~~ m/^<!isOtherSymbol>.$/, q{Match unrelated externally inverted <isOtherSymbol>} );
ok("\x[95A7]"  ~~ m/^<-isOtherSymbol>$/, q{Match unrelated internally inverted <isOtherSymbol>} );
ok("\x[95A7]\c[YI RADICAL QOT]" ~~ m/<+isOtherSymbol>/, q{Match unanchored <isOtherSymbol>} );

# Z           Separator


ok("\c[SPACE]" ~~ m/^<+isZ>$/, q{Match <isZ> (Separator)} );
ok("\c[SPACE]" ~~ m/^<[A]+isZ>$/, q{Match compound <isZ> (Separator)} );
ok(!( "\c[SPACE]" ~~ m/^<!isZ>.$/ ), q{Don't match externally inverted <isZ> (Separator)} );
ok(!( "\c[SPACE]" ~~ m/^<[A]-isZ>$/ ), q{Don't match compound inverted <isZ> (Separator)} );
ok(!( "\c[SPACE]" ~~ m/^<-isZ>$/ ), q{Don't match internally inverted <isZ> (Separator)} );
ok(!( "\x[D222]"  ~~ m/^<+isZ>$/ ), q{Don't match unrelated <isZ> (Separator)} );
ok("\x[D222]"  ~~ m/^<!isZ>.$/, q{Match unrelated externally inverted <isZ> (Separator)} );
ok("\x[D222]"  ~~ m/^<-isZ>$/, q{Match unrelated internally inverted <isZ> (Separator)} );
ok("\x[D222]\c[SPACE]" ~~ m/<+isZ>/, q{Match unanchored <isZ> (Separator)} );

ok("\c[SPACE]" ~~ m/^<+isSeparator>$/, q{Match <isSeparator>} );
ok("\c[SPACE]" ~~ m/^<[A]+isSeparator>$/, q{Match compound <isSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<!isSeparator>.$/ ), q{Don't match externally inverted <isSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<[A]-isSeparator>$/ ), q{Don't match compound inverted <isSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<-isSeparator>$/ ), q{Don't match internally inverted <isSeparator>} );
ok(!( "\x[D7B7]"  ~~ m/^<+isSeparator>$/ ), q{Don't match unrelated <isSeparator>} );
ok("\x[D7B7]"  ~~ m/^<!isSeparator>.$/, q{Match unrelated externally inverted <isSeparator>} );
ok("\x[D7B7]"  ~~ m/^<-isSeparator>$/, q{Match unrelated internally inverted <isSeparator>} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<+isSeparator>$/ ), q{Don't match related <isSeparator>} );
ok("\c[DOLLAR SIGN]" ~~ m/^<-isSeparator>$/, q{Match related internally inverted <isSeparator>} );
ok("\c[DOLLAR SIGN]" ~~ m/^<!isSeparator>.$/, q{Match related externally inverted <isSeparator>} );
ok("\x[D7B7]\c[DOLLAR SIGN]\c[SPACE]" ~~ m/<+isSeparator>/, q{Match unanchored <isSeparator>} );

# Zs          SpaceSeparator


ok("\c[SPACE]" ~~ m/^<+isZs>$/, q{Match <isZs> (SpaceSeparator)} );
ok("\c[SPACE]" ~~ m/^<[A]+isZs>$/, q{Match compound <isZs> (SpaceSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<!isZs>.$/ ), q{Don't match externally inverted <isZs> (SpaceSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<[A]-isZs>$/ ), q{Don't match compound inverted <isZs> (SpaceSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<-isZs>$/ ), q{Don't match internally inverted <isZs> (SpaceSeparator)} );
ok(!( "\x[5918]"  ~~ m/^<+isZs>$/ ), q{Don't match unrelated <isZs> (SpaceSeparator)} );
ok("\x[5918]"  ~~ m/^<!isZs>.$/, q{Match unrelated externally inverted <isZs> (SpaceSeparator)} );
ok("\x[5918]"  ~~ m/^<-isZs>$/, q{Match unrelated internally inverted <isZs> (SpaceSeparator)} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<+isZs>$/ ), q{Don't match related <isZs> (SpaceSeparator)} );
ok("\c[LINE SEPARATOR]" ~~ m/^<-isZs>$/, q{Match related internally inverted <isZs> (SpaceSeparator)} );
ok("\c[LINE SEPARATOR]" ~~ m/^<!isZs>.$/, q{Match related externally inverted <isZs> (SpaceSeparator)} );
ok("\x[5918]\c[LINE SEPARATOR]\c[SPACE]" ~~ m/<+isZs>/, q{Match unanchored <isZs> (SpaceSeparator)} );

ok("\c[SPACE]" ~~ m/^<+isSpaceSeparator>$/, q{Match <isSpaceSeparator>} );
ok("\c[SPACE]" ~~ m/^<[A]+isSpaceSeparator>$/, q{Match compound <isSpaceSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<!isSpaceSeparator>.$/ ), q{Don't match externally inverted <isSpaceSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<[A]-isSpaceSeparator>$/ ), q{Don't match compound inverted <isSpaceSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<-isSpaceSeparator>$/ ), q{Don't match internally inverted <isSpaceSeparator>} );
ok(!( "\x[3704]"  ~~ m/^<+isSpaceSeparator>$/ ), q{Don't match unrelated <isSpaceSeparator>} );
ok("\x[3704]"  ~~ m/^<!isSpaceSeparator>.$/, q{Match unrelated externally inverted <isSpaceSeparator>} );
ok("\x[3704]"  ~~ m/^<-isSpaceSeparator>$/, q{Match unrelated internally inverted <isSpaceSeparator>} );
ok(!( "\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<+isSpaceSeparator>$/ ), q{Don't match related <isSpaceSeparator>} );
ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<-isSpaceSeparator>$/, q{Match related internally inverted <isSpaceSeparator>} );
ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<!isSpaceSeparator>.$/, q{Match related externally inverted <isSpaceSeparator>} );
ok("\x[3704]\c[HEXAGRAM FOR THE CREATIVE HEAVEN]\c[SPACE]" ~~ m/<+isSpaceSeparator>/, q{Match unanchored <isSpaceSeparator>} );

# Zl          LineSeparator


ok("\c[LINE SEPARATOR]" ~~ m/^<+isZl>$/, q{Match <isZl> (LineSeparator)} );
ok("\c[LINE SEPARATOR]" ~~ m/^<[A]+isZl>$/, q{Match compound <isZl> (LineSeparator)} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<!isZl>.$/ ), q{Don't match externally inverted <isZl> (LineSeparator)} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<[A]-isZl>$/ ), q{Don't match compound inverted <isZl> (LineSeparator)} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<-isZl>$/ ), q{Don't match internally inverted <isZl> (LineSeparator)} );
ok(!( "\x[ADAD]"  ~~ m/^<+isZl>$/ ), q{Don't match unrelated <isZl> (LineSeparator)} );
ok("\x[ADAD]"  ~~ m/^<!isZl>.$/, q{Match unrelated externally inverted <isZl> (LineSeparator)} );
ok("\x[ADAD]"  ~~ m/^<-isZl>$/, q{Match unrelated internally inverted <isZl> (LineSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<+isZl>$/ ), q{Don't match related <isZl> (LineSeparator)} );
ok("\c[SPACE]" ~~ m/^<-isZl>$/, q{Match related internally inverted <isZl> (LineSeparator)} );
ok("\c[SPACE]" ~~ m/^<!isZl>.$/, q{Match related externally inverted <isZl> (LineSeparator)} );
ok("\x[ADAD]\c[SPACE]\c[LINE SEPARATOR]" ~~ m/<+isZl>/, q{Match unanchored <isZl> (LineSeparator)} );

ok("\c[LINE SEPARATOR]" ~~ m/^<+isLineSeparator>$/, q{Match <isLineSeparator>} );
ok("\c[LINE SEPARATOR]" ~~ m/^<[A]+isLineSeparator>$/, q{Match compound <isLineSeparator>} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<!isLineSeparator>.$/ ), q{Don't match externally inverted <isLineSeparator>} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<[A]-isLineSeparator>$/ ), q{Don't match compound inverted <isLineSeparator>} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<-isLineSeparator>$/ ), q{Don't match internally inverted <isLineSeparator>} );
ok(!( "\x[C5E7]"  ~~ m/^<+isLineSeparator>$/ ), q{Don't match unrelated <isLineSeparator>} );
ok("\x[C5E7]"  ~~ m/^<!isLineSeparator>.$/, q{Match unrelated externally inverted <isLineSeparator>} );
ok("\x[C5E7]"  ~~ m/^<-isLineSeparator>$/, q{Match unrelated internally inverted <isLineSeparator>} );
ok(!( "\x[C5E7]" ~~ m/^<+isLineSeparator>$/ ), q{Don't match related <isLineSeparator>} );
ok("\x[C5E7]" ~~ m/^<-isLineSeparator>$/, q{Match related internally inverted <isLineSeparator>} );
ok("\x[C5E7]" ~~ m/^<!isLineSeparator>.$/, q{Match related externally inverted <isLineSeparator>} );
ok("\x[C5E7]\x[C5E7]\c[LINE SEPARATOR]" ~~ m/<+isLineSeparator>/, q{Match unanchored <isLineSeparator>} );

# Zp          ParagraphSeparator


ok("\c[PARAGRAPH SEPARATOR]" ~~ m/^<+isZp>$/, q{Match <isZp> (ParagraphSeparator)} );
ok("\c[PARAGRAPH SEPARATOR]" ~~ m/^<[A]+isZp>$/, q{Match compound <isZp> (ParagraphSeparator)} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<!isZp>.$/ ), q{Don't match externally inverted <isZp> (ParagraphSeparator)} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<[A]-isZp>$/ ), q{Don't match compound inverted <isZp> (ParagraphSeparator)} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<-isZp>$/ ), q{Don't match internally inverted <isZp> (ParagraphSeparator)} );
ok(!( "\c[KHMER SYMBOL LEK ATTAK PRAM-BUON]"  ~~ m/^<+isZp>$/ ), q{Don't match unrelated <isZp> (ParagraphSeparator)} );
ok("\c[KHMER SYMBOL LEK ATTAK PRAM-BUON]"  ~~ m/^<!isZp>.$/, q{Match unrelated externally inverted <isZp> (ParagraphSeparator)} );
ok("\c[KHMER SYMBOL LEK ATTAK PRAM-BUON]"  ~~ m/^<-isZp>$/, q{Match unrelated internally inverted <isZp> (ParagraphSeparator)} );
ok(!( "\c[MONGOLIAN VOWEL SEPARATOR]" ~~ m/^<+isZp>$/ ), q{Don't match related <isZp> (ParagraphSeparator)} );
ok("\c[MONGOLIAN VOWEL SEPARATOR]" ~~ m/^<-isZp>$/, q{Match related internally inverted <isZp> (ParagraphSeparator)} );
ok("\c[MONGOLIAN VOWEL SEPARATOR]" ~~ m/^<!isZp>.$/, q{Match related externally inverted <isZp> (ParagraphSeparator)} );
ok("\c[KHMER SYMBOL LEK ATTAK PRAM-BUON]\c[MONGOLIAN VOWEL SEPARATOR]\c[PARAGRAPH SEPARATOR]" ~~ m/<+isZp>/, q{Match unanchored <isZp> (ParagraphSeparator)} );

ok("\c[PARAGRAPH SEPARATOR]" ~~ m/^<+isParagraphSeparator>$/, q{Match <isParagraphSeparator>} );
ok("\c[PARAGRAPH SEPARATOR]" ~~ m/^<[A]+isParagraphSeparator>$/, q{Match compound <isParagraphSeparator>} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<!isParagraphSeparator>.$/ ), q{Don't match externally inverted <isParagraphSeparator>} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<[A]-isParagraphSeparator>$/ ), q{Don't match compound inverted <isParagraphSeparator>} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<-isParagraphSeparator>$/ ), q{Don't match internally inverted <isParagraphSeparator>} );
ok(!( "\c[HIRAGANA LETTER KA]"  ~~ m/^<+isParagraphSeparator>$/ ), q{Don't match unrelated <isParagraphSeparator>} );
ok("\c[HIRAGANA LETTER KA]"  ~~ m/^<!isParagraphSeparator>.$/, q{Match unrelated externally inverted <isParagraphSeparator>} );
ok("\c[HIRAGANA LETTER KA]"  ~~ m/^<-isParagraphSeparator>$/, q{Match unrelated internally inverted <isParagraphSeparator>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<+isParagraphSeparator>$/ ), q{Don't match related <isParagraphSeparator>} );
ok("\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<-isParagraphSeparator>$/, q{Match related internally inverted <isParagraphSeparator>} );
ok("\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<!isParagraphSeparator>.$/, q{Match related externally inverted <isParagraphSeparator>} );
ok("\c[HIRAGANA LETTER KA]\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]\c[PARAGRAPH SEPARATOR]" ~~ m/<+isParagraphSeparator>/, q{Match unanchored <isParagraphSeparator>} );

# C           Other


ok("\x[9FA6]" ~~ m/^<+isC>$/, q{Match <isC> (Other)} );
ok("\x[9FA6]" ~~ m/^<[A]+isC>$/, q{Match compound <isC> (Other)} );
ok(!( "\x[9FA6]" ~~ m/^<!isC>.$/ ), q{Don't match externally inverted <isC> (Other)} );
ok(!( "\x[9FA6]" ~~ m/^<[A]-isC>$/ ), q{Don't match compound inverted <isC> (Other)} );
ok(!( "\x[9FA6]" ~~ m/^<-isC>$/ ), q{Don't match internally inverted <isC> (Other)} );
ok(!( "\x[56E6]"  ~~ m/^<+isC>$/ ), q{Don't match unrelated <isC> (Other)} );
ok("\x[56E6]"  ~~ m/^<!isC>.$/, q{Match unrelated externally inverted <isC> (Other)} );
ok("\x[56E6]"  ~~ m/^<-isC>$/, q{Match unrelated internally inverted <isC> (Other)} );
ok("\x[56E6]\x[9FA6]" ~~ m/<+isC>/, q{Match unanchored <isC> (Other)} );

ok("\x[0EAC]" ~~ m/^<+isOther>$/, q{Match <isOther>} );
ok("\x[0EAC]" ~~ m/^<[A]+isOther>$/, q{Match compound <isOther>} );
ok(!( "\x[0EAC]" ~~ m/^<!isOther>.$/ ), q{Don't match externally inverted <isOther>} );
ok(!( "\x[0EAC]" ~~ m/^<[A]-isOther>$/ ), q{Don't match compound inverted <isOther>} );
ok(!( "\x[0EAC]" ~~ m/^<-isOther>$/ ), q{Don't match internally inverted <isOther>} );
ok(!( "\c[LAO LETTER HO SUNG]"  ~~ m/^<+isOther>$/ ), q{Don't match unrelated <isOther>} );
ok("\c[LAO LETTER HO SUNG]"  ~~ m/^<!isOther>.$/, q{Match unrelated externally inverted <isOther>} );
ok("\c[LAO LETTER HO SUNG]"  ~~ m/^<-isOther>$/, q{Match unrelated internally inverted <isOther>} );
ok("\c[LAO LETTER HO SUNG]\x[0EAC]" ~~ m/<+isOther>/, q{Match unanchored <isOther>} );

# Cc          Control


ok("\c[NULL]" ~~ m/^<+isCc>$/, q{Match <isCc> (Control)} );
ok("\c[NULL]" ~~ m/^<[A]+isCc>$/, q{Match compound <isCc> (Control)} );
ok(!( "\c[NULL]" ~~ m/^<!isCc>.$/ ), q{Don't match externally inverted <isCc> (Control)} );
ok(!( "\c[NULL]" ~~ m/^<[A]-isCc>$/ ), q{Don't match compound inverted <isCc> (Control)} );
ok(!( "\c[NULL]" ~~ m/^<-isCc>$/ ), q{Don't match internally inverted <isCc> (Control)} );
ok(!( "\c[OGONEK]"  ~~ m/^<+isCc>$/ ), q{Don't match unrelated <isCc> (Control)} );
ok("\c[OGONEK]"  ~~ m/^<!isCc>.$/, q{Match unrelated externally inverted <isCc> (Control)} );
ok("\c[OGONEK]"  ~~ m/^<-isCc>$/, q{Match unrelated internally inverted <isCc> (Control)} );
ok(!( "\x[0358]" ~~ m/^<+isCc>$/ ), q{Don't match related <isCc> (Control)} );
ok("\x[0358]" ~~ m/^<-isCc>$/, q{Match related internally inverted <isCc> (Control)} );
ok("\x[0358]" ~~ m/^<!isCc>.$/, q{Match related externally inverted <isCc> (Control)} );
ok("\c[OGONEK]\x[0358]\c[NULL]" ~~ m/<+isCc>/, q{Match unanchored <isCc> (Control)} );

ok("\c[NULL]" ~~ m/^<+isControl>$/, q{Match <isControl>} );
ok("\c[NULL]" ~~ m/^<[A]+isControl>$/, q{Match compound <isControl>} );
ok(!( "\c[NULL]" ~~ m/^<!isControl>.$/ ), q{Don't match externally inverted <isControl>} );
ok(!( "\c[NULL]" ~~ m/^<[A]-isControl>$/ ), q{Don't match compound inverted <isControl>} );
ok(!( "\c[NULL]" ~~ m/^<-isControl>$/ ), q{Don't match internally inverted <isControl>} );
ok(!( "\x[4A20]"  ~~ m/^<+isControl>$/ ), q{Don't match unrelated <isControl>} );
ok("\x[4A20]"  ~~ m/^<!isControl>.$/, q{Match unrelated externally inverted <isControl>} );
ok("\x[4A20]"  ~~ m/^<-isControl>$/, q{Match unrelated internally inverted <isControl>} );
ok(!( "\x[4DB6]" ~~ m/^<+isControl>$/ ), q{Don't match related <isControl>} );
ok("\x[4DB6]" ~~ m/^<-isControl>$/, q{Match related internally inverted <isControl>} );
ok("\x[4DB6]" ~~ m/^<!isControl>.$/, q{Match related externally inverted <isControl>} );
ok("\x[4A20]\x[4DB6]\c[NULL]" ~~ m/<+isControl>/, q{Match unanchored <isControl>} );

# Cf          Format


ok("\c[SOFT HYPHEN]" ~~ m/^<+isCf>$/, q{Match <isCf> (Format)} );
ok("\c[SOFT HYPHEN]" ~~ m/^<[A]+isCf>$/, q{Match compound <isCf> (Format)} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<!isCf>.$/ ), q{Don't match externally inverted <isCf> (Format)} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<[A]-isCf>$/ ), q{Don't match compound inverted <isCf> (Format)} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<-isCf>$/ ), q{Don't match internally inverted <isCf> (Format)} );
ok(!( "\x[AECE]"  ~~ m/^<+isCf>$/ ), q{Don't match unrelated <isCf> (Format)} );
ok("\x[AECE]"  ~~ m/^<!isCf>.$/, q{Match unrelated externally inverted <isCf> (Format)} );
ok("\x[AECE]"  ~~ m/^<-isCf>$/, q{Match unrelated internally inverted <isCf> (Format)} );
ok(!( "\x[D7A4]" ~~ m/^<+isCf>$/ ), q{Don't match related <isCf> (Format)} );
ok("\x[D7A4]" ~~ m/^<-isCf>$/, q{Match related internally inverted <isCf> (Format)} );
ok("\x[D7A4]" ~~ m/^<!isCf>.$/, q{Match related externally inverted <isCf> (Format)} );
ok("\x[AECE]\x[D7A4]\c[SOFT HYPHEN]" ~~ m/<+isCf>/, q{Match unanchored <isCf> (Format)} );

ok("\c[SOFT HYPHEN]" ~~ m/^<+isFormat>$/, q{Match <isFormat>} );
ok("\c[SOFT HYPHEN]" ~~ m/^<[A]+isFormat>$/, q{Match compound <isFormat>} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<!isFormat>.$/ ), q{Don't match externally inverted <isFormat>} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<[A]-isFormat>$/ ), q{Don't match compound inverted <isFormat>} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<-isFormat>$/ ), q{Don't match internally inverted <isFormat>} );
ok(!( "\x[5382]"  ~~ m/^<+isFormat>$/ ), q{Don't match unrelated <isFormat>} );
ok("\x[5382]"  ~~ m/^<!isFormat>.$/, q{Match unrelated externally inverted <isFormat>} );
ok("\x[5382]"  ~~ m/^<-isFormat>$/, q{Match unrelated internally inverted <isFormat>} );
ok("\x[5382]\c[SOFT HYPHEN]" ~~ m/<+isFormat>/, q{Match unanchored <isFormat>} );

# BidiL       # Left-to-Right


ok("\c[YI SYLLABLE IT]" ~~ m/^<+isBidiL>$/, q{Match (Left-to-Right)} );
ok("\c[YI SYLLABLE IT]" ~~ m/^<[A]+isBidiL>$/, q{Match compound (Left-to-Right)} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<!isBidiL>.$/ ), q{Don't match externally inverted (Left-to-Right)} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<[A]-isBidiL>$/ ), q{Don't match compound inverted (Left-to-Right)} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<-isBidiL>$/ ), q{Don't match internally inverted (Left-to-Right)} );
ok(!( "\x[5BF5]"  ~~ m/^<+isBidiL>$/ ), q{Don't match unrelated (Left-to-Right)} );
ok("\x[5BF5]"  ~~ m/^<!isBidiL>.$/, q{Match unrelated externally inverted (Left-to-Right)} );
ok("\x[5BF5]"  ~~ m/^<-isBidiL>$/, q{Match unrelated internally inverted (Left-to-Right)} );
ok("\x[5BF5]\c[YI SYLLABLE IT]" ~~ m/<+isBidiL>/, q{Match unanchored (Left-to-Right)} );

# BidiEN      # European Number


ok("\c[DIGIT ZERO]" ~~ m/^<+isBidiEN>$/, q{Match (European Number)} );
ok("\c[DIGIT ZERO]" ~~ m/^<[A]+isBidiEN>$/, q{Match compound (European Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isBidiEN>.$/ ), q{Don't match externally inverted (European Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<[A]-isBidiEN>$/ ), q{Don't match compound inverted (European Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isBidiEN>$/ ), q{Don't match internally inverted (European Number)} );
ok(!( "\x[5596]"  ~~ m/^<+isBidiEN>$/ ), q{Don't match unrelated (European Number)} );
ok("\x[5596]"  ~~ m/^<!isBidiEN>.$/, q{Match unrelated externally inverted (European Number)} );
ok("\x[5596]"  ~~ m/^<-isBidiEN>$/, q{Match unrelated internally inverted (European Number)} );
ok("\x[5596]\c[DIGIT ZERO]" ~~ m/<+isBidiEN>/, q{Match unanchored (European Number)} );

# BidiES      # European Number Separator


ok("\c[SOLIDUS]" ~~ m/^<+isBidiES>$/, q{Match (European Number Separator)} );
ok("\c[SOLIDUS]" ~~ m/^<[A]+isBidiES>$/, q{Match compound (European Number Separator)} );
ok(!( "\c[SOLIDUS]" ~~ m/^<!isBidiES>.$/ ), q{Don't match externally inverted (European Number Separator)} );
ok(!( "\c[SOLIDUS]" ~~ m/^<[A]-isBidiES>$/ ), q{Don't match compound inverted (European Number Separator)} );
ok(!( "\c[SOLIDUS]" ~~ m/^<-isBidiES>$/ ), q{Don't match internally inverted (European Number Separator)} );
ok(!( "\x[85D3]"  ~~ m/^<+isBidiES>$/ ), q{Don't match unrelated (European Number Separator)} );
ok("\x[85D3]"  ~~ m/^<!isBidiES>.$/, q{Match unrelated externally inverted (European Number Separator)} );
