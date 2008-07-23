use v6-alpha;
use Test;
plan 172;
force_todo(49, 94, 96, 109, 154);
ok(!( "\x[A746]"  ~~ m/^<+isOtherUppercase>$/ ), q{Don't match unrelated <isOtherUppercase>} );
ok("\x[A746]"  ~~ m/^<!isOtherUppercase>.$/, q{Match unrelated externally inverted <isOtherUppercase>} );
ok("\x[A746]"  ~~ m/^<-isOtherUppercase>$/, q{Match unrelated internally inverted <isOtherUppercase>} );
ok("\x[A746]\c[ROMAN NUMERAL ONE]" ~~ m/<+isOtherUppercase>/, q{Match unanchored <isOtherUppercase>} );

# QuotationMark


ok("\c[LEFT SINGLE QUOTATION MARK]" ~~ m/^<+isQuotationMark>$/, q{Match <isQuotationMark>} );
ok("\c[LEFT SINGLE QUOTATION MARK]" ~~ m/^<[A]+isQuotationMark>$/, q{Match compound <isQuotationMark>} );
ok(!( "\c[LEFT SINGLE QUOTATION MARK]" ~~ m/^<!isQuotationMark>.$/ ), q{Don't match externally inverted <isQuotationMark>} );
ok(!( "\c[LEFT SINGLE QUOTATION MARK]" ~~ m/^<[A]-isQuotationMark>$/ ), q{Don't match compound inverted <isQuotationMark>} );
ok(!( "\c[LEFT SINGLE QUOTATION MARK]" ~~ m/^<-isQuotationMark>$/ ), q{Don't match internally inverted <isQuotationMark>} );
ok(!( "\c[GURMUKHI VOWEL SIGN AI]"  ~~ m/^<+isQuotationMark>$/ ), q{Don't match unrelated <isQuotationMark>} );
ok("\c[GURMUKHI VOWEL SIGN AI]"  ~~ m/^<!isQuotationMark>.$/, q{Match unrelated externally inverted <isQuotationMark>} );
ok("\c[GURMUKHI VOWEL SIGN AI]"  ~~ m/^<-isQuotationMark>$/, q{Match unrelated internally inverted <isQuotationMark>} );
ok("\c[GURMUKHI VOWEL SIGN AI]\c[LEFT SINGLE QUOTATION MARK]" ~~ m/<+isQuotationMark>/, q{Match unanchored <isQuotationMark>} );

# Radical


ok("\c[CJK RADICAL REPEAT]" ~~ m/^<+isRadical>$/, q{Match <isRadical>} );
ok("\c[CJK RADICAL REPEAT]" ~~ m/^<[A]+isRadical>$/, q{Match compound <isRadical>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<!isRadical>.$/ ), q{Don't match externally inverted <isRadical>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<[A]-isRadical>$/ ), q{Don't match compound inverted <isRadical>} );
ok(!( "\c[CJK RADICAL REPEAT]" ~~ m/^<-isRadical>$/ ), q{Don't match internally inverted <isRadical>} );
ok(!( "\c[RUNIC LETTER ETH]"  ~~ m/^<+isRadical>$/ ), q{Don't match unrelated <isRadical>} );
ok("\c[RUNIC LETTER ETH]"  ~~ m/^<!isRadical>.$/, q{Match unrelated externally inverted <isRadical>} );
ok("\c[RUNIC LETTER ETH]"  ~~ m/^<-isRadical>$/, q{Match unrelated internally inverted <isRadical>} );
ok("\c[RUNIC LETTER ETH]\c[CJK RADICAL REPEAT]" ~~ m/<+isRadical>/, q{Match unanchored <isRadical>} );

# SoftDotted


ok("\c[LATIN SMALL LETTER I WITH TILDE BELOW]" ~~ m/^<+isSoftDotted>$/, q{Match <isSoftDotted>} );
ok("\c[LATIN SMALL LETTER I WITH TILDE BELOW]" ~~ m/^<[A]+isSoftDotted>$/, q{Match compound <isSoftDotted>} );
ok(!( "\c[LATIN SMALL LETTER I WITH TILDE BELOW]" ~~ m/^<!isSoftDotted>.$/ ), q{Don't match externally inverted <isSoftDotted>} );
ok(!( "\c[LATIN SMALL LETTER I WITH TILDE BELOW]" ~~ m/^<[A]-isSoftDotted>$/ ), q{Don't match compound inverted <isSoftDotted>} );
ok(!( "\c[LATIN SMALL LETTER I WITH TILDE BELOW]" ~~ m/^<-isSoftDotted>$/ ), q{Don't match internally inverted <isSoftDotted>} );
ok(!( "\c[LATIN CAPITAL LETTER B WITH DOT ABOVE]"  ~~ m/^<+isSoftDotted>$/ ), q{Don't match unrelated <isSoftDotted>} );
ok("\c[LATIN CAPITAL LETTER B WITH DOT ABOVE]"  ~~ m/^<!isSoftDotted>.$/, q{Match unrelated externally inverted <isSoftDotted>} );
ok("\c[LATIN CAPITAL LETTER B WITH DOT ABOVE]"  ~~ m/^<-isSoftDotted>$/, q{Match unrelated internally inverted <isSoftDotted>} );
ok(!( "\c[GREEK KORONIS]" ~~ m/^<+isSoftDotted>$/ ), q{Don't match related <isSoftDotted>} );
ok("\c[GREEK KORONIS]" ~~ m/^<-isSoftDotted>$/, q{Match related internally inverted <isSoftDotted>} );
ok("\c[GREEK KORONIS]" ~~ m/^<!isSoftDotted>.$/, q{Match related externally inverted <isSoftDotted>} );
ok("\c[LATIN CAPITAL LETTER B WITH DOT ABOVE]\c[GREEK KORONIS]\c[LATIN SMALL LETTER I WITH TILDE BELOW]" ~~ m/<+isSoftDotted>/, q{Match unanchored <isSoftDotted>} );

# TerminalPunctuation


ok("\c[EXCLAMATION MARK]" ~~ m/^<+isTerminalPunctuation>$/, q{Match <isTerminalPunctuation>} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<[A]+isTerminalPunctuation>$/, q{Match compound <isTerminalPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isTerminalPunctuation>.$/ ), q{Don't match externally inverted <isTerminalPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<[A]-isTerminalPunctuation>$/ ), q{Don't match compound inverted <isTerminalPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isTerminalPunctuation>$/ ), q{Don't match internally inverted <isTerminalPunctuation>} );
ok(!( "\x[B43A]"  ~~ m/^<+isTerminalPunctuation>$/ ), q{Don't match unrelated <isTerminalPunctuation>} );
ok("\x[B43A]"  ~~ m/^<!isTerminalPunctuation>.$/, q{Match unrelated externally inverted <isTerminalPunctuation>} );
ok("\x[B43A]"  ~~ m/^<-isTerminalPunctuation>$/, q{Match unrelated internally inverted <isTerminalPunctuation>} );
ok("\x[B43A]\c[EXCLAMATION MARK]" ~~ m/<+isTerminalPunctuation>/, q{Match unanchored <isTerminalPunctuation>} );

# UnifiedIdeograph


ok("\x[88D8]" ~~ m/^<+isUnifiedIdeograph>$/, q{Match <isUnifiedIdeograph>} );
ok("\x[88D8]" ~~ m/^<[A]+isUnifiedIdeograph>$/, q{Match compound <isUnifiedIdeograph>} );
ok(!( "\x[88D8]" ~~ m/^<!isUnifiedIdeograph>.$/ ), q{Don't match externally inverted <isUnifiedIdeograph>} );
ok(!( "\x[88D8]" ~~ m/^<[A]-isUnifiedIdeograph>$/ ), q{Don't match compound inverted <isUnifiedIdeograph>} );
ok(!( "\x[88D8]" ~~ m/^<-isUnifiedIdeograph>$/ ), q{Don't match internally inverted <isUnifiedIdeograph>} );
ok(!( "\x[9FA6]"  ~~ m/^<+isUnifiedIdeograph>$/ ), q{Don't match unrelated <isUnifiedIdeograph>} );
ok("\x[9FA6]"  ~~ m/^<!isUnifiedIdeograph>.$/, q{Match unrelated externally inverted <isUnifiedIdeograph>} );
ok("\x[9FA6]"  ~~ m/^<-isUnifiedIdeograph>$/, q{Match unrelated internally inverted <isUnifiedIdeograph>} );
ok("\x[9FA6]\x[88D8]" ~~ m/<+isUnifiedIdeograph>/, q{Match unanchored <isUnifiedIdeograph>} );

# WhiteSpace


ok("\c[CHARACTER TABULATION]" ~~ m/^<+isWhiteSpace>$/, q{Match <isWhiteSpace>} );
ok("\c[CHARACTER TABULATION]" ~~ m/^<[A]+isWhiteSpace>$/, q{Match compound <isWhiteSpace>} );
ok(!( "\c[CHARACTER TABULATION]" ~~ m/^<!isWhiteSpace>.$/ ), q{Don't match externally inverted <isWhiteSpace>} );
ok(!( "\c[CHARACTER TABULATION]" ~~ m/^<[A]-isWhiteSpace>$/ ), q{Don't match compound inverted <isWhiteSpace>} );
ok(!( "\c[CHARACTER TABULATION]" ~~ m/^<-isWhiteSpace>$/ ), q{Don't match internally inverted <isWhiteSpace>} );
ok(!( "\x[4345]"  ~~ m/^<+isWhiteSpace>$/ ), q{Don't match unrelated <isWhiteSpace>} );
ok("\x[4345]"  ~~ m/^<!isWhiteSpace>.$/, q{Match unrelated externally inverted <isWhiteSpace>} );
ok("\x[4345]"  ~~ m/^<-isWhiteSpace>$/, q{Match unrelated internally inverted <isWhiteSpace>} );
ok("\x[4345]\c[CHARACTER TABULATION]" ~~ m/<+isWhiteSpace>/, q{Match unanchored <isWhiteSpace>} );

# Alphabetic      # Lu + Ll + Lt + Lm + Lo + OtherAlphabetic


ok("\x[3816]" ~~ m/^<+isAlphabetic>$/, q{Match (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok("\x[3816]" ~~ m/^<[A]+isAlphabetic>$/, q{Match compound (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok(!( "\x[3816]" ~~ m/^<!isAlphabetic>.$/ ), q{Don't match externally inverted (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok(!( "\x[3816]" ~~ m/^<[A]-isAlphabetic>$/ ), q{Don't match compound inverted (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok(!( "\x[3816]" ~~ m/^<-isAlphabetic>$/ ), q{Don't match internally inverted (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok(!( "\x[4DB6]"  ~~ m/^<+isAlphabetic>$/ ), q{Don't match unrelated (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok("\x[4DB6]"  ~~ m/^<!isAlphabetic>.$/, q{Match unrelated externally inverted (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok("\x[4DB6]"  ~~ m/^<-isAlphabetic>$/, q{Match unrelated internally inverted (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );
ok("\x[4DB6]\x[3816]" ~~ m/<+isAlphabetic>/, q{Match unanchored (Lu + Ll + Lt + Lm + Lo + OtherAlphabetic)} );

# Lowercase       # Ll + OtherLowercase


ok("\c[LATIN LETTER SMALL CAPITAL A]" ~~ m/^<+isLowercase>$/, q{Match (Ll + OtherLowercase)} );
ok("\c[LATIN LETTER SMALL CAPITAL A]" ~~ m/^<[A]+isLowercase>$/, q{Match compound (Ll + OtherLowercase)} );
ok(!( "\c[LATIN LETTER SMALL CAPITAL A]" ~~ m/^<!isLowercase>.$/ ), q{Don't match externally inverted (Ll + OtherLowercase)} );
ok(!( "\c[LATIN LETTER SMALL CAPITAL A]" ~~ m/^<[A]-isLowercase>$/ ), q{Don't match compound inverted (Ll + OtherLowercase)} );
ok(!( "\c[LATIN LETTER SMALL CAPITAL A]" ~~ m/^<-isLowercase>$/ ), q{Don't match internally inverted (Ll + OtherLowercase)} );
ok(!( "\x[0D3D]"  ~~ m/^<+isLowercase>$/ ), q{Don't match unrelated (Ll + OtherLowercase)} );
ok("\x[0D3D]"  ~~ m/^<!isLowercase>.$/, q{Match unrelated externally inverted (Ll + OtherLowercase)} );
ok("\x[0D3D]"  ~~ m/^<-isLowercase>$/, q{Match unrelated internally inverted (Ll + OtherLowercase)} );
ok(!( "\c[MALAYALAM LETTER VOCALIC RR]" ~~ m/^<+isLowercase>$/ ), q{Don't match related (Ll + OtherLowercase)} );
ok("\c[MALAYALAM LETTER VOCALIC RR]" ~~ m/^<-isLowercase>$/, q{Match related internally inverted (Ll + OtherLowercase)} );
ok("\c[MALAYALAM LETTER VOCALIC RR]" ~~ m/^<!isLowercase>.$/, q{Match related externally inverted (Ll + OtherLowercase)} );
ok("\x[0D3D]\c[MALAYALAM LETTER VOCALIC RR]\c[LATIN LETTER SMALL CAPITAL A]" ~~ m/<+isLowercase>/, q{Match unanchored (Ll + OtherLowercase)} );

# Uppercase       # Lu + OtherUppercase


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<+isUppercase>$/, q{Match (Lu + OtherUppercase)} );
ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]+isUppercase>$/, q{Match compound (Lu + OtherUppercase)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isUppercase>.$/ ), q{Don't match externally inverted (Lu + OtherUppercase)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]-isUppercase>$/ ), q{Don't match compound inverted (Lu + OtherUppercase)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isUppercase>$/ ), q{Don't match internally inverted (Lu + OtherUppercase)} );
ok(!( "\x[C107]"  ~~ m/^<+isUppercase>$/ ), q{Don't match unrelated (Lu + OtherUppercase)} );
ok("\x[C107]"  ~~ m/^<!isUppercase>.$/, q{Match unrelated externally inverted (Lu + OtherUppercase)} );
ok("\x[C107]"  ~~ m/^<-isUppercase>$/, q{Match unrelated internally inverted (Lu + OtherUppercase)} );
ok("\x[C107]\c[LATIN CAPITAL LETTER A]" ~~ m/<+isUppercase>/, q{Match unanchored (Lu + OtherUppercase)} );

# Math            # Sm + OtherMath


ok("\c[LEFT PARENTHESIS]" ~~ m/^<+isMath>$/, q{Match (Sm + OtherMath)} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<[A]+isMath>$/, q{Match compound (Sm + OtherMath)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isMath>.$/ ), q{Don't match externally inverted (Sm + OtherMath)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<[A]-isMath>$/ ), q{Don't match compound inverted (Sm + OtherMath)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isMath>$/ ), q{Don't match internally inverted (Sm + OtherMath)} );
ok(!( "\x[D73F]"  ~~ m/^<+isMath>$/ ), q{Don't match unrelated (Sm + OtherMath)} );
ok("\x[D73F]"  ~~ m/^<!isMath>.$/, q{Match unrelated externally inverted (Sm + OtherMath)} );
ok("\x[D73F]"  ~~ m/^<-isMath>$/, q{Match unrelated internally inverted (Sm + OtherMath)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isMath>$/ ), q{Don't match related (Sm + OtherMath)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMath>$/, q{Match related internally inverted (Sm + OtherMath)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMath>.$/, q{Match related externally inverted (Sm + OtherMath)} );
ok("\x[D73F]\c[COMBINING GRAVE ACCENT]\c[LEFT PARENTHESIS]" ~~ m/<+isMath>/, q{Match unanchored (Sm + OtherMath)} );

# ID_Start        # Lu + Ll + Lt + Lm + Lo + Nl


ok("\x[4E5B]" ~~ m/^<+isID_Start>$/, q{Match (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok("\x[4E5B]" ~~ m/^<[A]+isID_Start>$/, q{Match compound (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok(!( "\x[4E5B]" ~~ m/^<!isID_Start>.$/ ), q{Don't match externally inverted (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok(!( "\x[4E5B]" ~~ m/^<[A]-isID_Start>$/ ), q{Don't match compound inverted (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok(!( "\x[4E5B]" ~~ m/^<-isID_Start>$/ ), q{Don't match internally inverted (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok(!( "\x[9FA6]"  ~~ m/^<+isID_Start>$/ ), q{Don't match unrelated (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok("\x[9FA6]"  ~~ m/^<!isID_Start>.$/, q{Match unrelated externally inverted (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok("\x[9FA6]"  ~~ m/^<-isID_Start>$/, q{Match unrelated internally inverted (Lu + Ll + Lt + Lm + Lo + Nl)} );
ok("\x[9FA6]\x[4E5B]" ~~ m/<+isID_Start>/, q{Match unanchored (Lu + Ll + Lt + Lm + Lo + Nl)} );

# ID_Continue     # ID_Start + Mn + Mc + Nd + Pc


ok("\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<+isID_Continue>$/, q{Match (ID_Start + Mn + Mc + Nd + Pc)} );
ok("\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<[A]+isID_Continue>$/, q{Match compound (ID_Start + Mn + Mc + Nd + Pc)} );
ok(!( "\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<!isID_Continue>.$/ ), q{Don't match externally inverted (ID_Start + Mn + Mc + Nd + Pc)} );
ok(!( "\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<[A]-isID_Continue>$/ ), q{Don't match compound inverted (ID_Start + Mn + Mc + Nd + Pc)} );
ok(!( "\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<-isID_Continue>$/ ), q{Don't match internally inverted (ID_Start + Mn + Mc + Nd + Pc)} );
ok(!( "\c[APL FUNCTIONAL SYMBOL UP TACK JOT]"  ~~ m/^<+isID_Continue>$/ ), q{Don't match unrelated (ID_Start + Mn + Mc + Nd + Pc)} );
ok("\c[APL FUNCTIONAL SYMBOL UP TACK JOT]"  ~~ m/^<!isID_Continue>.$/, q{Match unrelated externally inverted (ID_Start + Mn + Mc + Nd + Pc)} );
ok("\c[APL FUNCTIONAL SYMBOL UP TACK JOT]"  ~~ m/^<-isID_Continue>$/, q{Match unrelated internally inverted (ID_Start + Mn + Mc + Nd + Pc)} );
ok("\c[APL FUNCTIONAL SYMBOL UP TACK JOT]\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/<+isID_Continue>/, q{Match unanchored (ID_Start + Mn + Mc + Nd + Pc)} );

# Any             # Any character


ok("\c[SYRIAC LETTER TAW]" ~~ m/^<+isAny>$/, q{Match (Any character)} );
ok("\c[SYRIAC LETTER TAW]" ~~ m/^<[A]+isAny>$/, q{Match compound (Any character)} );
ok(!( "\c[SYRIAC LETTER TAW]" ~~ m/^<!isAny>.$/ ), q{Don't match externally inverted (Any character)} );
ok(!( "\c[SYRIAC LETTER TAW]" ~~ m/^<[A]-isAny>$/ ), q{Don't match compound inverted (Any character)} );
ok(!( "\c[SYRIAC LETTER TAW]" ~~ m/^<-isAny>$/ ), q{Don't match internally inverted (Any character)} );
ok("\c[SYRIAC LETTER TAW]" ~~ m/<+isAny>/, q{Match unanchored (Any character)} );

# Assigned        # Any non-Cn character (i.e. synonym for \P{Cn})


ok("\x[AC00]" ~~ m/^<+isAssigned>$/, q{Match (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok("\x[AC00]" ~~ m/^<[A]+isAssigned>$/, q{Match compound (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok(!( "\x[AC00]" ~~ m/^<!isAssigned>.$/ ), q{Don't match externally inverted (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok(!( "\x[AC00]" ~~ m/^<[A]-isAssigned>$/ ), q{Don't match compound inverted (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok(!( "\x[AC00]" ~~ m/^<-isAssigned>$/ ), q{Don't match internally inverted (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok(!( "\x[AB08]"  ~~ m/^<+isAssigned>$/ ), q{Don't match unrelated (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok("\x[AB08]"  ~~ m/^<!isAssigned>.$/, q{Match unrelated externally inverted (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok("\x[AB08]"  ~~ m/^<-isAssigned>$/, q{Match unrelated internally inverted (Any non-Cn character (i.e. synonym for \P{Cn}))} );
ok("\x[AB08]\x[AC00]" ~~ m/<+isAssigned>/, q{Match unanchored (Any non-Cn character (i.e. synonym for \P{Cn}))} );

# Unassigned      # Synonym for \p{Cn}


ok("\x[1738]" ~~ m/^<+isUnassigned>$/, q{Match (Synonym for \p{Cn})} );
ok("\x[1738]" ~~ m/^<[A]+isUnassigned>$/, q{Match compound (Synonym for \p{Cn})} );
ok(!( "\x[1738]" ~~ m/^<!isUnassigned>.$/ ), q{Don't match externally inverted (Synonym for \p{Cn})} );
ok(!( "\x[1738]" ~~ m/^<[A]-isUnassigned>$/ ), q{Don't match compound inverted (Synonym for \p{Cn})} );
ok(!( "\x[1738]" ~~ m/^<-isUnassigned>$/ ), q{Don't match internally inverted (Synonym for \p{Cn})} );
ok(!( "\c[BUHID LETTER A]"  ~~ m/^<+isUnassigned>$/ ), q{Don't match unrelated (Synonym for \p{Cn})} );
ok("\c[BUHID LETTER A]"  ~~ m/^<!isUnassigned>.$/, q{Match unrelated externally inverted (Synonym for \p{Cn})} );
ok("\c[BUHID LETTER A]"  ~~ m/^<-isUnassigned>$/, q{Match unrelated internally inverted (Synonym for \p{Cn})} );
ok("\c[BUHID LETTER A]\x[1738]" ~~ m/<+isUnassigned>/, q{Match unanchored (Synonym for \p{Cn})} );

# Common          # Codepoint not explicitly assigned to a script


ok("\c[LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE]" ~~ m/^<+isCommon>$/, q{Match (Codepoint not explicitly assigned to a script)} );
ok("\c[LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE]" ~~ m/^<[A]+isCommon>$/, q{Match compound (Codepoint not explicitly assigned to a script)} );
ok(!( "\c[LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE]" ~~ m/^<!isCommon>.$/ ), q{Don't match externally inverted (Codepoint not explicitly assigned to a script)} );
ok(!( "\c[LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE]" ~~ m/^<[A]-isCommon>$/ ), q{Don't match compound inverted (Codepoint not explicitly assigned to a script)} );
ok(!( "\c[LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE]" ~~ m/^<-isCommon>$/ ), q{Don't match internally inverted (Codepoint not explicitly assigned to a script)} );
ok(!( "\c[CJK RADICAL REPEAT]"  ~~ m/^<+isCommon>$/ ), q{Don't match unrelated (Codepoint not explicitly assigned to a script)} );
ok("\c[CJK RADICAL REPEAT]"  ~~ m/^<!isCommon>.$/, q{Match unrelated externally inverted (Codepoint not explicitly assigned to a script)} );
ok("\c[CJK RADICAL REPEAT]"  ~~ m/^<-isCommon>$/, q{Match unrelated internally inverted (Codepoint not explicitly assigned to a script)} );
ok(!( "\c[ARABIC END OF AYAH]" ~~ m/^<+isCommon>$/ ), q{Don't match related (Codepoint not explicitly assigned to a script)} );
ok("\c[ARABIC END OF AYAH]" ~~ m/^<-isCommon>$/, q{Match related internally inverted (Codepoint not explicitly assigned to a script)} );
ok("\c[ARABIC END OF AYAH]" ~~ m/^<!isCommon>.$/, q{Match related externally inverted (Codepoint not explicitly assigned to a script)} );
ok("\c[CJK RADICAL REPEAT]\c[ARABIC END OF AYAH]\c[LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE]" ~~ m/<+isCommon>/, q{Match unanchored (Codepoint not explicitly assigned to a script)} );

# InAlphabeticPresentationForms


ok(!( "\x[5A81]"  ~~ m/^<+isInAlphabeticPresentationForms>$/ ), q{Don't match unrelated <isInAlphabeticPresentationForms>} );
ok("\x[5A81]"  ~~ m/^<!isInAlphabeticPresentationForms>.$/, q{Match unrelated externally inverted <isInAlphabeticPresentationForms>} );
ok("\x[5A81]"  ~~ m/^<-isInAlphabeticPresentationForms>$/, q{Match unrelated internally inverted <isInAlphabeticPresentationForms>} );

# InArabic


ok("\c[ARABIC NUMBER SIGN]" ~~ m/^<+isInArabic>$/, q{Match <isInArabic>} );
ok("\c[ARABIC NUMBER SIGN]" ~~ m/^<[A]+isInArabic>$/, q{Match compound <isInArabic>} );
ok(!( "\c[ARABIC NUMBER SIGN]" ~~ m/^<!isInArabic>.$/ ), q{Don't match externally inverted <isInArabic>} );
ok(!( "\c[ARABIC NUMBER SIGN]" ~~ m/^<[A]-isInArabic>$/ ), q{Don't match compound inverted <isInArabic>} );
ok(!( "\c[ARABIC NUMBER SIGN]" ~~ m/^<-isInArabic>$/ ), q{Don't match internally inverted <isInArabic>} );
ok(!( "\x[8D16]"  ~~ m/^<+isInArabic>$/ ), q{Don't match unrelated <isInArabic>} );
ok("\x[8D16]"  ~~ m/^<!isInArabic>.$/, q{Match unrelated externally inverted <isInArabic>} );
ok("\x[8D16]"  ~~ m/^<-isInArabic>$/, q{Match unrelated internally inverted <isInArabic>} );
ok("\x[8D16]\c[ARABIC NUMBER SIGN]" ~~ m/<+isInArabic>/, q{Match unanchored <isInArabic>} );

# InArabicPresentationFormsA


ok(!( "\x[C775]"  ~~ m/^<+isInArabicPresentationFormsA>$/ ), q{Don't match unrelated <isInArabicPresentationFormsA>} );
ok("\x[C775]"  ~~ m/^<!isInArabicPresentationFormsA>.$/, q{Match unrelated externally inverted <isInArabicPresentationFormsA>} );
ok("\x[C775]"  ~~ m/^<-isInArabicPresentationFormsA>$/, q{Match unrelated internally inverted <isInArabicPresentationFormsA>} );
