use v6-alpha;
use Test;
plan 190;
force_todo(1, 2, 10..14, 21..23, 31..35, 42);


ok("\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<+isMc>$/, q{Match <isMc> (SpacingMark)} );
ok("\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<[A]+isMc>$/, q{Match compound <isMc> (SpacingMark)} );
ok(!( "\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<!isMc>.$/ ), q{Don't match externally inverted <isMc> (SpacingMark)} );
ok(!( "\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<[A]-isMc>$/ ), q{Don't match compound inverted <isMc> (SpacingMark)} );
ok(!( "\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<-isMc>$/ ), q{Don't match internally inverted <isMc> (SpacingMark)} );
ok(!( "\c[BALLOT BOX WITH CHECK]"  ~~ m/^<+isMc>$/ ), q{Don't match unrelated <isMc> (SpacingMark)} );
ok("\c[BALLOT BOX WITH CHECK]"  ~~ m/^<!isMc>.$/, q{Match unrelated externally inverted <isMc> (SpacingMark)} );
ok("\c[BALLOT BOX WITH CHECK]"  ~~ m/^<-isMc>$/, q{Match unrelated internally inverted <isMc> (SpacingMark)} );
ok(!( "\c[IDEOGRAPHIC LEVEL TONE MARK]" ~~ m/^<+isMc>$/ ), q{Don't match related <isMc> (SpacingMark)} );
ok("\c[IDEOGRAPHIC LEVEL TONE MARK]" ~~ m/^<-isMc>$/, q{Match related internally inverted <isMc> (SpacingMark)} );
ok("\c[IDEOGRAPHIC LEVEL TONE MARK]" ~~ m/^<!isMc>.$/, q{Match related externally inverted <isMc> (SpacingMark)} );
ok("\c[BALLOT BOX WITH CHECK]\c[IDEOGRAPHIC LEVEL TONE MARK]\c[DEVANAGARI SIGN VISARGA]" ~~ m/<+isMc>/, q{Match unanchored <isMc> (SpacingMark)} );

ok("\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<+isSpacingMark>$/, q{Match <isSpacingMark>} );
ok("\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<[A]+isSpacingMark>$/, q{Match compound <isSpacingMark>} );
ok(!( "\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<!isSpacingMark>.$/ ), q{Don't match externally inverted <isSpacingMark>} );
ok(!( "\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<[A]-isSpacingMark>$/ ), q{Don't match compound inverted <isSpacingMark>} );
ok(!( "\c[MALAYALAM SIGN ANUSVARA]" ~~ m/^<-isSpacingMark>$/ ), q{Don't match internally inverted <isSpacingMark>} );
ok(!( "\c[KANNADA LETTER VOCALIC LL]"  ~~ m/^<+isSpacingMark>$/ ), q{Don't match unrelated <isSpacingMark>} );
ok("\c[KANNADA LETTER VOCALIC LL]"  ~~ m/^<!isSpacingMark>.$/, q{Match unrelated externally inverted <isSpacingMark>} );
ok("\c[KANNADA LETTER VOCALIC LL]"  ~~ m/^<-isSpacingMark>$/, q{Match unrelated internally inverted <isSpacingMark>} );
ok("\c[KANNADA LETTER VOCALIC LL]\c[MALAYALAM SIGN ANUSVARA]" ~~ m/<+isSpacingMark>/, q{Match unanchored <isSpacingMark>} );

# Me          EnclosingMark


ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<+isMe>$/, q{Match <isMe> (EnclosingMark)} );
ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<[A]+isMe>$/, q{Match compound <isMe> (EnclosingMark)} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<!isMe>.$/ ), q{Don't match externally inverted <isMe> (EnclosingMark)} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<[A]-isMe>$/ ), q{Don't match compound inverted <isMe> (EnclosingMark)} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<-isMe>$/ ), q{Don't match internally inverted <isMe> (EnclosingMark)} );
ok(!( "\x[C680]"  ~~ m/^<+isMe>$/ ), q{Don't match unrelated <isMe> (EnclosingMark)} );
ok("\x[C680]"  ~~ m/^<!isMe>.$/, q{Match unrelated externally inverted <isMe> (EnclosingMark)} );
ok("\x[C680]"  ~~ m/^<-isMe>$/, q{Match unrelated internally inverted <isMe> (EnclosingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isMe>$/ ), q{Don't match related <isMe> (EnclosingMark)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMe>$/, q{Match related internally inverted <isMe> (EnclosingMark)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMe>.$/, q{Match related externally inverted <isMe> (EnclosingMark)} );
ok("\x[C680]\c[COMBINING GRAVE ACCENT]\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/<+isMe>/, q{Match unanchored <isMe> (EnclosingMark)} );

ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<+isEnclosingMark>$/, q{Match <isEnclosingMark>} );
ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<[A]+isEnclosingMark>$/, q{Match compound <isEnclosingMark>} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<!isEnclosingMark>.$/ ), q{Don't match externally inverted <isEnclosingMark>} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<[A]-isEnclosingMark>$/ ), q{Don't match compound inverted <isEnclosingMark>} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<-isEnclosingMark>$/ ), q{Don't match internally inverted <isEnclosingMark>} );
ok(!( "\x[911E]"  ~~ m/^<+isEnclosingMark>$/ ), q{Don't match unrelated <isEnclosingMark>} );
ok("\x[911E]"  ~~ m/^<!isEnclosingMark>.$/, q{Match unrelated externally inverted <isEnclosingMark>} );
ok("\x[911E]"  ~~ m/^<-isEnclosingMark>$/, q{Match unrelated internally inverted <isEnclosingMark>} );
ok("\x[911E]\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/<+isEnclosingMark>/, q{Match unanchored <isEnclosingMark>} );

# N           Number


ok("\c[DIGIT ZERO]" ~~ m/^<+isN>$/, q{Match <isN> (Number)} );
ok("\c[DIGIT ZERO]" ~~ m/^<[A]+isN>$/, q{Match compound <isN> (Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isN>.$/ ), q{Don't match externally inverted <isN> (Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<[A]-isN>$/ ), q{Don't match compound inverted <isN> (Number)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isN>$/ ), q{Don't match internally inverted <isN> (Number)} );
ok(!( "\x[3BA3]"  ~~ m/^<+isN>$/ ), q{Don't match unrelated <isN> (Number)} );
ok("\x[3BA3]"  ~~ m/^<!isN>.$/, q{Match unrelated externally inverted <isN> (Number)} );
ok("\x[3BA3]"  ~~ m/^<-isN>$/, q{Match unrelated internally inverted <isN> (Number)} );
ok("\x[3BA3]\c[DIGIT ZERO]" ~~ m/<+isN>/, q{Match unanchored <isN> (Number)} );

ok("\c[DIGIT ZERO]" ~~ m/^<+isNumber>$/, q{Match <isNumber>} );
ok("\c[DIGIT ZERO]" ~~ m/^<[A]+isNumber>$/, q{Match compound <isNumber>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isNumber>.$/ ), q{Don't match externally inverted <isNumber>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<[A]-isNumber>$/ ), q{Don't match compound inverted <isNumber>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isNumber>$/ ), q{Don't match internally inverted <isNumber>} );
ok(!( "\x[37D0]"  ~~ m/^<+isNumber>$/ ), q{Don't match unrelated <isNumber>} );
ok("\x[37D0]"  ~~ m/^<!isNumber>.$/, q{Match unrelated externally inverted <isNumber>} );
ok("\x[37D0]"  ~~ m/^<-isNumber>$/, q{Match unrelated internally inverted <isNumber>} );
ok("\x[37D0]\c[DIGIT ZERO]" ~~ m/<+isNumber>/, q{Match unanchored <isNumber>} );

# Nd          DecimalNumber


ok("\c[DIGIT ZERO]" ~~ m/^<+isNd>$/, q{Match <isNd> (DecimalNumber)} );
ok("\c[DIGIT ZERO]" ~~ m/^<[A]+isNd>$/, q{Match compound <isNd> (DecimalNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isNd>.$/ ), q{Don't match externally inverted <isNd> (DecimalNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<[A]-isNd>$/ ), q{Don't match compound inverted <isNd> (DecimalNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isNd>$/ ), q{Don't match internally inverted <isNd> (DecimalNumber)} );
ok(!( "\x[8536]"  ~~ m/^<+isNd>$/ ), q{Don't match unrelated <isNd> (DecimalNumber)} );
ok("\x[8536]"  ~~ m/^<!isNd>.$/, q{Match unrelated externally inverted <isNd> (DecimalNumber)} );
ok("\x[8536]"  ~~ m/^<-isNd>$/, q{Match unrelated internally inverted <isNd> (DecimalNumber)} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<+isNd>$/ ), q{Don't match related <isNd> (DecimalNumber)} );
ok("\c[SUPERSCRIPT TWO]" ~~ m/^<-isNd>$/, q{Match related internally inverted <isNd> (DecimalNumber)} );
ok("\c[SUPERSCRIPT TWO]" ~~ m/^<!isNd>.$/, q{Match related externally inverted <isNd> (DecimalNumber)} );
ok("\x[8536]\c[SUPERSCRIPT TWO]\c[DIGIT ZERO]" ~~ m/<+isNd>/, q{Match unanchored <isNd> (DecimalNumber)} );

ok("\c[KHMER DIGIT ZERO]" ~~ m/^<+isDecimalNumber>$/, q{Match <isDecimalNumber>} );
ok("\c[KHMER DIGIT ZERO]" ~~ m/^<[A]+isDecimalNumber>$/, q{Match compound <isDecimalNumber>} );
ok(!( "\c[KHMER DIGIT ZERO]" ~~ m/^<!isDecimalNumber>.$/ ), q{Don't match externally inverted <isDecimalNumber>} );
ok(!( "\c[KHMER DIGIT ZERO]" ~~ m/^<[A]-isDecimalNumber>$/ ), q{Don't match compound inverted <isDecimalNumber>} );
ok(!( "\c[KHMER DIGIT ZERO]" ~~ m/^<-isDecimalNumber>$/ ), q{Don't match internally inverted <isDecimalNumber>} );
ok(!( "\c[CANADIAN SYLLABICS NWE]"  ~~ m/^<+isDecimalNumber>$/ ), q{Don't match unrelated <isDecimalNumber>} );
ok("\c[CANADIAN SYLLABICS NWE]"  ~~ m/^<!isDecimalNumber>.$/, q{Match unrelated externally inverted <isDecimalNumber>} );
ok("\c[CANADIAN SYLLABICS NWE]"  ~~ m/^<-isDecimalNumber>$/, q{Match unrelated internally inverted <isDecimalNumber>} );
ok("\c[CANADIAN SYLLABICS NWE]\c[KHMER DIGIT ZERO]" ~~ m/<+isDecimalNumber>/, q{Match unanchored <isDecimalNumber>} );

# Nl          LetterNumber


ok("\c[ROMAN NUMERAL ONE]" ~~ m/^<+isNl>$/, q{Match <isNl> (LetterNumber)} );
ok("\c[ROMAN NUMERAL ONE]" ~~ m/^<[A]+isNl>$/, q{Match compound <isNl> (LetterNumber)} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<!isNl>.$/ ), q{Don't match externally inverted <isNl> (LetterNumber)} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<[A]-isNl>$/ ), q{Don't match compound inverted <isNl> (LetterNumber)} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<-isNl>$/ ), q{Don't match internally inverted <isNl> (LetterNumber)} );
ok(!( "\x[1B95]"  ~~ m/^<+isNl>$/ ), q{Don't match unrelated <isNl> (LetterNumber)} );
ok("\x[1B95]"  ~~ m/^<!isNl>.$/, q{Match unrelated externally inverted <isNl> (LetterNumber)} );
ok("\x[1B95]"  ~~ m/^<-isNl>$/, q{Match unrelated internally inverted <isNl> (LetterNumber)} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<+isNl>$/ ), q{Don't match related <isNl> (LetterNumber)} );
ok("\c[SUPERSCRIPT ZERO]" ~~ m/^<-isNl>$/, q{Match related internally inverted <isNl> (LetterNumber)} );
ok("\c[SUPERSCRIPT ZERO]" ~~ m/^<!isNl>.$/, q{Match related externally inverted <isNl> (LetterNumber)} );
ok("\x[1B95]\c[SUPERSCRIPT ZERO]\c[ROMAN NUMERAL ONE]" ~~ m/<+isNl>/, q{Match unanchored <isNl> (LetterNumber)} );

ok("\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<+isLetterNumber>$/, q{Match <isLetterNumber>} );
ok("\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<[A]+isLetterNumber>$/, q{Match compound <isLetterNumber>} );
ok(!( "\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<!isLetterNumber>.$/ ), q{Don't match externally inverted <isLetterNumber>} );
ok(!( "\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<[A]-isLetterNumber>$/ ), q{Don't match compound inverted <isLetterNumber>} );
ok(!( "\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<-isLetterNumber>$/ ), q{Don't match internally inverted <isLetterNumber>} );
ok(!( "\x[9B4F]"  ~~ m/^<+isLetterNumber>$/ ), q{Don't match unrelated <isLetterNumber>} );
ok("\x[9B4F]"  ~~ m/^<!isLetterNumber>.$/, q{Match unrelated externally inverted <isLetterNumber>} );
ok("\x[9B4F]"  ~~ m/^<-isLetterNumber>$/, q{Match unrelated internally inverted <isLetterNumber>} );
ok(!( "\x[9B4F]" ~~ m/^<+isLetterNumber>$/ ), q{Don't match related <isLetterNumber>} );
ok("\x[9B4F]" ~~ m/^<-isLetterNumber>$/, q{Match related internally inverted <isLetterNumber>} );
ok("\x[9B4F]" ~~ m/^<!isLetterNumber>.$/, q{Match related externally inverted <isLetterNumber>} );
ok("\x[9B4F]\x[9B4F]\c[RUNIC ARLAUG SYMBOL]" ~~ m/<+isLetterNumber>/, q{Match unanchored <isLetterNumber>} );

# No          OtherNumber


ok("\c[SUPERSCRIPT TWO]" ~~ m/^<+isNo>$/, q{Match <isNo> (OtherNumber)} );
ok("\c[SUPERSCRIPT TWO]" ~~ m/^<[A]+isNo>$/, q{Match compound <isNo> (OtherNumber)} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<!isNo>.$/ ), q{Don't match externally inverted <isNo> (OtherNumber)} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<[A]-isNo>$/ ), q{Don't match compound inverted <isNo> (OtherNumber)} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<-isNo>$/ ), q{Don't match internally inverted <isNo> (OtherNumber)} );
ok(!( "\x[8F9A]"  ~~ m/^<+isNo>$/ ), q{Don't match unrelated <isNo> (OtherNumber)} );
ok("\x[8F9A]"  ~~ m/^<!isNo>.$/, q{Match unrelated externally inverted <isNo> (OtherNumber)} );
ok("\x[8F9A]"  ~~ m/^<-isNo>$/, q{Match unrelated internally inverted <isNo> (OtherNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<+isNo>$/ ), q{Don't match related <isNo> (OtherNumber)} );
ok("\c[DIGIT ZERO]" ~~ m/^<-isNo>$/, q{Match related internally inverted <isNo> (OtherNumber)} );
ok("\c[DIGIT ZERO]" ~~ m/^<!isNo>.$/, q{Match related externally inverted <isNo> (OtherNumber)} );
ok("\x[8F9A]\c[DIGIT ZERO]\c[SUPERSCRIPT TWO]" ~~ m/<+isNo>/, q{Match unanchored <isNo> (OtherNumber)} );

ok("\c[BENGALI CURRENCY NUMERATOR ONE]" ~~ m/^<+isOtherNumber>$/, q{Match <isOtherNumber>} );
ok("\c[BENGALI CURRENCY NUMERATOR ONE]" ~~ m/^<[A]+isOtherNumber>$/, q{Match compound <isOtherNumber>} );
ok(!( "\c[BENGALI CURRENCY NUMERATOR ONE]" ~~ m/^<!isOtherNumber>.$/ ), q{Don't match externally inverted <isOtherNumber>} );
ok(!( "\c[BENGALI CURRENCY NUMERATOR ONE]" ~~ m/^<[A]-isOtherNumber>$/ ), q{Don't match compound inverted <isOtherNumber>} );
ok(!( "\c[BENGALI CURRENCY NUMERATOR ONE]" ~~ m/^<-isOtherNumber>$/ ), q{Don't match internally inverted <isOtherNumber>} );
ok(!( "\x[0522]"  ~~ m/^<+isOtherNumber>$/ ), q{Don't match unrelated <isOtherNumber>} );
ok("\x[0522]"  ~~ m/^<!isOtherNumber>.$/, q{Match unrelated externally inverted <isOtherNumber>} );
ok("\x[0522]"  ~~ m/^<-isOtherNumber>$/, q{Match unrelated internally inverted <isOtherNumber>} );
ok("\x[0522]\c[BENGALI CURRENCY NUMERATOR ONE]" ~~ m/<+isOtherNumber>/, q{Match unanchored <isOtherNumber>} );

# P           Punctuation


ok("\c[EXCLAMATION MARK]" ~~ m/^<+isP>$/, q{Match <isP> (Punctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<[A]+isP>$/, q{Match compound <isP> (Punctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isP>.$/ ), q{Don't match externally inverted <isP> (Punctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<[A]-isP>$/ ), q{Don't match compound inverted <isP> (Punctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isP>$/ ), q{Don't match internally inverted <isP> (Punctuation)} );
ok(!( "\x[3753]"  ~~ m/^<+isP>$/ ), q{Don't match unrelated <isP> (Punctuation)} );
ok("\x[3753]"  ~~ m/^<!isP>.$/, q{Match unrelated externally inverted <isP> (Punctuation)} );
ok("\x[3753]"  ~~ m/^<-isP>$/, q{Match unrelated internally inverted <isP> (Punctuation)} );
ok("\x[3753]\c[EXCLAMATION MARK]" ~~ m/<+isP>/, q{Match unanchored <isP> (Punctuation)} );

ok("\c[EXCLAMATION MARK]" ~~ m/^<+isPunctuation>$/, q{Match <isPunctuation>} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<[A]+isPunctuation>$/, q{Match compound <isPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isPunctuation>.$/ ), q{Don't match externally inverted <isPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<[A]-isPunctuation>$/ ), q{Don't match compound inverted <isPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isPunctuation>$/ ), q{Don't match internally inverted <isPunctuation>} );
ok(!( "\x[9C5E]"  ~~ m/^<+isPunctuation>$/ ), q{Don't match unrelated <isPunctuation>} );
ok("\x[9C5E]"  ~~ m/^<!isPunctuation>.$/, q{Match unrelated externally inverted <isPunctuation>} );
ok("\x[9C5E]"  ~~ m/^<-isPunctuation>$/, q{Match unrelated internally inverted <isPunctuation>} );
ok("\x[9C5E]\c[EXCLAMATION MARK]" ~~ m/<+isPunctuation>/, q{Match unanchored <isPunctuation>} );

# Pc          ConnectorPunctuation


ok("\c[LOW LINE]" ~~ m/^<+isPc>$/, q{Match <isPc> (ConnectorPunctuation)} );
ok("\c[LOW LINE]" ~~ m/^<[A]+isPc>$/, q{Match compound <isPc> (ConnectorPunctuation)} );
ok(!( "\c[LOW LINE]" ~~ m/^<!isPc>.$/ ), q{Don't match externally inverted <isPc> (ConnectorPunctuation)} );
ok(!( "\c[LOW LINE]" ~~ m/^<[A]-isPc>$/ ), q{Don't match compound inverted <isPc> (ConnectorPunctuation)} );
ok(!( "\c[LOW LINE]" ~~ m/^<-isPc>$/ ), q{Don't match internally inverted <isPc> (ConnectorPunctuation)} );
ok(!( "\x[B2C9]"  ~~ m/^<+isPc>$/ ), q{Don't match unrelated <isPc> (ConnectorPunctuation)} );
ok("\x[B2C9]"  ~~ m/^<!isPc>.$/, q{Match unrelated externally inverted <isPc> (ConnectorPunctuation)} );
ok("\x[B2C9]"  ~~ m/^<-isPc>$/, q{Match unrelated internally inverted <isPc> (ConnectorPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<+isPc>$/ ), q{Don't match related <isPc> (ConnectorPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPc>$/, q{Match related internally inverted <isPc> (ConnectorPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPc>.$/, q{Match related externally inverted <isPc> (ConnectorPunctuation)} );
ok("\x[B2C9]\c[EXCLAMATION MARK]\c[LOW LINE]" ~~ m/<+isPc>/, q{Match unanchored <isPc> (ConnectorPunctuation)} );

ok("\c[LOW LINE]" ~~ m/^<+isConnectorPunctuation>$/, q{Match <isConnectorPunctuation>} );
ok("\c[LOW LINE]" ~~ m/^<[A]+isConnectorPunctuation>$/, q{Match compound <isConnectorPunctuation>} );
ok(!( "\c[LOW LINE]" ~~ m/^<!isConnectorPunctuation>.$/ ), q{Don't match externally inverted <isConnectorPunctuation>} );
ok(!( "\c[LOW LINE]" ~~ m/^<[A]-isConnectorPunctuation>$/ ), q{Don't match compound inverted <isConnectorPunctuation>} );
ok(!( "\c[LOW LINE]" ~~ m/^<-isConnectorPunctuation>$/ ), q{Don't match internally inverted <isConnectorPunctuation>} );
ok(!( "\x[AEFC]"  ~~ m/^<+isConnectorPunctuation>$/ ), q{Don't match unrelated <isConnectorPunctuation>} );
ok("\x[AEFC]"  ~~ m/^<!isConnectorPunctuation>.$/, q{Match unrelated externally inverted <isConnectorPunctuation>} );
ok("\x[AEFC]"  ~~ m/^<-isConnectorPunctuation>$/, q{Match unrelated internally inverted <isConnectorPunctuation>} );
ok("\x[AEFC]\c[LOW LINE]" ~~ m/<+isConnectorPunctuation>/, q{Match unanchored <isConnectorPunctuation>} );

# Pd          DashPunctuation


ok("\c[HYPHEN-MINUS]" ~~ m/^<+isPd>$/, q{Match <isPd> (DashPunctuation)} );
ok("\c[HYPHEN-MINUS]" ~~ m/^<[A]+isPd>$/, q{Match compound <isPd> (DashPunctuation)} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<!isPd>.$/ ), q{Don't match externally inverted <isPd> (DashPunctuation)} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<[A]-isPd>$/ ), q{Don't match compound inverted <isPd> (DashPunctuation)} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<-isPd>$/ ), q{Don't match internally inverted <isPd> (DashPunctuation)} );
ok(!( "\x[86C8]"  ~~ m/^<+isPd>$/ ), q{Don't match unrelated <isPd> (DashPunctuation)} );
ok("\x[86C8]"  ~~ m/^<!isPd>.$/, q{Match unrelated externally inverted <isPd> (DashPunctuation)} );
ok("\x[86C8]"  ~~ m/^<-isPd>$/, q{Match unrelated internally inverted <isPd> (DashPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<+isPd>$/ ), q{Don't match related <isPd> (DashPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPd>$/, q{Match related internally inverted <isPd> (DashPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPd>.$/, q{Match related externally inverted <isPd> (DashPunctuation)} );
ok("\x[86C8]\c[EXCLAMATION MARK]\c[HYPHEN-MINUS]" ~~ m/<+isPd>/, q{Match unanchored <isPd> (DashPunctuation)} );

ok("\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<+isDashPunctuation>$/, q{Match <isDashPunctuation>} );
ok("\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<[A]+isDashPunctuation>$/, q{Match compound <isDashPunctuation>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<!isDashPunctuation>.$/ ), q{Don't match externally inverted <isDashPunctuation>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<[A]-isDashPunctuation>$/ ), q{Don't match compound inverted <isDashPunctuation>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<-isDashPunctuation>$/ ), q{Don't match internally inverted <isDashPunctuation>} );
ok(!( "\c[HIRAGANA LETTER NI]"  ~~ m/^<+isDashPunctuation>$/ ), q{Don't match unrelated <isDashPunctuation>} );
ok("\c[HIRAGANA LETTER NI]"  ~~ m/^<!isDashPunctuation>.$/, q{Match unrelated externally inverted <isDashPunctuation>} );
ok("\c[HIRAGANA LETTER NI]"  ~~ m/^<-isDashPunctuation>$/, q{Match unrelated internally inverted <isDashPunctuation>} );
ok("\c[HIRAGANA LETTER NI]\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/<+isDashPunctuation>/, q{Match unanchored <isDashPunctuation>} );

# Ps          OpenPunctuation


ok("\c[LEFT PARENTHESIS]" ~~ m/^<+isPs>$/, q{Match <isPs> (OpenPunctuation)} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<[A]+isPs>$/, q{Match compound <isPs> (OpenPunctuation)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isPs>.$/ ), q{Don't match externally inverted <isPs> (OpenPunctuation)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<[A]-isPs>$/ ), q{Don't match compound inverted <isPs> (OpenPunctuation)} );
