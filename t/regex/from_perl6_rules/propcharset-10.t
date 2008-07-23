use v6-alpha;
use Test;
plan 173;
ok("\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<[A]+isInHangulJamo>$/, q{Match compound <isInHangulJamo>} );
ok(!( "\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<!isInHangulJamo>.$/ ), q{Don't match externally inverted <isInHangulJamo>} );
ok(!( "\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<[A]-isInHangulJamo>$/ ), q{Don't match compound inverted <isInHangulJamo>} );
ok(!( "\c[HANGUL CHOSEONG KIYEOK]" ~~ m/^<-isInHangulJamo>$/ ), q{Don't match internally inverted <isInHangulJamo>} );
ok(!( "\x[4EB3]"  ~~ m/^<+isInHangulJamo>$/ ), q{Don't match unrelated <isInHangulJamo>} );
ok("\x[4EB3]"  ~~ m/^<!isInHangulJamo>.$/, q{Match unrelated externally inverted <isInHangulJamo>} );
ok("\x[4EB3]"  ~~ m/^<-isInHangulJamo>$/, q{Match unrelated internally inverted <isInHangulJamo>} );
ok("\x[4EB3]\c[HANGUL CHOSEONG KIYEOK]" ~~ m/<+isInHangulJamo>/, q{Match unanchored <isInHangulJamo>} );

# InHangulSyllables


ok("\x[AC00]" ~~ m/^<+isInHangulSyllables>$/, q{Match <isInHangulSyllables>} );
ok("\x[AC00]" ~~ m/^<[A]+isInHangulSyllables>$/, q{Match compound <isInHangulSyllables>} );
ok(!( "\x[AC00]" ~~ m/^<!isInHangulSyllables>.$/ ), q{Don't match externally inverted <isInHangulSyllables>} );
ok(!( "\x[AC00]" ~~ m/^<[A]-isInHangulSyllables>$/ ), q{Don't match compound inverted <isInHangulSyllables>} );
ok(!( "\x[AC00]" ~~ m/^<-isInHangulSyllables>$/ ), q{Don't match internally inverted <isInHangulSyllables>} );
ok(!( "\x[7D7E]"  ~~ m/^<+isInHangulSyllables>$/ ), q{Don't match unrelated <isInHangulSyllables>} );
ok("\x[7D7E]"  ~~ m/^<!isInHangulSyllables>.$/, q{Match unrelated externally inverted <isInHangulSyllables>} );
ok("\x[7D7E]"  ~~ m/^<-isInHangulSyllables>$/, q{Match unrelated internally inverted <isInHangulSyllables>} );
ok("\x[7D7E]\x[AC00]" ~~ m/<+isInHangulSyllables>/, q{Match unanchored <isInHangulSyllables>} );

# InHanunoo


ok("\c[HANUNOO LETTER A]" ~~ m/^<+isInHanunoo>$/, q{Match <isInHanunoo>} );
ok("\c[HANUNOO LETTER A]" ~~ m/^<[A]+isInHanunoo>$/, q{Match compound <isInHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<!isInHanunoo>.$/ ), q{Don't match externally inverted <isInHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<[A]-isInHanunoo>$/ ), q{Don't match compound inverted <isInHanunoo>} );
ok(!( "\c[HANUNOO LETTER A]" ~~ m/^<-isInHanunoo>$/ ), q{Don't match internally inverted <isInHanunoo>} );
ok(!( "\x[BD8A]"  ~~ m/^<+isInHanunoo>$/ ), q{Don't match unrelated <isInHanunoo>} );
ok("\x[BD8A]"  ~~ m/^<!isInHanunoo>.$/, q{Match unrelated externally inverted <isInHanunoo>} );
ok("\x[BD8A]"  ~~ m/^<-isInHanunoo>$/, q{Match unrelated internally inverted <isInHanunoo>} );
ok("\x[BD8A]\c[HANUNOO LETTER A]" ~~ m/<+isInHanunoo>/, q{Match unanchored <isInHanunoo>} );

# InHebrew


ok("\x[0590]" ~~ m/^<+isInHebrew>$/, q{Match <isInHebrew>} );
ok("\x[0590]" ~~ m/^<[A]+isInHebrew>$/, q{Match compound <isInHebrew>} );
ok(!( "\x[0590]" ~~ m/^<!isInHebrew>.$/ ), q{Don't match externally inverted <isInHebrew>} );
ok(!( "\x[0590]" ~~ m/^<[A]-isInHebrew>$/ ), q{Don't match compound inverted <isInHebrew>} );
ok(!( "\x[0590]" ~~ m/^<-isInHebrew>$/ ), q{Don't match internally inverted <isInHebrew>} );
ok(!( "\x[7EB3]"  ~~ m/^<+isInHebrew>$/ ), q{Don't match unrelated <isInHebrew>} );
ok("\x[7EB3]"  ~~ m/^<!isInHebrew>.$/, q{Match unrelated externally inverted <isInHebrew>} );
ok("\x[7EB3]"  ~~ m/^<-isInHebrew>$/, q{Match unrelated internally inverted <isInHebrew>} );
ok("\x[7EB3]\x[0590]" ~~ m/<+isInHebrew>/, q{Match unanchored <isInHebrew>} );

# InHighPrivateUseSurrogates


ok(!( "\x[9EC6]"  ~~ m/^<+isInHighPrivateUseSurrogates>$/ ), q{Don't match unrelated <isInHighPrivateUseSurrogates>} );
ok("\x[9EC6]"  ~~ m/^<!isInHighPrivateUseSurrogates>.$/, q{Match unrelated externally inverted <isInHighPrivateUseSurrogates>} );
ok("\x[9EC6]"  ~~ m/^<-isInHighPrivateUseSurrogates>$/, q{Match unrelated internally inverted <isInHighPrivateUseSurrogates>} );

# InHighSurrogates


ok(!( "\x[BC8F]"  ~~ m/^<+isInHighSurrogates>$/ ), q{Don't match unrelated <isInHighSurrogates>} );
ok("\x[BC8F]"  ~~ m/^<!isInHighSurrogates>.$/, q{Match unrelated externally inverted <isInHighSurrogates>} );
ok("\x[BC8F]"  ~~ m/^<-isInHighSurrogates>$/, q{Match unrelated internally inverted <isInHighSurrogates>} );

# InHiragana


ok("\x[3040]" ~~ m/^<+isInHiragana>$/, q{Match <isInHiragana>} );
ok("\x[3040]" ~~ m/^<[A]+isInHiragana>$/, q{Match compound <isInHiragana>} );
ok(!( "\x[3040]" ~~ m/^<!isInHiragana>.$/ ), q{Don't match externally inverted <isInHiragana>} );
ok(!( "\x[3040]" ~~ m/^<[A]-isInHiragana>$/ ), q{Don't match compound inverted <isInHiragana>} );
ok(!( "\x[3040]" ~~ m/^<-isInHiragana>$/ ), q{Don't match internally inverted <isInHiragana>} );
ok(!( "\c[ARABIC SIGN ALAYHE ASSALLAM]"  ~~ m/^<+isInHiragana>$/ ), q{Don't match unrelated <isInHiragana>} );
ok("\c[ARABIC SIGN ALAYHE ASSALLAM]"  ~~ m/^<!isInHiragana>.$/, q{Match unrelated externally inverted <isInHiragana>} );
ok("\c[ARABIC SIGN ALAYHE ASSALLAM]"  ~~ m/^<-isInHiragana>$/, q{Match unrelated internally inverted <isInHiragana>} );
ok("\c[ARABIC SIGN ALAYHE ASSALLAM]\x[3040]" ~~ m/<+isInHiragana>/, q{Match unanchored <isInHiragana>} );

# InIPAExtensions


ok("\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<+isInIPAExtensions>$/, q{Match <isInIPAExtensions>} );
ok("\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<[A]+isInIPAExtensions>$/, q{Match compound <isInIPAExtensions>} );
ok(!( "\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<!isInIPAExtensions>.$/ ), q{Don't match externally inverted <isInIPAExtensions>} );
ok(!( "\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<[A]-isInIPAExtensions>$/ ), q{Don't match compound inverted <isInIPAExtensions>} );
ok(!( "\c[LATIN SMALL LETTER TURNED A]" ~~ m/^<-isInIPAExtensions>$/ ), q{Don't match internally inverted <isInIPAExtensions>} );
ok(!( "\x[0DFC]"  ~~ m/^<+isInIPAExtensions>$/ ), q{Don't match unrelated <isInIPAExtensions>} );
ok("\x[0DFC]"  ~~ m/^<!isInIPAExtensions>.$/, q{Match unrelated externally inverted <isInIPAExtensions>} );
ok("\x[0DFC]"  ~~ m/^<-isInIPAExtensions>$/, q{Match unrelated internally inverted <isInIPAExtensions>} );
ok("\x[0DFC]\c[LATIN SMALL LETTER TURNED A]" ~~ m/<+isInIPAExtensions>/, q{Match unanchored <isInIPAExtensions>} );

# InIdeographicDescriptionCharacters


ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<+isInIdeographicDescriptionCharacters>$/, q{Match <isInIdeographicDescriptionCharacters>} );
ok("\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<[A]+isInIdeographicDescriptionCharacters>$/, q{Match compound <isInIdeographicDescriptionCharacters>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<!isInIdeographicDescriptionCharacters>.$/ ), q{Don't match externally inverted <isInIdeographicDescriptionCharacters>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<[A]-isInIdeographicDescriptionCharacters>$/ ), q{Don't match compound inverted <isInIdeographicDescriptionCharacters>} );
ok(!( "\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/^<-isInIdeographicDescriptionCharacters>$/ ), q{Don't match internally inverted <isInIdeographicDescriptionCharacters>} );
ok(!( "\c[LATIN CAPITAL LETTER AE]"  ~~ m/^<+isInIdeographicDescriptionCharacters>$/ ), q{Don't match unrelated <isInIdeographicDescriptionCharacters>} );
ok("\c[LATIN CAPITAL LETTER AE]"  ~~ m/^<!isInIdeographicDescriptionCharacters>.$/, q{Match unrelated externally inverted <isInIdeographicDescriptionCharacters>} );
ok("\c[LATIN CAPITAL LETTER AE]"  ~~ m/^<-isInIdeographicDescriptionCharacters>$/, q{Match unrelated internally inverted <isInIdeographicDescriptionCharacters>} );
ok("\c[LATIN CAPITAL LETTER AE]\c[IDEOGRAPHIC DESCRIPTION CHARACTER LEFT TO RIGHT]" ~~ m/<+isInIdeographicDescriptionCharacters>/, q{Match unanchored <isInIdeographicDescriptionCharacters>} );

# InKanbun


ok("\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<+isInKanbun>$/, q{Match <isInKanbun>} );
ok("\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<[A]+isInKanbun>$/, q{Match compound <isInKanbun>} );
ok(!( "\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<!isInKanbun>.$/ ), q{Don't match externally inverted <isInKanbun>} );
ok(!( "\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<[A]-isInKanbun>$/ ), q{Don't match compound inverted <isInKanbun>} );
ok(!( "\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/^<-isInKanbun>$/ ), q{Don't match internally inverted <isInKanbun>} );
ok(!( "\x[93AB]"  ~~ m/^<+isInKanbun>$/ ), q{Don't match unrelated <isInKanbun>} );
ok("\x[93AB]"  ~~ m/^<!isInKanbun>.$/, q{Match unrelated externally inverted <isInKanbun>} );
ok("\x[93AB]"  ~~ m/^<-isInKanbun>$/, q{Match unrelated internally inverted <isInKanbun>} );
ok("\x[93AB]\c[IDEOGRAPHIC ANNOTATION LINKING MARK]" ~~ m/<+isInKanbun>/, q{Match unanchored <isInKanbun>} );

# InKangxiRadicals


ok("\c[KANGXI RADICAL ONE]" ~~ m/^<+isInKangxiRadicals>$/, q{Match <isInKangxiRadicals>} );
ok("\c[KANGXI RADICAL ONE]" ~~ m/^<[A]+isInKangxiRadicals>$/, q{Match compound <isInKangxiRadicals>} );
ok(!( "\c[KANGXI RADICAL ONE]" ~~ m/^<!isInKangxiRadicals>.$/ ), q{Don't match externally inverted <isInKangxiRadicals>} );
ok(!( "\c[KANGXI RADICAL ONE]" ~~ m/^<[A]-isInKangxiRadicals>$/ ), q{Don't match compound inverted <isInKangxiRadicals>} );
ok(!( "\c[KANGXI RADICAL ONE]" ~~ m/^<-isInKangxiRadicals>$/ ), q{Don't match internally inverted <isInKangxiRadicals>} );
ok(!( "\x[363D]"  ~~ m/^<+isInKangxiRadicals>$/ ), q{Don't match unrelated <isInKangxiRadicals>} );
ok("\x[363D]"  ~~ m/^<!isInKangxiRadicals>.$/, q{Match unrelated externally inverted <isInKangxiRadicals>} );
ok("\x[363D]"  ~~ m/^<-isInKangxiRadicals>$/, q{Match unrelated internally inverted <isInKangxiRadicals>} );
ok("\x[363D]\c[KANGXI RADICAL ONE]" ~~ m/<+isInKangxiRadicals>/, q{Match unanchored <isInKangxiRadicals>} );

# InKannada


ok("\x[0C80]" ~~ m/^<+isInKannada>$/, q{Match <isInKannada>} );
ok("\x[0C80]" ~~ m/^<[A]+isInKannada>$/, q{Match compound <isInKannada>} );
ok(!( "\x[0C80]" ~~ m/^<!isInKannada>.$/ ), q{Don't match externally inverted <isInKannada>} );
ok(!( "\x[0C80]" ~~ m/^<[A]-isInKannada>$/ ), q{Don't match compound inverted <isInKannada>} );
ok(!( "\x[0C80]" ~~ m/^<-isInKannada>$/ ), q{Don't match internally inverted <isInKannada>} );
ok(!( "\x[9093]"  ~~ m/^<+isInKannada>$/ ), q{Don't match unrelated <isInKannada>} );
ok("\x[9093]"  ~~ m/^<!isInKannada>.$/, q{Match unrelated externally inverted <isInKannada>} );
ok("\x[9093]"  ~~ m/^<-isInKannada>$/, q{Match unrelated internally inverted <isInKannada>} );
ok("\x[9093]\x[0C80]" ~~ m/<+isInKannada>/, q{Match unanchored <isInKannada>} );

# InKatakana


ok("\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<+isInKatakana>$/, q{Match <isInKatakana>} );
ok("\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<[A]+isInKatakana>$/, q{Match compound <isInKatakana>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<!isInKatakana>.$/ ), q{Don't match externally inverted <isInKatakana>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<[A]-isInKatakana>$/ ), q{Don't match compound inverted <isInKatakana>} );
ok(!( "\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/^<-isInKatakana>$/ ), q{Don't match internally inverted <isInKatakana>} );
ok(!( "\x[75DA]"  ~~ m/^<+isInKatakana>$/ ), q{Don't match unrelated <isInKatakana>} );
ok("\x[75DA]"  ~~ m/^<!isInKatakana>.$/, q{Match unrelated externally inverted <isInKatakana>} );
ok("\x[75DA]"  ~~ m/^<-isInKatakana>$/, q{Match unrelated internally inverted <isInKatakana>} );
ok("\x[75DA]\c[KATAKANA-HIRAGANA DOUBLE HYPHEN]" ~~ m/<+isInKatakana>/, q{Match unanchored <isInKatakana>} );

# InKatakanaPhoneticExtensions


ok("\c[KATAKANA LETTER SMALL KU]" ~~ m/^<+isInKatakanaPhoneticExtensions>$/, q{Match <isInKatakanaPhoneticExtensions>} );
ok("\c[KATAKANA LETTER SMALL KU]" ~~ m/^<[A]+isInKatakanaPhoneticExtensions>$/, q{Match compound <isInKatakanaPhoneticExtensions>} );
ok(!( "\c[KATAKANA LETTER SMALL KU]" ~~ m/^<!isInKatakanaPhoneticExtensions>.$/ ), q{Don't match externally inverted <isInKatakanaPhoneticExtensions>} );
ok(!( "\c[KATAKANA LETTER SMALL KU]" ~~ m/^<[A]-isInKatakanaPhoneticExtensions>$/ ), q{Don't match compound inverted <isInKatakanaPhoneticExtensions>} );
ok(!( "\c[KATAKANA LETTER SMALL KU]" ~~ m/^<-isInKatakanaPhoneticExtensions>$/ ), q{Don't match internally inverted <isInKatakanaPhoneticExtensions>} );
ok(!( "\c[GREEK SMALL LETTER EPSILON WITH DASIA AND VARIA]"  ~~ m/^<+isInKatakanaPhoneticExtensions>$/ ), q{Don't match unrelated <isInKatakanaPhoneticExtensions>} );
ok("\c[GREEK SMALL LETTER EPSILON WITH DASIA AND VARIA]"  ~~ m/^<!isInKatakanaPhoneticExtensions>.$/, q{Match unrelated externally inverted <isInKatakanaPhoneticExtensions>} );
ok("\c[GREEK SMALL LETTER EPSILON WITH DASIA AND VARIA]"  ~~ m/^<-isInKatakanaPhoneticExtensions>$/, q{Match unrelated internally inverted <isInKatakanaPhoneticExtensions>} );
ok("\c[GREEK SMALL LETTER EPSILON WITH DASIA AND VARIA]\c[KATAKANA LETTER SMALL KU]" ~~ m/<+isInKatakanaPhoneticExtensions>/, q{Match unanchored <isInKatakanaPhoneticExtensions>} );

# InKhmer


ok("\c[KHMER LETTER KA]" ~~ m/^<+isInKhmer>$/, q{Match <isInKhmer>} );
ok("\c[KHMER LETTER KA]" ~~ m/^<[A]+isInKhmer>$/, q{Match compound <isInKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<!isInKhmer>.$/ ), q{Don't match externally inverted <isInKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<[A]-isInKhmer>$/ ), q{Don't match compound inverted <isInKhmer>} );
ok(!( "\c[KHMER LETTER KA]" ~~ m/^<-isInKhmer>$/ ), q{Don't match internally inverted <isInKhmer>} );
ok(!( "\x[508C]"  ~~ m/^<+isInKhmer>$/ ), q{Don't match unrelated <isInKhmer>} );
ok("\x[508C]"  ~~ m/^<!isInKhmer>.$/, q{Match unrelated externally inverted <isInKhmer>} );
ok("\x[508C]"  ~~ m/^<-isInKhmer>$/, q{Match unrelated internally inverted <isInKhmer>} );
ok("\x[508C]\c[KHMER LETTER KA]" ~~ m/<+isInKhmer>/, q{Match unanchored <isInKhmer>} );

# InLao


ok("\x[0E80]" ~~ m/^<+isInLao>$/, q{Match <isInLao>} );
ok("\x[0E80]" ~~ m/^<[A]+isInLao>$/, q{Match compound <isInLao>} );
ok(!( "\x[0E80]" ~~ m/^<!isInLao>.$/ ), q{Don't match externally inverted <isInLao>} );
ok(!( "\x[0E80]" ~~ m/^<[A]-isInLao>$/ ), q{Don't match compound inverted <isInLao>} );
ok(!( "\x[0E80]" ~~ m/^<-isInLao>$/ ), q{Don't match internally inverted <isInLao>} );
ok(!( "\c[PARENTHESIZED IDEOGRAPH CONGRATULATION]"  ~~ m/^<+isInLao>$/ ), q{Don't match unrelated <isInLao>} );
ok("\c[PARENTHESIZED IDEOGRAPH CONGRATULATION]"  ~~ m/^<!isInLao>.$/, q{Match unrelated externally inverted <isInLao>} );
ok("\c[PARENTHESIZED IDEOGRAPH CONGRATULATION]"  ~~ m/^<-isInLao>$/, q{Match unrelated internally inverted <isInLao>} );
ok("\c[PARENTHESIZED IDEOGRAPH CONGRATULATION]\x[0E80]" ~~ m/<+isInLao>/, q{Match unanchored <isInLao>} );

# InLatin1Supplement


ok("\x[0080]" ~~ m/^<+isInLatin1Supplement>$/, q{Match <isInLatin1Supplement>} );
ok("\x[0080]" ~~ m/^<[A]+isInLatin1Supplement>$/, q{Match compound <isInLatin1Supplement>} );
ok(!( "\x[0080]" ~~ m/^<!isInLatin1Supplement>.$/ ), q{Don't match externally inverted <isInLatin1Supplement>} );
ok(!( "\x[0080]" ~~ m/^<[A]-isInLatin1Supplement>$/ ), q{Don't match compound inverted <isInLatin1Supplement>} );
ok(!( "\x[0080]" ~~ m/^<-isInLatin1Supplement>$/ ), q{Don't match internally inverted <isInLatin1Supplement>} );
ok(!( "\x[3A43]"  ~~ m/^<+isInLatin1Supplement>$/ ), q{Don't match unrelated <isInLatin1Supplement>} );
ok("\x[3A43]"  ~~ m/^<!isInLatin1Supplement>.$/, q{Match unrelated externally inverted <isInLatin1Supplement>} );
ok("\x[3A43]"  ~~ m/^<-isInLatin1Supplement>$/, q{Match unrelated internally inverted <isInLatin1Supplement>} );
ok("\x[3A43]\x[0080]" ~~ m/<+isInLatin1Supplement>/, q{Match unanchored <isInLatin1Supplement>} );

# InLatinExtendedA


ok("\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<+isInLatinExtendedA>$/, q{Match <isInLatinExtendedA>} );
ok("\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<[A]+isInLatinExtendedA>$/, q{Match compound <isInLatinExtendedA>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<!isInLatinExtendedA>.$/ ), q{Don't match externally inverted <isInLatinExtendedA>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<[A]-isInLatinExtendedA>$/ ), q{Don't match compound inverted <isInLatinExtendedA>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/^<-isInLatinExtendedA>$/ ), q{Don't match internally inverted <isInLatinExtendedA>} );
ok(!( "\c[ARROW POINTING RIGHTWARDS THEN CURVING UPWARDS]"  ~~ m/^<+isInLatinExtendedA>$/ ), q{Don't match unrelated <isInLatinExtendedA>} );
ok("\c[ARROW POINTING RIGHTWARDS THEN CURVING UPWARDS]"  ~~ m/^<!isInLatinExtendedA>.$/, q{Match unrelated externally inverted <isInLatinExtendedA>} );
ok("\c[ARROW POINTING RIGHTWARDS THEN CURVING UPWARDS]"  ~~ m/^<-isInLatinExtendedA>$/, q{Match unrelated internally inverted <isInLatinExtendedA>} );
ok("\c[ARROW POINTING RIGHTWARDS THEN CURVING UPWARDS]\c[LATIN CAPITAL LETTER A WITH MACRON]" ~~ m/<+isInLatinExtendedA>/, q{Match unanchored <isInLatinExtendedA>} );

# InLatinExtendedAdditional


ok("\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<+isInLatinExtendedAdditional>$/, q{Match <isInLatinExtendedAdditional>} );
ok("\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<[A]+isInLatinExtendedAdditional>$/, q{Match compound <isInLatinExtendedAdditional>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<!isInLatinExtendedAdditional>.$/ ), q{Don't match externally inverted <isInLatinExtendedAdditional>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<[A]-isInLatinExtendedAdditional>$/ ), q{Don't match compound inverted <isInLatinExtendedAdditional>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<-isInLatinExtendedAdditional>$/ ), q{Don't match internally inverted <isInLatinExtendedAdditional>} );
ok(!( "\x[36E7]"  ~~ m/^<+isInLatinExtendedAdditional>$/ ), q{Don't match unrelated <isInLatinExtendedAdditional>} );
ok("\x[36E7]"  ~~ m/^<!isInLatinExtendedAdditional>.$/, q{Match unrelated externally inverted <isInLatinExtendedAdditional>} );
ok("\x[36E7]"  ~~ m/^<-isInLatinExtendedAdditional>$/, q{Match unrelated internally inverted <isInLatinExtendedAdditional>} );
ok("\x[36E7]\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/<+isInLatinExtendedAdditional>/, q{Match unanchored <isInLatinExtendedAdditional>} );

# InLatinExtendedB


ok("\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<+isInLatinExtendedB>$/, q{Match <isInLatinExtendedB>} );
ok("\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<[A]+isInLatinExtendedB>$/, q{Match compound <isInLatinExtendedB>} );
ok(!( "\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<!isInLatinExtendedB>.$/ ), q{Don't match externally inverted <isInLatinExtendedB>} );
ok(!( "\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<[A]-isInLatinExtendedB>$/ ), q{Don't match compound inverted <isInLatinExtendedB>} );
ok(!( "\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/^<-isInLatinExtendedB>$/ ), q{Don't match internally inverted <isInLatinExtendedB>} );
ok(!( "\x[877E]"  ~~ m/^<+isInLatinExtendedB>$/ ), q{Don't match unrelated <isInLatinExtendedB>} );
ok("\x[877E]"  ~~ m/^<!isInLatinExtendedB>.$/, q{Match unrelated externally inverted <isInLatinExtendedB>} );
ok("\x[877E]"  ~~ m/^<-isInLatinExtendedB>$/, q{Match unrelated internally inverted <isInLatinExtendedB>} );
ok("\x[877E]\c[LATIN SMALL LETTER B WITH STROKE]" ~~ m/<+isInLatinExtendedB>/, q{Match unanchored <isInLatinExtendedB>} );

# InLetterlikeSymbols


ok("\c[ACCOUNT OF]" ~~ m/^<+isInLetterlikeSymbols>$/, q{Match <isInLetterlikeSymbols>} );
ok("\c[ACCOUNT OF]" ~~ m/^<[A]+isInLetterlikeSymbols>$/, q{Match compound <isInLetterlikeSymbols>} );
ok(!( "\c[ACCOUNT OF]" ~~ m/^<!isInLetterlikeSymbols>.$/ ), q{Don't match externally inverted <isInLetterlikeSymbols>} );
ok(!( "\c[ACCOUNT OF]" ~~ m/^<[A]-isInLetterlikeSymbols>$/ ), q{Don't match compound inverted <isInLetterlikeSymbols>} );
ok(!( "\c[ACCOUNT OF]" ~~ m/^<-isInLetterlikeSymbols>$/ ), q{Don't match internally inverted <isInLetterlikeSymbols>} );
ok(!( "\c[CIRCLED IDEOGRAPH TWO]"  ~~ m/^<+isInLetterlikeSymbols>$/ ), q{Don't match unrelated <isInLetterlikeSymbols>} );
