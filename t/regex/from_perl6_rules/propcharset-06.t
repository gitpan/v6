use v6-alpha;
use Test;
plan 182;
force_todo(171, 173, 4, 5);
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<[A]-isTibetan>$/ ), q{Don't match compound inverted <isTibetan>} );
ok(!( "\c[TIBETAN SYLLABLE OM]" ~~ m/^<-isTibetan>$/ ), q{Don't match internally inverted <isTibetan>} );
ok(!( "\x[19C9]"  ~~ m/^<+isTibetan>$/ ), q{Don't match unrelated <isTibetan>} );
ok("\x[19C9]"  ~~ m/^<!isTibetan>.$/, q{Match unrelated externally inverted <isTibetan>} );
ok("\x[19C9]"  ~~ m/^<-isTibetan>$/, q{Match unrelated internally inverted <isTibetan>} );
ok("\x[19C9]\c[TIBETAN SYLLABLE OM]" ~~ m/<+isTibetan>/, q{Match unanchored <isTibetan>} );

# Yi


ok("\c[YI SYLLABLE IT]" ~~ m/^<+isYi>$/, q{Match <isYi>} );
ok("\c[YI SYLLABLE IT]" ~~ m/^<[A]+isYi>$/, q{Match compound <isYi>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<!isYi>.$/ ), q{Don't match externally inverted <isYi>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<[A]-isYi>$/ ), q{Don't match compound inverted <isYi>} );
ok(!( "\c[YI SYLLABLE IT]" ~~ m/^<-isYi>$/ ), q{Don't match internally inverted <isYi>} );
ok(!( "\x[3A38]"  ~~ m/^<+isYi>$/ ), q{Don't match unrelated <isYi>} );
ok("\x[3A38]"  ~~ m/^<!isYi>.$/, q{Match unrelated externally inverted <isYi>} );
ok("\x[3A38]"  ~~ m/^<-isYi>$/, q{Match unrelated internally inverted <isYi>} );
ok("\x[3A38]\c[YI SYLLABLE IT]" ~~ m/<+isYi>/, q{Match unanchored <isYi>} );

# ASCIIHexDigit


ok("\c[DIGIT ZERO]" ~~ m/^<+isASCIIHexDigit>$/, q{Match <isASCIIHexDigit>} );
ok("\c[DIGIT ZERO]" ~~ m/^<[A]+isASCIIHexDigit>$/, q{Match compound <isASCIIHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isASCIIHexDigit>.$/ ), q{Don't match externally inverted <isASCIIHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<[A]-isASCIIHexDigit>$/ ), q{Don't match compound inverted <isASCIIHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isASCIIHexDigit>$/ ), q{Don't match internally inverted <isASCIIHexDigit>} );
ok(!( "\x[55D7]"  ~~ m/^<+isASCIIHexDigit>$/ ), q{Don't match unrelated <isASCIIHexDigit>} );
ok("\x[55D7]"  ~~ m/^<!isASCIIHexDigit>.$/, q{Match unrelated externally inverted <isASCIIHexDigit>} );
ok("\x[55D7]"  ~~ m/^<-isASCIIHexDigit>$/, q{Match unrelated internally inverted <isASCIIHexDigit>} );
ok("\x[55D7]\c[DIGIT ZERO]" ~~ m/<+isASCIIHexDigit>/, q{Match unanchored <isASCIIHexDigit>} );

# Dash


ok("\c[HYPHEN-MINUS]" ~~ m/^<+isDash>$/, q{Match <isDash>} );
ok("\c[HYPHEN-MINUS]" ~~ m/^<[A]+isDash>$/, q{Match compound <isDash>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<!isDash>.$/ ), q{Don't match externally inverted <isDash>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<[A]-isDash>$/ ), q{Don't match compound inverted <isDash>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<-isDash>$/ ), q{Don't match internally inverted <isDash>} );
ok(!( "\x[4C7F]"  ~~ m/^<+isDash>$/ ), q{Don't match unrelated <isDash>} );
ok("\x[4C7F]"  ~~ m/^<!isDash>.$/, q{Match unrelated externally inverted <isDash>} );
ok("\x[4C7F]"  ~~ m/^<-isDash>$/, q{Match unrelated internally inverted <isDash>} );
ok("\x[4C7F]\c[HYPHEN-MINUS]" ~~ m/<+isDash>/, q{Match unanchored <isDash>} );

# Diacritic


ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<+isDiacritic>$/, q{Match <isDiacritic>} );
ok("\c[CIRCUMFLEX ACCENT]" ~~ m/^<[A]+isDiacritic>$/, q{Match compound <isDiacritic>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<!isDiacritic>.$/ ), q{Don't match externally inverted <isDiacritic>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<[A]-isDiacritic>$/ ), q{Don't match compound inverted <isDiacritic>} );
ok(!( "\c[CIRCUMFLEX ACCENT]" ~~ m/^<-isDiacritic>$/ ), q{Don't match internally inverted <isDiacritic>} );
ok(!( "\x[398E]"  ~~ m/^<+isDiacritic>$/ ), q{Don't match unrelated <isDiacritic>} );
ok("\x[398E]"  ~~ m/^<!isDiacritic>.$/, q{Match unrelated externally inverted <isDiacritic>} );
ok("\x[398E]"  ~~ m/^<-isDiacritic>$/, q{Match unrelated internally inverted <isDiacritic>} );
ok("\x[398E]\c[CIRCUMFLEX ACCENT]" ~~ m/<+isDiacritic>/, q{Match unanchored <isDiacritic>} );

# Extender


ok("\c[MIDDLE DOT]" ~~ m/^<+isExtender>$/, q{Match <isExtender>} );
ok("\c[MIDDLE DOT]" ~~ m/^<[A]+isExtender>$/, q{Match compound <isExtender>} );
ok(!( "\c[MIDDLE DOT]" ~~ m/^<!isExtender>.$/ ), q{Don't match externally inverted <isExtender>} );
ok(!( "\c[MIDDLE DOT]" ~~ m/^<[A]-isExtender>$/ ), q{Don't match compound inverted <isExtender>} );
ok(!( "\c[MIDDLE DOT]" ~~ m/^<-isExtender>$/ ), q{Don't match internally inverted <isExtender>} );
ok(!( "\x[3F66]"  ~~ m/^<+isExtender>$/ ), q{Don't match unrelated <isExtender>} );
ok("\x[3F66]"  ~~ m/^<!isExtender>.$/, q{Match unrelated externally inverted <isExtender>} );
ok("\x[3F66]"  ~~ m/^<-isExtender>$/, q{Match unrelated internally inverted <isExtender>} );
ok("\x[3F66]\c[MIDDLE DOT]" ~~ m/<+isExtender>/, q{Match unanchored <isExtender>} );

# GraphemeLink


ok("\c[COMBINING GRAPHEME JOINER]" ~~ m/^<+isGraphemeLink>$/, q{Match <isGraphemeLink>} );
ok("\c[COMBINING GRAPHEME JOINER]" ~~ m/^<[A]+isGraphemeLink>$/, q{Match compound <isGraphemeLink>} );
ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<!isGraphemeLink>.$/ ), q{Don't match externally inverted <isGraphemeLink>} );
ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<[A]-isGraphemeLink>$/ ), q{Don't match compound inverted <isGraphemeLink>} );
ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<-isGraphemeLink>$/ ), q{Don't match internally inverted <isGraphemeLink>} );
ok(!( "\x[34DA]"  ~~ m/^<+isGraphemeLink>$/ ), q{Don't match unrelated <isGraphemeLink>} );
ok("\x[34DA]"  ~~ m/^<!isGraphemeLink>.$/, q{Match unrelated externally inverted <isGraphemeLink>} );
ok("\x[34DA]"  ~~ m/^<-isGraphemeLink>$/, q{Match unrelated internally inverted <isGraphemeLink>} );
ok("\x[34DA]\c[COMBINING GRAPHEME JOINER]" ~~ m/<+isGraphemeLink>/, q{Match unanchored <isGraphemeLink>} );

# HexDigit


ok("\c[DIGIT ZERO]" ~~ m/^<+isHexDigit>$/, q{Match <isHexDigit>} );
ok("\c[DIGIT ZERO]" ~~ m/^<[A]+isHexDigit>$/, q{Match compound <isHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isHexDigit>.$/ ), q{Don't match externally inverted <isHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<[A]-isHexDigit>$/ ), q{Don't match compound inverted <isHexDigit>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isHexDigit>$/ ), q{Don't match internally inverted <isHexDigit>} );
ok(!( "\x[D446]"  ~~ m/^<+isHexDigit>$/ ), q{Don't match unrelated <isHexDigit>} );
ok("\x[D446]"  ~~ m/^<!isHexDigit>.$/, q{Match unrelated externally inverted <isHexDigit>} );
ok("\x[D446]"  ~~ m/^<-isHexDigit>$/, q{Match unrelated internally inverted <isHexDigit>} );
ok("\x[D446]\c[DIGIT ZERO]" ~~ m/<+isHexDigit>/, q{Match unanchored <isHexDigit>} );

# Hyphen


ok("\c[HYPHEN-MINUS]" ~~ m/^<+isHyphen>$/, q{Match <isHyphen>} );
ok("\c[HYPHEN-MINUS]" ~~ m/^<[A]+isHyphen>$/, q{Match compound <isHyphen>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<!isHyphen>.$/ ), q{Don't match externally inverted <isHyphen>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<[A]-isHyphen>$/ ), q{Don't match compound inverted <isHyphen>} );
ok(!( "\c[HYPHEN-MINUS]" ~~ m/^<-isHyphen>$/ ), q{Don't match internally inverted <isHyphen>} );
ok(!( "\c[YI SYLLABLE WOX]"  ~~ m/^<+isHyphen>$/ ), q{Don't match unrelated <isHyphen>} );
ok("\c[YI SYLLABLE WOX]"  ~~ m/^<!isHyphen>.$/, q{Match unrelated externally inverted <isHyphen>} );
ok("\c[YI SYLLABLE WOX]"  ~~ m/^<-isHyphen>$/, q{Match unrelated internally inverted <isHyphen>} );
ok("\c[YI SYLLABLE WOX]\c[HYPHEN-MINUS]" ~~ m/<+isHyphen>/, q{Match unanchored <isHyphen>} );

# Ideographic


ok("\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<+isIdeographic>$/, q{Match <isIdeographic>} );
ok("\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<[A]+isIdeographic>$/, q{Match compound <isIdeographic>} );
ok(!( "\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<!isIdeographic>.$/ ), q{Don't match externally inverted <isIdeographic>} );
ok(!( "\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<[A]-isIdeographic>$/ ), q{Don't match compound inverted <isIdeographic>} );
ok(!( "\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<-isIdeographic>$/ ), q{Don't match internally inverted <isIdeographic>} );
ok(!( "\x[CB86]"  ~~ m/^<+isIdeographic>$/ ), q{Don't match unrelated <isIdeographic>} );
ok("\x[CB86]"  ~~ m/^<!isIdeographic>.$/, q{Match unrelated externally inverted <isIdeographic>} );
ok("\x[CB86]"  ~~ m/^<-isIdeographic>$/, q{Match unrelated internally inverted <isIdeographic>} );
ok("\x[CB86]\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/<+isIdeographic>/, q{Match unanchored <isIdeographic>} );

# IDSBinaryOperator


ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<+isIDSBinaryOperator>$/, q{Match <isIDSBinaryOperator>} );
ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<[A]+isIDSBinaryOperator>$/, q{Match compound <isIDSBinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<!isIDSBinaryOperator>.$/ ), q{Don't match externally inverted <isIDSBinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<[A]-isIDSBinaryOperator>$/ ), q{Don't match compound inverted <isIDSBinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<-isIDSBinaryOperator>$/ ), q{Don't match internally inverted <isIDSBinaryOperator>} );
ok(!( "\x[54A0]"  ~~ m/^<+isIDSBinaryOperator>$/ ), q{Don't match unrelated <isIDSBinaryOperator>} );
ok("\x[54A0]"  ~~ m/^<!isIDSBinaryOperator>.$/, q{Match unrelated externally inverted <isIDSBinaryOperator>} );
ok("\x[54A0]"  ~~ m/^<-isIDSBinaryOperator>$/, q{Match unrelated internally inverted <isIDSBinaryOperator>} );
ok("\x[54A0]\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/<+isIDSBinaryOperator>/, q{Match unanchored <isIDSBinaryOperator>} );

# IDSTrinaryOperator


ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<+isIDSTrinaryOperator>$/, q{Match <isIDSTrinaryOperator>} );
ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<[A]+isIDSTrinaryOperator>$/, q{Match compound <isIDSTrinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<!isIDSTrinaryOperator>.$/ ), q{Don't match externally inverted <isIDSTrinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<[A]-isIDSTrinaryOperator>$/ ), q{Don't match compound inverted <isIDSTrinaryOperator>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/^<-isIDSTrinaryOperator>$/ ), q{Don't match internally inverted <isIDSTrinaryOperator>} );
ok(!( "\x[4900]"  ~~ m/^<+isIDSTrinaryOperator>$/ ), q{Don't match unrelated <isIDSTrinaryOperator>} );
ok("\x[4900]"  ~~ m/^<!isIDSTrinaryOperator>.$/, q{Match unrelated externally inverted <isIDSTrinaryOperator>} );
ok("\x[4900]"  ~~ m/^<-isIDSTrinaryOperator>$/, q{Match unrelated internally inverted <isIDSTrinaryOperator>} );
ok("\x[4900]\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO MIDDLE AND RIGHT]" ~~ m/<+isIDSTrinaryOperator>/, q{Match unanchored <isIDSTrinaryOperator>} );

# JoinControl


ok("\c[ZERO WIDTH NON-JOINER]" ~~ m/^<+isJoinControl>$/, q{Match <isJoinControl>} );
ok("\c[ZERO WIDTH NON-JOINER]" ~~ m/^<[A]+isJoinControl>$/, q{Match compound <isJoinControl>} );
ok(!( "\c[ZERO WIDTH NON-JOINER]" ~~ m/^<!isJoinControl>.$/ ), q{Don't match externally inverted <isJoinControl>} );
ok(!( "\c[ZERO WIDTH NON-JOINER]" ~~ m/^<[A]-isJoinControl>$/ ), q{Don't match compound inverted <isJoinControl>} );
ok(!( "\c[ZERO WIDTH NON-JOINER]" ~~ m/^<-isJoinControl>$/ ), q{Don't match internally inverted <isJoinControl>} );
ok(!( "\c[CYRILLIC CAPITAL LETTER OT]"  ~~ m/^<+isJoinControl>$/ ), q{Don't match unrelated <isJoinControl>} );
ok("\c[CYRILLIC CAPITAL LETTER OT]"  ~~ m/^<!isJoinControl>.$/, q{Match unrelated externally inverted <isJoinControl>} );
ok("\c[CYRILLIC CAPITAL LETTER OT]"  ~~ m/^<-isJoinControl>$/, q{Match unrelated internally inverted <isJoinControl>} );
ok("\c[CYRILLIC CAPITAL LETTER OT]\c[ZERO WIDTH NON-JOINER]" ~~ m/<+isJoinControl>/, q{Match unanchored <isJoinControl>} );

# LogicalOrderException


ok("\c[THAI CHARACTER SARA E]" ~~ m/^<+isLogicalOrderException>$/, q{Match <isLogicalOrderException>} );
ok("\c[THAI CHARACTER SARA E]" ~~ m/^<[A]+isLogicalOrderException>$/, q{Match compound <isLogicalOrderException>} );
ok(!( "\c[THAI CHARACTER SARA E]" ~~ m/^<!isLogicalOrderException>.$/ ), q{Don't match externally inverted <isLogicalOrderException>} );
ok(!( "\c[THAI CHARACTER SARA E]" ~~ m/^<[A]-isLogicalOrderException>$/ ), q{Don't match compound inverted <isLogicalOrderException>} );
ok(!( "\c[THAI CHARACTER SARA E]" ~~ m/^<-isLogicalOrderException>$/ ), q{Don't match internally inverted <isLogicalOrderException>} );
ok(!( "\x[88D2]"  ~~ m/^<+isLogicalOrderException>$/ ), q{Don't match unrelated <isLogicalOrderException>} );
ok("\x[88D2]"  ~~ m/^<!isLogicalOrderException>.$/, q{Match unrelated externally inverted <isLogicalOrderException>} );
ok("\x[88D2]"  ~~ m/^<-isLogicalOrderException>$/, q{Match unrelated internally inverted <isLogicalOrderException>} );
ok(!( "\x[88D2]" ~~ m/^<+isLogicalOrderException>$/ ), q{Don't match related <isLogicalOrderException>} );
ok("\x[88D2]" ~~ m/^<-isLogicalOrderException>$/, q{Match related internally inverted <isLogicalOrderException>} );
ok("\x[88D2]" ~~ m/^<!isLogicalOrderException>.$/, q{Match related externally inverted <isLogicalOrderException>} );
ok("\x[88D2]\x[88D2]\c[THAI CHARACTER SARA E]" ~~ m/<+isLogicalOrderException>/, q{Match unanchored <isLogicalOrderException>} );

# NoncharacterCodePoint


ok(!( "\c[CIRCLED HANGUL NIEUN A]"  ~~ m/^<+isNoncharacterCodePoint>$/ ), q{Don't match unrelated <isNoncharacterCodePoint>} );
ok("\c[CIRCLED HANGUL NIEUN A]"  ~~ m/^<!isNoncharacterCodePoint>.$/, q{Match unrelated externally inverted <isNoncharacterCodePoint>} );
ok("\c[CIRCLED HANGUL NIEUN A]"  ~~ m/^<-isNoncharacterCodePoint>$/, q{Match unrelated internally inverted <isNoncharacterCodePoint>} );
ok(!( "\c[CIRCLED IDEOGRAPH ONE]" ~~ m/^<+isNoncharacterCodePoint>$/ ), q{Don't match related <isNoncharacterCodePoint>} );
ok("\c[CIRCLED IDEOGRAPH ONE]" ~~ m/^<-isNoncharacterCodePoint>$/, q{Match related internally inverted <isNoncharacterCodePoint>} );
ok("\c[CIRCLED IDEOGRAPH ONE]" ~~ m/^<!isNoncharacterCodePoint>.$/, q{Match related externally inverted <isNoncharacterCodePoint>} );

# OtherAlphabetic


ok("\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<+isOtherAlphabetic>$/, q{Match <isOtherAlphabetic>} );
ok("\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<[A]+isOtherAlphabetic>$/, q{Match compound <isOtherAlphabetic>} );
ok(!( "\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<!isOtherAlphabetic>.$/ ), q{Don't match externally inverted <isOtherAlphabetic>} );
ok(!( "\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<[A]-isOtherAlphabetic>$/ ), q{Don't match compound inverted <isOtherAlphabetic>} );
ok(!( "\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/^<-isOtherAlphabetic>$/ ), q{Don't match internally inverted <isOtherAlphabetic>} );
ok(!( "\x[7B02]"  ~~ m/^<+isOtherAlphabetic>$/ ), q{Don't match unrelated <isOtherAlphabetic>} );
ok("\x[7B02]"  ~~ m/^<!isOtherAlphabetic>.$/, q{Match unrelated externally inverted <isOtherAlphabetic>} );
ok("\x[7B02]"  ~~ m/^<-isOtherAlphabetic>$/, q{Match unrelated internally inverted <isOtherAlphabetic>} );
ok("\x[7B02]\c[COMBINING GREEK YPOGEGRAMMENI]" ~~ m/<+isOtherAlphabetic>/, q{Match unanchored <isOtherAlphabetic>} );

# OtherDefaultIgnorableCodePoint


ok("\c[COMBINING GRAPHEME JOINER]" ~~ m/^<+isOtherDefaultIgnorableCodePoint>$/, q{Match <isOtherDefaultIgnorableCodePoint>} );
ok("\c[COMBINING GRAPHEME JOINER]" ~~ m/^<[A]+isOtherDefaultIgnorableCodePoint>$/, q{Match compound <isOtherDefaultIgnorableCodePoint>} );
ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<!isOtherDefaultIgnorableCodePoint>.$/ ), q{Don't match externally inverted <isOtherDefaultIgnorableCodePoint>} );
ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<[A]-isOtherDefaultIgnorableCodePoint>$/ ), q{Don't match compound inverted <isOtherDefaultIgnorableCodePoint>} );
ok(!( "\c[COMBINING GRAPHEME JOINER]" ~~ m/^<-isOtherDefaultIgnorableCodePoint>$/ ), q{Don't match internally inverted <isOtherDefaultIgnorableCodePoint>} );
ok(!( "\x[42DA]"  ~~ m/^<+isOtherDefaultIgnorableCodePoint>$/ ), q{Don't match unrelated <isOtherDefaultIgnorableCodePoint>} );
ok("\x[42DA]"  ~~ m/^<!isOtherDefaultIgnorableCodePoint>.$/, q{Match unrelated externally inverted <isOtherDefaultIgnorableCodePoint>} );
ok("\x[42DA]"  ~~ m/^<-isOtherDefaultIgnorableCodePoint>$/, q{Match unrelated internally inverted <isOtherDefaultIgnorableCodePoint>} );
ok("\x[42DA]\c[COMBINING GRAPHEME JOINER]" ~~ m/<+isOtherDefaultIgnorableCodePoint>/, q{Match unanchored <isOtherDefaultIgnorableCodePoint>} );

# OtherGraphemeExtend


ok("\c[BENGALI VOWEL SIGN AA]" ~~ m/^<+isOtherGraphemeExtend>$/, q{Match <isOtherGraphemeExtend>} );
ok("\c[BENGALI VOWEL SIGN AA]" ~~ m/^<[A]+isOtherGraphemeExtend>$/, q{Match compound <isOtherGraphemeExtend>} );
ok(!( "\c[BENGALI VOWEL SIGN AA]" ~~ m/^<!isOtherGraphemeExtend>.$/ ), q{Don't match externally inverted <isOtherGraphemeExtend>} );
ok(!( "\c[BENGALI VOWEL SIGN AA]" ~~ m/^<[A]-isOtherGraphemeExtend>$/ ), q{Don't match compound inverted <isOtherGraphemeExtend>} );
ok(!( "\c[BENGALI VOWEL SIGN AA]" ~~ m/^<-isOtherGraphemeExtend>$/ ), q{Don't match internally inverted <isOtherGraphemeExtend>} );
ok(!( "\c[TAI LE LETTER KHA]"  ~~ m/^<+isOtherGraphemeExtend>$/ ), q{Don't match unrelated <isOtherGraphemeExtend>} );
ok("\c[TAI LE LETTER KHA]"  ~~ m/^<!isOtherGraphemeExtend>.$/, q{Match unrelated externally inverted <isOtherGraphemeExtend>} );
ok("\c[TAI LE LETTER KHA]"  ~~ m/^<-isOtherGraphemeExtend>$/, q{Match unrelated internally inverted <isOtherGraphemeExtend>} );
ok("\c[TAI LE LETTER KHA]\c[BENGALI VOWEL SIGN AA]" ~~ m/<+isOtherGraphemeExtend>/, q{Match unanchored <isOtherGraphemeExtend>} );

# OtherLowercase


ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<+isOtherLowercase>$/, q{Match <isOtherLowercase>} );
ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]+isOtherLowercase>$/, q{Match compound <isOtherLowercase>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<!isOtherLowercase>.$/ ), q{Don't match externally inverted <isOtherLowercase>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]-isOtherLowercase>$/ ), q{Don't match compound inverted <isOtherLowercase>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<-isOtherLowercase>$/ ), q{Don't match internally inverted <isOtherLowercase>} );
ok(!( "\x[8153]"  ~~ m/^<+isOtherLowercase>$/ ), q{Don't match unrelated <isOtherLowercase>} );
ok("\x[8153]"  ~~ m/^<!isOtherLowercase>.$/, q{Match unrelated externally inverted <isOtherLowercase>} );
ok("\x[8153]"  ~~ m/^<-isOtherLowercase>$/, q{Match unrelated internally inverted <isOtherLowercase>} );
ok("\x[8153]\c[MODIFIER LETTER SMALL H]" ~~ m/<+isOtherLowercase>/, q{Match unanchored <isOtherLowercase>} );

# OtherMath


ok("\c[LEFT PARENTHESIS]" ~~ m/^<+isOtherMath>$/, q{Match <isOtherMath>} );
ok("\c[LEFT PARENTHESIS]" ~~ m/^<[A]+isOtherMath>$/, q{Match compound <isOtherMath>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<!isOtherMath>.$/ ), q{Don't match externally inverted <isOtherMath>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<[A]-isOtherMath>$/ ), q{Don't match compound inverted <isOtherMath>} );
ok(!( "\c[LEFT PARENTHESIS]" ~~ m/^<-isOtherMath>$/ ), q{Don't match internally inverted <isOtherMath>} );
ok(!( "\x[6D2F]"  ~~ m/^<+isOtherMath>$/ ), q{Don't match unrelated <isOtherMath>} );
ok("\x[6D2F]"  ~~ m/^<!isOtherMath>.$/, q{Match unrelated externally inverted <isOtherMath>} );
ok("\x[6D2F]"  ~~ m/^<-isOtherMath>$/, q{Match unrelated internally inverted <isOtherMath>} );
ok("\x[6D2F]\c[LEFT PARENTHESIS]" ~~ m/<+isOtherMath>/, q{Match unanchored <isOtherMath>} );

# OtherUppercase


ok("\c[ROMAN NUMERAL ONE]" ~~ m/^<+isOtherUppercase>$/, q{Match <isOtherUppercase>} );
ok("\c[ROMAN NUMERAL ONE]" ~~ m/^<[A]+isOtherUppercase>$/, q{Match compound <isOtherUppercase>} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<!isOtherUppercase>.$/ ), q{Don't match externally inverted <isOtherUppercase>} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<[A]-isOtherUppercase>$/ ), q{Don't match compound inverted <isOtherUppercase>} );
ok(!( "\c[ROMAN NUMERAL ONE]" ~~ m/^<-isOtherUppercase>$/ ), q{Don't match internally inverted <isOtherUppercase>} );
