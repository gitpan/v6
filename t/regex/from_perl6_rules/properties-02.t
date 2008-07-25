use v6-alpha;
use Test;
plan 216;
force_todo(157, 158, 22..23, 59..60, 156, 162, 204..205);

ok(!( "\x[4A1C]"  ~~ m/^<?isSymbol>$/ ), q{Don't match unrelated <?isSymbol>} );
ok("\x[4A1C]"  ~~ m/^<!isSymbol>.$/, q{Match unrelated negated <?isSymbol>} );
ok("\x[4A1C]"  ~~ m/^<-isSymbol>$/, q{Match unrelated inverted <?isSymbol>} );
ok("\x[4A1C]\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/<?isSymbol>/, q{Match unanchored <?isSymbol>} );

# Sm          MathSymbol


ok("\c[PLUS SIGN]" ~~ m/^<?isSm>$/, q{Match <?isSm> (MathSymbol)} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<!isSm>.$/ ), q{Don't match negated <?isSm> (MathSymbol)} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<-isSm>$/ ), q{Don't match inverted <?isSm> (MathSymbol)} );
ok(!( "\x[B258]"  ~~ m/^<?isSm>$/ ), q{Don't match unrelated <?isSm> (MathSymbol)} );
ok("\x[B258]"  ~~ m/^<!isSm>.$/, q{Match unrelated negated <?isSm> (MathSymbol)} );
ok("\x[B258]"  ~~ m/^<-isSm>$/, q{Match unrelated inverted <?isSm> (MathSymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<?isSm>$/ ), q{Don't match related <?isSm> (MathSymbol)} );
ok("\c[DOLLAR SIGN]" ~~ m/^<!isSm>.$/, q{Match related negated <?isSm> (MathSymbol)} );
ok("\c[DOLLAR SIGN]" ~~ m/^<-isSm>$/, q{Match related inverted <?isSm> (MathSymbol)} );
ok("\x[B258]\c[DOLLAR SIGN]\c[PLUS SIGN]" ~~ m/<?isSm>/, q{Match unanchored <?isSm> (MathSymbol)} );

ok("\c[PLUS SIGN]" ~~ m/^<?isMathSymbol>$/, q{Match <?isMathSymbol>} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<!isMathSymbol>.$/ ), q{Don't match negated <?isMathSymbol>} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<-isMathSymbol>$/ ), q{Don't match inverted <?isMathSymbol>} );
ok(!( "\x[98FF]"  ~~ m/^<?isMathSymbol>$/ ), q{Don't match unrelated <?isMathSymbol>} );
ok("\x[98FF]"  ~~ m/^<!isMathSymbol>.$/, q{Match unrelated negated <?isMathSymbol>} );
ok("\x[98FF]"  ~~ m/^<-isMathSymbol>$/, q{Match unrelated inverted <?isMathSymbol>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMathSymbol>$/ ), q{Don't match related <?isMathSymbol>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMathSymbol>.$/, q{Match related negated <?isMathSymbol>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMathSymbol>$/, q{Match related inverted <?isMathSymbol>} );
ok("\x[98FF]\c[COMBINING GRAVE ACCENT]\c[PLUS SIGN]" ~~ m/<?isMathSymbol>/, q{Match unanchored <?isMathSymbol>} );

# Sc          CurrencySymbol


ok("\c[DOLLAR SIGN]" ~~ m/^<?isSc>$/, q{Match <?isSc> (CurrencySymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<!isSc>.$/ ), q{Don't match negated <?isSc> (CurrencySymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<-isSc>$/ ), q{Don't match inverted <?isSc> (CurrencySymbol)} );
ok(!( "\x[994C]"  ~~ m/^<?isSc>$/ ), q{Don't match unrelated <?isSc> (CurrencySymbol)} );
ok("\x[994C]"  ~~ m/^<!isSc>.$/, q{Match unrelated negated <?isSc> (CurrencySymbol)} );
ok("\x[994C]"  ~~ m/^<-isSc>$/, q{Match unrelated inverted <?isSc> (CurrencySymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<?isSc>$/ ), q{Don't match related <?isSc> (CurrencySymbol)} );
ok("\c[YI RADICAL QOT]" ~~ m/^<!isSc>.$/, q{Match related negated <?isSc> (CurrencySymbol)} );
ok("\c[YI RADICAL QOT]" ~~ m/^<-isSc>$/, q{Match related inverted <?isSc> (CurrencySymbol)} );
ok("\x[994C]\c[YI RADICAL QOT]\c[DOLLAR SIGN]" ~~ m/<?isSc>/, q{Match unanchored <?isSc> (CurrencySymbol)} );

ok("\c[DOLLAR SIGN]" ~~ m/^<?isCurrencySymbol>$/, q{Match <?isCurrencySymbol>} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<!isCurrencySymbol>.$/ ), q{Don't match negated <?isCurrencySymbol>} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<-isCurrencySymbol>$/ ), q{Don't match inverted <?isCurrencySymbol>} );
ok(!( "\x[37C0]"  ~~ m/^<?isCurrencySymbol>$/ ), q{Don't match unrelated <?isCurrencySymbol>} );
ok("\x[37C0]"  ~~ m/^<!isCurrencySymbol>.$/, q{Match unrelated negated <?isCurrencySymbol>} );
ok("\x[37C0]"  ~~ m/^<-isCurrencySymbol>$/, q{Match unrelated inverted <?isCurrencySymbol>} );
ok("\x[37C0]\c[DOLLAR SIGN]" ~~ m/<?isCurrencySymbol>/, q{Match unanchored <?isCurrencySymbol>} );

# Sk          ModifierSymbol


ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<?isSk>$/, q{Match <?isSk> (ModifierSymbol)} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<!isSk>.$/ ), q{Don't match negated <?isSk> (ModifierSymbol)} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<-isSk>$/ ), q{Don't match inverted <?isSk> (ModifierSymbol)} );
ok(!( "\x[4578]"  ~~ m/^<?isSk>$/ ), q{Don't match unrelated <?isSk> (ModifierSymbol)} );
ok("\x[4578]"  ~~ m/^<!isSk>.$/, q{Match unrelated negated <?isSk> (ModifierSymbol)} );
ok("\x[4578]"  ~~ m/^<-isSk>$/, q{Match unrelated inverted <?isSk> (ModifierSymbol)} );
ok(!( "\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<?isSk>$/ ), q{Don't match related <?isSk> (ModifierSymbol)} );
ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<!isSk>.$/, q{Match related negated <?isSk> (ModifierSymbol)} );
ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<-isSk>$/, q{Match related inverted <?isSk> (ModifierSymbol)} );
ok("\x[4578]\c[HEXAGRAM FOR THE CREATIVE HEAVEN]\c[CIRCUMFLEX ACCENT]" ~~ m/<?isSk>/, q{Match unanchored <?isSk> (ModifierSymbol)} );

ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<?isModifierSymbol>$/, q{Match <?isModifierSymbol>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<!isModifierSymbol>.$/ ), q{Don't match negated <?isModifierSymbol>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<-isModifierSymbol>$/ ), q{Don't match inverted <?isModifierSymbol>} );
ok(!( "\x[42F1]"  ~~ m/^<?isModifierSymbol>$/ ), q{Don't match unrelated <?isModifierSymbol>} );
ok("\x[42F1]"  ~~ m/^<!isModifierSymbol>.$/, q{Match unrelated negated <?isModifierSymbol>} );
ok("\x[42F1]"  ~~ m/^<-isModifierSymbol>$/, q{Match unrelated inverted <?isModifierSymbol>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isModifierSymbol>$/ ), q{Don't match related <?isModifierSymbol>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isModifierSymbol>.$/, q{Match related negated <?isModifierSymbol>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isModifierSymbol>$/, q{Match related inverted <?isModifierSymbol>} );
ok("\x[42F1]\c[COMBINING GRAVE ACCENT]\c[CIRCUMFLEX ACCENT]" ~~ m/<?isModifierSymbol>/, q{Match unanchored <?isModifierSymbol>} );

# So          OtherSymbol


ok("\c[YI RADICAL QOT]" ~~ m/^<?isSo>$/, q{Match <?isSo> (OtherSymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<!isSo>.$/ ), q{Don't match negated <?isSo> (OtherSymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<-isSo>$/ ), q{Don't match inverted <?isSo> (OtherSymbol)} );
ok(!( "\x[83DE]"  ~~ m/^<?isSo>$/ ), q{Don't match unrelated <?isSo> (OtherSymbol)} );
ok("\x[83DE]"  ~~ m/^<!isSo>.$/, q{Match unrelated negated <?isSo> (OtherSymbol)} );
ok("\x[83DE]"  ~~ m/^<-isSo>$/, q{Match unrelated inverted <?isSo> (OtherSymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<?isSo>$/ ), q{Don't match related <?isSo> (OtherSymbol)} );
ok("\c[DOLLAR SIGN]" ~~ m/^<!isSo>.$/, q{Match related negated <?isSo> (OtherSymbol)} );
ok("\c[DOLLAR SIGN]" ~~ m/^<-isSo>$/, q{Match related inverted <?isSo> (OtherSymbol)} );
ok("\x[83DE]\c[DOLLAR SIGN]\c[YI RADICAL QOT]" ~~ m/<?isSo>/, q{Match unanchored <?isSo> (OtherSymbol)} );

ok("\c[YI RADICAL QOT]" ~~ m/^<?isOtherSymbol>$/, q{Match <?isOtherSymbol>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<!isOtherSymbol>.$/ ), q{Don't match negated <?isOtherSymbol>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<-isOtherSymbol>$/ ), q{Don't match inverted <?isOtherSymbol>} );
ok(!( "\x[9B2C]"  ~~ m/^<?isOtherSymbol>$/ ), q{Don't match unrelated <?isOtherSymbol>} );
ok("\x[9B2C]"  ~~ m/^<!isOtherSymbol>.$/, q{Match unrelated negated <?isOtherSymbol>} );
ok("\x[9B2C]"  ~~ m/^<-isOtherSymbol>$/, q{Match unrelated inverted <?isOtherSymbol>} );
ok("\x[9B2C]\c[YI RADICAL QOT]" ~~ m/<?isOtherSymbol>/, q{Match unanchored <?isOtherSymbol>} );

# Z           Separator


ok("\c[IDEOGRAPHIC SPACE]" ~~ m/^<isZ>$/, q{Match <isZ> (Separator)} );
ok(!( "\c[IDEOGRAPHIC SPACE]" ~~ m/^<!isZ>.$/ ), q{Don't match negated <isZ> (Separator)} );
ok(!( "\c[IDEOGRAPHIC SPACE]" ~~ m/^<-isZ>$/ ), q{Don't match inverted <isZ> (Separator)} );
ok(!( "\x[2C08]"  ~~ m/^<isZ>$/ ), q{Don't match unrelated <isZ> (Separator)} );
ok("\x[2C08]"  ~~ m/^<!isZ>.$/, q{Match unrelated negated <isZ> (Separator)} );
ok("\x[2C08]"  ~~ m/^<-isZ>$/, q{Match unrelated inverted <isZ> (Separator)} );
ok("\x[2C08]\c[IDEOGRAPHIC SPACE]" ~~ m/<isZ>/, q{Match unanchored <isZ> (Separator)} );

ok("\c[SPACE]" ~~ m/^<?isSeparator>$/, q{Match <?isSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<!isSeparator>.$/ ), q{Don't match negated <?isSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<-isSeparator>$/ ), q{Don't match inverted <?isSeparator>} );
ok(!( "\c[YI SYLLABLE SOX]"  ~~ m/^<?isSeparator>$/ ), q{Don't match unrelated <?isSeparator>} );
ok("\c[YI SYLLABLE SOX]"  ~~ m/^<!isSeparator>.$/, q{Match unrelated negated <?isSeparator>} );
ok("\c[YI SYLLABLE SOX]"  ~~ m/^<-isSeparator>$/, q{Match unrelated inverted <?isSeparator>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<?isSeparator>$/ ), q{Don't match related <?isSeparator>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<!isSeparator>.$/, q{Match related negated <?isSeparator>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<-isSeparator>$/, q{Match related inverted <?isSeparator>} );
ok("\c[YI SYLLABLE SOX]\c[YI RADICAL QOT]\c[SPACE]" ~~ m/<?isSeparator>/, q{Match unanchored <?isSeparator>} );

# Zs          SpaceSeparator


ok("\c[SPACE]" ~~ m/^<?isZs>$/, q{Match <?isZs> (SpaceSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<!isZs>.$/ ), q{Don't match negated <?isZs> (SpaceSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<-isZs>$/ ), q{Don't match inverted <?isZs> (SpaceSeparator)} );
ok(!( "\x[88DD]"  ~~ m/^<?isZs>$/ ), q{Don't match unrelated <?isZs> (SpaceSeparator)} );
ok("\x[88DD]"  ~~ m/^<!isZs>.$/, q{Match unrelated negated <?isZs> (SpaceSeparator)} );
ok("\x[88DD]"  ~~ m/^<-isZs>$/, q{Match unrelated inverted <?isZs> (SpaceSeparator)} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<?isZs>$/ ), q{Don't match related <?isZs> (SpaceSeparator)} );
ok("\c[LINE SEPARATOR]" ~~ m/^<!isZs>.$/, q{Match related negated <?isZs> (SpaceSeparator)} );
ok("\c[LINE SEPARATOR]" ~~ m/^<-isZs>$/, q{Match related inverted <?isZs> (SpaceSeparator)} );
ok("\x[88DD]\c[LINE SEPARATOR]\c[SPACE]" ~~ m/<?isZs>/, q{Match unanchored <?isZs> (SpaceSeparator)} );

ok("\c[SPACE]" ~~ m/^<?isSpaceSeparator>$/, q{Match <?isSpaceSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<!isSpaceSeparator>.$/ ), q{Don't match negated <?isSpaceSeparator>} );
ok(!( "\c[SPACE]" ~~ m/^<-isSpaceSeparator>$/ ), q{Don't match inverted <?isSpaceSeparator>} );
ok(!( "\x[C808]"  ~~ m/^<?isSpaceSeparator>$/ ), q{Don't match unrelated <?isSpaceSeparator>} );
ok("\x[C808]"  ~~ m/^<!isSpaceSeparator>.$/, q{Match unrelated negated <?isSpaceSeparator>} );
ok("\x[C808]"  ~~ m/^<-isSpaceSeparator>$/, q{Match unrelated inverted <?isSpaceSeparator>} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<?isSpaceSeparator>$/ ), q{Don't match related <?isSpaceSeparator>} );
ok("\c[DOLLAR SIGN]" ~~ m/^<!isSpaceSeparator>.$/, q{Match related negated <?isSpaceSeparator>} );
ok("\c[DOLLAR SIGN]" ~~ m/^<-isSpaceSeparator>$/, q{Match related inverted <?isSpaceSeparator>} );
ok("\x[C808]\c[DOLLAR SIGN]\c[SPACE]" ~~ m/<?isSpaceSeparator>/, q{Match unanchored <?isSpaceSeparator>} );

# Zl          LineSeparator


ok("\c[LINE SEPARATOR]" ~~ m/^<?isZl>$/, q{Match <?isZl> (LineSeparator)} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<!isZl>.$/ ), q{Don't match negated <?isZl> (LineSeparator)} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<-isZl>$/ ), q{Don't match inverted <?isZl> (LineSeparator)} );
ok(!( "\x[B822]"  ~~ m/^<?isZl>$/ ), q{Don't match unrelated <?isZl> (LineSeparator)} );
ok("\x[B822]"  ~~ m/^<!isZl>.$/, q{Match unrelated negated <?isZl> (LineSeparator)} );
ok("\x[B822]"  ~~ m/^<-isZl>$/, q{Match unrelated inverted <?isZl> (LineSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<?isZl>$/ ), q{Don't match related <?isZl> (LineSeparator)} );
ok("\c[SPACE]" ~~ m/^<!isZl>.$/, q{Match related negated <?isZl> (LineSeparator)} );
ok("\c[SPACE]" ~~ m/^<-isZl>$/, q{Match related inverted <?isZl> (LineSeparator)} );
ok("\x[B822]\c[SPACE]\c[LINE SEPARATOR]" ~~ m/<?isZl>/, q{Match unanchored <?isZl> (LineSeparator)} );

ok("\c[LINE SEPARATOR]" ~~ m/^<?isLineSeparator>$/, q{Match <?isLineSeparator>} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<!isLineSeparator>.$/ ), q{Don't match negated <?isLineSeparator>} );
ok(!( "\c[LINE SEPARATOR]" ~~ m/^<-isLineSeparator>$/ ), q{Don't match inverted <?isLineSeparator>} );
ok(!( "\x[1390]"  ~~ m/^<?isLineSeparator>$/ ), q{Don't match unrelated <?isLineSeparator>} );
ok("\x[1390]"  ~~ m/^<!isLineSeparator>.$/, q{Match unrelated negated <?isLineSeparator>} );
ok("\x[1390]"  ~~ m/^<-isLineSeparator>$/, q{Match unrelated inverted <?isLineSeparator>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<?isLineSeparator>$/ ), q{Don't match related <?isLineSeparator>} );
ok("\c[CHEROKEE LETTER A]" ~~ m/^<!isLineSeparator>.$/, q{Match related negated <?isLineSeparator>} );
ok("\c[CHEROKEE LETTER A]" ~~ m/^<-isLineSeparator>$/, q{Match related inverted <?isLineSeparator>} );
ok("\x[1390]\c[CHEROKEE LETTER A]\c[LINE SEPARATOR]" ~~ m/<?isLineSeparator>/, q{Match unanchored <?isLineSeparator>} );

# Zp          ParagraphSeparator


ok("\c[PARAGRAPH SEPARATOR]" ~~ m/^<?isZp>$/, q{Match <?isZp> (ParagraphSeparator)} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<!isZp>.$/ ), q{Don't match negated <?isZp> (ParagraphSeparator)} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<-isZp>$/ ), q{Don't match inverted <?isZp> (ParagraphSeparator)} );
ok(!( "\x[5FDE]"  ~~ m/^<?isZp>$/ ), q{Don't match unrelated <?isZp> (ParagraphSeparator)} );
ok("\x[5FDE]"  ~~ m/^<!isZp>.$/, q{Match unrelated negated <?isZp> (ParagraphSeparator)} );
ok("\x[5FDE]"  ~~ m/^<-isZp>$/, q{Match unrelated inverted <?isZp> (ParagraphSeparator)} );
ok(!( "\c[SPACE]" ~~ m/^<?isZp>$/ ), q{Don't match related <?isZp> (ParagraphSeparator)} );
ok("\c[SPACE]" ~~ m/^<!isZp>.$/, q{Match related negated <?isZp> (ParagraphSeparator)} );
ok("\c[SPACE]" ~~ m/^<-isZp>$/, q{Match related inverted <?isZp> (ParagraphSeparator)} );
ok("\x[5FDE]\c[SPACE]\c[PARAGRAPH SEPARATOR]" ~~ m/<?isZp>/, q{Match unanchored <?isZp> (ParagraphSeparator)} );

ok("\c[PARAGRAPH SEPARATOR]" ~~ m/^<?isParagraphSeparator>$/, q{Match <?isParagraphSeparator>} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<!isParagraphSeparator>.$/ ), q{Don't match negated <?isParagraphSeparator>} );
ok(!( "\c[PARAGRAPH SEPARATOR]" ~~ m/^<-isParagraphSeparator>$/ ), q{Don't match inverted <?isParagraphSeparator>} );
ok(!( "\x[345B]"  ~~ m/^<?isParagraphSeparator>$/ ), q{Don't match unrelated <?isParagraphSeparator>} );
ok("\x[345B]"  ~~ m/^<!isParagraphSeparator>.$/, q{Match unrelated negated <?isParagraphSeparator>} );
ok("\x[345B]"  ~~ m/^<-isParagraphSeparator>$/, q{Match unrelated inverted <?isParagraphSeparator>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<?isParagraphSeparator>$/ ), q{Don't match related <?isParagraphSeparator>} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isParagraphSeparator>.$/, q{Match related negated <?isParagraphSeparator>} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isParagraphSeparator>$/, q{Match related inverted <?isParagraphSeparator>} );
ok("\x[345B]\c[EXCLAMATION MARK]\c[PARAGRAPH SEPARATOR]" ~~ m/<?isParagraphSeparator>/, q{Match unanchored <?isParagraphSeparator>} );

# C           Other


ok("\x[9FA6]" ~~ m/^<isC>$/, q{Match <isC> (Other)} );
ok(!( "\x[9FA6]" ~~ m/^<!isC>.$/ ), q{Don't match negated <isC> (Other)} );
ok(!( "\x[9FA6]" ~~ m/^<-isC>$/ ), q{Don't match inverted <isC> (Other)} );
ok(!( "\x[6A3F]"  ~~ m/^<isC>$/ ), q{Don't match unrelated <isC> (Other)} );
ok("\x[6A3F]"  ~~ m/^<!isC>.$/, q{Match unrelated negated <isC> (Other)} );
ok("\x[6A3F]"  ~~ m/^<-isC>$/, q{Match unrelated inverted <isC> (Other)} );
ok("\x[6A3F]\x[9FA6]" ~~ m/<isC>/, q{Match unanchored <isC> (Other)} );

ok("\x[A679]" ~~ m/^<?isOther>$/, q{Match <?isOther>} );
ok(!( "\x[A679]" ~~ m/^<!isOther>.$/ ), q{Don't match negated <?isOther>} );
ok(!( "\x[A679]" ~~ m/^<-isOther>$/ ), q{Don't match inverted <?isOther>} );
ok(!( "\x[AC00]"  ~~ m/^<?isOther>$/ ), q{Don't match unrelated <?isOther>} );
ok("\x[AC00]"  ~~ m/^<!isOther>.$/, q{Match unrelated negated <?isOther>} );
ok("\x[AC00]"  ~~ m/^<-isOther>$/, q{Match unrelated inverted <?isOther>} );
ok("\x[AC00]\x[A679]" ~~ m/<?isOther>/, q{Match unanchored <?isOther>} );

# Cc          Control


ok("\c[NULL]" ~~ m/^<?isCc>$/, q{Match <?isCc> (Control)} );
ok(!( "\c[NULL]" ~~ m/^<!isCc>.$/ ), q{Don't match negated <?isCc> (Control)} );
ok(!( "\c[NULL]" ~~ m/^<-isCc>$/ ), q{Don't match inverted <?isCc> (Control)} );
ok(!( "\x[0A7A]"  ~~ m/^<?isCc>$/ ), q{Don't match unrelated <?isCc> (Control)} );
ok("\x[0A7A]"  ~~ m/^<!isCc>.$/, q{Match unrelated negated <?isCc> (Control)} );
ok("\x[0A7A]"  ~~ m/^<-isCc>$/, q{Match unrelated inverted <?isCc> (Control)} );
ok(!( "\x[0A7A]" ~~ m/^<?isCc>$/ ), q{Don't match related <?isCc> (Control)} );
ok("\x[0A7A]" ~~ m/^<!isCc>.$/, q{Match related negated <?isCc> (Control)} );
ok("\x[0A7A]" ~~ m/^<-isCc>$/, q{Match related inverted <?isCc> (Control)} );
ok("\x[0A7A]\x[0A7A]\c[NULL]" ~~ m/<?isCc>/, q{Match unanchored <?isCc> (Control)} );

ok("\c[NULL]" ~~ m/^<?isControl>$/, q{Match <?isControl>} );
ok(!( "\c[NULL]" ~~ m/^<!isControl>.$/ ), q{Don't match negated <?isControl>} );
ok(!( "\c[NULL]" ~~ m/^<-isControl>$/ ), q{Don't match inverted <?isControl>} );
ok(!( "\x[4886]"  ~~ m/^<?isControl>$/ ), q{Don't match unrelated <?isControl>} );
ok("\x[4886]"  ~~ m/^<!isControl>.$/, q{Match unrelated negated <?isControl>} );
ok("\x[4886]"  ~~ m/^<-isControl>$/, q{Match unrelated inverted <?isControl>} );
ok(!( "\x[4DB6]" ~~ m/^<?isControl>$/ ), q{Don't match related <?isControl>} );
ok("\x[4DB6]" ~~ m/^<!isControl>.$/, q{Match related negated <?isControl>} );
ok("\x[4DB6]" ~~ m/^<-isControl>$/, q{Match related inverted <?isControl>} );
ok("\x[4886]\x[4DB6]\c[NULL]" ~~ m/<?isControl>/, q{Match unanchored <?isControl>} );

# Cf          Format


ok("\c[SOFT HYPHEN]" ~~ m/^<?isCf>$/, q{Match <?isCf> (Format)} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<!isCf>.$/ ), q{Don't match negated <?isCf> (Format)} );
ok(!( "\c[SOFT HYPHEN]" ~~ m/^<-isCf>$/ ), q{Don't match inverted <?isCf> (Format)} );
ok(!( "\x[77B8]"  ~~ m/^<?isCf>$/ ), q{Don't match unrelated <?isCf> (Format)} );
ok("\x[77B8]"  ~~ m/^<!isCf>.$/, q{Match unrelated negated <?isCf> (Format)} );
ok("\x[77B8]"  ~~ m/^<-isCf>$/, q{Match unrelated inverted <?isCf> (Format)} );
ok(!( "\x[9FA6]" ~~ m/^<?isCf>$/ ), q{Don't match related <?isCf> (Format)} );
ok("\x[9FA6]" ~~ m/^<!isCf>.$/, q{Match related negated <?isCf> (Format)} );
ok("\x[9FA6]" ~~ m/^<-isCf>$/, q{Match related inverted <?isCf> (Format)} );
ok("\x[77B8]\x[9FA6]\c[SOFT HYPHEN]" ~~ m/<?isCf>/, q{Match unanchored <?isCf> (Format)} );

ok("\c[KHMER VOWEL INHERENT AQ]" ~~ m/^<?isFormat>$/, q{Match <?isFormat>} );
ok(!( "\c[KHMER VOWEL INHERENT AQ]" ~~ m/^<!isFormat>.$/ ), q{Don't match negated <?isFormat>} );
ok(!( "\c[KHMER VOWEL INHERENT AQ]" ~~ m/^<-isFormat>$/ ), q{Don't match inverted <?isFormat>} );
ok(!( "\c[DEVANAGARI VOWEL SIGN AU]"  ~~ m/^<?isFormat>$/ ), q{Don't match unrelated <?isFormat>} );
ok("\c[DEVANAGARI VOWEL SIGN AU]"  ~~ m/^<!isFormat>.$/, q{Match unrelated negated <?isFormat>} );
ok("\c[DEVANAGARI VOWEL SIGN AU]"  ~~ m/^<-isFormat>$/, q{Match unrelated inverted <?isFormat>} );
ok("\c[DEVANAGARI VOWEL SIGN AU]\c[KHMER VOWEL INHERENT AQ]" ~~ m/<?isFormat>/, q{Match unanchored <?isFormat>} );

# BidiL       # Left-to-Right


ok("\c[YI SYLLABLE IT]" ~~ m/^<?isBidiL>$/, q{Match (Left-to-Right)} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<!isBidiL>.$/ ), q{Don't match negated (Left-to-Right)} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<-isBidiL>$/ ), q{Don't match inverted (Left-to-Right)} );
ok(!( "\x[5A87]"  ~~ m/^<?isBidiL>$/ ), q{Don't match unrelated (Left-to-Right)} );
ok("\x[5A87]"  ~~ m/^<!isBidiL>.$/, q{Match unrelated negated (Left-to-Right)} );
ok("\x[5A87]"  ~~ m/^<-isBidiL>$/, q{Match unrelated inverted (Left-to-Right)} );
ok("\x[5A87]\c[YI SYLLABLE IT]" ~~ m/<?isBidiL>/, q{Match unanchored (Left-to-Right)} );

# BidiEN      # European Number


ok("\c[DIGIT ZERO]" ~~ m/^<?isBidiEN>$/, q{Match (European Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isBidiEN>.$/ ), q{Don't match negated (European Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isBidiEN>$/ ), q{Don't match inverted (European Number)} );
