use v6-alpha;
use Test;
plan 185;
force_todo(108, 109, 141, 142);
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isPs>$/ ), q{Don't match internally inverted <isPs> (OpenPunctuation)} );
ok(!( "\x[B601]"  ~~ m/^<+isPs>$/ ), q{Don't match unrelated <isPs> (OpenPunctuation)} );
ok("\x[B601]"  ~~ m/^<!isPs>.$/, q{Match unrelated externally inverted <isPs> (OpenPunctuation)} );
ok("\x[B601]"  ~~ m/^<-isPs>$/, q{Match unrelated internally inverted <isPs> (OpenPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<+isPs>$/ ), q{Don't match related <isPs> (OpenPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPs>$/, q{Match related internally inverted <isPs> (OpenPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPs>.$/, q{Match related externally inverted <isPs> (OpenPunctuation)} );
ok("\x[B601]\c[EXCLAMATION MARK]\c[LEFT PARENTHESIS]" ~~ m/<+isPs>/, q{Match unanchored <isPs> (OpenPunctuation)} );

ok("\c[LEFT PARENTHESIS]" ~~ m/^<+isOpenPunctuation>$/, q{Match <isOpenPunctuation>} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<[A]+isOpenPunctuation>$/, q{Match compound <isOpenPunctuation>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isOpenPunctuation>.$/ ), q{Don't match externally inverted <isOpenPunctuation>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<[A]-isOpenPunctuation>$/ ), q{Don't match compound inverted <isOpenPunctuation>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isOpenPunctuation>$/ ), q{Don't match internally inverted <isOpenPunctuation>} );
ok(!( "\x[89C1]"  ~~ m/^<+isOpenPunctuation>$/ ), q{Don't match unrelated <isOpenPunctuation>} );
ok("\x[89C1]"  ~~ m/^<!isOpenPunctuation>.$/, q{Match unrelated externally inverted <isOpenPunctuation>} );
ok("\x[89C1]"  ~~ m/^<-isOpenPunctuation>$/, q{Match unrelated internally inverted <isOpenPunctuation>} );
ok("\x[89C1]\c[LEFT PARENTHESIS]" ~~ m/<+isOpenPunctuation>/, q{Match unanchored <isOpenPunctuation>} );

# Pe          ClosePunctuation


ok("\c[RIGHT PARENTHESIS]" ~~ m/^<+isPe>$/, q{Match <isPe> (ClosePunctuation)} );
ok("\c[RIGHT PARENTHESIS]" ~~ m/^<[A]+isPe>$/, q{Match compound <isPe> (ClosePunctuation)} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<!isPe>.$/ ), q{Don't match externally inverted <isPe> (ClosePunctuation)} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<[A]-isPe>$/ ), q{Don't match compound inverted <isPe> (ClosePunctuation)} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<-isPe>$/ ), q{Don't match internally inverted <isPe> (ClosePunctuation)} );
ok(!( "\x[5561]"  ~~ m/^<+isPe>$/ ), q{Don't match unrelated <isPe> (ClosePunctuation)} );
ok("\x[5561]"  ~~ m/^<!isPe>.$/, q{Match unrelated externally inverted <isPe> (ClosePunctuation)} );
ok("\x[5561]"  ~~ m/^<-isPe>$/, q{Match unrelated internally inverted <isPe> (ClosePunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<+isPe>$/ ), q{Don't match related <isPe> (ClosePunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPe>$/, q{Match related internally inverted <isPe> (ClosePunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPe>.$/, q{Match related externally inverted <isPe> (ClosePunctuation)} );
ok("\x[5561]\c[EXCLAMATION MARK]\c[RIGHT PARENTHESIS]" ~~ m/<+isPe>/, q{Match unanchored <isPe> (ClosePunctuation)} );

ok("\c[RIGHT PARENTHESIS]" ~~ m/^<+isClosePunctuation>$/, q{Match <isClosePunctuation>} );
ok("\c[RIGHT PARENTHESIS]" ~~ m/^<[A]+isClosePunctuation>$/, q{Match compound <isClosePunctuation>} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<!isClosePunctuation>.$/ ), q{Don't match externally inverted <isClosePunctuation>} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<[A]-isClosePunctuation>$/ ), q{Don't match compound inverted <isClosePunctuation>} );
ok(!( "\c[RIGHT PARENTHESIS]" ~~ m/^<-isClosePunctuation>$/ ), q{Don't match internally inverted <isClosePunctuation>} );
ok(!( "\x[98D0]"  ~~ m/^<+isClosePunctuation>$/ ), q{Don't match unrelated <isClosePunctuation>} );
ok("\x[98D0]"  ~~ m/^<!isClosePunctuation>.$/, q{Match unrelated externally inverted <isClosePunctuation>} );
ok("\x[98D0]"  ~~ m/^<-isClosePunctuation>$/, q{Match unrelated internally inverted <isClosePunctuation>} );
ok("\x[98D0]\c[RIGHT PARENTHESIS]" ~~ m/<+isClosePunctuation>/, q{Match unanchored <isClosePunctuation>} );

# Pi          InitialPunctuation


ok("\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<+isPi>$/, q{Match <isPi> (InitialPunctuation)} );
ok("\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<[A]+isPi>$/, q{Match compound <isPi> (InitialPunctuation)} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<!isPi>.$/ ), q{Don't match externally inverted <isPi> (InitialPunctuation)} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<[A]-isPi>$/ ), q{Don't match compound inverted <isPi> (InitialPunctuation)} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<-isPi>$/ ), q{Don't match internally inverted <isPi> (InitialPunctuation)} );
ok(!( "\x[D76F]"  ~~ m/^<+isPi>$/ ), q{Don't match unrelated <isPi> (InitialPunctuation)} );
ok("\x[D76F]"  ~~ m/^<!isPi>.$/, q{Match unrelated externally inverted <isPi> (InitialPunctuation)} );
ok("\x[D76F]"  ~~ m/^<-isPi>$/, q{Match unrelated internally inverted <isPi> (InitialPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<+isPi>$/ ), q{Don't match related <isPi> (InitialPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<-isPi>$/, q{Match related internally inverted <isPi> (InitialPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<!isPi>.$/, q{Match related externally inverted <isPi> (InitialPunctuation)} );
ok("\x[D76F]\c[EXCLAMATION MARK]\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/<+isPi>/, q{Match unanchored <isPi> (InitialPunctuation)} );

ok("\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<+isInitialPunctuation>$/, q{Match <isInitialPunctuation>} );
ok("\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<[A]+isInitialPunctuation>$/, q{Match compound <isInitialPunctuation>} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<!isInitialPunctuation>.$/ ), q{Don't match externally inverted <isInitialPunctuation>} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<[A]-isInitialPunctuation>$/ ), q{Don't match compound inverted <isInitialPunctuation>} );
ok(!( "\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/^<-isInitialPunctuation>$/ ), q{Don't match internally inverted <isInitialPunctuation>} );
ok(!( "\x[C96E]"  ~~ m/^<+isInitialPunctuation>$/ ), q{Don't match unrelated <isInitialPunctuation>} );
ok("\x[C96E]"  ~~ m/^<!isInitialPunctuation>.$/, q{Match unrelated externally inverted <isInitialPunctuation>} );
ok("\x[C96E]"  ~~ m/^<-isInitialPunctuation>$/, q{Match unrelated internally inverted <isInitialPunctuation>} );
ok("\x[C96E]\c[LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]" ~~ m/<+isInitialPunctuation>/, q{Match unanchored <isInitialPunctuation>} );

# Pf          FinalPunctuation


ok("\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<+isPf>$/, q{Match <isPf> (FinalPunctuation)} );
ok("\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<[A]+isPf>$/, q{Match compound <isPf> (FinalPunctuation)} );
ok(!( "\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<!isPf>.$/ ), q{Don't match externally inverted <isPf> (FinalPunctuation)} );
ok(!( "\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<[A]-isPf>$/ ), q{Don't match compound inverted <isPf> (FinalPunctuation)} );
ok(!( "\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<-isPf>$/ ), q{Don't match internally inverted <isPf> (FinalPunctuation)} );
ok(!( "\x[0515]"  ~~ m/^<+isPf>$/ ), q{Don't match unrelated <isPf> (FinalPunctuation)} );
ok("\x[0515]"  ~~ m/^<!isPf>.$/, q{Match unrelated externally inverted <isPf> (FinalPunctuation)} );
ok("\x[0515]"  ~~ m/^<-isPf>$/, q{Match unrelated internally inverted <isPf> (FinalPunctuation)} );
ok(!( "\c[ARMENIAN APOSTROPHE]" ~~ m/^<+isPf>$/ ), q{Don't match related <isPf> (FinalPunctuation)} );
ok("\c[ARMENIAN APOSTROPHE]" ~~ m/^<-isPf>$/, q{Match related internally inverted <isPf> (FinalPunctuation)} );
ok("\c[ARMENIAN APOSTROPHE]" ~~ m/^<!isPf>.$/, q{Match related externally inverted <isPf> (FinalPunctuation)} );
ok("\x[0515]\c[ARMENIAN APOSTROPHE]\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/<+isPf>/, q{Match unanchored <isPf> (FinalPunctuation)} );

ok("\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<+isFinalPunctuation>$/, q{Match <isFinalPunctuation>} );
ok("\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<[A]+isFinalPunctuation>$/, q{Match compound <isFinalPunctuation>} );
ok(!( "\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<!isFinalPunctuation>.$/ ), q{Don't match externally inverted <isFinalPunctuation>} );
ok(!( "\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<[A]-isFinalPunctuation>$/ ), q{Don't match compound inverted <isFinalPunctuation>} );
ok(!( "\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/^<-isFinalPunctuation>$/ ), q{Don't match internally inverted <isFinalPunctuation>} );
ok(!( "\c[MODIFIER LETTER PRIME]"  ~~ m/^<+isFinalPunctuation>$/ ), q{Don't match unrelated <isFinalPunctuation>} );
ok("\c[MODIFIER LETTER PRIME]"  ~~ m/^<!isFinalPunctuation>.$/, q{Match unrelated externally inverted <isFinalPunctuation>} );
ok("\c[MODIFIER LETTER PRIME]"  ~~ m/^<-isFinalPunctuation>$/, q{Match unrelated internally inverted <isFinalPunctuation>} );
ok("\c[MODIFIER LETTER PRIME]\c[RIGHT SINGLE QUOTATION MARK]" ~~ m/<+isFinalPunctuation>/, q{Match unanchored <isFinalPunctuation>} );

# Po          OtherPunctuation


ok("\c[EXCLAMATION MARK]" ~~ m/^<+isPo>$/, q{Match <isPo> (OtherPunctuation)} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<[A]+isPo>$/, q{Match compound <isPo> (OtherPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isPo>.$/ ), q{Don't match externally inverted <isPo> (OtherPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<[A]-isPo>$/ ), q{Don't match compound inverted <isPo> (OtherPunctuation)} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isPo>$/ ), q{Don't match internally inverted <isPo> (OtherPunctuation)} );
ok(!( "\x[A586]"  ~~ m/^<+isPo>$/ ), q{Don't match unrelated <isPo> (OtherPunctuation)} );
ok("\x[A586]"  ~~ m/^<!isPo>.$/, q{Match unrelated externally inverted <isPo> (OtherPunctuation)} );
ok("\x[A586]"  ~~ m/^<-isPo>$/, q{Match unrelated internally inverted <isPo> (OtherPunctuation)} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<+isPo>$/ ), q{Don't match related <isPo> (OtherPunctuation)} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<-isPo>$/, q{Match related internally inverted <isPo> (OtherPunctuation)} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<!isPo>.$/, q{Match related externally inverted <isPo> (OtherPunctuation)} );
ok("\x[A586]\c[LEFT PARENTHESIS]\c[EXCLAMATION MARK]" ~~ m/<+isPo>/, q{Match unanchored <isPo> (OtherPunctuation)} );

ok("\c[EXCLAMATION MARK]" ~~ m/^<+isOtherPunctuation>$/, q{Match <isOtherPunctuation>} );
ok("\c[EXCLAMATION MARK]" ~~ m/^<[A]+isOtherPunctuation>$/, q{Match compound <isOtherPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<!isOtherPunctuation>.$/ ), q{Don't match externally inverted <isOtherPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<[A]-isOtherPunctuation>$/ ), q{Don't match compound inverted <isOtherPunctuation>} );
ok(!( "\c[EXCLAMATION MARK]" ~~ m/^<-isOtherPunctuation>$/ ), q{Don't match internally inverted <isOtherPunctuation>} );
ok(!( "\x[5FBD]"  ~~ m/^<+isOtherPunctuation>$/ ), q{Don't match unrelated <isOtherPunctuation>} );
ok("\x[5FBD]"  ~~ m/^<!isOtherPunctuation>.$/, q{Match unrelated externally inverted <isOtherPunctuation>} );
ok("\x[5FBD]"  ~~ m/^<-isOtherPunctuation>$/, q{Match unrelated internally inverted <isOtherPunctuation>} );
ok("\x[5FBD]\c[EXCLAMATION MARK]" ~~ m/<+isOtherPunctuation>/, q{Match unanchored <isOtherPunctuation>} );

# S           Symbol


ok("\c[GUJARATI RUPEE SIGN]" ~~ m/^<+isS>$/, q{Match <isS> (Symbol)} );
ok("\c[GUJARATI RUPEE SIGN]" ~~ m/^<[A]+isS>$/, q{Match compound <isS> (Symbol)} );
ok(!( "\c[GUJARATI RUPEE SIGN]" ~~ m/^<!isS>.$/ ), q{Don't match externally inverted <isS> (Symbol)} );
ok(!( "\c[GUJARATI RUPEE SIGN]" ~~ m/^<[A]-isS>$/ ), q{Don't match compound inverted <isS> (Symbol)} );
ok(!( "\c[GUJARATI RUPEE SIGN]" ~~ m/^<-isS>$/ ), q{Don't match internally inverted <isS> (Symbol)} );
ok(!( "\c[GURMUKHI SIGN ADAK BINDI]"  ~~ m/^<+isS>$/ ), q{Don't match unrelated <isS> (Symbol)} );
ok("\c[GURMUKHI SIGN ADAK BINDI]"  ~~ m/^<!isS>.$/, q{Match unrelated externally inverted <isS> (Symbol)} );
ok("\c[GURMUKHI SIGN ADAK BINDI]"  ~~ m/^<-isS>$/, q{Match unrelated internally inverted <isS> (Symbol)} );
ok("\c[GURMUKHI SIGN ADAK BINDI]\c[GUJARATI RUPEE SIGN]" ~~ m/<+isS>/, q{Match unanchored <isS> (Symbol)} );

ok("\c[LIMBU SIGN LOO]" ~~ m/^<+isSymbol>$/, q{Match <isSymbol>} );
ok("\c[LIMBU SIGN LOO]" ~~ m/^<[A]+isSymbol>$/, q{Match compound <isSymbol>} );
ok(!( "\c[LIMBU SIGN LOO]" ~~ m/^<!isSymbol>.$/ ), q{Don't match externally inverted <isSymbol>} );
ok(!( "\c[LIMBU SIGN LOO]" ~~ m/^<[A]-isSymbol>$/ ), q{Don't match compound inverted <isSymbol>} );
ok(!( "\c[LIMBU SIGN LOO]" ~~ m/^<-isSymbol>$/ ), q{Don't match internally inverted <isSymbol>} );
ok(!( "\x[192C]"  ~~ m/^<+isSymbol>$/ ), q{Don't match unrelated <isSymbol>} );
ok("\x[192C]"  ~~ m/^<!isSymbol>.$/, q{Match unrelated externally inverted <isSymbol>} );
ok("\x[192C]"  ~~ m/^<-isSymbol>$/, q{Match unrelated internally inverted <isSymbol>} );
ok("\x[192C]\c[LIMBU SIGN LOO]" ~~ m/<+isSymbol>/, q{Match unanchored <isSymbol>} );

# Sm          MathSymbol


ok("\c[PLUS SIGN]" ~~ m/^<+isSm>$/, q{Match <isSm> (MathSymbol)} );
ok("\c[PLUS SIGN]" ~~ m/^<[A]+isSm>$/, q{Match compound <isSm> (MathSymbol)} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<!isSm>.$/ ), q{Don't match externally inverted <isSm> (MathSymbol)} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<[A]-isSm>$/ ), q{Don't match compound inverted <isSm> (MathSymbol)} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<-isSm>$/ ), q{Don't match internally inverted <isSm> (MathSymbol)} );
ok(!( "\x[769B]"  ~~ m/^<+isSm>$/ ), q{Don't match unrelated <isSm> (MathSymbol)} );
ok("\x[769B]"  ~~ m/^<!isSm>.$/, q{Match unrelated externally inverted <isSm> (MathSymbol)} );
ok("\x[769B]"  ~~ m/^<-isSm>$/, q{Match unrelated internally inverted <isSm> (MathSymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<+isSm>$/ ), q{Don't match related <isSm> (MathSymbol)} );
ok("\c[YI RADICAL QOT]" ~~ m/^<-isSm>$/, q{Match related internally inverted <isSm> (MathSymbol)} );
ok("\c[YI RADICAL QOT]" ~~ m/^<!isSm>.$/, q{Match related externally inverted <isSm> (MathSymbol)} );
ok("\x[769B]\c[YI RADICAL QOT]\c[PLUS SIGN]" ~~ m/<+isSm>/, q{Match unanchored <isSm> (MathSymbol)} );

ok("\c[FRACTION SLASH]" ~~ m/^<+isMathSymbol>$/, q{Match <isMathSymbol>} );
ok("\c[FRACTION SLASH]" ~~ m/^<[A]+isMathSymbol>$/, q{Match compound <isMathSymbol>} );
ok(!( "\c[FRACTION SLASH]" ~~ m/^<!isMathSymbol>.$/ ), q{Don't match externally inverted <isMathSymbol>} );
ok(!( "\c[FRACTION SLASH]" ~~ m/^<[A]-isMathSymbol>$/ ), q{Don't match compound inverted <isMathSymbol>} );
ok(!( "\c[FRACTION SLASH]" ~~ m/^<-isMathSymbol>$/ ), q{Don't match internally inverted <isMathSymbol>} );
ok(!( "\c[GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI]"  ~~ m/^<+isMathSymbol>$/ ), q{Don't match unrelated <isMathSymbol>} );
ok("\c[GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI]"  ~~ m/^<!isMathSymbol>.$/, q{Match unrelated externally inverted <isMathSymbol>} );
ok("\c[GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI]"  ~~ m/^<-isMathSymbol>$/, q{Match unrelated internally inverted <isMathSymbol>} );
ok(!( "\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<+isMathSymbol>$/ ), q{Don't match related <isMathSymbol>} );
ok("\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<-isMathSymbol>$/, q{Match related internally inverted <isMathSymbol>} );
ok("\c[COMBINING LEFT HARPOON ABOVE]" ~~ m/^<!isMathSymbol>.$/, q{Match related externally inverted <isMathSymbol>} );
ok("\c[GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI]\c[COMBINING LEFT HARPOON ABOVE]\c[FRACTION SLASH]" ~~ m/<+isMathSymbol>/, q{Match unanchored <isMathSymbol>} );

# Sc          CurrencySymbol


ok("\c[DOLLAR SIGN]" ~~ m/^<+isSc>$/, q{Match <isSc> (CurrencySymbol)} );
ok("\c[DOLLAR SIGN]" ~~ m/^<[A]+isSc>$/, q{Match compound <isSc> (CurrencySymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<!isSc>.$/ ), q{Don't match externally inverted <isSc> (CurrencySymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<[A]-isSc>$/ ), q{Don't match compound inverted <isSc> (CurrencySymbol)} );
ok(!( "\c[DOLLAR SIGN]" ~~ m/^<-isSc>$/ ), q{Don't match internally inverted <isSc> (CurrencySymbol)} );
ok(!( "\x[B6B4]"  ~~ m/^<+isSc>$/ ), q{Don't match unrelated <isSc> (CurrencySymbol)} );
ok("\x[B6B4]"  ~~ m/^<!isSc>.$/, q{Match unrelated externally inverted <isSc> (CurrencySymbol)} );
ok("\x[B6B4]"  ~~ m/^<-isSc>$/, q{Match unrelated internally inverted <isSc> (CurrencySymbol)} );
ok(!( "\c[PLUS SIGN]" ~~ m/^<+isSc>$/ ), q{Don't match related <isSc> (CurrencySymbol)} );
ok("\c[PLUS SIGN]" ~~ m/^<-isSc>$/, q{Match related internally inverted <isSc> (CurrencySymbol)} );
ok("\c[PLUS SIGN]" ~~ m/^<!isSc>.$/, q{Match related externally inverted <isSc> (CurrencySymbol)} );
ok("\x[B6B4]\c[PLUS SIGN]\c[DOLLAR SIGN]" ~~ m/<+isSc>/, q{Match unanchored <isSc> (CurrencySymbol)} );

ok("\c[EURO-CURRENCY SIGN]" ~~ m/^<+isCurrencySymbol>$/, q{Match <isCurrencySymbol>} );
ok("\c[EURO-CURRENCY SIGN]" ~~ m/^<[A]+isCurrencySymbol>$/, q{Match compound <isCurrencySymbol>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<!isCurrencySymbol>.$/ ), q{Don't match externally inverted <isCurrencySymbol>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<[A]-isCurrencySymbol>$/ ), q{Don't match compound inverted <isCurrencySymbol>} );
ok(!( "\c[EURO-CURRENCY SIGN]" ~~ m/^<-isCurrencySymbol>$/ ), q{Don't match internally inverted <isCurrencySymbol>} );
ok(!( "\x[1CD3]"  ~~ m/^<+isCurrencySymbol>$/ ), q{Don't match unrelated <isCurrencySymbol>} );
ok("\x[1CD3]"  ~~ m/^<!isCurrencySymbol>.$/, q{Match unrelated externally inverted <isCurrencySymbol>} );
ok("\x[1CD3]"  ~~ m/^<-isCurrencySymbol>$/, q{Match unrelated internally inverted <isCurrencySymbol>} );
ok("\x[1CD3]\c[EURO-CURRENCY SIGN]" ~~ m/<+isCurrencySymbol>/, q{Match unanchored <isCurrencySymbol>} );

# Sk          ModifierSymbol


ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<+isSk>$/, q{Match <isSk> (ModifierSymbol)} );
ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<[A]+isSk>$/, q{Match compound <isSk> (ModifierSymbol)} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<!isSk>.$/ ), q{Don't match externally inverted <isSk> (ModifierSymbol)} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<[A]-isSk>$/ ), q{Don't match compound inverted <isSk> (ModifierSymbol)} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<-isSk>$/ ), q{Don't match internally inverted <isSk> (ModifierSymbol)} );
ok(!( "\x[68FA]"  ~~ m/^<+isSk>$/ ), q{Don't match unrelated <isSk> (ModifierSymbol)} );
ok("\x[68FA]"  ~~ m/^<!isSk>.$/, q{Match unrelated externally inverted <isSk> (ModifierSymbol)} );
ok("\x[68FA]"  ~~ m/^<-isSk>$/, q{Match unrelated internally inverted <isSk> (ModifierSymbol)} );
ok(!( "\c[YI RADICAL QOT]" ~~ m/^<+isSk>$/ ), q{Don't match related <isSk> (ModifierSymbol)} );
ok("\c[YI RADICAL QOT]" ~~ m/^<-isSk>$/, q{Match related internally inverted <isSk> (ModifierSymbol)} );
ok("\c[YI RADICAL QOT]" ~~ m/^<!isSk>.$/, q{Match related externally inverted <isSk> (ModifierSymbol)} );
ok("\x[68FA]\c[YI RADICAL QOT]\c[CIRCUMFLEX ACCENT]" ~~ m/<+isSk>/, q{Match unanchored <isSk> (ModifierSymbol)} );

ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<+isModifierSymbol>$/, q{Match <isModifierSymbol>} );
ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<[A]+isModifierSymbol>$/, q{Match compound <isModifierSymbol>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<!isModifierSymbol>.$/ ), q{Don't match externally inverted <isModifierSymbol>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<[A]-isModifierSymbol>$/ ), q{Don't match compound inverted <isModifierSymbol>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<-isModifierSymbol>$/ ), q{Don't match internally inverted <isModifierSymbol>} );
ok(!( "\x[69E7]"  ~~ m/^<+isModifierSymbol>$/ ), q{Don't match unrelated <isModifierSymbol>} );
ok("\x[69E7]"  ~~ m/^<!isModifierSymbol>.$/, q{Match unrelated externally inverted <isModifierSymbol>} );
ok("\x[69E7]"  ~~ m/^<-isModifierSymbol>$/, q{Match unrelated internally inverted <isModifierSymbol>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isModifierSymbol>$/ ), q{Don't match related <isModifierSymbol>} );
