use v6-alpha;
use Test;
plan 206;
ok("\c[MONGOLIAN FREE VARIATION SELECTOR ONE]" ~~ m/^<[A]+isInherited>$/, q{Match compound <isInherited>} );
ok(!( "\c[MONGOLIAN FREE VARIATION SELECTOR ONE]" ~~ m/^<!isInherited>.$/ ), q{Don't match externally inverted <isInherited>} );
ok(!( "\c[MONGOLIAN FREE VARIATION SELECTOR ONE]" ~~ m/^<[A]-isInherited>$/ ), q{Don't match compound inverted <isInherited>} );
ok(!( "\c[MONGOLIAN FREE VARIATION SELECTOR ONE]" ~~ m/^<-isInherited>$/ ), q{Don't match internally inverted <isInherited>} );
ok(!( "\c[TAMIL LETTER RRA]"  ~~ m/^<+isInherited>$/ ), q{Don't match unrelated <isInherited>} );
ok("\c[TAMIL LETTER RRA]"  ~~ m/^<!isInherited>.$/, q{Match unrelated externally inverted <isInherited>} );
ok("\c[TAMIL LETTER RRA]"  ~~ m/^<-isInherited>$/, q{Match unrelated internally inverted <isInherited>} );
ok("\c[TAMIL LETTER RRA]\c[MONGOLIAN FREE VARIATION SELECTOR ONE]" ~~ m/<+isInherited>/, q{Match unanchored <isInherited>} );

# Kannada


ok("\c[KANNADA SIGN ANUSVARA]" ~~ m/^<+isKannada>$/, q{Match <isKannada>} );
ok("\c[KANNADA SIGN ANUSVARA]" ~~ m/^<[A]+isKannada>$/, q{Match compound <isKannada>} );
ok(!( "\c[KANNADA SIGN ANUSVARA]" ~~ m/^<!isKannada>.$/ ), q{Don't match externally inverted <isKannada>} );
ok(!( "\c[KANNADA SIGN ANUSVARA]" ~~ m/^<[A]-isKannada>$/ ), q{Don't match compound inverted <isKannada>} );
ok(!( "\c[KANNADA SIGN ANUSVARA]" ~~ m/^<-isKannada>$/ ), q{Don't match internally inverted <isKannada>} );
ok(!( "\c[BLACK RIGHT-POINTING SMALL TRIANGLE]"  ~~ m/^<+isKannada>$/ ), q{Don't match unrelated <isKannada>} );
ok("\c[BLACK RIGHT-POINTING SMALL TRIANGLE]"  ~~ m/^<!isKannada>.$/, q{Match unrelated externally inverted <isKannada>} );
ok("\c[BLACK RIGHT-POINTING SMALL TRIANGLE]"  ~~ m/^<-isKannada>$/, q{Match unrelated internally inverted <isKannada>} );
ok("\c[BLACK RIGHT-POINTING SMALL TRIANGLE]\c[KANNADA SIGN ANUSVARA]" ~~ m/<+isKannada>/, q{Match unanchored <isKannada>} );

# Katakana


ok("\c[KATAKANA LETTER SMALL A]" ~~ m/^<+isKatakana>$/, q{Match <isKatakana>} );
ok("\c[KATAKANA LETTER SMALL A]" ~~ m/^<[A]+isKatakana>$/, q{Match compound <isKatakana>} );
ok(!( "\c[KATAKANA LETTER SMALL A]" ~~ m/^<!isKatakana>.$/ ), q{Don't match externally inverted <isKatakana>} );
ok(!( "\c[KATAKANA LETTER SMALL A]" ~~ m/^<[A]-isKatakana>$/ ), q{Don't match compound inverted <isKatakana>} );
ok(!( "\c[KATAKANA LETTER SMALL A]" ~~ m/^<-isKatakana>$/ ), q{Don't match internally inverted <isKatakana>} );
ok(!( "\x[40DB]"  ~~ m/^<+isKatakana>$/ ), q{Don't match unrelated <isKatakana>} );
ok("\x[40DB]"  ~~ m/^<!isKatakana>.$/, q{Match unrelated externally inverted <isKatakana>} );
ok("\x[40DB]"  ~~ m/^<-isKatakana>$/, q{Match unrelated internally inverted <isKatakana>} );
ok("\x[40DB]\c[KATAKANA LETTER SMALL A]" ~~ m/<+isKatakana>/, q{Match unanchored <isKatakana>} );

# Khmer


ok("\c[KHMER LETTER KA]" ~~ m/^<+isKhmer>$/, q{Match <isKhmer>} );
ok("\c[KHMER LETTER KA]" ~~ m/^<[A]+isKhmer>$/, q{Match compound <isKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<!isKhmer>.$/ ), q{Don't match externally inverted <isKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<[A]-isKhmer>$/ ), q{Don't match compound inverted <isKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<-isKhmer>$/ ), q{Don't match internally inverted <isKhmer>} );
ok(!( "\x[AC3E]"  ~~ m/^<+isKhmer>$/ ), q{Don't match unrelated <isKhmer>} );
ok("\x[AC3E]"  ~~ m/^<!isKhmer>.$/, q{Match unrelated externally inverted <isKhmer>} );
ok("\x[AC3E]"  ~~ m/^<-isKhmer>$/, q{Match unrelated internally inverted <isKhmer>} );
ok("\x[AC3E]\c[KHMER LETTER KA]" ~~ m/<+isKhmer>/, q{Match unanchored <isKhmer>} );

# Lao


ok("\c[LAO LETTER KO]" ~~ m/^<+isLao>$/, q{Match <isLao>} );
ok("\c[LAO LETTER KO]" ~~ m/^<[A]+isLao>$/, q{Match compound <isLao>} );
ok(!( "\c[LAO LETTER KO]" ~~ m/^<!isLao>.$/ ), q{Don't match externally inverted <isLao>} );
ok(!( "\c[LAO LETTER KO]" ~~ m/^<[A]-isLao>$/ ), q{Don't match compound inverted <isLao>} );
ok(!( "\c[LAO LETTER KO]" ~~ m/^<-isLao>$/ ), q{Don't match internally inverted <isLao>} );
ok(!( "\c[MODIFIER LETTER UNASPIRATED]"  ~~ m/^<+isLao>$/ ), q{Don't match unrelated <isLao>} );
ok("\c[MODIFIER LETTER UNASPIRATED]"  ~~ m/^<!isLao>.$/, q{Match unrelated externally inverted <isLao>} );
ok("\c[MODIFIER LETTER UNASPIRATED]"  ~~ m/^<-isLao>$/, q{Match unrelated internally inverted <isLao>} );
ok(!( "\c[MODIFIER LETTER DOUBLE APOSTROPHE]" ~~ m/^<+isLao>$/ ), q{Don't match related <isLao>} );
ok("\c[MODIFIER LETTER DOUBLE APOSTROPHE]" ~~ m/^<-isLao>$/, q{Match related internally inverted <isLao>} );
ok("\c[MODIFIER LETTER DOUBLE APOSTROPHE]" ~~ m/^<!isLao>.$/, q{Match related externally inverted <isLao>} );
ok("\c[MODIFIER LETTER UNASPIRATED]\c[MODIFIER LETTER DOUBLE APOSTROPHE]\c[LAO LETTER KO]" ~~ m/<+isLao>/, q{Match unanchored <isLao>} );

# Latin


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<+isLatin>$/, q{Match <isLatin>} );
ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]+isLatin>$/, q{Match compound <isLatin>} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isLatin>.$/ ), q{Don't match externally inverted <isLatin>} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]-isLatin>$/ ), q{Don't match compound inverted <isLatin>} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isLatin>$/ ), q{Don't match internally inverted <isLatin>} );
ok(!( "\x[6B4C]"  ~~ m/^<+isLatin>$/ ), q{Don't match unrelated <isLatin>} );
ok("\x[6B4C]"  ~~ m/^<!isLatin>.$/, q{Match unrelated externally inverted <isLatin>} );
ok("\x[6B4C]"  ~~ m/^<-isLatin>$/, q{Match unrelated internally inverted <isLatin>} );
ok(!( "\x[6B4C]" ~~ m/^<+isLatin>$/ ), q{Don't match related <isLatin>} );
ok("\x[6B4C]" ~~ m/^<-isLatin>$/, q{Match related internally inverted <isLatin>} );
ok("\x[6B4C]" ~~ m/^<!isLatin>.$/, q{Match related externally inverted <isLatin>} );
ok("\x[6B4C]\x[6B4C]\c[LATIN CAPITAL LETTER A]" ~~ m/<+isLatin>/, q{Match unanchored <isLatin>} );

# Malayalam


ok("\c[MALAYALAM LETTER TA]" ~~ m/^<+isMalayalam>$/, q{Match <isMalayalam>} );
ok("\c[MALAYALAM LETTER TA]" ~~ m/^<[A]+isMalayalam>$/, q{Match compound <isMalayalam>} );
ok(!( "\c[MALAYALAM LETTER TA]" ~~ m/^<!isMalayalam>.$/ ), q{Don't match externally inverted <isMalayalam>} );
ok(!( "\c[MALAYALAM LETTER TA]" ~~ m/^<[A]-isMalayalam>$/ ), q{Don't match compound inverted <isMalayalam>} );
ok(!( "\c[MALAYALAM LETTER TA]" ~~ m/^<-isMalayalam>$/ ), q{Don't match internally inverted <isMalayalam>} );
ok(!( "\x[0D29]"  ~~ m/^<+isMalayalam>$/ ), q{Don't match unrelated <isMalayalam>} );
ok("\x[0D29]"  ~~ m/^<!isMalayalam>.$/, q{Match unrelated externally inverted <isMalayalam>} );
ok("\x[0D29]"  ~~ m/^<-isMalayalam>$/, q{Match unrelated internally inverted <isMalayalam>} );
ok(!( "\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<+isMalayalam>$/ ), q{Don't match related <isMalayalam>} );
ok("\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<-isMalayalam>$/, q{Match related internally inverted <isMalayalam>} );
ok("\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<!isMalayalam>.$/, q{Match related externally inverted <isMalayalam>} );
ok("\x[0D29]\c[SINHALA SIGN ANUSVARAYA]\c[MALAYALAM LETTER TA]" ~~ m/<+isMalayalam>/, q{Match unanchored <isMalayalam>} );

# Mongolian


ok("\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<+isMongolian>$/, q{Match <isMongolian>} );
ok("\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<[A]+isMongolian>$/, q{Match compound <isMongolian>} );
ok(!( "\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<!isMongolian>.$/ ), q{Don't match externally inverted <isMongolian>} );
ok(!( "\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<[A]-isMongolian>$/ ), q{Don't match compound inverted <isMongolian>} );
ok(!( "\c[MONGOLIAN DIGIT ZERO]" ~~ m/^<-isMongolian>$/ ), q{Don't match internally inverted <isMongolian>} );
ok(!( "\x[70C0]"  ~~ m/^<+isMongolian>$/ ), q{Don't match unrelated <isMongolian>} );
ok("\x[70C0]"  ~~ m/^<!isMongolian>.$/, q{Match unrelated externally inverted <isMongolian>} );
ok("\x[70C0]"  ~~ m/^<-isMongolian>$/, q{Match unrelated internally inverted <isMongolian>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isMongolian>$/ ), q{Don't match related <isMongolian>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMongolian>$/, q{Match related internally inverted <isMongolian>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMongolian>.$/, q{Match related externally inverted <isMongolian>} );
ok("\x[70C0]\c[COMBINING GRAVE ACCENT]\c[MONGOLIAN DIGIT ZERO]" ~~ m/<+isMongolian>/, q{Match unanchored <isMongolian>} );

# Myanmar


ok("\c[MYANMAR LETTER KA]" ~~ m/^<+isMyanmar>$/, q{Match <isMyanmar>} );
ok("\c[MYANMAR LETTER KA]" ~~ m/^<[A]+isMyanmar>$/, q{Match compound <isMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<!isMyanmar>.$/ ), q{Don't match externally inverted <isMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<[A]-isMyanmar>$/ ), q{Don't match compound inverted <isMyanmar>} );
ok(!( "\c[MYANMAR LETTER KA]" ~~ m/^<-isMyanmar>$/ ), q{Don't match internally inverted <isMyanmar>} );
ok(!( "\x[3CE3]"  ~~ m/^<+isMyanmar>$/ ), q{Don't match unrelated <isMyanmar>} );
ok("\x[3CE3]"  ~~ m/^<!isMyanmar>.$/, q{Match unrelated externally inverted <isMyanmar>} );
ok("\x[3CE3]"  ~~ m/^<-isMyanmar>$/, q{Match unrelated internally inverted <isMyanmar>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isMyanmar>$/ ), q{Don't match related <isMyanmar>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMyanmar>$/, q{Match related internally inverted <isMyanmar>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMyanmar>.$/, q{Match related externally inverted <isMyanmar>} );
ok("\x[3CE3]\c[COMBINING GRAVE ACCENT]\c[MYANMAR LETTER KA]" ~~ m/<+isMyanmar>/, q{Match unanchored <isMyanmar>} );

# Ogham


ok("\c[OGHAM LETTER BEITH]" ~~ m/^<+isOgham>$/, q{Match <isOgham>} );
ok("\c[OGHAM LETTER BEITH]" ~~ m/^<[A]+isOgham>$/, q{Match compound <isOgham>} );
ok(!( "\c[OGHAM LETTER BEITH]" ~~ m/^<!isOgham>.$/ ), q{Don't match externally inverted <isOgham>} );
ok(!( "\c[OGHAM LETTER BEITH]" ~~ m/^<[A]-isOgham>$/ ), q{Don't match compound inverted <isOgham>} );
ok(!( "\c[OGHAM LETTER BEITH]" ~~ m/^<-isOgham>$/ ), q{Don't match internally inverted <isOgham>} );
ok(!( "\x[077B]"  ~~ m/^<+isOgham>$/ ), q{Don't match unrelated <isOgham>} );
ok("\x[077B]"  ~~ m/^<!isOgham>.$/, q{Match unrelated externally inverted <isOgham>} );
ok("\x[077B]"  ~~ m/^<-isOgham>$/, q{Match unrelated internally inverted <isOgham>} );
ok("\x[077B]\c[OGHAM LETTER BEITH]" ~~ m/<+isOgham>/, q{Match unanchored <isOgham>} );

# OldItalic


ok(!( "\x[562B]"  ~~ m/^<+isOldItalic>$/ ), q{Don't match unrelated <isOldItalic>} );
ok("\x[562B]"  ~~ m/^<!isOldItalic>.$/, q{Match unrelated externally inverted <isOldItalic>} );
ok("\x[562B]"  ~~ m/^<-isOldItalic>$/, q{Match unrelated internally inverted <isOldItalic>} );

# Oriya


ok("\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<+isOriya>$/, q{Match <isOriya>} );
ok("\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<[A]+isOriya>$/, q{Match compound <isOriya>} );
ok(!( "\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<!isOriya>.$/ ), q{Don't match externally inverted <isOriya>} );
ok(!( "\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<[A]-isOriya>$/ ), q{Don't match compound inverted <isOriya>} );
ok(!( "\c[ORIYA SIGN CANDRABINDU]" ~~ m/^<-isOriya>$/ ), q{Don't match internally inverted <isOriya>} );
ok(!( "\x[3CE7]"  ~~ m/^<+isOriya>$/ ), q{Don't match unrelated <isOriya>} );
ok("\x[3CE7]"  ~~ m/^<!isOriya>.$/, q{Match unrelated externally inverted <isOriya>} );
ok("\x[3CE7]"  ~~ m/^<-isOriya>$/, q{Match unrelated internally inverted <isOriya>} );
ok("\x[3CE7]\c[ORIYA SIGN CANDRABINDU]" ~~ m/<+isOriya>/, q{Match unanchored <isOriya>} );

# Runic


ok("\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<+isRunic>$/, q{Match <isRunic>} );
ok("\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<[A]+isRunic>$/, q{Match compound <isRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<!isRunic>.$/ ), q{Don't match externally inverted <isRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<[A]-isRunic>$/ ), q{Don't match compound inverted <isRunic>} );
ok(!( "\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/^<-isRunic>$/ ), q{Don't match internally inverted <isRunic>} );
ok(!( "\c[BLACK HEART SUIT]"  ~~ m/^<+isRunic>$/ ), q{Don't match unrelated <isRunic>} );
ok("\c[BLACK HEART SUIT]"  ~~ m/^<!isRunic>.$/, q{Match unrelated externally inverted <isRunic>} );
ok("\c[BLACK HEART SUIT]"  ~~ m/^<-isRunic>$/, q{Match unrelated internally inverted <isRunic>} );
ok("\c[BLACK HEART SUIT]\c[RUNIC LETTER FEHU FEOH FE F]" ~~ m/<+isRunic>/, q{Match unanchored <isRunic>} );

# Sinhala


ok("\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<+isSinhala>$/, q{Match <isSinhala>} );
ok("\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<[A]+isSinhala>$/, q{Match compound <isSinhala>} );
ok(!( "\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<!isSinhala>.$/ ), q{Don't match externally inverted <isSinhala>} );
ok(!( "\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<[A]-isSinhala>$/ ), q{Don't match compound inverted <isSinhala>} );
ok(!( "\c[SINHALA SIGN ANUSVARAYA]" ~~ m/^<-isSinhala>$/ ), q{Don't match internally inverted <isSinhala>} );
ok(!( "\c[MYANMAR VOWEL SIGN II]"  ~~ m/^<+isSinhala>$/ ), q{Don't match unrelated <isSinhala>} );
ok("\c[MYANMAR VOWEL SIGN II]"  ~~ m/^<!isSinhala>.$/, q{Match unrelated externally inverted <isSinhala>} );
ok("\c[MYANMAR VOWEL SIGN II]"  ~~ m/^<-isSinhala>$/, q{Match unrelated internally inverted <isSinhala>} );
ok(!( "\c[KHMER CURRENCY SYMBOL RIEL]" ~~ m/^<+isSinhala>$/ ), q{Don't match related <isSinhala>} );
ok("\c[KHMER CURRENCY SYMBOL RIEL]" ~~ m/^<-isSinhala>$/, q{Match related internally inverted <isSinhala>} );
ok("\c[KHMER CURRENCY SYMBOL RIEL]" ~~ m/^<!isSinhala>.$/, q{Match related externally inverted <isSinhala>} );
ok("\c[MYANMAR VOWEL SIGN II]\c[KHMER CURRENCY SYMBOL RIEL]\c[SINHALA SIGN ANUSVARAYA]" ~~ m/<+isSinhala>/, q{Match unanchored <isSinhala>} );

# Syriac


ok("\c[SYRIAC LETTER ALAPH]" ~~ m/^<+isSyriac>$/, q{Match <isSyriac>} );
ok("\c[SYRIAC LETTER ALAPH]" ~~ m/^<[A]+isSyriac>$/, q{Match compound <isSyriac>} );
ok(!( "\c[SYRIAC LETTER ALAPH]" ~~ m/^<!isSyriac>.$/ ), q{Don't match externally inverted <isSyriac>} );
ok(!( "\c[SYRIAC LETTER ALAPH]" ~~ m/^<[A]-isSyriac>$/ ), q{Don't match compound inverted <isSyriac>} );
ok(!( "\c[SYRIAC LETTER ALAPH]" ~~ m/^<-isSyriac>$/ ), q{Don't match internally inverted <isSyriac>} );
ok(!( "\x[7BAA]"  ~~ m/^<+isSyriac>$/ ), q{Don't match unrelated <isSyriac>} );
ok("\x[7BAA]"  ~~ m/^<!isSyriac>.$/, q{Match unrelated externally inverted <isSyriac>} );
ok("\x[7BAA]"  ~~ m/^<-isSyriac>$/, q{Match unrelated internally inverted <isSyriac>} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<+isSyriac>$/ ), q{Don't match related <isSyriac>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<-isSyriac>$/, q{Match related internally inverted <isSyriac>} );
ok("\c[YI RADICAL QOT]" ~~ m/^<!isSyriac>.$/, q{Match related externally inverted <isSyriac>} );
ok("\x[7BAA]\c[YI RADICAL QOT]\c[SYRIAC LETTER ALAPH]" ~~ m/<+isSyriac>/, q{Match unanchored <isSyriac>} );

# Tagalog


ok("\c[TAGALOG LETTER A]" ~~ m/^<+isTagalog>$/, q{Match <isTagalog>} );
ok("\c[TAGALOG LETTER A]" ~~ m/^<[A]+isTagalog>$/, q{Match compound <isTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<!isTagalog>.$/ ), q{Don't match externally inverted <isTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<[A]-isTagalog>$/ ), q{Don't match compound inverted <isTagalog>} );
ok(!( "\c[TAGALOG LETTER A]" ~~ m/^<-isTagalog>$/ ), q{Don't match internally inverted <isTagalog>} );
ok(!( "\x[50F2]"  ~~ m/^<+isTagalog>$/ ), q{Don't match unrelated <isTagalog>} );
ok("\x[50F2]"  ~~ m/^<!isTagalog>.$/, q{Match unrelated externally inverted <isTagalog>} );
ok("\x[50F2]"  ~~ m/^<-isTagalog>$/, q{Match unrelated internally inverted <isTagalog>} );
ok("\x[50F2]\c[TAGALOG LETTER A]" ~~ m/<+isTagalog>/, q{Match unanchored <isTagalog>} );

# Tagbanwa


ok("\c[TAGBANWA LETTER A]" ~~ m/^<+isTagbanwa>$/, q{Match <isTagbanwa>} );
ok("\c[TAGBANWA LETTER A]" ~~ m/^<[A]+isTagbanwa>$/, q{Match compound <isTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<!isTagbanwa>.$/ ), q{Don't match externally inverted <isTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<[A]-isTagbanwa>$/ ), q{Don't match compound inverted <isTagbanwa>} );
ok(!( "\c[TAGBANWA LETTER A]" ~~ m/^<-isTagbanwa>$/ ), q{Don't match internally inverted <isTagbanwa>} );
ok(!( "\x[8843]"  ~~ m/^<+isTagbanwa>$/ ), q{Don't match unrelated <isTagbanwa>} );
ok("\x[8843]"  ~~ m/^<!isTagbanwa>.$/, q{Match unrelated externally inverted <isTagbanwa>} );
ok("\x[8843]"  ~~ m/^<-isTagbanwa>$/, q{Match unrelated internally inverted <isTagbanwa>} );
ok("\x[8843]\c[TAGBANWA LETTER A]" ~~ m/<+isTagbanwa>/, q{Match unanchored <isTagbanwa>} );

# Tamil


ok("\c[TAMIL SIGN ANUSVARA]" ~~ m/^<+isTamil>$/, q{Match <isTamil>} );
ok("\c[TAMIL SIGN ANUSVARA]" ~~ m/^<[A]+isTamil>$/, q{Match compound <isTamil>} );
ok(!( "\c[TAMIL SIGN ANUSVARA]" ~~ m/^<!isTamil>.$/ ), q{Don't match externally inverted <isTamil>} );
ok(!( "\c[TAMIL SIGN ANUSVARA]" ~~ m/^<[A]-isTamil>$/ ), q{Don't match compound inverted <isTamil>} );
ok(!( "\c[TAMIL SIGN ANUSVARA]" ~~ m/^<-isTamil>$/ ), q{Don't match internally inverted <isTamil>} );
ok(!( "\x[76C0]"  ~~ m/^<+isTamil>$/ ), q{Don't match unrelated <isTamil>} );
ok("\x[76C0]"  ~~ m/^<!isTamil>.$/, q{Match unrelated externally inverted <isTamil>} );
ok("\x[76C0]"  ~~ m/^<-isTamil>$/, q{Match unrelated internally inverted <isTamil>} );
ok("\x[76C0]\c[TAMIL SIGN ANUSVARA]" ~~ m/<+isTamil>/, q{Match unanchored <isTamil>} );

# Telugu


ok("\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<+isTelugu>$/, q{Match <isTelugu>} );
ok("\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<[A]+isTelugu>$/, q{Match compound <isTelugu>} );
ok(!( "\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<!isTelugu>.$/ ), q{Don't match externally inverted <isTelugu>} );
ok(!( "\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<[A]-isTelugu>$/ ), q{Don't match compound inverted <isTelugu>} );
ok(!( "\c[TELUGU SIGN CANDRABINDU]" ~~ m/^<-isTelugu>$/ ), q{Don't match internally inverted <isTelugu>} );
ok(!( "\x[60BD]"  ~~ m/^<+isTelugu>$/ ), q{Don't match unrelated <isTelugu>} );
ok("\x[60BD]"  ~~ m/^<!isTelugu>.$/, q{Match unrelated externally inverted <isTelugu>} );
ok("\x[60BD]"  ~~ m/^<-isTelugu>$/, q{Match unrelated internally inverted <isTelugu>} );
ok("\x[60BD]\c[TELUGU SIGN CANDRABINDU]" ~~ m/<+isTelugu>/, q{Match unanchored <isTelugu>} );

# Thaana


ok("\c[THAANA LETTER HAA]" ~~ m/^<+isThaana>$/, q{Match <isThaana>} );
ok("\c[THAANA LETTER HAA]" ~~ m/^<[A]+isThaana>$/, q{Match compound <isThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<!isThaana>.$/ ), q{Don't match externally inverted <isThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<[A]-isThaana>$/ ), q{Don't match compound inverted <isThaana>} );
ok(!( "\c[THAANA LETTER HAA]" ~~ m/^<-isThaana>$/ ), q{Don't match internally inverted <isThaana>} );
ok(!( "\x[2E74]"  ~~ m/^<+isThaana>$/ ), q{Don't match unrelated <isThaana>} );
ok("\x[2E74]"  ~~ m/^<!isThaana>.$/, q{Match unrelated externally inverted <isThaana>} );
ok("\x[2E74]"  ~~ m/^<-isThaana>$/, q{Match unrelated internally inverted <isThaana>} );
ok("\x[2E74]\c[THAANA LETTER HAA]" ~~ m/<+isThaana>/, q{Match unanchored <isThaana>} );

# Thai


ok("\c[THAI CHARACTER KO KAI]" ~~ m/^<+isThai>$/, q{Match <isThai>} );
ok("\c[THAI CHARACTER KO KAI]" ~~ m/^<[A]+isThai>$/, q{Match compound <isThai>} );
ok(!( "\c[THAI CHARACTER KO KAI]" ~~ m/^<!isThai>.$/ ), q{Don't match externally inverted <isThai>} );
ok(!( "\c[THAI CHARACTER KO KAI]" ~~ m/^<[A]-isThai>$/ ), q{Don't match compound inverted <isThai>} );
ok(!( "\c[THAI CHARACTER KO KAI]" ~~ m/^<-isThai>$/ ), q{Don't match internally inverted <isThai>} );
ok(!( "\x[A929]"  ~~ m/^<+isThai>$/ ), q{Don't match unrelated <isThai>} );
ok("\x[A929]"  ~~ m/^<!isThai>.$/, q{Match unrelated externally inverted <isThai>} );
ok("\x[A929]"  ~~ m/^<-isThai>$/, q{Match unrelated internally inverted <isThai>} );
ok("\x[A929]\c[THAI CHARACTER KO KAI]" ~~ m/<+isThai>/, q{Match unanchored <isThai>} );

# Tibetan


ok("\c[TIBETAN SYLLABLE OM]" ~~ m/^<+isTibetan>$/, q{Match <isTibetan>} );
ok("\c[TIBETAN SYLLABLE OM]" ~~ m/^<[A]+isTibetan>$/, q{Match compound <isTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<!isTibetan>.$/ ), q{Don't match externally inverted <isTibetan>} );
