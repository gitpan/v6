use v6-alpha;
use Test;
plan 219;
ok(!( "\x[AFFB]"  ~~ m/^<?isBidiEN>$/ ), q{Don't match unrelated (European Number)} );
ok("\x[AFFB]"  ~~ m/^<!isBidiEN>.$/, q{Match unrelated negated (European Number)} );
ok("\x[AFFB]"  ~~ m/^<-isBidiEN>$/, q{Match unrelated inverted (European Number)} );
ok("\x[AFFB]\c[DIGIT ZERO]" ~~ m/<?isBidiEN>/, q{Match unanchored (European Number)} );

# BidiES      # European Number Separator


ok("\c[SOLIDUS]" ~~ m/^<?isBidiES>$/, q{Match (European Number Separator)} );
ok(!( "\c[SOLIDUS]" ~~ m/^<!isBidiES>.$/ ), q{Don't match negated (European Number Separator)} );
ok(!( "\c[SOLIDUS]" ~~ m/^<-isBidiES>$/ ), q{Don't match inverted (European Number Separator)} );
ok(!( "\x[7B89]"  ~~ m/^<?isBidiES>$/ ), q{Don't match unrelated (European Number Separator)} );
ok("\x[7B89]"  ~~ m/^<!isBidiES>.$/, q{Match unrelated negated (European Number Separator)} );
ok("\x[7B89]"  ~~ m/^<-isBidiES>$/, q{Match unrelated inverted (European Number Separator)} );
ok("\x[7B89]\c[SOLIDUS]" ~~ m/<?isBidiES>/, q{Match unanchored (European Number Separator)} );

# BidiET      # European Number Terminator


ok("\c[NUMBER SIGN]" ~~ m/^<?isBidiET>$/, q{Match (European Number Terminator)} );
ok(!( "\c[NUMBER SIGN]" ~~ m/^<!isBidiET>.$/ ), q{Don't match negated (European Number Terminator)} );
ok(!( "\c[NUMBER SIGN]" ~~ m/^<-isBidiET>$/ ), q{Don't match inverted (European Number Terminator)} );
ok(!( "\x[6780]"  ~~ m/^<?isBidiET>$/ ), q{Don't match unrelated (European Number Terminator)} );
ok("\x[6780]"  ~~ m/^<!isBidiET>.$/, q{Match unrelated negated (European Number Terminator)} );
ok("\x[6780]"  ~~ m/^<-isBidiET>$/, q{Match unrelated inverted (European Number Terminator)} );
ok("\x[6780]\c[NUMBER SIGN]" ~~ m/<?isBidiET>/, q{Match unanchored (European Number Terminator)} );

# BidiWS      # Whitespace


ok("\c[FORM FEED (FF)]" ~~ m/^<?isBidiWS>$/, q{Match (Whitespace)} );
ok(!( "\c[FORM FEED (FF)]" ~~ m/^<!isBidiWS>.$/ ), q{Don't match negated (Whitespace)} );
ok(!( "\c[FORM FEED (FF)]" ~~ m/^<-isBidiWS>$/ ), q{Don't match inverted (Whitespace)} );
ok(!( "\x[6CF9]"  ~~ m/^<?isBidiWS>$/ ), q{Don't match unrelated (Whitespace)} );
ok("\x[6CF9]"  ~~ m/^<!isBidiWS>.$/, q{Match unrelated negated (Whitespace)} );
ok("\x[6CF9]"  ~~ m/^<-isBidiWS>$/, q{Match unrelated inverted (Whitespace)} );
ok("\x[6CF9]\c[FORM FEED (FF)]" ~~ m/<?isBidiWS>/, q{Match unanchored (Whitespace)} );

# Arabic


ok("\c[ARABIC LETTER HAMZA]" ~~ m/^<?isArabic>$/, q{Match <?isArabic>} );
ok(!( "\c[ARABIC LETTER HAMZA]" ~~ m/^<!isArabic>.$/ ), q{Don't match negated <?isArabic>} );
ok(!( "\c[ARABIC LETTER HAMZA]" ~~ m/^<-isArabic>$/ ), q{Don't match inverted <?isArabic>} );
ok(!( "\x[A649]"  ~~ m/^<?isArabic>$/ ), q{Don't match unrelated <?isArabic>} );
ok("\x[A649]"  ~~ m/^<!isArabic>.$/, q{Match unrelated negated <?isArabic>} );
ok("\x[A649]"  ~~ m/^<-isArabic>$/, q{Match unrelated inverted <?isArabic>} );
ok("\x[A649]\c[ARABIC LETTER HAMZA]" ~~ m/<?isArabic>/, q{Match unanchored <?isArabic>} );

# Armenian


ok("\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<?isArmenian>$/, q{Match <?isArmenian>} );
ok(!( "\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<!isArmenian>.$/ ), q{Don't match negated <?isArmenian>} );
ok(!( "\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<-isArmenian>$/ ), q{Don't match inverted <?isArmenian>} );
ok(!( "\x[CBFF]"  ~~ m/^<?isArmenian>$/ ), q{Don't match unrelated <?isArmenian>} );
ok("\x[CBFF]"  ~~ m/^<!isArmenian>.$/, q{Match unrelated negated <?isArmenian>} );
ok("\x[CBFF]"  ~~ m/^<-isArmenian>$/, q{Match unrelated inverted <?isArmenian>} );
ok("\x[CBFF]\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/<?isArmenian>/, q{Match unanchored <?isArmenian>} );

# Bengali


ok("\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<?isBengali>$/, q{Match <?isBengali>} );
ok(!( "\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<!isBengali>.$/ ), q{Don't match negated <?isBengali>} );
ok(!( "\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<-isBengali>$/ ), q{Don't match inverted <?isBengali>} );
ok(!( "\x[D1E8]"  ~~ m/^<?isBengali>$/ ), q{Don't match unrelated <?isBengali>} );
ok("\x[D1E8]"  ~~ m/^<!isBengali>.$/, q{Match unrelated negated <?isBengali>} );
ok("\x[D1E8]"  ~~ m/^<-isBengali>$/, q{Match unrelated inverted <?isBengali>} );
ok("\x[D1E8]\c[BENGALI SIGN CANDRABINDU]" ~~ m/<?isBengali>/, q{Match unanchored <?isBengali>} );

# Bopomofo


ok("\c[BOPOMOFO LETTER B]" ~~ m/^<?isBopomofo>$/, q{Match <?isBopomofo>} );
ok(!( "\c[BOPOMOFO LETTER B]" ~~ m/^<!isBopomofo>.$/ ), q{Don't match negated <?isBopomofo>} );
ok(!( "\c[BOPOMOFO LETTER B]" ~~ m/^<-isBopomofo>$/ ), q{Don't match inverted <?isBopomofo>} );
ok(!( "\x[B093]"  ~~ m/^<?isBopomofo>$/ ), q{Don't match unrelated <?isBopomofo>} );
ok("\x[B093]"  ~~ m/^<!isBopomofo>.$/, q{Match unrelated negated <?isBopomofo>} );
ok("\x[B093]"  ~~ m/^<-isBopomofo>$/, q{Match unrelated inverted <?isBopomofo>} );
ok("\x[B093]\c[BOPOMOFO LETTER B]" ~~ m/<?isBopomofo>/, q{Match unanchored <?isBopomofo>} );

# Buhid


ok("\c[BUHID LETTER A]" ~~ m/^<?isBuhid>$/, q{Match <?isBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<!isBuhid>.$/ ), q{Don't match negated <?isBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<-isBuhid>$/ ), q{Don't match inverted <?isBuhid>} );
ok(!( "\x[C682]"  ~~ m/^<?isBuhid>$/ ), q{Don't match unrelated <?isBuhid>} );
ok("\x[C682]"  ~~ m/^<!isBuhid>.$/, q{Match unrelated negated <?isBuhid>} );
ok("\x[C682]"  ~~ m/^<-isBuhid>$/, q{Match unrelated inverted <?isBuhid>} );
ok("\x[C682]\c[BUHID LETTER A]" ~~ m/<?isBuhid>/, q{Match unanchored <?isBuhid>} );

# CanadianAboriginal


ok("\c[CANADIAN SYLLABICS E]" ~~ m/^<?isCanadianAboriginal>$/, q{Match <?isCanadianAboriginal>} );
ok(!( "\c[CANADIAN SYLLABICS E]" ~~ m/^<!isCanadianAboriginal>.$/ ), q{Don't match negated <?isCanadianAboriginal>} );
ok(!( "\c[CANADIAN SYLLABICS E]" ~~ m/^<-isCanadianAboriginal>$/ ), q{Don't match inverted <?isCanadianAboriginal>} );
ok(!( "\x[888B]"  ~~ m/^<?isCanadianAboriginal>$/ ), q{Don't match unrelated <?isCanadianAboriginal>} );
ok("\x[888B]"  ~~ m/^<!isCanadianAboriginal>.$/, q{Match unrelated negated <?isCanadianAboriginal>} );
ok("\x[888B]"  ~~ m/^<-isCanadianAboriginal>$/, q{Match unrelated inverted <?isCanadianAboriginal>} );
ok(!( "\x[9FA6]" ~~ m/^<?isCanadianAboriginal>$/ ), q{Don't match related <?isCanadianAboriginal>} );
ok("\x[9FA6]" ~~ m/^<!isCanadianAboriginal>.$/, q{Match related negated <?isCanadianAboriginal>} );
ok("\x[9FA6]" ~~ m/^<-isCanadianAboriginal>$/, q{Match related inverted <?isCanadianAboriginal>} );
ok("\x[888B]\x[9FA6]\c[CANADIAN SYLLABICS E]" ~~ m/<?isCanadianAboriginal>/, q{Match unanchored <?isCanadianAboriginal>} );

# Cherokee


ok("\c[CHEROKEE LETTER A]" ~~ m/^<?isCherokee>$/, q{Match <?isCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<!isCherokee>.$/ ), q{Don't match negated <?isCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<-isCherokee>$/ ), q{Don't match inverted <?isCherokee>} );
ok(!( "\x[8260]"  ~~ m/^<?isCherokee>$/ ), q{Don't match unrelated <?isCherokee>} );
ok("\x[8260]"  ~~ m/^<!isCherokee>.$/, q{Match unrelated negated <?isCherokee>} );
ok("\x[8260]"  ~~ m/^<-isCherokee>$/, q{Match unrelated inverted <?isCherokee>} );
ok(!( "\x[9FA6]" ~~ m/^<?isCherokee>$/ ), q{Don't match related <?isCherokee>} );
ok("\x[9FA6]" ~~ m/^<!isCherokee>.$/, q{Match related negated <?isCherokee>} );
ok("\x[9FA6]" ~~ m/^<-isCherokee>$/, q{Match related inverted <?isCherokee>} );
ok("\x[8260]\x[9FA6]\c[CHEROKEE LETTER A]" ~~ m/<?isCherokee>/, q{Match unanchored <?isCherokee>} );

# Cyrillic


ok("\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<?isCyrillic>$/, q{Match <?isCyrillic>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<!isCyrillic>.$/ ), q{Don't match negated <?isCyrillic>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/^<-isCyrillic>$/ ), q{Don't match inverted <?isCyrillic>} );
ok(!( "\x[B7DF]"  ~~ m/^<?isCyrillic>$/ ), q{Don't match unrelated <?isCyrillic>} );
ok("\x[B7DF]"  ~~ m/^<!isCyrillic>.$/, q{Match unrelated negated <?isCyrillic>} );
ok("\x[B7DF]"  ~~ m/^<-isCyrillic>$/, q{Match unrelated inverted <?isCyrillic>} );
ok(!( "\x[D7A4]" ~~ m/^<?isCyrillic>$/ ), q{Don't match related <?isCyrillic>} );
ok("\x[D7A4]" ~~ m/^<!isCyrillic>.$/, q{Match related negated <?isCyrillic>} );
ok("\x[D7A4]" ~~ m/^<-isCyrillic>$/, q{Match related inverted <?isCyrillic>} );
ok("\x[B7DF]\x[D7A4]\c[CYRILLIC CAPITAL LETTER IE WITH GRAVE]" ~~ m/<?isCyrillic>/, q{Match unanchored <?isCyrillic>} );

# Deseret


ok(!( "\x[A8A0]"  ~~ m/^<?isDeseret>$/ ), q{Don't match unrelated <?isDeseret>} );
ok("\x[A8A0]"  ~~ m/^<!isDeseret>.$/, q{Match unrelated negated <?isDeseret>} );
ok("\x[A8A0]"  ~~ m/^<-isDeseret>$/, q{Match unrelated inverted <?isDeseret>} );

# Devanagari


ok("\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<?isDevanagari>$/, q{Match <?isDevanagari>} );
ok(!( "\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<!isDevanagari>.$/ ), q{Don't match negated <?isDevanagari>} );
ok(!( "\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<-isDevanagari>$/ ), q{Don't match inverted <?isDevanagari>} );
ok(!( "\x[D291]"  ~~ m/^<?isDevanagari>$/ ), q{Don't match unrelated <?isDevanagari>} );
ok("\x[D291]"  ~~ m/^<!isDevanagari>.$/, q{Match unrelated negated <?isDevanagari>} );
ok("\x[D291]"  ~~ m/^<-isDevanagari>$/, q{Match unrelated inverted <?isDevanagari>} );
ok("\x[D291]\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/<?isDevanagari>/, q{Match unanchored <?isDevanagari>} );

# Ethiopic


ok("\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<?isEthiopic>$/, q{Match <?isEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<!isEthiopic>.$/ ), q{Don't match negated <?isEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<-isEthiopic>$/ ), q{Don't match inverted <?isEthiopic>} );
ok(!( "\x[A9FA]"  ~~ m/^<?isEthiopic>$/ ), q{Don't match unrelated <?isEthiopic>} );
ok("\x[A9FA]"  ~~ m/^<!isEthiopic>.$/, q{Match unrelated negated <?isEthiopic>} );
ok("\x[A9FA]"  ~~ m/^<-isEthiopic>$/, q{Match unrelated inverted <?isEthiopic>} );
ok("\x[A9FA]\c[ETHIOPIC SYLLABLE HA]" ~~ m/<?isEthiopic>/, q{Match unanchored <?isEthiopic>} );

# Georgian


ok("\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<?isGeorgian>$/, q{Match <?isGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<!isGeorgian>.$/ ), q{Don't match negated <?isGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<-isGeorgian>$/ ), q{Don't match inverted <?isGeorgian>} );
ok(!( "\x[BBC9]"  ~~ m/^<?isGeorgian>$/ ), q{Don't match unrelated <?isGeorgian>} );
ok("\x[BBC9]"  ~~ m/^<!isGeorgian>.$/, q{Match unrelated negated <?isGeorgian>} );
ok("\x[BBC9]"  ~~ m/^<-isGeorgian>$/, q{Match unrelated inverted <?isGeorgian>} );
ok("\x[BBC9]\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/<?isGeorgian>/, q{Match unanchored <?isGeorgian>} );

# Gothic


ok(!( "\x[5888]"  ~~ m/^<?isGothic>$/ ), q{Don't match unrelated <?isGothic>} );
ok("\x[5888]"  ~~ m/^<!isGothic>.$/, q{Match unrelated negated <?isGothic>} );
ok("\x[5888]"  ~~ m/^<-isGothic>$/, q{Match unrelated inverted <?isGothic>} );

# Greek


ok("\c[GREEK LETTER SMALL CAPITAL GAMMA]" ~~ m/^<?isGreek>$/, q{Match <?isGreek>} );
ok(!( "\c[GREEK LETTER SMALL CAPITAL GAMMA]" ~~ m/^<!isGreek>.$/ ), q{Don't match negated <?isGreek>} );
ok(!( "\c[GREEK LETTER SMALL CAPITAL GAMMA]" ~~ m/^<-isGreek>$/ ), q{Don't match inverted <?isGreek>} );
ok(!( "\c[ETHIOPIC SYLLABLE KEE]"  ~~ m/^<?isGreek>$/ ), q{Don't match unrelated <?isGreek>} );
ok("\c[ETHIOPIC SYLLABLE KEE]"  ~~ m/^<!isGreek>.$/, q{Match unrelated negated <?isGreek>} );
ok("\c[ETHIOPIC SYLLABLE KEE]"  ~~ m/^<-isGreek>$/, q{Match unrelated inverted <?isGreek>} );
ok("\c[ETHIOPIC SYLLABLE KEE]\c[GREEK LETTER SMALL CAPITAL GAMMA]" ~~ m/<?isGreek>/, q{Match unanchored <?isGreek>} );

# Gujarati


ok("\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<?isGujarati>$/, q{Match <?isGujarati>} );
ok(!( "\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<!isGujarati>.$/ ), q{Don't match negated <?isGujarati>} );
ok(!( "\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<-isGujarati>$/ ), q{Don't match inverted <?isGujarati>} );
ok(!( "\x[D108]"  ~~ m/^<?isGujarati>$/ ), q{Don't match unrelated <?isGujarati>} );
ok("\x[D108]"  ~~ m/^<!isGujarati>.$/, q{Match unrelated negated <?isGujarati>} );
ok("\x[D108]"  ~~ m/^<-isGujarati>$/, q{Match unrelated inverted <?isGujarati>} );
ok("\x[D108]\c[GUJARATI SIGN CANDRABINDU]" ~~ m/<?isGujarati>/, q{Match unanchored <?isGujarati>} );

# Gurmukhi


ok("\c[GURMUKHI SIGN BINDI]" ~~ m/^<?isGurmukhi>$/, q{Match <?isGurmukhi>} );
ok(!( "\c[GURMUKHI SIGN BINDI]" ~~ m/^<!isGurmukhi>.$/ ), q{Don't match negated <?isGurmukhi>} );
ok(!( "\c[GURMUKHI SIGN BINDI]" ~~ m/^<-isGurmukhi>$/ ), q{Don't match inverted <?isGurmukhi>} );
ok(!( "\x[5E05]"  ~~ m/^<?isGurmukhi>$/ ), q{Don't match unrelated <?isGurmukhi>} );
ok("\x[5E05]"  ~~ m/^<!isGurmukhi>.$/, q{Match unrelated negated <?isGurmukhi>} );
ok("\x[5E05]"  ~~ m/^<-isGurmukhi>$/, q{Match unrelated inverted <?isGurmukhi>} );
ok("\x[5E05]\c[GURMUKHI SIGN BINDI]" ~~ m/<?isGurmukhi>/, q{Match unanchored <?isGurmukhi>} );

# Han


ok("\c[CJK RADICAL REPEAT]" ~~ m/^<?isHan>$/, q{Match <?isHan>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<!isHan>.$/ ), q{Don't match negated <?isHan>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<-isHan>$/ ), q{Don't match inverted <?isHan>} );
ok(!( "\c[CANADIAN SYLLABICS KAA]"  ~~ m/^<?isHan>$/ ), q{Don't match unrelated <?isHan>} );
ok("\c[CANADIAN SYLLABICS KAA]"  ~~ m/^<!isHan>.$/, q{Match unrelated negated <?isHan>} );
ok("\c[CANADIAN SYLLABICS KAA]"  ~~ m/^<-isHan>$/, q{Match unrelated inverted <?isHan>} );
ok("\c[CANADIAN SYLLABICS KAA]\c[CJK RADICAL REPEAT]" ~~ m/<?isHan>/, q{Match unanchored <?isHan>} );

# Hangul


ok("\x[AC00]" ~~ m/^<?isHangul>$/, q{Match <?isHangul>} );
ok(!( "\x[AC00]" ~~ m/^<!isHangul>.$/ ), q{Don't match negated <?isHangul>} );
ok(!( "\x[AC00]" ~~ m/^<-isHangul>$/ ), q{Don't match inverted <?isHangul>} );
ok(!( "\x[9583]"  ~~ m/^<?isHangul>$/ ), q{Don't match unrelated <?isHangul>} );
ok("\x[9583]"  ~~ m/^<!isHangul>.$/, q{Match unrelated negated <?isHangul>} );
ok("\x[9583]"  ~~ m/^<-isHangul>$/, q{Match unrelated inverted <?isHangul>} );
ok("\x[9583]\x[AC00]" ~~ m/<?isHangul>/, q{Match unanchored <?isHangul>} );

# Hanunoo


ok("\c[HANUNOO LETTER A]" ~~ m/^<?isHanunoo>$/, q{Match <?isHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<!isHanunoo>.$/ ), q{Don't match negated <?isHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<-isHanunoo>$/ ), q{Don't match inverted <?isHanunoo>} );
ok(!( "\x[7625]"  ~~ m/^<?isHanunoo>$/ ), q{Don't match unrelated <?isHanunoo>} );
ok("\x[7625]"  ~~ m/^<!isHanunoo>.$/, q{Match unrelated negated <?isHanunoo>} );
ok("\x[7625]"  ~~ m/^<-isHanunoo>$/, q{Match unrelated inverted <?isHanunoo>} );
ok("\x[7625]\c[HANUNOO LETTER A]" ~~ m/<?isHanunoo>/, q{Match unanchored <?isHanunoo>} );

# Hebrew


ok("\c[HEBREW LETTER ALEF]" ~~ m/^<?isHebrew>$/, q{Match <?isHebrew>} );
ok(!( "\c[HEBREW LETTER ALEF]" ~~ m/^<!isHebrew>.$/ ), q{Don't match negated <?isHebrew>} );
ok(!( "\c[HEBREW LETTER ALEF]" ~~ m/^<-isHebrew>$/ ), q{Don't match inverted <?isHebrew>} );
ok(!( "\c[YI SYLLABLE SSIT]"  ~~ m/^<?isHebrew>$/ ), q{Don't match unrelated <?isHebrew>} );
ok("\c[YI SYLLABLE SSIT]"  ~~ m/^<!isHebrew>.$/, q{Match unrelated negated <?isHebrew>} );
ok("\c[YI SYLLABLE SSIT]"  ~~ m/^<-isHebrew>$/, q{Match unrelated inverted <?isHebrew>} );
ok("\c[YI SYLLABLE SSIT]\c[HEBREW LETTER ALEF]" ~~ m/<?isHebrew>/, q{Match unanchored <?isHebrew>} );

# Hiragana


ok("\c[HIRAGANA LETTER SMALL A]" ~~ m/^<?isHiragana>$/, q{Match <?isHiragana>} );
ok(!( "\c[HIRAGANA LETTER SMALL A]" ~~ m/^<!isHiragana>.$/ ), q{Don't match negated <?isHiragana>} );
ok(!( "\c[HIRAGANA LETTER SMALL A]" ~~ m/^<-isHiragana>$/ ), q{Don't match inverted <?isHiragana>} );
ok(!( "\c[CANADIAN SYLLABICS Y]"  ~~ m/^<?isHiragana>$/ ), q{Don't match unrelated <?isHiragana>} );
ok("\c[CANADIAN SYLLABICS Y]"  ~~ m/^<!isHiragana>.$/, q{Match unrelated negated <?isHiragana>} );
ok("\c[CANADIAN SYLLABICS Y]"  ~~ m/^<-isHiragana>$/, q{Match unrelated inverted <?isHiragana>} );
ok("\c[CANADIAN SYLLABICS Y]\c[HIRAGANA LETTER SMALL A]" ~~ m/<?isHiragana>/, q{Match unanchored <?isHiragana>} );

# Inherited


ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isInherited>$/, q{Match <?isInherited>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isInherited>.$/ ), q{Don't match negated <?isInherited>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isInherited>$/ ), q{Don't match inverted <?isInherited>} );
ok(!( "\x[75FA]"  ~~ m/^<?isInherited>$/ ), q{Don't match unrelated <?isInherited>} );
ok("\x[75FA]"  ~~ m/^<!isInherited>.$/, q{Match unrelated negated <?isInherited>} );
ok("\x[75FA]"  ~~ m/^<-isInherited>$/, q{Match unrelated inverted <?isInherited>} );
ok("\x[75FA]\c[COMBINING GRAVE ACCENT]" ~~ m/<?isInherited>/, q{Match unanchored <?isInherited>} );

# Kannada


ok("\c[KANNADA SIGN ANUSVARA]" ~~ m/^<?isKannada>$/, q{Match <?isKannada>} );
ok(!( "\c[KANNADA SIGN ANUSVARA]" ~~ m/^<!isKannada>.$/ ), q{Don't match negated <?isKannada>} );
ok(!( "\c[KANNADA SIGN ANUSVARA]" ~~ m/^<-isKannada>$/ ), q{Don't match inverted <?isKannada>} );
ok(!( "\x[C1DF]"  ~~ m/^<?isKannada>$/ ), q{Don't match unrelated <?isKannada>} );
ok("\x[C1DF]"  ~~ m/^<!isKannada>.$/, q{Match unrelated negated <?isKannada>} );
ok("\x[C1DF]"  ~~ m/^<-isKannada>$/, q{Match unrelated inverted <?isKannada>} );
ok("\x[C1DF]\c[KANNADA SIGN ANUSVARA]" ~~ m/<?isKannada>/, q{Match unanchored <?isKannada>} );

# Katakana


ok("\c[KATAKANA LETTER SMALL A]" ~~ m/^<?isKatakana>$/, q{Match <?isKatakana>} );
ok(!( "\c[KATAKANA LETTER SMALL A]" ~~ m/^<!isKatakana>.$/ ), q{Don't match negated <?isKatakana>} );
ok(!( "\c[KATAKANA LETTER SMALL A]" ~~ m/^<-isKatakana>$/ ), q{Don't match inverted <?isKatakana>} );
ok(!( "\x[177A]"  ~~ m/^<?isKatakana>$/ ), q{Don't match unrelated <?isKatakana>} );
ok("\x[177A]"  ~~ m/^<!isKatakana>.$/, q{Match unrelated negated <?isKatakana>} );
ok("\x[177A]"  ~~ m/^<-isKatakana>$/, q{Match unrelated inverted <?isKatakana>} );
ok("\x[177A]\c[KATAKANA LETTER SMALL A]" ~~ m/<?isKatakana>/, q{Match unanchored <?isKatakana>} );

# Khmer


ok("\c[KHMER LETTER KA]" ~~ m/^<?isKhmer>$/, q{Match <?isKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<!isKhmer>.$/ ), q{Don't match negated <?isKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<-isKhmer>$/ ), q{Don't match inverted <?isKhmer>} );
ok(!( "\c[GEORGIAN LETTER QAR]"  ~~ m/^<?isKhmer>$/ ), q{Don't match unrelated <?isKhmer>} );
ok("\c[GEORGIAN LETTER QAR]"  ~~ m/^<!isKhmer>.$/, q{Match unrelated negated <?isKhmer>} );
ok("\c[GEORGIAN LETTER QAR]"  ~~ m/^<-isKhmer>$/, q{Match unrelated inverted <?isKhmer>} );
ok("\c[GEORGIAN LETTER QAR]\c[KHMER LETTER KA]" ~~ m/<?isKhmer>/, q{Match unanchored <?isKhmer>} );

# Lao


ok("\c[LAO LETTER KO]" ~~ m/^<?isLao>$/, q{Match <?isLao>} );
ok(!( "\c[LAO LETTER KO]" ~~ m/^<!isLao>.$/ ), q{Don't match negated <?isLao>} );
ok(!( "\c[LAO LETTER KO]" ~~ m/^<-isLao>$/ ), q{Don't match inverted <?isLao>} );
ok(!( "\x[3DA9]"  ~~ m/^<?isLao>$/ ), q{Don't match unrelated <?isLao>} );
ok("\x[3DA9]"  ~~ m/^<!isLao>.$/, q{Match unrelated negated <?isLao>} );
ok("\x[3DA9]"  ~~ m/^<-isLao>$/, q{Match unrelated inverted <?isLao>} );
ok(!( "\x[3DA9]" ~~ m/^<?isLao>$/ ), q{Don't match related <?isLao>} );
ok("\x[3DA9]" ~~ m/^<!isLao>.$/, q{Match related negated <?isLao>} );
ok("\x[3DA9]" ~~ m/^<-isLao>$/, q{Match related inverted <?isLao>} );
ok("\x[3DA9]\x[3DA9]\c[LAO LETTER KO]" ~~ m/<?isLao>/, q{Match unanchored <?isLao>} );

# Latin


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<?isLatin>$/, q{Match <?isLatin>} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isLatin>.$/ ), q{Don't match negated <?isLatin>} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isLatin>$/ ), q{Don't match inverted <?isLatin>} );
ok(!( "\x[C549]"  ~~ m/^<?isLatin>$/ ), q{Don't match unrelated <?isLatin>} );
ok("\x[C549]"  ~~ m/^<!isLatin>.$/, q{Match unrelated negated <?isLatin>} );
ok("\x[C549]"  ~~ m/^<-isLatin>$/, q{Match unrelated inverted <?isLatin>} );
ok(!( "\x[C549]" ~~ m/^<?isLatin>$/ ), q{Don't match related <?isLatin>} );
ok("\x[C549]" ~~ m/^<!isLatin>.$/, q{Match related negated <?isLatin>} );
