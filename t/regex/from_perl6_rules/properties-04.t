use v6-alpha;
use Test;
plan 213;
force_todo(185, 10..11, 20..21, 30..31, 161, 167, 186..187);
ok("\x[C549]" ~~ m/^<-isLatin>$/, q{Match related inverted <?isLatin>} );
ok("\x[C549]\x[C549]\c[LATIN CAPITAL LETTER A]" ~~ m/<?isLatin>/, q{Match unanchored <?isLatin>} );

# Malayalam


ok("\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<?isMalayalam>$/, q{Match <?isMalayalam>} );
ok(!( "\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<!isMalayalam>.$/ ), q{Don't match negated <?isMalayalam>} );
ok(!( "\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<-isMalayalam>$/ ), q{Don't match inverted <?isMalayalam>} );
ok(!( "\x[625C]"  ~~ m/^<?isMalayalam>$/ ), q{Don't match unrelated <?isMalayalam>} );
ok("\x[625C]"  ~~ m/^<!isMalayalam>.$/, q{Match unrelated negated <?isMalayalam>} );
ok("\x[625C]"  ~~ m/^<-isMalayalam>$/, q{Match unrelated inverted <?isMalayalam>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMalayalam>$/ ), q{Don't match related <?isMalayalam>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMalayalam>.$/, q{Match related negated <?isMalayalam>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMalayalam>$/, q{Match related inverted <?isMalayalam>} );
ok("\x[625C]\c[COMBINING GRAVE ACCENT]\c[MALAYALAM SIGN ANUSVARA]" ~~ m/<?isMalayalam>/, q{Match unanchored <?isMalayalam>} );

# Mongolian


ok("\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<?isMongolian>$/, q{Match <?isMongolian>} );
ok(!( "\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<!isMongolian>.$/ ), q{Don't match negated <?isMongolian>} );
ok(!( "\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<-isMongolian>$/ ), q{Don't match inverted <?isMongolian>} );
ok(!( "\x[5F93]"  ~~ m/^<?isMongolian>$/ ), q{Don't match unrelated <?isMongolian>} );
ok("\x[5F93]"  ~~ m/^<!isMongolian>.$/, q{Match unrelated negated <?isMongolian>} );
ok("\x[5F93]"  ~~ m/^<-isMongolian>$/, q{Match unrelated inverted <?isMongolian>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMongolian>$/ ), q{Don't match related <?isMongolian>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMongolian>.$/, q{Match related negated <?isMongolian>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMongolian>$/, q{Match related inverted <?isMongolian>} );
ok("\x[5F93]\c[COMBINING GRAVE ACCENT]\c[MONGOLIAN DIGIT ZERO]" ~~ m/<?isMongolian>/, q{Match unanchored <?isMongolian>} );

# Myanmar


ok("\c[MYANMAR LETTER KA]" ~~ m/^<?isMyanmar>$/, q{Match <?isMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<!isMyanmar>.$/ ), q{Don't match negated <?isMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<-isMyanmar>$/ ), q{Don't match inverted <?isMyanmar>} );
ok(!( "\x[649A]"  ~~ m/^<?isMyanmar>$/ ), q{Don't match unrelated <?isMyanmar>} );
ok("\x[649A]"  ~~ m/^<!isMyanmar>.$/, q{Match unrelated negated <?isMyanmar>} );
ok("\x[649A]"  ~~ m/^<-isMyanmar>$/, q{Match unrelated inverted <?isMyanmar>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMyanmar>$/ ), q{Don't match related <?isMyanmar>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMyanmar>.$/, q{Match related negated <?isMyanmar>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMyanmar>$/, q{Match related inverted <?isMyanmar>} );
ok("\x[649A]\c[COMBINING GRAVE ACCENT]\c[MYANMAR LETTER KA]" ~~ m/<?isMyanmar>/, q{Match unanchored <?isMyanmar>} );

# Ogham


ok("\c[OGHAM LETTER BEITH]" ~~ m/^<?isOgham>$/, q{Match <?isOgham>} );
ok(!( "\c[OGHAM LETTER BEITH]" ~~ m/^<!isOgham>.$/ ), q{Don't match negated <?isOgham>} );
ok(!( "\c[OGHAM LETTER BEITH]" ~~ m/^<-isOgham>$/ ), q{Don't match inverted <?isOgham>} );
ok(!( "\c[KATAKANA LETTER KA]"  ~~ m/^<?isOgham>$/ ), q{Don't match unrelated <?isOgham>} );
ok("\c[KATAKANA LETTER KA]"  ~~ m/^<!isOgham>.$/, q{Match unrelated negated <?isOgham>} );
ok("\c[KATAKANA LETTER KA]"  ~~ m/^<-isOgham>$/, q{Match unrelated inverted <?isOgham>} );
ok("\c[KATAKANA LETTER KA]\c[OGHAM LETTER BEITH]" ~~ m/<?isOgham>/, q{Match unanchored <?isOgham>} );

# OldItalic


ok(!( "\x[8BB7]"  ~~ m/^<?isOldItalic>$/ ), q{Don't match unrelated <?isOldItalic>} );
ok("\x[8BB7]"  ~~ m/^<!isOldItalic>.$/, q{Match unrelated negated <?isOldItalic>} );
ok("\x[8BB7]"  ~~ m/^<-isOldItalic>$/, q{Match unrelated inverted <?isOldItalic>} );

# Oriya


ok("\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<?isOriya>$/, q{Match <?isOriya>} );
ok(!( "\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<!isOriya>.$/ ), q{Don't match negated <?isOriya>} );
ok(!( "\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<-isOriya>$/ ), q{Don't match inverted <?isOriya>} );
ok(!( "\x[4292]"  ~~ m/^<?isOriya>$/ ), q{Don't match unrelated <?isOriya>} );
ok("\x[4292]"  ~~ m/^<!isOriya>.$/, q{Match unrelated negated <?isOriya>} );
ok("\x[4292]"  ~~ m/^<-isOriya>$/, q{Match unrelated inverted <?isOriya>} );
ok("\x[4292]\c[ORIYA SIGN CANDRABINDU]" ~~ m/<?isOriya>/, q{Match unanchored <?isOriya>} );

# Runic


ok("\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<?isRunic>$/, q{Match <?isRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<!isRunic>.$/ ), q{Don't match negated <?isRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<-isRunic>$/ ), q{Don't match inverted <?isRunic>} );
ok(!( "\x[9857]"  ~~ m/^<?isRunic>$/ ), q{Don't match unrelated <?isRunic>} );
ok("\x[9857]"  ~~ m/^<!isRunic>.$/, q{Match unrelated negated <?isRunic>} );
ok("\x[9857]"  ~~ m/^<-isRunic>$/, q{Match unrelated inverted <?isRunic>} );
ok("\x[9857]\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/<?isRunic>/, q{Match unanchored <?isRunic>} );

# Sinhala


ok("\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<?isSinhala>$/, q{Match <?isSinhala>} );
ok(!( "\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<!isSinhala>.$/ ), q{Don't match negated <?isSinhala>} );
ok(!( "\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<-isSinhala>$/ ), q{Don't match inverted <?isSinhala>} );
ok(!( "\x[5DF5]"  ~~ m/^<?isSinhala>$/ ), q{Don't match unrelated <?isSinhala>} );
ok("\x[5DF5]"  ~~ m/^<!isSinhala>.$/, q{Match unrelated negated <?isSinhala>} );
ok("\x[5DF5]"  ~~ m/^<-isSinhala>$/, q{Match unrelated inverted <?isSinhala>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<?isSinhala>$/ ), q{Don't match related <?isSinhala>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<!isSinhala>.$/, q{Match related negated <?isSinhala>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<-isSinhala>$/, q{Match related inverted <?isSinhala>} );
ok("\x[5DF5]\c[YI RADICAL QOT]\c[SINHALA SIGN ANUSVARAYA]" ~~ m/<?isSinhala>/, q{Match unanchored <?isSinhala>} );

# Syriac


ok("\c[SYRIAC LETTER ALAPH]" ~~ m/^<?isSyriac>$/, q{Match <?isSyriac>} );
ok(!( "\c[SYRIAC LETTER ALAPH]" ~~ m/^<!isSyriac>.$/ ), q{Don't match negated <?isSyriac>} );
ok(!( "\c[SYRIAC LETTER ALAPH]" ~~ m/^<-isSyriac>$/ ), q{Don't match inverted <?isSyriac>} );
ok(!( "\x[57F0]"  ~~ m/^<?isSyriac>$/ ), q{Don't match unrelated <?isSyriac>} );
ok("\x[57F0]"  ~~ m/^<!isSyriac>.$/, q{Match unrelated negated <?isSyriac>} );
ok("\x[57F0]"  ~~ m/^<-isSyriac>$/, q{Match unrelated inverted <?isSyriac>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<?isSyriac>$/ ), q{Don't match related <?isSyriac>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<!isSyriac>.$/, q{Match related negated <?isSyriac>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<-isSyriac>$/, q{Match related inverted <?isSyriac>} );
ok("\x[57F0]\c[YI RADICAL QOT]\c[SYRIAC LETTER ALAPH]" ~~ m/<?isSyriac>/, q{Match unanchored <?isSyriac>} );

# Tagalog


ok("\c[TAGALOG LETTER A]" ~~ m/^<?isTagalog>$/, q{Match <?isTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<!isTagalog>.$/ ), q{Don't match negated <?isTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<-isTagalog>$/ ), q{Don't match inverted <?isTagalog>} );
ok(!( "\x[3DE8]"  ~~ m/^<?isTagalog>$/ ), q{Don't match unrelated <?isTagalog>} );
ok("\x[3DE8]"  ~~ m/^<!isTagalog>.$/, q{Match unrelated negated <?isTagalog>} );
ok("\x[3DE8]"  ~~ m/^<-isTagalog>$/, q{Match unrelated inverted <?isTagalog>} );
ok("\x[3DE8]\c[TAGALOG LETTER A]" ~~ m/<?isTagalog>/, q{Match unanchored <?isTagalog>} );

# Tagbanwa


ok("\c[TAGBANWA LETTER A]" ~~ m/^<?isTagbanwa>$/, q{Match <?isTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<!isTagbanwa>.$/ ), q{Don't match negated <?isTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<-isTagbanwa>$/ ), q{Don't match inverted <?isTagbanwa>} );
ok(!( "\c[CHEROKEE LETTER TLV]"  ~~ m/^<?isTagbanwa>$/ ), q{Don't match unrelated <?isTagbanwa>} );
ok("\c[CHEROKEE LETTER TLV]"  ~~ m/^<!isTagbanwa>.$/, q{Match unrelated negated <?isTagbanwa>} );
ok("\c[CHEROKEE LETTER TLV]"  ~~ m/^<-isTagbanwa>$/, q{Match unrelated inverted <?isTagbanwa>} );
ok("\c[CHEROKEE LETTER TLV]\c[TAGBANWA LETTER A]" ~~ m/<?isTagbanwa>/, q{Match unanchored <?isTagbanwa>} );

# Tamil


ok("\c[TAMIL SIGN ANUSVARA]" ~~ m/^<?isTamil>$/, q{Match <?isTamil>} );
ok(!( "\c[TAMIL SIGN ANUSVARA]" ~~ m/^<!isTamil>.$/ ), q{Don't match negated <?isTamil>} );
ok(!( "\c[TAMIL SIGN ANUSVARA]" ~~ m/^<-isTamil>$/ ), q{Don't match inverted <?isTamil>} );
ok(!( "\x[8DF2]"  ~~ m/^<?isTamil>$/ ), q{Don't match unrelated <?isTamil>} );
ok("\x[8DF2]"  ~~ m/^<!isTamil>.$/, q{Match unrelated negated <?isTamil>} );
ok("\x[8DF2]"  ~~ m/^<-isTamil>$/, q{Match unrelated inverted <?isTamil>} );
ok("\x[8DF2]\c[TAMIL SIGN ANUSVARA]" ~~ m/<?isTamil>/, q{Match unanchored <?isTamil>} );

# Telugu


ok("\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<?isTelugu>$/, q{Match <?isTelugu>} );
ok(!( "\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<!isTelugu>.$/ ), q{Don't match negated <?isTelugu>} );
ok(!( "\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<-isTelugu>$/ ), q{Don't match inverted <?isTelugu>} );
ok(!( "\x[8088]"  ~~ m/^<?isTelugu>$/ ), q{Don't match unrelated <?isTelugu>} );
ok("\x[8088]"  ~~ m/^<!isTelugu>.$/, q{Match unrelated negated <?isTelugu>} );
ok("\x[8088]"  ~~ m/^<-isTelugu>$/, q{Match unrelated inverted <?isTelugu>} );
ok("\x[8088]\c[TELUGU SIGN CANDRABINDU]" ~~ m/<?isTelugu>/, q{Match unanchored <?isTelugu>} );

# Thaana


ok("\c[THAANA LETTER HAA]" ~~ m/^<?isThaana>$/, q{Match <?isThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<!isThaana>.$/ ), q{Don't match negated <?isThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<-isThaana>$/ ), q{Don't match inverted <?isThaana>} );
ok(!( "\x[5240]"  ~~ m/^<?isThaana>$/ ), q{Don't match unrelated <?isThaana>} );
ok("\x[5240]"  ~~ m/^<!isThaana>.$/, q{Match unrelated negated <?isThaana>} );
ok("\x[5240]"  ~~ m/^<-isThaana>$/, q{Match unrelated inverted <?isThaana>} );
ok("\x[5240]\c[THAANA LETTER HAA]" ~~ m/<?isThaana>/, q{Match unanchored <?isThaana>} );

# Thai


ok("\c[THAI CHARACTER KO KAI]" ~~ m/^<?isThai>$/, q{Match <?isThai>} );
ok(!( "\c[THAI CHARACTER KO KAI]" ~~ m/^<!isThai>.$/ ), q{Don't match negated <?isThai>} );
ok(!( "\c[THAI CHARACTER KO KAI]" ~~ m/^<-isThai>$/ ), q{Don't match inverted <?isThai>} );
ok(!( "\x[CAD3]"  ~~ m/^<?isThai>$/ ), q{Don't match unrelated <?isThai>} );
ok("\x[CAD3]"  ~~ m/^<!isThai>.$/, q{Match unrelated negated <?isThai>} );
ok("\x[CAD3]"  ~~ m/^<-isThai>$/, q{Match unrelated inverted <?isThai>} );
ok("\x[CAD3]\c[THAI CHARACTER KO KAI]" ~~ m/<?isThai>/, q{Match unanchored <?isThai>} );

# Tibetan


ok("\c[TIBETAN SYLLABLE OM]" ~~ m/^<?isTibetan>$/, q{Match <?isTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<!isTibetan>.$/ ), q{Don't match negated <?isTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<-isTibetan>$/ ), q{Don't match inverted <?isTibetan>} );
ok(!( "\x[8557]"  ~~ m/^<?isTibetan>$/ ), q{Don't match unrelated <?isTibetan>} );
ok("\x[8557]"  ~~ m/^<!isTibetan>.$/, q{Match unrelated negated <?isTibetan>} );
ok("\x[8557]"  ~~ m/^<-isTibetan>$/, q{Match unrelated inverted <?isTibetan>} );
ok("\x[8557]\c[TIBETAN SYLLABLE OM]" ~~ m/<?isTibetan>/, q{Match unanchored <?isTibetan>} );

# Yi


ok("\c[YI SYLLABLE IT]" ~~ m/^<?isYi>$/, q{Match <?isYi>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<!isYi>.$/ ), q{Don't match negated <?isYi>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<-isYi>$/ ), q{Don't match inverted <?isYi>} );
ok(!( "\x[BCD0]"  ~~ m/^<?isYi>$/ ), q{Don't match unrelated <?isYi>} );
ok("\x[BCD0]"  ~~ m/^<!isYi>.$/, q{Match unrelated negated <?isYi>} );
ok("\x[BCD0]"  ~~ m/^<-isYi>$/, q{Match unrelated inverted <?isYi>} );
ok("\x[BCD0]\c[YI SYLLABLE IT]" ~~ m/<?isYi>/, q{Match unanchored <?isYi>} );

# ASCIIHexDigit


ok("\c[DIGIT ZERO]" ~~ m/^<?isASCIIHexDigit>$/, q{Match <?isASCIIHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isASCIIHexDigit>.$/ ), q{Don't match negated <?isASCIIHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isASCIIHexDigit>$/ ), q{Don't match inverted <?isASCIIHexDigit>} );
ok(!( "\x[53BA]"  ~~ m/^<?isASCIIHexDigit>$/ ), q{Don't match unrelated <?isASCIIHexDigit>} );
ok("\x[53BA]"  ~~ m/^<!isASCIIHexDigit>.$/, q{Match unrelated negated <?isASCIIHexDigit>} );
ok("\x[53BA]"  ~~ m/^<-isASCIIHexDigit>$/, q{Match unrelated inverted <?isASCIIHexDigit>} );
ok("\x[53BA]\c[DIGIT ZERO]" ~~ m/<?isASCIIHexDigit>/, q{Match unanchored <?isASCIIHexDigit>} );

# Dash


ok("\c[HYPHEN-MINUS]" ~~ m/^<?isDash>$/, q{Match <?isDash>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<!isDash>.$/ ), q{Don't match negated <?isDash>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<-isDash>$/ ), q{Don't match inverted <?isDash>} );
ok(!( "\x[53F7]"  ~~ m/^<?isDash>$/ ), q{Don't match unrelated <?isDash>} );
ok("\x[53F7]"  ~~ m/^<!isDash>.$/, q{Match unrelated negated <?isDash>} );
ok("\x[53F7]"  ~~ m/^<-isDash>$/, q{Match unrelated inverted <?isDash>} );
ok("\x[53F7]\c[HYPHEN-MINUS]" ~~ m/<?isDash>/, q{Match unanchored <?isDash>} );

# Diacritic


ok("\c[MODIFIER LETTER CAPITAL A]" ~~ m/^<?isDiacritic>$/, q{Match <?isDiacritic>} );
ok(!( "\c[MODIFIER LETTER CAPITAL A]" ~~ m/^<!isDiacritic>.$/ ), q{Don't match negated <?isDiacritic>} );
ok(!( "\c[MODIFIER LETTER CAPITAL A]" ~~ m/^<-isDiacritic>$/ ), q{Don't match inverted <?isDiacritic>} );
ok(!( "\x[1BCD]"  ~~ m/^<?isDiacritic>$/ ), q{Don't match unrelated <?isDiacritic>} );
ok("\x[1BCD]"  ~~ m/^<!isDiacritic>.$/, q{Match unrelated negated <?isDiacritic>} );
ok("\x[1BCD]"  ~~ m/^<-isDiacritic>$/, q{Match unrelated inverted <?isDiacritic>} );
ok("\x[1BCD]\c[MODIFIER LETTER CAPITAL A]" ~~ m/<?isDiacritic>/, q{Match unanchored <?isDiacritic>} );

# Extender


ok("\c[MIDDLE DOT]" ~~ m/^<?isExtender>$/, q{Match <?isExtender>} );
ok(!( "\c[MIDDLE DOT]" ~~ m/^<!isExtender>.$/ ), q{Don't match negated <?isExtender>} );
ok(!( "\c[MIDDLE DOT]" ~~ m/^<-isExtender>$/ ), q{Don't match inverted <?isExtender>} );
ok(!( "\x[3A18]"  ~~ m/^<?isExtender>$/ ), q{Don't match unrelated <?isExtender>} );
ok("\x[3A18]"  ~~ m/^<!isExtender>.$/, q{Match unrelated negated <?isExtender>} );
ok("\x[3A18]"  ~~ m/^<-isExtender>$/, q{Match unrelated inverted <?isExtender>} );
ok("\x[3A18]\c[MIDDLE DOT]" ~~ m/<?isExtender>/, q{Match unanchored <?isExtender>} );

# GraphemeLink


ok( 0, "cpan-testers reported GraphemeLink problems", :todo ) ; # ok("\c[COMBINING GRAPHEME JOINER]" ~~ m/^<?isGraphemeLink>$/, q{Match <?isGraphemeLink>} );
ok( 0, "cpan-testers reported GraphemeLink problems", :todo ) ; # ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<!isGraphemeLink>.$/ ), q{Don't match negated <?isGraphemeLink>} );
ok( 0, "cpan-testers reported GraphemeLink problems", :todo ) ; # ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<-isGraphemeLink>$/ ), q{Don't match inverted <?isGraphemeLink>} );
ok( 0, "cpan-testers reported GraphemeLink problems", :todo ) ; # ok(!( "\x[4989]"  ~~ m/^<?isGraphemeLink>$/ ), q{Don't match unrelated <?isGraphemeLink>} );
ok( 0, "cpan-testers reported GraphemeLink problems", :todo ) ; # ok("\x[4989]"  ~~ m/^<!isGraphemeLink>.$/, q{Match unrelated negated <?isGraphemeLink>} );
ok( 0, "cpan-testers reported GraphemeLink problems", :todo ) ; # ok("\x[4989]"  ~~ m/^<-isGraphemeLink>$/, q{Match unrelated inverted <?isGraphemeLink>} );
ok( 0, "cpan-testers reported GraphemeLink problems", :todo ) ; # ok("\x[4989]\c[COMBINING GRAPHEME JOINER]" ~~ m/<?isGraphemeLink>/, q{Match unanchored <?isGraphemeLink>} );

# HexDigit


ok("\c[DIGIT ZERO]" ~~ m/^<?isHexDigit>$/, q{Match <?isHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isHexDigit>.$/ ), q{Don't match negated <?isHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isHexDigit>$/ ), q{Don't match inverted <?isHexDigit>} );
ok(!( "\x[6292]"  ~~ m/^<?isHexDigit>$/ ), q{Don't match unrelated <?isHexDigit>} );
ok("\x[6292]"  ~~ m/^<!isHexDigit>.$/, q{Match unrelated negated <?isHexDigit>} );
ok("\x[6292]"  ~~ m/^<-isHexDigit>$/, q{Match unrelated inverted <?isHexDigit>} );
ok("\x[6292]\c[DIGIT ZERO]" ~~ m/<?isHexDigit>/, q{Match unanchored <?isHexDigit>} );

# Hyphen

ok("\c[KATAKANA MIDDLE DOT]" ~~ m/^<?isHyphen>$/, q{Match <?isHyphen>} );
ok(!( "\c[KATAKANA MIDDLE DOT]" ~~ m/^<!isHyphen>.$/ ), q{Don't match negated <?isHyphen>} );
ok(!( "\c[KATAKANA MIDDLE DOT]" ~~ m/^<-isHyphen>$/ ), q{Don't match inverted <?isHyphen>} );
ok(!( "\c[BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE]"  ~~ m/^<?isHyphen>$/ ), q{Don't match unrelated <?isHyphen>} );
ok("\c[BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE]"  ~~ m/^<!isHyphen>.$/, q{Match unrelated negated <?isHyphen>} );
ok("\c[BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE]"  ~~ m/^<-isHyphen>$/, q{Match unrelated inverted <?isHyphen>} );
ok("\c[BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE]\c[KATAKANA MIDDLE DOT]" ~~ m/<?isHyphen>/, q{Match unanchored <?isHyphen>} );

# Ideographic


ok("\x[8AB0]" ~~ m/^<?isIdeographic>$/, q{Match <?isIdeographic>} );
ok(!( "\x[8AB0]" ~~ m/^<!isIdeographic>.$/ ), q{Don't match negated <?isIdeographic>} );
ok(!( "\x[8AB0]" ~~ m/^<-isIdeographic>$/ ), q{Don't match inverted <?isIdeographic>} );
ok(!( "\x[9FA6]"  ~~ m/^<?isIdeographic>$/ ), q{Don't match unrelated <?isIdeographic>} );
ok("\x[9FA6]"  ~~ m/^<!isIdeographic>.$/, q{Match unrelated negated <?isIdeographic>} );
ok("\x[9FA6]"  ~~ m/^<-isIdeographic>$/, q{Match unrelated inverted <?isIdeographic>} );
ok("\x[9FA6]\x[8AB0]" ~~ m/<?isIdeographic>/, q{Match unanchored <?isIdeographic>} );

# IDSBinaryOperator


ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<?isIDSBinaryOperator>$/, q{Match <?isIDSBinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<!isIDSBinaryOperator>.$/ ), q{Don't match negated <?isIDSBinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<-isIDSBinaryOperator>$/ ), q{Don't match inverted <?isIDSBinaryOperator>} );
ok(!( "\x[59E9]"  ~~ m/^<?isIDSBinaryOperator>$/ ), q{Don't match unrelated <?isIDSBinaryOperator>} );
ok("\x[59E9]"  ~~ m/^<!isIDSBinaryOperator>.$/, q{Match unrelated negated <?isIDSBinaryOperator>} );
ok("\x[59E9]"  ~~ m/^<-isIDSBinaryOperator>$/, q{Match unrelated inverted <?isIDSBinaryOperator>} );
ok("\x[59E9]\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/<?isIDSBinaryOperator>/, q{Match unanchored <?isIDSBinaryOperator>} );

# IDSTrinaryOperator


ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<?isIDSTrinaryOperator>$/, q{Match <?isIDSTrinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<!isIDSTrinaryOperator>.$/ ), q{Don't match negated <?isIDSTrinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<-isIDSTrinaryOperator>$/ ), q{Don't match inverted <?isIDSTrinaryOperator>} );
ok(!( "\x[9224]"  ~~ m/^<?isIDSTrinaryOperator>$/ ), q{Don't match unrelated <?isIDSTrinaryOperator>} );
ok("\x[9224]"  ~~ m/^<!isIDSTrinaryOperator>.$/, q{Match unrelated negated <?isIDSTrinaryOperator>} );
ok("\x[9224]"  ~~ m/^<-isIDSTrinaryOperator>$/, q{Match unrelated inverted <?isIDSTrinaryOperator>} );
ok("\x[9224]\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/<?isIDSTrinaryOperator>/, q{Match unanchored <?isIDSTrinaryOperator>} );

# JoinControl


ok("\c[ZERO WIDTH NON-JOINER]" ~~ m/^<?isJoinControl>$/, q{Match <?isJoinControl>} );
ok(!( "\c[ZERO WIDTH NON-JOINER]" ~~ m/^<!isJoinControl>.$/ ), q{Don't match negated <?isJoinControl>} );
ok(!( "\c[ZERO WIDTH NON-JOINER]" ~~ m/^<-isJoinControl>$/ ), q{Don't match inverted <?isJoinControl>} );
ok(!( "\c[BENGALI LETTER DDHA]"  ~~ m/^<?isJoinControl>$/ ), q{Don't match unrelated <?isJoinControl>} );
ok("\c[BENGALI LETTER DDHA]"  ~~ m/^<!isJoinControl>.$/, q{Match unrelated negated <?isJoinControl>} );
ok("\c[BENGALI LETTER DDHA]"  ~~ m/^<-isJoinControl>$/, q{Match unrelated inverted <?isJoinControl>} );
ok("\c[BENGALI LETTER DDHA]\c[ZERO WIDTH NON-JOINER]" ~~ m/<?isJoinControl>/, q{Match unanchored <?isJoinControl>} );

# LogicalOrderException


ok("\c[THAI CHARACTER SARA E]" ~~ m/^<?isLogicalOrderException>$/, q{Match <?isLogicalOrderException>} );
ok(!( "\c[THAI CHARACTER SARA E]" ~~ m/^<!isLogicalOrderException>.$/ ), q{Don't match negated <?isLogicalOrderException>} );
ok(!( "\c[THAI CHARACTER SARA E]" ~~ m/^<-isLogicalOrderException>$/ ), q{Don't match inverted <?isLogicalOrderException>} );
ok(!( "\x[857B]"  ~~ m/^<?isLogicalOrderException>$/ ), q{Don't match unrelated <?isLogicalOrderException>} );
