use v6-alpha;
use Test;
plan 199;
ok("\x[A994]"  ~~ m/^<-isNumber>$/, q{Match unrelated inverted <?isNumber>} );
ok("\x[A994]\c[DIGIT ZERO]" ~~ m/<?isNumber>/, q{Match unanchored <?isNumber>} );

# Nd          DecimalNumber


ok("\c[DIGIT ZERO]" ~~ m/^<?isNd>$/, q{Match <?isNd> (DecimalNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isNd>.$/ ), q{Don't match negated <?isNd> (DecimalNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isNd>$/ ), q{Don't match inverted <?isNd> (DecimalNumber)} );
ok(!( "\x[4E2C]"  ~~ m/^<?isNd>$/ ), q{Don't match unrelated <?isNd> (DecimalNumber)} );
ok("\x[4E2C]"  ~~ m/^<!isNd>.$/, q{Match unrelated negated <?isNd> (DecimalNumber)} );
ok("\x[4E2C]"  ~~ m/^<-isNd>$/, q{Match unrelated inverted <?isNd> (DecimalNumber)} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<?isNd>$/ ), q{Don't match related <?isNd> (DecimalNumber)} );
ok("\c[SUPERSCRIPT TWO]" ~~ m/^<!isNd>.$/, q{Match related negated <?isNd> (DecimalNumber)} );
ok("\c[SUPERSCRIPT TWO]" ~~ m/^<-isNd>$/, q{Match related inverted <?isNd> (DecimalNumber)} );
ok("\x[4E2C]\c[SUPERSCRIPT TWO]\c[DIGIT ZERO]" ~~ m/<?isNd>/, q{Match unanchored <?isNd> (DecimalNumber)} );

ok("\c[DIGIT ZERO]" ~~ m/^<?isDecimalNumber>$/, q{Match <?isDecimalNumber>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isDecimalNumber>.$/ ), q{Don't match negated <?isDecimalNumber>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isDecimalNumber>$/ ), q{Don't match inverted <?isDecimalNumber>} );
ok(!( "\x[A652]"  ~~ m/^<?isDecimalNumber>$/ ), q{Don't match unrelated <?isDecimalNumber>} );
ok("\x[A652]"  ~~ m/^<!isDecimalNumber>.$/, q{Match unrelated negated <?isDecimalNumber>} );
ok("\x[A652]"  ~~ m/^<-isDecimalNumber>$/, q{Match unrelated inverted <?isDecimalNumber>} );
ok("\x[A652]\c[DIGIT ZERO]" ~~ m/<?isDecimalNumber>/, q{Match unanchored <?isDecimalNumber>} );

# Nl          LetterNumber


ok("\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<?isNl>$/, q{Match <?isNl> (LetterNumber)} );
ok(!( "\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<!isNl>.$/ ), q{Don't match negated <?isNl> (LetterNumber)} );
ok(!( "\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<-isNl>$/ ), q{Don't match inverted <?isNl> (LetterNumber)} );
ok(!( "\x[6C2F]"  ~~ m/^<?isNl>$/ ), q{Don't match unrelated <?isNl> (LetterNumber)} );
ok("\x[6C2F]"  ~~ m/^<!isNl>.$/, q{Match unrelated negated <?isNl> (LetterNumber)} );
ok("\x[6C2F]"  ~~ m/^<-isNl>$/, q{Match unrelated inverted <?isNl> (LetterNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<?isNl>$/ ), q{Don't match related <?isNl> (LetterNumber)} );
ok("\c[DIGIT ZERO]" ~~ m/^<!isNl>.$/, q{Match related negated <?isNl> (LetterNumber)} );
ok("\c[DIGIT ZERO]" ~~ m/^<-isNl>$/, q{Match related inverted <?isNl> (LetterNumber)} );
ok("\x[6C2F]\c[DIGIT ZERO]\c[RUNIC ARLAUG SYMBOL]" ~~ m/<?isNl>/, q{Match unanchored <?isNl> (LetterNumber)} );

ok("\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<?isLetterNumber>$/, q{Match <?isLetterNumber>} );
ok(!( "\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<!isLetterNumber>.$/ ), q{Don't match negated <?isLetterNumber>} );
ok(!( "\c[RUNIC ARLAUG SYMBOL]" ~~ m/^<-isLetterNumber>$/ ), q{Don't match inverted <?isLetterNumber>} );
ok(!( "\x[80A5]"  ~~ m/^<?isLetterNumber>$/ ), q{Don't match unrelated <?isLetterNumber>} );
ok("\x[80A5]"  ~~ m/^<!isLetterNumber>.$/, q{Match unrelated negated <?isLetterNumber>} );
ok("\x[80A5]"  ~~ m/^<-isLetterNumber>$/, q{Match unrelated inverted <?isLetterNumber>} );
ok(!( "\x[80A5]" ~~ m/^<?isLetterNumber>$/ ), q{Don't match related <?isLetterNumber>} );
ok("\x[80A5]" ~~ m/^<!isLetterNumber>.$/, q{Match related negated <?isLetterNumber>} );
ok("\x[80A5]" ~~ m/^<-isLetterNumber>$/, q{Match related inverted <?isLetterNumber>} );
ok("\x[80A5]\x[80A5]\c[RUNIC ARLAUG SYMBOL]" ~~ m/<?isLetterNumber>/, q{Match unanchored <?isLetterNumber>} );

# No          OtherNumber


ok("\c[SUPERSCRIPT TWO]" ~~ m/^<?isNo>$/, q{Match <?isNo> (OtherNumber)} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<!isNo>.$/ ), q{Don't match negated <?isNo> (OtherNumber)} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<-isNo>$/ ), q{Don't match inverted <?isNo> (OtherNumber)} );
ok(!( "\x[92F3]"  ~~ m/^<?isNo>$/ ), q{Don't match unrelated <?isNo> (OtherNumber)} );
ok("\x[92F3]"  ~~ m/^<!isNo>.$/, q{Match unrelated negated <?isNo> (OtherNumber)} );
ok("\x[92F3]"  ~~ m/^<-isNo>$/, q{Match unrelated inverted <?isNo> (OtherNumber)} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<?isNo>$/ ), q{Don't match related <?isNo> (OtherNumber)} );
ok("\c[DIGIT ZERO]" ~~ m/^<!isNo>.$/, q{Match related negated <?isNo> (OtherNumber)} );
ok("\c[DIGIT ZERO]" ~~ m/^<-isNo>$/, q{Match related inverted <?isNo> (OtherNumber)} );
ok("\x[92F3]\c[DIGIT ZERO]\c[SUPERSCRIPT TWO]" ~~ m/<?isNo>/, q{Match unanchored <?isNo> (OtherNumber)} );

ok("\c[SUPERSCRIPT TWO]" ~~ m/^<?isOtherNumber>$/, q{Match <?isOtherNumber>} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<!isOtherNumber>.$/ ), q{Don't match negated <?isOtherNumber>} );
ok(!( "\c[SUPERSCRIPT TWO]" ~~ m/^<-isOtherNumber>$/ ), q{Don't match inverted <?isOtherNumber>} );
ok(!( "\x[5363]"  ~~ m/^<?isOtherNumber>$/ ), q{Don't match unrelated <?isOtherNumber>} );
ok("\x[5363]"  ~~ m/^<!isOtherNumber>.$/, q{Match unrelated negated <?isOtherNumber>} );
ok("\x[5363]"  ~~ m/^<-isOtherNumber>$/, q{Match unrelated inverted <?isOtherNumber>} );
ok("\x[5363]\c[SUPERSCRIPT TWO]" ~~ m/<?isOtherNumber>/, q{Match unanchored <?isOtherNumber>} );

# P           Punctuation


ok("\c[EXCLAMATION MARK]" ~~ m/^<isP>$/, q{Match <isP> (Punctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isP>.$/ ), q{Don't match negated <isP> (Punctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isP>$/ ), q{Don't match inverted <isP> (Punctuation)} );
ok(!( "\x[A918]"  ~~ m/^<isP>$/ ), q{Don't match unrelated <isP> (Punctuation)} );
ok("\x[A918]"  ~~ m/^<!isP>.$/, q{Match unrelated negated <isP> (Punctuation)} );
ok("\x[A918]"  ~~ m/^<-isP>$/, q{Match unrelated inverted <isP> (Punctuation)} );
ok("\x[A918]\c[EXCLAMATION MARK]" ~~ m/<isP>/, q{Match unanchored <isP> (Punctuation)} );

ok("\c[EXCLAMATION MARK]" ~~ m/^<?isPunctuation>$/, q{Match <?isPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isPunctuation>.$/ ), q{Don't match negated <?isPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isPunctuation>$/ ), q{Don't match inverted <?isPunctuation>} );
ok(!( "\x[CE60]"  ~~ m/^<?isPunctuation>$/ ), q{Don't match unrelated <?isPunctuation>} );
ok("\x[CE60]"  ~~ m/^<!isPunctuation>.$/, q{Match unrelated negated <?isPunctuation>} );
ok("\x[CE60]"  ~~ m/^<-isPunctuation>$/, q{Match unrelated inverted <?isPunctuation>} );
ok("\x[CE60]\c[EXCLAMATION MARK]" ~~ m/<?isPunctuation>/, q{Match unanchored <?isPunctuation>} );

# Pc          ConnectorPunctuation


ok("\c[LOW LINE]" ~~ m/^<?isPc>$/, q{Match <?isPc> (ConnectorPunctuation)} );
ok(!( "\c[LOW LINE]" ~~ m/^<!isPc>.$/ ), q{Don't match negated <?isPc> (ConnectorPunctuation)} );
ok(!( "\c[LOW LINE]" ~~ m/^<-isPc>$/ ), q{Don't match inverted <?isPc> (ConnectorPunctuation)} );
ok(!( "\x[5F19]"  ~~ m/^<?isPc>$/ ), q{Don't match unrelated <?isPc> (ConnectorPunctuation)} );
ok("\x[5F19]"  ~~ m/^<!isPc>.$/, q{Match unrelated negated <?isPc> (ConnectorPunctuation)} );
ok("\x[5F19]"  ~~ m/^<-isPc>$/, q{Match unrelated inverted <?isPc> (ConnectorPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<?isPc>$/ ), q{Don't match related <?isPc> (ConnectorPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPc>.$/, q{Match related negated <?isPc> (ConnectorPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPc>$/, q{Match related inverted <?isPc> (ConnectorPunctuation)} );
ok("\x[5F19]\c[EXCLAMATION MARK]\c[LOW LINE]" ~~ m/<?isPc>/, q{Match unanchored <?isPc> (ConnectorPunctuation)} );

ok("\c[LOW LINE]" ~~ m/^<?isConnectorPunctuation>$/, q{Match <?isConnectorPunctuation>} );
ok(!( "\c[LOW LINE]" ~~ m/^<!isConnectorPunctuation>.$/ ), q{Don't match negated <?isConnectorPunctuation>} );
ok(!( "\c[LOW LINE]" ~~ m/^<-isConnectorPunctuation>$/ ), q{Don't match inverted <?isConnectorPunctuation>} );
ok(!( "\c[YI SYLLABLE MGOX]"  ~~ m/^<?isConnectorPunctuation>$/ ), q{Don't match unrelated <?isConnectorPunctuation>} );
ok("\c[YI SYLLABLE MGOX]"  ~~ m/^<!isConnectorPunctuation>.$/, q{Match unrelated negated <?isConnectorPunctuation>} );
ok("\c[YI SYLLABLE MGOX]"  ~~ m/^<-isConnectorPunctuation>$/, q{Match unrelated inverted <?isConnectorPunctuation>} );
ok("\c[YI SYLLABLE MGOX]\c[LOW LINE]" ~~ m/<?isConnectorPunctuation>/, q{Match unanchored <?isConnectorPunctuation>} );

# Pd          DashPunctuation


ok("\c[HYPHEN-MINUS]" ~~ m/^<?isPd>$/, q{Match <?isPd> (DashPunctuation)} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<!isPd>.$/ ), q{Don't match negated <?isPd> (DashPunctuation)} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<-isPd>$/ ), q{Don't match inverted <?isPd> (DashPunctuation)} );
ok(!( "\x[49A1]"  ~~ m/^<?isPd>$/ ), q{Don't match unrelated <?isPd> (DashPunctuation)} );
ok("\x[49A1]"  ~~ m/^<!isPd>.$/, q{Match unrelated negated <?isPd> (DashPunctuation)} );
ok("\x[49A1]"  ~~ m/^<-isPd>$/, q{Match unrelated inverted <?isPd> (DashPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<?isPd>$/ ), q{Don't match related <?isPd> (DashPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPd>.$/, q{Match related negated <?isPd> (DashPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPd>$/, q{Match related inverted <?isPd> (DashPunctuation)} );
ok("\x[49A1]\c[EXCLAMATION MARK]\c[HYPHEN-MINUS]" ~~ m/<?isPd>/, q{Match unanchored <?isPd> (DashPunctuation)} );

ok("\c[HYPHEN-MINUS]" ~~ m/^<?isDashPunctuation>$/, q{Match <?isDashPunctuation>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<!isDashPunctuation>.$/ ), q{Don't match negated <?isDashPunctuation>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<-isDashPunctuation>$/ ), q{Don't match inverted <?isDashPunctuation>} );
ok(!( "\x[3C6E]"  ~~ m/^<?isDashPunctuation>$/ ), q{Don't match unrelated <?isDashPunctuation>} );
ok("\x[3C6E]"  ~~ m/^<!isDashPunctuation>.$/, q{Match unrelated negated <?isDashPunctuation>} );
ok("\x[3C6E]"  ~~ m/^<-isDashPunctuation>$/, q{Match unrelated inverted <?isDashPunctuation>} );
ok("\x[3C6E]\c[HYPHEN-MINUS]" ~~ m/<?isDashPunctuation>/, q{Match unanchored <?isDashPunctuation>} );

# Ps          OpenPunctuation


ok("\c[LEFT PARENTHESIS]" ~~ m/^<?isPs>$/, q{Match <?isPs> (OpenPunctuation)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isPs>.$/ ), q{Don't match negated <?isPs> (OpenPunctuation)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isPs>$/ ), q{Don't match inverted <?isPs> (OpenPunctuation)} );
ok(!( "\x[C8A5]"  ~~ m/^<?isPs>$/ ), q{Don't match unrelated <?isPs> (OpenPunctuation)} );
ok("\x[C8A5]"  ~~ m/^<!isPs>.$/, q{Match unrelated negated <?isPs> (OpenPunctuation)} );
ok("\x[C8A5]"  ~~ m/^<-isPs>$/, q{Match unrelated inverted <?isPs> (OpenPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<?isPs>$/ ), q{Don't match related <?isPs> (OpenPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPs>.$/, q{Match related negated <?isPs> (OpenPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPs>$/, q{Match related inverted <?isPs> (OpenPunctuation)} );
ok("\x[C8A5]\c[EXCLAMATION MARK]\c[LEFT PARENTHESIS]" ~~ m/<?isPs>/, q{Match unanchored <?isPs> (OpenPunctuation)} );

ok("\c[LEFT PARENTHESIS]" ~~ m/^<?isOpenPunctuation>$/, q{Match <?isOpenPunctuation>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isOpenPunctuation>.$/ ), q{Don't match negated <?isOpenPunctuation>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isOpenPunctuation>$/ ), q{Don't match inverted <?isOpenPunctuation>} );
ok(!( "\x[84B8]"  ~~ m/^<?isOpenPunctuation>$/ ), q{Don't match unrelated <?isOpenPunctuation>} );
ok("\x[84B8]"  ~~ m/^<!isOpenPunctuation>.$/, q{Match unrelated negated <?isOpenPunctuation>} );
ok("\x[84B8]"  ~~ m/^<-isOpenPunctuation>$/, q{Match unrelated inverted <?isOpenPunctuation>} );
ok("\x[84B8]\c[LEFT PARENTHESIS]" ~~ m/<?isOpenPunctuation>/, q{Match unanchored <?isOpenPunctuation>} );

# Pe          ClosePunctuation


ok("\c[RIGHT PARENTHESIS]" ~~ m/^<?isPe>$/, q{Match <?isPe> (ClosePunctuation)} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<!isPe>.$/ ), q{Don't match negated <?isPe> (ClosePunctuation)} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<-isPe>$/ ), q{Don't match inverted <?isPe> (ClosePunctuation)} );
ok(!( "\x[BB92]"  ~~ m/^<?isPe>$/ ), q{Don't match unrelated <?isPe> (ClosePunctuation)} );
ok("\x[BB92]"  ~~ m/^<!isPe>.$/, q{Match unrelated negated <?isPe> (ClosePunctuation)} );
ok("\x[BB92]"  ~~ m/^<-isPe>$/, q{Match unrelated inverted <?isPe> (ClosePunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<?isPe>$/ ), q{Don't match related <?isPe> (ClosePunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPe>.$/, q{Match related negated <?isPe> (ClosePunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPe>$/, q{Match related inverted <?isPe> (ClosePunctuation)} );
ok("\x[BB92]\c[EXCLAMATION MARK]\c[RIGHT PARENTHESIS]" ~~ m/<?isPe>/, q{Match unanchored <?isPe> (ClosePunctuation)} );

ok("\c[RIGHT PARENTHESIS]" ~~ m/^<?isClosePunctuation>$/, q{Match <?isClosePunctuation>} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<!isClosePunctuation>.$/ ), q{Don't match negated <?isClosePunctuation>} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<-isClosePunctuation>$/ ), q{Don't match inverted <?isClosePunctuation>} );
ok(!( "\x[D55D]"  ~~ m/^<?isClosePunctuation>$/ ), q{Don't match unrelated <?isClosePunctuation>} );
ok("\x[D55D]"  ~~ m/^<!isClosePunctuation>.$/, q{Match unrelated negated <?isClosePunctuation>} );
ok("\x[D55D]"  ~~ m/^<-isClosePunctuation>$/, q{Match unrelated inverted <?isClosePunctuation>} );
ok("\x[D55D]\c[RIGHT PARENTHESIS]" ~~ m/<?isClosePunctuation>/, q{Match unanchored <?isClosePunctuation>} );

# Pi          InitialPunctuation


ok("\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<?isPi>$/, q{Match <?isPi> (InitialPunctuation)} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<!isPi>.$/ ), q{Don't match negated <?isPi> (InitialPunctuation)} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<-isPi>$/ ), q{Don't match inverted <?isPi> (InitialPunctuation)} );
ok(!( "\x[3A35]"  ~~ m/^<?isPi>$/ ), q{Don't match unrelated <?isPi> (InitialPunctuation)} );
ok("\x[3A35]"  ~~ m/^<!isPi>.$/, q{Match unrelated negated <?isPi> (InitialPunctuation)} );
ok("\x[3A35]"  ~~ m/^<-isPi>$/, q{Match unrelated inverted <?isPi> (InitialPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<?isPi>$/ ), q{Don't match related <?isPi> (InitialPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPi>.$/, q{Match related negated <?isPi> (InitialPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPi>$/, q{Match related inverted <?isPi> (InitialPunctuation)} );
ok("\x[3A35]\c[EXCLAMATION MARK]\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/<?isPi>/, q{Match unanchored <?isPi> (InitialPunctuation)} );

ok("\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<?isInitialPunctuation>$/, q{Match <?isInitialPunctuation>} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<!isInitialPunctuation>.$/ ), q{Don't match negated <?isInitialPunctuation>} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<-isInitialPunctuation>$/ ), q{Don't match inverted <?isInitialPunctuation>} );
ok(!( "\x[B84F]"  ~~ m/^<?isInitialPunctuation>$/ ), q{Don't match unrelated <?isInitialPunctuation>} );
ok("\x[B84F]"  ~~ m/^<!isInitialPunctuation>.$/, q{Match unrelated negated <?isInitialPunctuation>} );
ok("\x[B84F]"  ~~ m/^<-isInitialPunctuation>$/, q{Match unrelated inverted <?isInitialPunctuation>} );
ok("\x[B84F]\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/<?isInitialPunctuation>/, q{Match unanchored <?isInitialPunctuation>} );

# Pf          FinalPunctuation


ok("\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<?isPf>$/, q{Match <?isPf> (FinalPunctuation)} );
ok(!( "\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<!isPf>.$/ ), q{Don't match negated <?isPf> (FinalPunctuation)} );
ok(!( "\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<-isPf>$/ ), q{Don't match inverted <?isPf> (FinalPunctuation)} );
ok(!( "\x[27CF]"  ~~ m/^<?isPf>$/ ), q{Don't match unrelated <?isPf> (FinalPunctuation)} );
ok("\x[27CF]"  ~~ m/^<!isPf>.$/, q{Match unrelated negated <?isPf> (FinalPunctuation)} );
ok("\x[27CF]"  ~~ m/^<-isPf>$/, q{Match unrelated inverted <?isPf> (FinalPunctuation)} );
ok(!( "\c[MATHEMATICAL LEFT WHITE SQUARE BRACKET]" ~~ m/^<?isPf>$/ ), q{Don't match related <?isPf> (FinalPunctuation)} );
ok("\c[MATHEMATICAL LEFT WHITE SQUARE BRACKET]" ~~ m/^<!isPf>.$/, q{Match related negated <?isPf> (FinalPunctuation)} );
ok("\c[MATHEMATICAL LEFT WHITE SQUARE BRACKET]" ~~ m/^<-isPf>$/, q{Match related inverted <?isPf> (FinalPunctuation)} );
ok("\x[27CF]\c[MATHEMATICAL LEFT WHITE SQUARE BRACKET]\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/<?isPf>/, q{Match unanchored <?isPf> (FinalPunctuation)} );

ok("\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<?isFinalPunctuation>$/, q{Match <?isFinalPunctuation>} );
ok(!( "\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<!isFinalPunctuation>.$/ ), q{Don't match negated <?isFinalPunctuation>} );
ok(!( "\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<-isFinalPunctuation>$/ ), q{Don't match inverted <?isFinalPunctuation>} );
ok(!( "\x[4F65]"  ~~ m/^<?isFinalPunctuation>$/ ), q{Don't match unrelated <?isFinalPunctuation>} );
ok("\x[4F65]"  ~~ m/^<!isFinalPunctuation>.$/, q{Match unrelated negated <?isFinalPunctuation>} );
ok("\x[4F65]"  ~~ m/^<-isFinalPunctuation>$/, q{Match unrelated inverted <?isFinalPunctuation>} );
ok("\x[4F65]\c[RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/<?isFinalPunctuation>/, q{Match unanchored <?isFinalPunctuation>} );

# Po          OtherPunctuation


ok("\c[EXCLAMATION MARK]" ~~ m/^<?isPo>$/, q{Match <?isPo> (OtherPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isPo>.$/ ), q{Don't match negated <?isPo> (OtherPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isPo>$/ ), q{Don't match inverted <?isPo> (OtherPunctuation)} );
ok(!( "\x[AA74]"  ~~ m/^<?isPo>$/ ), q{Don't match unrelated <?isPo> (OtherPunctuation)} );
ok("\x[AA74]"  ~~ m/^<!isPo>.$/, q{Match unrelated negated <?isPo> (OtherPunctuation)} );
ok("\x[AA74]"  ~~ m/^<-isPo>$/, q{Match unrelated inverted <?isPo> (OtherPunctuation)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<?isPo>$/ ), q{Don't match related <?isPo> (OtherPunctuation)} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<!isPo>.$/, q{Match related negated <?isPo> (OtherPunctuation)} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<-isPo>$/, q{Match related inverted <?isPo> (OtherPunctuation)} );
ok("\x[AA74]\c[LEFT PARENTHESIS]\c[EXCLAMATION MARK]" ~~ m/<?isPo>/, q{Match unanchored <?isPo> (OtherPunctuation)} );

ok("\c[EXCLAMATION MARK]" ~~ m/^<?isOtherPunctuation>$/, q{Match <?isOtherPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isOtherPunctuation>.$/ ), q{Don't match negated <?isOtherPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isOtherPunctuation>$/ ), q{Don't match inverted <?isOtherPunctuation>} );
ok(!( "\x[7DD2]"  ~~ m/^<?isOtherPunctuation>$/ ), q{Don't match unrelated <?isOtherPunctuation>} );
ok("\x[7DD2]"  ~~ m/^<!isOtherPunctuation>.$/, q{Match unrelated negated <?isOtherPunctuation>} );
ok("\x[7DD2]"  ~~ m/^<-isOtherPunctuation>$/, q{Match unrelated inverted <?isOtherPunctuation>} );
ok("\x[7DD2]\c[EXCLAMATION MARK]" ~~ m/<?isOtherPunctuation>/, q{Match unanchored <?isOtherPunctuation>} );

# S           Symbol


ok("\c[YI RADICAL QOT]" ~~ m/^<isS>$/, q{Match <isS> (Symbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<!isS>.$/ ), q{Don't match negated <isS> (Symbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<-isS>$/ ), q{Don't match inverted <isS> (Symbol)} );
ok(!( "\x[8839]"  ~~ m/^<isS>$/ ), q{Don't match unrelated <isS> (Symbol)} );
ok("\x[8839]"  ~~ m/^<!isS>.$/, q{Match unrelated negated <isS> (Symbol)} );
ok("\x[8839]"  ~~ m/^<-isS>$/, q{Match unrelated inverted <isS> (Symbol)} );
ok("\x[8839]\c[YI RADICAL QOT]" ~~ m/<isS>/, q{Match unanchored <isS> (Symbol)} );

ok("\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<?isSymbol>$/, q{Match <?isSymbol>} );
ok(!( "\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<!isSymbol>.$/ ), q{Don't match negated <?isSymbol>} );
ok(!( "\c[HEXAGRAM FOR THE CREATIVE HEAVEN]" ~~ m/^<-isSymbol>$/ ), q{Don't match inverted <?isSymbol>} );
