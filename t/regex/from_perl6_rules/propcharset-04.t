use v6-alpha;
use Test;
plan 207;
force_todo(137, 139, 167, 39, 40, 47, 96, 97, 99, 100, 105, 106, 113, 135..136, 143..145, 152..154, 161, 168..169, 207);
ok("\x[85D3]"  ~~ m/^<-isBidiES>$/, q{Match unrelated internally inverted (European Number Separator)} );
ok("\x[85D3]\c[SOLIDUS]" ~~ m/<+isBidiES>/, q{Match unanchored (European Number Separator)} );

# BidiET      # European Number Terminator


ok("\c[NUMBER SIGN]" ~~ m/^<+isBidiET>$/, q{Match (European Number Terminator)} );
ok("\c[NUMBER SIGN]" ~~ m/^<[A]+isBidiET>$/, q{Match compound (European Number Terminator)} );
ok(!( "\c[NUMBER SIGN]" ~~ m/^<!isBidiET>.$/ ), q{Don't match externally inverted (European Number Terminator)} );
ok(!( "\c[NUMBER SIGN]" ~~ m/^<[A]-isBidiET>$/ ), q{Don't match compound inverted (European Number Terminator)} );
ok(!( "\c[NUMBER SIGN]" ~~ m/^<-isBidiET>$/ ), q{Don't match internally inverted (European Number Terminator)} );
ok(!( "\x[9AFC]"  ~~ m/^<+isBidiET>$/ ), q{Don't match unrelated (European Number Terminator)} );
ok("\x[9AFC]"  ~~ m/^<!isBidiET>.$/, q{Match unrelated externally inverted (European Number Terminator)} );
ok("\x[9AFC]"  ~~ m/^<-isBidiET>$/, q{Match unrelated internally inverted (European Number Terminator)} );
ok("\x[9AFC]\c[NUMBER SIGN]" ~~ m/<+isBidiET>/, q{Match unanchored (European Number Terminator)} );

# BidiWS      # Whitespace


ok("\c[FORM FEED (FF)]" ~~ m/^<+isBidiWS>$/, q{Match (Whitespace)} );
ok("\c[FORM FEED (FF)]" ~~ m/^<[A]+isBidiWS>$/, q{Match compound (Whitespace)} );
ok(!( "\c[FORM FEED (FF)]" ~~ m/^<!isBidiWS>.$/ ), q{Don't match externally inverted (Whitespace)} );
ok(!( "\c[FORM FEED (FF)]" ~~ m/^<[A]-isBidiWS>$/ ), q{Don't match compound inverted (Whitespace)} );
ok(!( "\c[FORM FEED (FF)]" ~~ m/^<-isBidiWS>$/ ), q{Don't match internally inverted (Whitespace)} );
ok(!( "\x[4441]"  ~~ m/^<+isBidiWS>$/ ), q{Don't match unrelated (Whitespace)} );
ok("\x[4441]"  ~~ m/^<!isBidiWS>.$/, q{Match unrelated externally inverted (Whitespace)} );
ok("\x[4441]"  ~~ m/^<-isBidiWS>$/, q{Match unrelated internally inverted (Whitespace)} );
ok("\x[4441]\c[FORM FEED (FF)]" ~~ m/<+isBidiWS>/, q{Match unanchored (Whitespace)} );

# Arabic


ok("\c[ARABIC LETTER HAMZA]" ~~ m/^<+isArabic>$/, q{Match <isArabic>} );
ok("\c[ARABIC LETTER HAMZA]" ~~ m/^<[A]+isArabic>$/, q{Match compound <isArabic>} );
ok(!( "\c[ARABIC LETTER HAMZA]" ~~ m/^<!isArabic>.$/ ), q{Don't match externally inverted <isArabic>} );
ok(!( "\c[ARABIC LETTER HAMZA]" ~~ m/^<[A]-isArabic>$/ ), q{Don't match compound inverted <isArabic>} );
ok(!( "\c[ARABIC LETTER HAMZA]" ~~ m/^<-isArabic>$/ ), q{Don't match internally inverted <isArabic>} );
ok(!( "\c[YI SYLLABLE RYRX]"  ~~ m/^<+isArabic>$/ ), q{Don't match unrelated <isArabic>} );
ok("\c[YI SYLLABLE RYRX]"  ~~ m/^<!isArabic>.$/, q{Match unrelated externally inverted <isArabic>} );
ok("\c[YI SYLLABLE RYRX]"  ~~ m/^<-isArabic>$/, q{Match unrelated internally inverted <isArabic>} );
ok("\c[YI SYLLABLE RYRX]\c[ARABIC LETTER HAMZA]" ~~ m/<+isArabic>/, q{Match unanchored <isArabic>} );

# Armenian


ok("\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<+isArmenian>$/, q{Match <isArmenian>} );
ok("\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<[A]+isArmenian>$/, q{Match compound <isArmenian>} );
ok(!( "\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<!isArmenian>.$/ ), q{Don't match externally inverted <isArmenian>} );
ok(!( "\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<[A]-isArmenian>$/ ), q{Don't match compound inverted <isArmenian>} );
ok(!( "\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/^<-isArmenian>$/ ), q{Don't match internally inverted <isArmenian>} );
ok(!( "\x[B2ED]"  ~~ m/^<+isArmenian>$/ ), q{Don't match unrelated <isArmenian>} );
ok("\x[B2ED]"  ~~ m/^<!isArmenian>.$/, q{Match unrelated externally inverted <isArmenian>} );
ok("\x[B2ED]"  ~~ m/^<-isArmenian>$/, q{Match unrelated internally inverted <isArmenian>} );
ok("\x[B2ED]\c[ARMENIAN CAPITAL LETTER AYB]" ~~ m/<+isArmenian>/, q{Match unanchored <isArmenian>} );

# Bengali


ok("\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<+isBengali>$/, q{Match <isBengali>} );
ok("\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<[A]+isBengali>$/, q{Match compound <isBengali>} );
ok(!( "\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<!isBengali>.$/ ), q{Don't match externally inverted <isBengali>} );
ok(!( "\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<[A]-isBengali>$/ ), q{Don't match compound inverted <isBengali>} );
ok(!( "\c[BENGALI SIGN CANDRABINDU]" ~~ m/^<-isBengali>$/ ), q{Don't match internally inverted <isBengali>} );
ok(!( "\x[4AFD]"  ~~ m/^<+isBengali>$/ ), q{Don't match unrelated <isBengali>} );
ok("\x[4AFD]"  ~~ m/^<!isBengali>.$/, q{Match unrelated externally inverted <isBengali>} );
ok("\x[4AFD]"  ~~ m/^<-isBengali>$/, q{Match unrelated internally inverted <isBengali>} );
ok("\x[4AFD]\c[BENGALI SIGN CANDRABINDU]" ~~ m/<+isBengali>/, q{Match unanchored <isBengali>} );

# Bopomofo


ok("\c[BOPOMOFO LETTER B]" ~~ m/^<+isBopomofo>$/, q{Match <isBopomofo>} );
ok("\c[BOPOMOFO LETTER B]" ~~ m/^<[A]+isBopomofo>$/, q{Match compound <isBopomofo>} );
ok(!( "\c[BOPOMOFO LETTER B]" ~~ m/^<!isBopomofo>.$/ ), q{Don't match externally inverted <isBopomofo>} );
ok(!( "\c[BOPOMOFO LETTER B]" ~~ m/^<[A]-isBopomofo>$/ ), q{Don't match compound inverted <isBopomofo>} );
ok(!( "\c[BOPOMOFO LETTER B]" ~~ m/^<-isBopomofo>$/ ), q{Don't match internally inverted <isBopomofo>} );
ok(!( "\x[8369]"  ~~ m/^<+isBopomofo>$/ ), q{Don't match unrelated <isBopomofo>} );
ok("\x[8369]"  ~~ m/^<!isBopomofo>.$/, q{Match unrelated externally inverted <isBopomofo>} );
ok("\x[8369]"  ~~ m/^<-isBopomofo>$/, q{Match unrelated internally inverted <isBopomofo>} );
ok("\x[8369]\c[BOPOMOFO LETTER B]" ~~ m/<+isBopomofo>/, q{Match unanchored <isBopomofo>} );

# Buhid


ok("\c[BUHID LETTER A]" ~~ m/^<+isBuhid>$/, q{Match <isBuhid>} );
ok("\c[BUHID LETTER A]" ~~ m/^<[A]+isBuhid>$/, q{Match compound <isBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<!isBuhid>.$/ ), q{Don't match externally inverted <isBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<[A]-isBuhid>$/ ), q{Don't match compound inverted <isBuhid>} );
ok(!( "\c[BUHID LETTER A]" ~~ m/^<-isBuhid>$/ ), q{Don't match internally inverted <isBuhid>} );
ok(!( "\x[877F]"  ~~ m/^<+isBuhid>$/ ), q{Don't match unrelated <isBuhid>} );
ok("\x[877F]"  ~~ m/^<!isBuhid>.$/, q{Match unrelated externally inverted <isBuhid>} );
ok("\x[877F]"  ~~ m/^<-isBuhid>$/, q{Match unrelated internally inverted <isBuhid>} );
ok("\x[877F]\c[BUHID LETTER A]" ~~ m/<+isBuhid>/, q{Match unanchored <isBuhid>} );

# CanadianAboriginal


ok("\c[CANADIAN SYLLABICS E]" ~~ m/^<+isCanadianAboriginal>$/, q{Match <isCanadianAboriginal>} );
ok("\c[CANADIAN SYLLABICS E]" ~~ m/^<[A]+isCanadianAboriginal>$/, q{Match compound <isCanadianAboriginal>} );
ok(!( "\c[CANADIAN SYLLABICS E]" ~~ m/^<!isCanadianAboriginal>.$/ ), q{Don't match externally inverted <isCanadianAboriginal>} );
ok(!( "\c[CANADIAN SYLLABICS E]" ~~ m/^<[A]-isCanadianAboriginal>$/ ), q{Don't match compound inverted <isCanadianAboriginal>} );
ok(!( "\c[CANADIAN SYLLABICS E]" ~~ m/^<-isCanadianAboriginal>$/ ), q{Don't match internally inverted <isCanadianAboriginal>} );
ok(!( "\x[3A42]"  ~~ m/^<+isCanadianAboriginal>$/ ), q{Don't match unrelated <isCanadianAboriginal>} );
ok("\x[3A42]"  ~~ m/^<!isCanadianAboriginal>.$/, q{Match unrelated externally inverted <isCanadianAboriginal>} );
ok("\x[3A42]"  ~~ m/^<-isCanadianAboriginal>$/, q{Match unrelated internally inverted <isCanadianAboriginal>} );
ok(!( "\x[4DB6]" ~~ m/^<+isCanadianAboriginal>$/ ), q{Don't match related <isCanadianAboriginal>} );
ok("\x[4DB6]" ~~ m/^<-isCanadianAboriginal>$/, q{Match related internally inverted <isCanadianAboriginal>} );
ok("\x[4DB6]" ~~ m/^<!isCanadianAboriginal>.$/, q{Match related externally inverted <isCanadianAboriginal>} );
ok("\x[3A42]\x[4DB6]\c[CANADIAN SYLLABICS E]" ~~ m/<+isCanadianAboriginal>/, q{Match unanchored <isCanadianAboriginal>} );

# Cherokee


ok("\c[CHEROKEE LETTER A]" ~~ m/^<+isCherokee>$/, q{Match <isCherokee>} );
ok("\c[CHEROKEE LETTER A]" ~~ m/^<[A]+isCherokee>$/, q{Match compound <isCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<!isCherokee>.$/ ), q{Don't match externally inverted <isCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<[A]-isCherokee>$/ ), q{Don't match compound inverted <isCherokee>} );
ok(!( "\c[CHEROKEE LETTER A]" ~~ m/^<-isCherokee>$/ ), q{Don't match internally inverted <isCherokee>} );
ok(!( "\x[A9EF]"  ~~ m/^<+isCherokee>$/ ), q{Don't match unrelated <isCherokee>} );
ok("\x[A9EF]"  ~~ m/^<!isCherokee>.$/, q{Match unrelated externally inverted <isCherokee>} );
ok("\x[A9EF]"  ~~ m/^<-isCherokee>$/, q{Match unrelated internally inverted <isCherokee>} );
ok(!( "\x[A9EF]" ~~ m/^<+isCherokee>$/ ), q{Don't match related <isCherokee>} );
ok("\x[A9EF]" ~~ m/^<-isCherokee>$/, q{Match related internally inverted <isCherokee>} );
ok("\x[A9EF]" ~~ m/^<!isCherokee>.$/, q{Match related externally inverted <isCherokee>} );
ok("\x[A9EF]\x[A9EF]\c[CHEROKEE LETTER A]" ~~ m/<+isCherokee>/, q{Match unanchored <isCherokee>} );

# Cyrillic


ok("\c[CYRILLIC LETTER SMALL CAPITAL EL]" ~~ m/^<+isCyrillic>$/, q{Match <isCyrillic>} );
ok("\c[CYRILLIC LETTER SMALL CAPITAL EL]" ~~ m/^<[A]+isCyrillic>$/, q{Match compound <isCyrillic>} );
ok(!( "\c[CYRILLIC LETTER SMALL CAPITAL EL]" ~~ m/^<!isCyrillic>.$/ ), q{Don't match externally inverted <isCyrillic>} );
ok(!( "\c[CYRILLIC LETTER SMALL CAPITAL EL]" ~~ m/^<[A]-isCyrillic>$/ ), q{Don't match compound inverted <isCyrillic>} );
ok(!( "\c[CYRILLIC LETTER SMALL CAPITAL EL]" ~~ m/^<-isCyrillic>$/ ), q{Don't match internally inverted <isCyrillic>} );
ok(!( "\x[07EF]"  ~~ m/^<+isCyrillic>$/ ), q{Don't match unrelated <isCyrillic>} );
ok("\x[07EF]"  ~~ m/^<!isCyrillic>.$/, q{Match unrelated externally inverted <isCyrillic>} );
ok("\x[07EF]"  ~~ m/^<-isCyrillic>$/, q{Match unrelated internally inverted <isCyrillic>} );
ok(!( "\x[07EF]" ~~ m/^<+isCyrillic>$/ ), q{Don't match related <isCyrillic>} );
ok("\x[07EF]" ~~ m/^<-isCyrillic>$/, q{Match related internally inverted <isCyrillic>} );
ok("\x[07EF]" ~~ m/^<!isCyrillic>.$/, q{Match related externally inverted <isCyrillic>} );
ok("\x[07EF]\x[07EF]\c[CYRILLIC LETTER SMALL CAPITAL EL]" ~~ m/<+isCyrillic>/, q{Match unanchored <isCyrillic>} );

# Deseret


ok(!( "\x[65BD]"  ~~ m/^<+isDeseret>$/ ), q{Don't match unrelated <isDeseret>} );
ok("\x[65BD]"  ~~ m/^<!isDeseret>.$/, q{Match unrelated externally inverted <isDeseret>} );
ok("\x[65BD]"  ~~ m/^<-isDeseret>$/, q{Match unrelated internally inverted <isDeseret>} );

# Devanagari


ok("\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<+isDevanagari>$/, q{Match <isDevanagari>} );
ok("\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<[A]+isDevanagari>$/, q{Match compound <isDevanagari>} );
ok(!( "\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<!isDevanagari>.$/ ), q{Don't match externally inverted <isDevanagari>} );
ok(!( "\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<[A]-isDevanagari>$/ ), q{Don't match compound inverted <isDevanagari>} );
ok(!( "\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/^<-isDevanagari>$/ ), q{Don't match internally inverted <isDevanagari>} );
ok(!( "\x[653B]"  ~~ m/^<+isDevanagari>$/ ), q{Don't match unrelated <isDevanagari>} );
ok("\x[653B]"  ~~ m/^<!isDevanagari>.$/, q{Match unrelated externally inverted <isDevanagari>} );
ok("\x[653B]"  ~~ m/^<-isDevanagari>$/, q{Match unrelated internally inverted <isDevanagari>} );
ok("\x[653B]\c[DEVANAGARI SIGN CANDRABINDU]" ~~ m/<+isDevanagari>/, q{Match unanchored <isDevanagari>} );

# Ethiopic


ok("\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<+isEthiopic>$/, q{Match <isEthiopic>} );
ok("\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<[A]+isEthiopic>$/, q{Match compound <isEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<!isEthiopic>.$/ ), q{Don't match externally inverted <isEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<[A]-isEthiopic>$/ ), q{Don't match compound inverted <isEthiopic>} );
ok(!( "\c[ETHIOPIC SYLLABLE HA]" ~~ m/^<-isEthiopic>$/ ), q{Don't match internally inverted <isEthiopic>} );
ok(!( "\x[482C]"  ~~ m/^<+isEthiopic>$/ ), q{Don't match unrelated <isEthiopic>} );
ok("\x[482C]"  ~~ m/^<!isEthiopic>.$/, q{Match unrelated externally inverted <isEthiopic>} );
ok("\x[482C]"  ~~ m/^<-isEthiopic>$/, q{Match unrelated internally inverted <isEthiopic>} );
ok("\x[482C]\c[ETHIOPIC SYLLABLE HA]" ~~ m/<+isEthiopic>/, q{Match unanchored <isEthiopic>} );

# Georgian


ok("\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<+isGeorgian>$/, q{Match <isGeorgian>} );
ok("\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<[A]+isGeorgian>$/, q{Match compound <isGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<!isGeorgian>.$/ ), q{Don't match externally inverted <isGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<[A]-isGeorgian>$/ ), q{Don't match compound inverted <isGeorgian>} );
ok(!( "\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/^<-isGeorgian>$/ ), q{Don't match internally inverted <isGeorgian>} );
ok(!( "\x[9BE5]"  ~~ m/^<+isGeorgian>$/ ), q{Don't match unrelated <isGeorgian>} );
ok("\x[9BE5]"  ~~ m/^<!isGeorgian>.$/, q{Match unrelated externally inverted <isGeorgian>} );
ok("\x[9BE5]"  ~~ m/^<-isGeorgian>$/, q{Match unrelated internally inverted <isGeorgian>} );
ok("\x[9BE5]\c[GEORGIAN CAPITAL LETTER AN]" ~~ m/<+isGeorgian>/, q{Match unanchored <isGeorgian>} );

# Gothic


ok(!( "\x[4ED2]"  ~~ m/^<+isGothic>$/ ), q{Don't match unrelated <isGothic>} );
ok("\x[4ED2]"  ~~ m/^<!isGothic>.$/, q{Match unrelated externally inverted <isGothic>} );
ok("\x[4ED2]"  ~~ m/^<-isGothic>$/, q{Match unrelated internally inverted <isGothic>} );

# Greek


ok("\c[MICRO SIGN]" ~~ m/^<+isGreek>$/, q{Match <isGreek>} );
ok("\c[MICRO SIGN]" ~~ m/^<[A]+isGreek>$/, q{Match compound <isGreek>} );
ok(!( "\c[MICRO SIGN]" ~~ m/^<!isGreek>.$/ ), q{Don't match externally inverted <isGreek>} );
ok(!( "\c[MICRO SIGN]" ~~ m/^<[A]-isGreek>$/ ), q{Don't match compound inverted <isGreek>} );
ok(!( "\c[MICRO SIGN]" ~~ m/^<-isGreek>$/ ), q{Don't match internally inverted <isGreek>} );
ok(!( "\x[D486]"  ~~ m/^<+isGreek>$/ ), q{Don't match unrelated <isGreek>} );
ok("\x[D486]"  ~~ m/^<!isGreek>.$/, q{Match unrelated externally inverted <isGreek>} );
ok("\x[D486]"  ~~ m/^<-isGreek>$/, q{Match unrelated internally inverted <isGreek>} );
ok("\x[D486]\c[MICRO SIGN]" ~~ m/<+isGreek>/, q{Match unanchored <isGreek>} );

# Gujarati


ok("\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<+isGujarati>$/, q{Match <isGujarati>} );
ok("\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<[A]+isGujarati>$/, q{Match compound <isGujarati>} );
ok(!( "\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<!isGujarati>.$/ ), q{Don't match externally inverted <isGujarati>} );
ok(!( "\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<[A]-isGujarati>$/ ), q{Don't match compound inverted <isGujarati>} );
ok(!( "\c[GUJARATI SIGN CANDRABINDU]" ~~ m/^<-isGujarati>$/ ), q{Don't match internally inverted <isGujarati>} );
ok(!( "\x[B3F3]"  ~~ m/^<+isGujarati>$/ ), q{Don't match unrelated <isGujarati>} );
ok("\x[B3F3]"  ~~ m/^<!isGujarati>.$/, q{Match unrelated externally inverted <isGujarati>} );
ok("\x[B3F3]"  ~~ m/^<-isGujarati>$/, q{Match unrelated internally inverted <isGujarati>} );
ok("\x[B3F3]\c[GUJARATI SIGN CANDRABINDU]" ~~ m/<+isGujarati>/, q{Match unanchored <isGujarati>} );

# Gurmukhi


ok("\c[GURMUKHI SIGN BINDI]" ~~ m/^<+isGurmukhi>$/, q{Match <isGurmukhi>} );
ok("\c[GURMUKHI SIGN BINDI]" ~~ m/^<[A]+isGurmukhi>$/, q{Match compound <isGurmukhi>} );
ok(!( "\c[GURMUKHI SIGN BINDI]" ~~ m/^<!isGurmukhi>.$/ ), q{Don't match externally inverted <isGurmukhi>} );
ok(!( "\c[GURMUKHI SIGN BINDI]" ~~ m/^<[A]-isGurmukhi>$/ ), q{Don't match compound inverted <isGurmukhi>} );
ok(!( "\c[GURMUKHI SIGN BINDI]" ~~ m/^<-isGurmukhi>$/ ), q{Don't match internally inverted <isGurmukhi>} );
ok(!( "\x[6469]"  ~~ m/^<+isGurmukhi>$/ ), q{Don't match unrelated <isGurmukhi>} );
ok("\x[6469]"  ~~ m/^<!isGurmukhi>.$/, q{Match unrelated externally inverted <isGurmukhi>} );
ok("\x[6469]"  ~~ m/^<-isGurmukhi>$/, q{Match unrelated internally inverted <isGurmukhi>} );
ok("\x[6469]\c[GURMUKHI SIGN BINDI]" ~~ m/<+isGurmukhi>/, q{Match unanchored <isGurmukhi>} );

# Han


ok("\x[9DB5]" ~~ m/^<+isHan>$/, q{Match <isHan>} );
ok("\x[9DB5]" ~~ m/^<[A]+isHan>$/, q{Match compound <isHan>} );
ok(!( "\x[9DB5]" ~~ m/^<!isHan>.$/ ), q{Don't match externally inverted <isHan>} );
ok(!( "\x[9DB5]" ~~ m/^<[A]-isHan>$/ ), q{Don't match compound inverted <isHan>} );
ok(!( "\x[9DB5]" ~~ m/^<-isHan>$/ ), q{Don't match internally inverted <isHan>} );
ok(!( "\x[9FA6]"  ~~ m/^<+isHan>$/ ), q{Don't match unrelated <isHan>} );
ok("\x[9FA6]"  ~~ m/^<!isHan>.$/, q{Match unrelated externally inverted <isHan>} );
ok("\x[9FA6]"  ~~ m/^<-isHan>$/, q{Match unrelated internally inverted <isHan>} );
ok("\x[9FA6]\x[9DB5]" ~~ m/<+isHan>/, q{Match unanchored <isHan>} );

# Hangul


ok("\x[AC00]" ~~ m/^<+isHangul>$/, q{Match <isHangul>} );
ok("\x[AC00]" ~~ m/^<[A]+isHangul>$/, q{Match compound <isHangul>} );
ok(!( "\x[AC00]" ~~ m/^<!isHangul>.$/ ), q{Don't match externally inverted <isHangul>} );
ok(!( "\x[AC00]" ~~ m/^<[A]-isHangul>$/ ), q{Don't match compound inverted <isHangul>} );
ok(!( "\x[AC00]" ~~ m/^<-isHangul>$/ ), q{Don't match internally inverted <isHangul>} );
ok(!( "\x[9E09]"  ~~ m/^<+isHangul>$/ ), q{Don't match unrelated <isHangul>} );
ok("\x[9E09]"  ~~ m/^<!isHangul>.$/, q{Match unrelated externally inverted <isHangul>} );
ok("\x[9E09]"  ~~ m/^<-isHangul>$/, q{Match unrelated internally inverted <isHangul>} );
ok("\x[9E09]\x[AC00]" ~~ m/<+isHangul>/, q{Match unanchored <isHangul>} );

# Hanunoo


ok("\c[HANUNOO LETTER A]" ~~ m/^<+isHanunoo>$/, q{Match <isHanunoo>} );
ok("\c[HANUNOO LETTER A]" ~~ m/^<[A]+isHanunoo>$/, q{Match compound <isHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<!isHanunoo>.$/ ), q{Don't match externally inverted <isHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<[A]-isHanunoo>$/ ), q{Don't match compound inverted <isHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<-isHanunoo>$/ ), q{Don't match internally inverted <isHanunoo>} );
ok(!( "\x[580B]"  ~~ m/^<+isHanunoo>$/ ), q{Don't match unrelated <isHanunoo>} );
ok("\x[580B]"  ~~ m/^<!isHanunoo>.$/, q{Match unrelated externally inverted <isHanunoo>} );
ok("\x[580B]"  ~~ m/^<-isHanunoo>$/, q{Match unrelated internally inverted <isHanunoo>} );
ok("\x[580B]\c[HANUNOO LETTER A]" ~~ m/<+isHanunoo>/, q{Match unanchored <isHanunoo>} );

# Hebrew


ok("\c[HEBREW LETTER ALEF]" ~~ m/^<+isHebrew>$/, q{Match <isHebrew>} );
ok("\c[HEBREW LETTER ALEF]" ~~ m/^<[A]+isHebrew>$/, q{Match compound <isHebrew>} );
ok(!( "\c[HEBREW LETTER ALEF]" ~~ m/^<!isHebrew>.$/ ), q{Don't match externally inverted <isHebrew>} );
ok(!( "\c[HEBREW LETTER ALEF]" ~~ m/^<[A]-isHebrew>$/ ), q{Don't match compound inverted <isHebrew>} );
ok(!( "\c[HEBREW LETTER ALEF]" ~~ m/^<-isHebrew>$/ ), q{Don't match internally inverted <isHebrew>} );
ok(!( "\x[62B4]"  ~~ m/^<+isHebrew>$/ ), q{Don't match unrelated <isHebrew>} );
ok("\x[62B4]"  ~~ m/^<!isHebrew>.$/, q{Match unrelated externally inverted <isHebrew>} );
ok("\x[62B4]"  ~~ m/^<-isHebrew>$/, q{Match unrelated internally inverted <isHebrew>} );
ok("\x[62B4]\c[HEBREW LETTER ALEF]" ~~ m/<+isHebrew>/, q{Match unanchored <isHebrew>} );

# Hiragana


ok("\c[HIRAGANA LETTER SMALL A]" ~~ m/^<+isHiragana>$/, q{Match <isHiragana>} );
ok("\c[HIRAGANA LETTER SMALL A]" ~~ m/^<[A]+isHiragana>$/, q{Match compound <isHiragana>} );
ok(!( "\c[HIRAGANA LETTER SMALL A]" ~~ m/^<!isHiragana>.$/ ), q{Don't match externally inverted <isHiragana>} );
ok(!( "\c[HIRAGANA LETTER SMALL A]" ~~ m/^<[A]-isHiragana>$/ ), q{Don't match compound inverted <isHiragana>} );
ok(!( "\c[HIRAGANA LETTER SMALL A]" ~~ m/^<-isHiragana>$/ ), q{Don't match internally inverted <isHiragana>} );
ok(!( "\x[9504]"  ~~ m/^<+isHiragana>$/ ), q{Don't match unrelated <isHiragana>} );
ok("\x[9504]"  ~~ m/^<!isHiragana>.$/, q{Match unrelated externally inverted <isHiragana>} );
ok("\x[9504]"  ~~ m/^<-isHiragana>$/, q{Match unrelated internally inverted <isHiragana>} );
ok("\x[9504]\c[HIRAGANA LETTER SMALL A]" ~~ m/<+isHiragana>/, q{Match unanchored <isHiragana>} );

# Inherited


ok("\c[MONGOLIAN FREE VARIATION SELECTOR ONE]" ~~ m/^<+isInherited>$/, q{Match <isInherited>} );
