use v6-alpha;
use Test;
plan 177;
force_todo(111, 112, 113, 139, 140, 147..149, 156..158, 166..170, 177);
use v6;
use Test;

=pod

This file was originally derived from the perl5 CPAN module Perl6::Rules,
version 0.3 (12 Apr 2004), file t/propcharset_slow_to_compile.t.

=cut



if !eval('("a" ~~ /a/)') {
  skip_rest "skipped tests - rules support appears to be missing";
} else {

# L           Letter


ok("\x[45CD]" ~~ m/^<+isL>$/, q{Match <isL> (Letter)} );
ok("\x[45CD]" ~~ m/^<[A]+isL>$/, q{Match compound <isL> (Letter)} );
ok(!( "\x[45CD]" ~~ m/^<!isL>.$/ ), q{Don't match externally inverted <isL> (Letter)} );
ok(!( "\x[45CD]" ~~ m/^<[A]-isL>$/ ), q{Don't match compound inverted <isL> (Letter)} );
ok(!( "\x[45CD]" ~~ m/^<-isL>$/ ), q{Don't match internally inverted <isL> (Letter)} );
ok(!( "\x[4DB6]"  ~~ m/^<+isL>$/ ), q{Don't match unrelated <isL> (Letter)} );
ok("\x[4DB6]"  ~~ m/^<!isL>.$/, q{Match unrelated externally inverted <isL> (Letter)} );
ok("\x[4DB6]"  ~~ m/^<-isL>$/, q{Match unrelated internally inverted <isL> (Letter)} );
ok("\x[4DB6]\x[45CD]" ~~ m/<+isL>/, q{Match unanchored <isL> (Letter)} );

ok("\c[HANGUL LETTER SIOS-PIEUP]" ~~ m/^<+isLetter>$/, q{Match <isLetter>} );
ok("\c[HANGUL LETTER SIOS-PIEUP]" ~~ m/^<[A]+isLetter>$/, q{Match compound <isLetter>} );
ok(!( "\c[HANGUL LETTER SIOS-PIEUP]" ~~ m/^<!isLetter>.$/ ), q{Don't match externally inverted <isLetter>} );
ok(!( "\c[HANGUL LETTER SIOS-PIEUP]" ~~ m/^<[A]-isLetter>$/ ), q{Don't match compound inverted <isLetter>} );
ok(!( "\c[HANGUL LETTER SIOS-PIEUP]" ~~ m/^<-isLetter>$/ ), q{Don't match internally inverted <isLetter>} );
ok(!( "\x[318F]"  ~~ m/^<+isLetter>$/ ), q{Don't match unrelated <isLetter>} );
ok("\x[318F]"  ~~ m/^<!isLetter>.$/, q{Match unrelated externally inverted <isLetter>} );
ok("\x[318F]"  ~~ m/^<-isLetter>$/, q{Match unrelated internally inverted <isLetter>} );
ok("\x[318F]\c[HANGUL LETTER SIOS-PIEUP]" ~~ m/<+isLetter>/, q{Match unanchored <isLetter>} );

# Lu          UppercaseLetter


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<+isLu>$/, q{Match <isLu> (UppercaseLetter)} );
ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]+isLu>$/, q{Match compound <isLu> (UppercaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isLu>.$/ ), q{Don't match externally inverted <isLu> (UppercaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]-isLu>$/ ), q{Don't match compound inverted <isLu> (UppercaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isLu>$/ ), q{Don't match internally inverted <isLu> (UppercaseLetter)} );
ok(!( "\x[5E52]"  ~~ m/^<+isLu>$/ ), q{Don't match unrelated <isLu> (UppercaseLetter)} );
ok("\x[5E52]"  ~~ m/^<!isLu>.$/, q{Match unrelated externally inverted <isLu> (UppercaseLetter)} );
ok("\x[5E52]"  ~~ m/^<-isLu>$/, q{Match unrelated internally inverted <isLu> (UppercaseLetter)} );
ok(!( "\x[5E52]" ~~ m/^<+isLu>$/ ), q{Don't match related <isLu> (UppercaseLetter)} );
ok("\x[5E52]" ~~ m/^<-isLu>$/, q{Match related internally inverted <isLu> (UppercaseLetter)} );
ok("\x[5E52]" ~~ m/^<!isLu>.$/, q{Match related externally inverted <isLu> (UppercaseLetter)} );
ok("\x[5E52]\x[5E52]\c[LATIN CAPITAL LETTER A]" ~~ m/<+isLu>/, q{Match unanchored <isLu> (UppercaseLetter)} );

ok("\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<+isUppercaseLetter>$/, q{Match <isUppercaseLetter>} );
ok("\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<[A]+isUppercaseLetter>$/, q{Match compound <isUppercaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<!isUppercaseLetter>.$/ ), q{Don't match externally inverted <isUppercaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<[A]-isUppercaseLetter>$/ ), q{Don't match compound inverted <isUppercaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/^<-isUppercaseLetter>$/ ), q{Don't match internally inverted <isUppercaseLetter>} );
ok(!( "\x[1DB9]"  ~~ m/^<+isUppercaseLetter>$/ ), q{Don't match unrelated <isUppercaseLetter>} );
ok("\x[1DB9]"  ~~ m/^<!isUppercaseLetter>.$/, q{Match unrelated externally inverted <isUppercaseLetter>} );
ok("\x[1DB9]"  ~~ m/^<-isUppercaseLetter>$/, q{Match unrelated internally inverted <isUppercaseLetter>} );
ok("\x[1DB9]\c[LATIN CAPITAL LETTER A WITH RING BELOW]" ~~ m/<+isUppercaseLetter>/, q{Match unanchored <isUppercaseLetter>} );

# Ll          LowercaseLetter


ok("\c[LATIN SMALL LETTER A]" ~~ m/^<+isLl>$/, q{Match <isLl> (LowercaseLetter)} );
ok("\c[LATIN SMALL LETTER A]" ~~ m/^<[A]+isLl>$/, q{Match compound <isLl> (LowercaseLetter)} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<!isLl>.$/ ), q{Don't match externally inverted <isLl> (LowercaseLetter)} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<[A]-isLl>$/ ), q{Don't match compound inverted <isLl> (LowercaseLetter)} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<-isLl>$/ ), q{Don't match internally inverted <isLl> (LowercaseLetter)} );
ok(!( "\x[83AD]"  ~~ m/^<+isLl>$/ ), q{Don't match unrelated <isLl> (LowercaseLetter)} );
ok("\x[83AD]"  ~~ m/^<!isLl>.$/, q{Match unrelated externally inverted <isLl> (LowercaseLetter)} );
ok("\x[83AD]"  ~~ m/^<-isLl>$/, q{Match unrelated internally inverted <isLl> (LowercaseLetter)} );
ok(!( "\x[83AD]" ~~ m/^<+isLl>$/ ), q{Don't match related <isLl> (LowercaseLetter)} );
ok("\x[83AD]" ~~ m/^<-isLl>$/, q{Match related internally inverted <isLl> (LowercaseLetter)} );
ok("\x[83AD]" ~~ m/^<!isLl>.$/, q{Match related externally inverted <isLl> (LowercaseLetter)} );
ok("\x[83AD]\x[83AD]\c[LATIN SMALL LETTER A]" ~~ m/<+isLl>/, q{Match unanchored <isLl> (LowercaseLetter)} );

ok("\c[LATIN SMALL LETTER A]" ~~ m/^<+isLowercaseLetter>$/, q{Match <isLowercaseLetter>} );
ok("\c[LATIN SMALL LETTER A]" ~~ m/^<[A]+isLowercaseLetter>$/, q{Match compound <isLowercaseLetter>} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<!isLowercaseLetter>.$/ ), q{Don't match externally inverted <isLowercaseLetter>} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<[A]-isLowercaseLetter>$/ ), q{Don't match compound inverted <isLowercaseLetter>} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<-isLowercaseLetter>$/ ), q{Don't match internally inverted <isLowercaseLetter>} );
ok(!( "\x[A9A8]"  ~~ m/^<+isLowercaseLetter>$/ ), q{Don't match unrelated <isLowercaseLetter>} );
ok("\x[A9A8]"  ~~ m/^<!isLowercaseLetter>.$/, q{Match unrelated externally inverted <isLowercaseLetter>} );
ok("\x[A9A8]"  ~~ m/^<-isLowercaseLetter>$/, q{Match unrelated internally inverted <isLowercaseLetter>} );
ok(!( "\x[AC00]" ~~ m/^<+isLowercaseLetter>$/ ), q{Don't match related <isLowercaseLetter>} );
ok("\x[AC00]" ~~ m/^<-isLowercaseLetter>$/, q{Match related internally inverted <isLowercaseLetter>} );
ok("\x[AC00]" ~~ m/^<!isLowercaseLetter>.$/, q{Match related externally inverted <isLowercaseLetter>} );
ok("\x[A9A8]\x[AC00]\c[LATIN SMALL LETTER A]" ~~ m/<+isLowercaseLetter>/, q{Match unanchored <isLowercaseLetter>} );

# Lt          TitlecaseLetter


ok("\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<+isLt>$/, q{Match <isLt> (TitlecaseLetter)} );
ok("\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<[A]+isLt>$/, q{Match compound <isLt> (TitlecaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<!isLt>.$/ ), q{Don't match externally inverted <isLt> (TitlecaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<[A]-isLt>$/ ), q{Don't match compound inverted <isLt> (TitlecaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<-isLt>$/ ), q{Don't match internally inverted <isLt> (TitlecaseLetter)} );
ok(!( "\x[D187]"  ~~ m/^<+isLt>$/ ), q{Don't match unrelated <isLt> (TitlecaseLetter)} );
ok("\x[D187]"  ~~ m/^<!isLt>.$/, q{Match unrelated externally inverted <isLt> (TitlecaseLetter)} );
ok("\x[D187]"  ~~ m/^<-isLt>$/, q{Match unrelated internally inverted <isLt> (TitlecaseLetter)} );
ok(!( "\x[D187]" ~~ m/^<+isLt>$/ ), q{Don't match related <isLt> (TitlecaseLetter)} );
ok("\x[D187]" ~~ m/^<-isLt>$/, q{Match related internally inverted <isLt> (TitlecaseLetter)} );
ok("\x[D187]" ~~ m/^<!isLt>.$/, q{Match related externally inverted <isLt> (TitlecaseLetter)} );
ok("\x[D187]\x[D187]\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/<+isLt>/, q{Match unanchored <isLt> (TitlecaseLetter)} );

ok("\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<+isTitlecaseLetter>$/, q{Match <isTitlecaseLetter>} );
ok("\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<[A]+isTitlecaseLetter>$/, q{Match compound <isTitlecaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<!isTitlecaseLetter>.$/ ), q{Don't match externally inverted <isTitlecaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<[A]-isTitlecaseLetter>$/ ), q{Don't match compound inverted <isTitlecaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<-isTitlecaseLetter>$/ ), q{Don't match internally inverted <isTitlecaseLetter>} );
ok(!( "\x[C2A9]"  ~~ m/^<+isTitlecaseLetter>$/ ), q{Don't match unrelated <isTitlecaseLetter>} );
ok("\x[C2A9]"  ~~ m/^<!isTitlecaseLetter>.$/, q{Match unrelated externally inverted <isTitlecaseLetter>} );
ok("\x[C2A9]"  ~~ m/^<-isTitlecaseLetter>$/, q{Match unrelated internally inverted <isTitlecaseLetter>} );
ok("\x[C2A9]\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/<+isTitlecaseLetter>/, q{Match unanchored <isTitlecaseLetter>} );

# Lm          ModifierLetter


ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<+isLm>$/, q{Match <isLm> (ModifierLetter)} );
ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]+isLm>$/, q{Match compound <isLm> (ModifierLetter)} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<!isLm>.$/ ), q{Don't match externally inverted <isLm> (ModifierLetter)} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]-isLm>$/ ), q{Don't match compound inverted <isLm> (ModifierLetter)} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<-isLm>$/ ), q{Don't match internally inverted <isLm> (ModifierLetter)} );
ok(!( "\x[8C34]"  ~~ m/^<+isLm>$/ ), q{Don't match unrelated <isLm> (ModifierLetter)} );
ok("\x[8C34]"  ~~ m/^<!isLm>.$/, q{Match unrelated externally inverted <isLm> (ModifierLetter)} );
ok("\x[8C34]"  ~~ m/^<-isLm>$/, q{Match unrelated internally inverted <isLm> (ModifierLetter)} );
ok(!( "\x[8C34]" ~~ m/^<+isLm>$/ ), q{Don't match related <isLm> (ModifierLetter)} );
ok("\x[8C34]" ~~ m/^<-isLm>$/, q{Match related internally inverted <isLm> (ModifierLetter)} );
ok("\x[8C34]" ~~ m/^<!isLm>.$/, q{Match related externally inverted <isLm> (ModifierLetter)} );
ok("\x[8C34]\x[8C34]\c[MODIFIER LETTER SMALL H]" ~~ m/<+isLm>/, q{Match unanchored <isLm> (ModifierLetter)} );

ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<+isModifierLetter>$/, q{Match <isModifierLetter>} );
ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]+isModifierLetter>$/, q{Match compound <isModifierLetter>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<!isModifierLetter>.$/ ), q{Don't match externally inverted <isModifierLetter>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<[A]-isModifierLetter>$/ ), q{Don't match compound inverted <isModifierLetter>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<-isModifierLetter>$/ ), q{Don't match internally inverted <isModifierLetter>} );
ok(!( "\c[YI SYLLABLE NZAX]"  ~~ m/^<+isModifierLetter>$/ ), q{Don't match unrelated <isModifierLetter>} );
ok("\c[YI SYLLABLE NZAX]"  ~~ m/^<!isModifierLetter>.$/, q{Match unrelated externally inverted <isModifierLetter>} );
ok("\c[YI SYLLABLE NZAX]"  ~~ m/^<-isModifierLetter>$/, q{Match unrelated internally inverted <isModifierLetter>} );
ok("\c[YI SYLLABLE NZAX]\c[MODIFIER LETTER SMALL H]" ~~ m/<+isModifierLetter>/, q{Match unanchored <isModifierLetter>} );

# Lo          OtherLetter


ok("\x[8CC9]" ~~ m/^<+isLo>$/, q{Match <isLo> (OtherLetter)} );
ok("\x[8CC9]" ~~ m/^<[A]+isLo>$/, q{Match compound <isLo> (OtherLetter)} );
ok(!( "\x[8CC9]" ~~ m/^<!isLo>.$/ ), q{Don't match externally inverted <isLo> (OtherLetter)} );
ok(!( "\x[8CC9]" ~~ m/^<[A]-isLo>$/ ), q{Don't match compound inverted <isLo> (OtherLetter)} );
ok(!( "\x[8CC9]" ~~ m/^<-isLo>$/ ), q{Don't match internally inverted <isLo> (OtherLetter)} );
ok(!( "\x[9FA6]"  ~~ m/^<+isLo>$/ ), q{Don't match unrelated <isLo> (OtherLetter)} );
ok("\x[9FA6]"  ~~ m/^<!isLo>.$/, q{Match unrelated externally inverted <isLo> (OtherLetter)} );
ok("\x[9FA6]"  ~~ m/^<-isLo>$/, q{Match unrelated internally inverted <isLo> (OtherLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<+isLo>$/ ), q{Don't match related <isLo> (OtherLetter)} );
ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isLo>$/, q{Match related internally inverted <isLo> (OtherLetter)} );
ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isLo>.$/, q{Match related externally inverted <isLo> (OtherLetter)} );
ok("\x[9FA6]\c[LATIN CAPITAL LETTER A]\x[8CC9]" ~~ m/<+isLo>/, q{Match unanchored <isLo> (OtherLetter)} );

ok("\x[BC7D]" ~~ m/^<+isOtherLetter>$/, q{Match <isOtherLetter>} );
ok("\x[BC7D]" ~~ m/^<[A]+isOtherLetter>$/, q{Match compound <isOtherLetter>} );
ok(!( "\x[BC7D]" ~~ m/^<!isOtherLetter>.$/ ), q{Don't match externally inverted <isOtherLetter>} );
ok(!( "\x[BC7D]" ~~ m/^<[A]-isOtherLetter>$/ ), q{Don't match compound inverted <isOtherLetter>} );
ok(!( "\x[BC7D]" ~~ m/^<-isOtherLetter>$/ ), q{Don't match internally inverted <isOtherLetter>} );
ok(!( "\x[D7A4]"  ~~ m/^<+isOtherLetter>$/ ), q{Don't match unrelated <isOtherLetter>} );
ok("\x[D7A4]"  ~~ m/^<!isOtherLetter>.$/, q{Match unrelated externally inverted <isOtherLetter>} );
ok("\x[D7A4]"  ~~ m/^<-isOtherLetter>$/, q{Match unrelated internally inverted <isOtherLetter>} );
ok("\x[D7A4]\x[BC7D]" ~~ m/<+isOtherLetter>/, q{Match unanchored <isOtherLetter>} );

# Lr             # Alias for "Ll", "Lu", and "Lt".


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<+isLr>$/, q{Match (Alias for "Ll", "Lu", and "Lt".)} );
ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]+isLr>$/, q{Match compound (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isLr>.$/ ), q{Don't match externally inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<[A]-isLr>$/ ), q{Don't match compound inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isLr>$/ ), q{Don't match internally inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\x[CD29]"  ~~ m/^<+isLr>$/ ), q{Don't match unrelated (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[CD29]"  ~~ m/^<!isLr>.$/, q{Match unrelated externally inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[CD29]"  ~~ m/^<-isLr>$/, q{Match unrelated internally inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\x[CD29]" ~~ m/^<+isLr>$/ ), q{Don't match related (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[CD29]" ~~ m/^<-isLr>$/, q{Match related internally inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[CD29]" ~~ m/^<!isLr>.$/, q{Match related externally inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[CD29]\x[CD29]\c[LATIN CAPITAL LETTER A]" ~~ m/<+isLr>/, q{Match unanchored (Alias for "Ll", "Lu", and "Lt".)} );


# M           Mark


ok("\c[TAGALOG VOWEL SIGN I]" ~~ m/^<+isM>$/, q{Match <isM> (Mark)} );
ok("\c[TAGALOG VOWEL SIGN I]" ~~ m/^<[A]+isM>$/, q{Match compound <isM> (Mark)} );
ok(!( "\c[TAGALOG VOWEL SIGN I]" ~~ m/^<!isM>.$/ ), q{Don't match externally inverted <isM> (Mark)} );
ok(!( "\c[TAGALOG VOWEL SIGN I]" ~~ m/^<[A]-isM>$/ ), q{Don't match compound inverted <isM> (Mark)} );
ok(!( "\c[TAGALOG VOWEL SIGN I]" ~~ m/^<-isM>$/ ), q{Don't match internally inverted <isM> (Mark)} );
ok(!( "\c[CANADIAN SYLLABICS KAAI]"  ~~ m/^<+isM>$/ ), q{Don't match unrelated <isM> (Mark)} );
ok("\c[CANADIAN SYLLABICS KAAI]"  ~~ m/^<!isM>.$/, q{Match unrelated externally inverted <isM> (Mark)} );
ok("\c[CANADIAN SYLLABICS KAAI]"  ~~ m/^<-isM>$/, q{Match unrelated internally inverted <isM> (Mark)} );
ok("\c[CANADIAN SYLLABICS KAAI]\c[TAGALOG VOWEL SIGN I]" ~~ m/<+isM>/, q{Match unanchored <isM> (Mark)} );

ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isMark>$/, q{Match <isMark>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]+isMark>$/, q{Match compound <isMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMark>.$/ ), q{Don't match externally inverted <isMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]-isMark>$/ ), q{Don't match compound inverted <isMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMark>$/ ), q{Don't match internally inverted <isMark>} );
ok(!( "\x[4BF0]"  ~~ m/^<+isMark>$/ ), q{Don't match unrelated <isMark>} );
ok("\x[4BF0]"  ~~ m/^<!isMark>.$/, q{Match unrelated externally inverted <isMark>} );
ok("\x[4BF0]"  ~~ m/^<-isMark>$/, q{Match unrelated internally inverted <isMark>} );
ok("\x[4BF0]\c[COMBINING GRAVE ACCENT]" ~~ m/<+isMark>/, q{Match unanchored <isMark>} );

# Mn          NonspacingMark


ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isMn>$/, q{Match <isMn> (NonspacingMark)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]+isMn>$/, q{Match compound <isMn> (NonspacingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMn>.$/ ), q{Don't match externally inverted <isMn> (NonspacingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]-isMn>$/ ), q{Don't match compound inverted <isMn> (NonspacingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMn>$/ ), q{Don't match internally inverted <isMn> (NonspacingMark)} );
ok(!( "\x[CF2C]"  ~~ m/^<+isMn>$/ ), q{Don't match unrelated <isMn> (NonspacingMark)} );
ok("\x[CF2C]"  ~~ m/^<!isMn>.$/, q{Match unrelated externally inverted <isMn> (NonspacingMark)} );
ok("\x[CF2C]"  ~~ m/^<-isMn>$/, q{Match unrelated internally inverted <isMn> (NonspacingMark)} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<+isMn>$/ ), q{Don't match related <isMn> (NonspacingMark)} );
ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<-isMn>$/, q{Match related internally inverted <isMn> (NonspacingMark)} );
ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<!isMn>.$/, q{Match related externally inverted <isMn> (NonspacingMark)} );
ok("\x[CF2C]\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]\c[COMBINING GRAVE ACCENT]" ~~ m/<+isMn>/, q{Match unanchored <isMn> (NonspacingMark)} );

ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<+isNonspacingMark>$/, q{Match <isNonspacingMark>} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]+isNonspacingMark>$/, q{Match compound <isNonspacingMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isNonspacingMark>.$/ ), q{Don't match externally inverted <isNonspacingMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<[A]-isNonspacingMark>$/ ), q{Don't match compound inverted <isNonspacingMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isNonspacingMark>$/ ), q{Don't match internally inverted <isNonspacingMark>} );
ok(!( "\x[B617]"  ~~ m/^<+isNonspacingMark>$/ ), q{Don't match unrelated <isNonspacingMark>} );
ok("\x[B617]"  ~~ m/^<!isNonspacingMark>.$/, q{Match unrelated externally inverted <isNonspacingMark>} );
ok("\x[B617]"  ~~ m/^<-isNonspacingMark>$/, q{Match unrelated internally inverted <isNonspacingMark>} );
ok("\x[B617]\c[COMBINING GRAVE ACCENT]" ~~ m/<+isNonspacingMark>/, q{Match unanchored <isNonspacingMark>} );

# Mc          SpacingMark
}
