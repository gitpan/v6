use v6-alpha;
use Test;
plan 189;
force_todo(4, 11, 99);
use v6;
use Test;

=pod

This file was originally derived from the perl5 CPAN module Perl6::Rules,
version 0.3 (12 Apr 2004), file t/properties_slow_to_compile.t.

=cut


if !eval('("a" ~~ /a/)') {
  skip_rest "skipped tests - rules support appears to be missing";
} else {

# L           Letter


ok("\x[846D]" ~~ m/^<isL>$/, q{Match <isL> (Letter)} );
ok(!( "\x[846D]" ~~ m/^<!isL>.$/ ), q{Don't match negated <isL> (Letter)} );
ok(!( "\x[846D]" ~~ m/^<-isL>$/ ), q{Don't match inverted <isL> (Letter)} );
ok(!( "\x[9FA6]"  ~~ m/^<isL>$/ ), q{Don't match unrelated <isL> (Letter)} );
ok("\x[9FA6]"  ~~ m/^<!isL>.$/, q{Match unrelated negated <isL> (Letter)} );
ok("\x[9FA6]"  ~~ m/^<-isL>$/, q{Match unrelated inverted <isL> (Letter)} );
ok("\x[9FA6]\x[846D]" ~~ m/<isL>/, q{Match unanchored <isL> (Letter)} );

ok("\x[6DF7]" ~~ m/^<?isLetter>$/, q{Match <?isLetter>} );
ok(!( "\x[6DF7]" ~~ m/^<!isLetter>.$/ ), q{Don't match negated <?isLetter>} );
ok(!( "\x[6DF7]" ~~ m/^<-isLetter>$/ ), q{Don't match inverted <?isLetter>} );
ok(!( "\x[9FA6]"  ~~ m/^<?isLetter>$/ ), q{Don't match unrelated <?isLetter>} );
ok("\x[9FA6]"  ~~ m/^<!isLetter>.$/, q{Match unrelated negated <?isLetter>} );
ok("\x[9FA6]"  ~~ m/^<-isLetter>$/, q{Match unrelated inverted <?isLetter>} );
ok("\x[9FA6]\x[6DF7]" ~~ m/<?isLetter>/, q{Match unanchored <?isLetter>} );

# Lu          UppercaseLetter


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<?isLu>$/, q{Match <?isLu> (UppercaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isLu>.$/ ), q{Don't match negated <?isLu> (UppercaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isLu>$/ ), q{Don't match inverted <?isLu> (UppercaseLetter)} );
ok(!( "\x[C767]"  ~~ m/^<?isLu>$/ ), q{Don't match unrelated <?isLu> (UppercaseLetter)} );
ok("\x[C767]"  ~~ m/^<!isLu>.$/, q{Match unrelated negated <?isLu> (UppercaseLetter)} );
ok("\x[C767]"  ~~ m/^<-isLu>$/, q{Match unrelated inverted <?isLu> (UppercaseLetter)} );
ok(!( "\x[C767]" ~~ m/^<?isLu>$/ ), q{Don't match related <?isLu> (UppercaseLetter)} );
ok("\x[C767]" ~~ m/^<!isLu>.$/, q{Match related negated <?isLu> (UppercaseLetter)} );
ok("\x[C767]" ~~ m/^<-isLu>$/, q{Match related inverted <?isLu> (UppercaseLetter)} );
ok("\x[C767]\x[C767]\c[LATIN CAPITAL LETTER A]" ~~ m/<?isLu>/, q{Match unanchored <?isLu> (UppercaseLetter)} );

ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<?isUppercaseLetter>$/, q{Match <?isUppercaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isUppercaseLetter>.$/ ), q{Don't match negated <?isUppercaseLetter>} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isUppercaseLetter>$/ ), q{Don't match inverted <?isUppercaseLetter>} );
ok(!( "\c[YI SYLLABLE NBA]"  ~~ m/^<?isUppercaseLetter>$/ ), q{Don't match unrelated <?isUppercaseLetter>} );
ok("\c[YI SYLLABLE NBA]"  ~~ m/^<!isUppercaseLetter>.$/, q{Match unrelated negated <?isUppercaseLetter>} );
ok("\c[YI SYLLABLE NBA]"  ~~ m/^<-isUppercaseLetter>$/, q{Match unrelated inverted <?isUppercaseLetter>} );
ok("\c[YI SYLLABLE NBA]\c[LATIN CAPITAL LETTER A]" ~~ m/<?isUppercaseLetter>/, q{Match unanchored <?isUppercaseLetter>} );

# Ll          LowercaseLetter


ok("\c[LATIN SMALL LETTER A]" ~~ m/^<?isLl>$/, q{Match <?isLl> (LowercaseLetter)} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<!isLl>.$/ ), q{Don't match negated <?isLl> (LowercaseLetter)} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<-isLl>$/ ), q{Don't match inverted <?isLl> (LowercaseLetter)} );
ok(!( "\c[BOPOMOFO FINAL LETTER H]"  ~~ m/^<?isLl>$/ ), q{Don't match unrelated <?isLl> (LowercaseLetter)} );
ok("\c[BOPOMOFO FINAL LETTER H]"  ~~ m/^<!isLl>.$/, q{Match unrelated negated <?isLl> (LowercaseLetter)} );
ok("\c[BOPOMOFO FINAL LETTER H]"  ~~ m/^<-isLl>$/, q{Match unrelated inverted <?isLl> (LowercaseLetter)} );
ok(!( "\c[BOPOMOFO FINAL LETTER H]" ~~ m/^<?isLl>$/ ), q{Don't match related <?isLl> (LowercaseLetter)} );
ok("\c[BOPOMOFO FINAL LETTER H]" ~~ m/^<!isLl>.$/, q{Match related negated <?isLl> (LowercaseLetter)} );
ok("\c[BOPOMOFO FINAL LETTER H]" ~~ m/^<-isLl>$/, q{Match related inverted <?isLl> (LowercaseLetter)} );
ok("\c[BOPOMOFO FINAL LETTER H]\c[BOPOMOFO FINAL LETTER H]\c[LATIN SMALL LETTER A]" ~~ m/<?isLl>/, q{Match unanchored <?isLl> (LowercaseLetter)} );

ok("\c[LATIN SMALL LETTER A]" ~~ m/^<?isLowercaseLetter>$/, q{Match <?isLowercaseLetter>} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<!isLowercaseLetter>.$/ ), q{Don't match negated <?isLowercaseLetter>} );
ok(!( "\c[LATIN SMALL LETTER A]" ~~ m/^<-isLowercaseLetter>$/ ), q{Don't match inverted <?isLowercaseLetter>} );
ok(!( "\x[86CA]"  ~~ m/^<?isLowercaseLetter>$/ ), q{Don't match unrelated <?isLowercaseLetter>} );
ok("\x[86CA]"  ~~ m/^<!isLowercaseLetter>.$/, q{Match unrelated negated <?isLowercaseLetter>} );
ok("\x[86CA]"  ~~ m/^<-isLowercaseLetter>$/, q{Match unrelated inverted <?isLowercaseLetter>} );
ok(!( "\x[86CA]" ~~ m/^<?isLowercaseLetter>$/ ), q{Don't match related <?isLowercaseLetter>} );
ok("\x[86CA]" ~~ m/^<!isLowercaseLetter>.$/, q{Match related negated <?isLowercaseLetter>} );
ok("\x[86CA]" ~~ m/^<-isLowercaseLetter>$/, q{Match related inverted <?isLowercaseLetter>} );
ok("\x[86CA]\x[86CA]\c[LATIN SMALL LETTER A]" ~~ m/<?isLowercaseLetter>/, q{Match unanchored <?isLowercaseLetter>} );

# Lt          TitlecaseLetter


ok("\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<?isLt>$/, q{Match <?isLt> (TitlecaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<!isLt>.$/ ), q{Don't match negated <?isLt> (TitlecaseLetter)} );
ok(!( "\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/^<-isLt>$/ ), q{Don't match inverted <?isLt> (TitlecaseLetter)} );
ok(!( "\x[6DC8]"  ~~ m/^<?isLt>$/ ), q{Don't match unrelated <?isLt> (TitlecaseLetter)} );
ok("\x[6DC8]"  ~~ m/^<!isLt>.$/, q{Match unrelated negated <?isLt> (TitlecaseLetter)} );
ok("\x[6DC8]"  ~~ m/^<-isLt>$/, q{Match unrelated inverted <?isLt> (TitlecaseLetter)} );
ok(!( "\x[6DC8]" ~~ m/^<?isLt>$/ ), q{Don't match related <?isLt> (TitlecaseLetter)} );
ok("\x[6DC8]" ~~ m/^<!isLt>.$/, q{Match related negated <?isLt> (TitlecaseLetter)} );
ok("\x[6DC8]" ~~ m/^<-isLt>$/, q{Match related inverted <?isLt> (TitlecaseLetter)} );
ok("\x[6DC8]\x[6DC8]\c[LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]" ~~ m/<?isLt>/, q{Match unanchored <?isLt> (TitlecaseLetter)} );

ok("\c[GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI]" ~~ m/^<?isTitlecaseLetter>$/, q{Match <?isTitlecaseLetter>} );
ok(!( "\c[GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI]" ~~ m/^<!isTitlecaseLetter>.$/ ), q{Don't match negated <?isTitlecaseLetter>} );
ok(!( "\c[GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI]" ~~ m/^<-isTitlecaseLetter>$/ ), q{Don't match inverted <?isTitlecaseLetter>} );
ok(!( "\x[0C4E]"  ~~ m/^<?isTitlecaseLetter>$/ ), q{Don't match unrelated <?isTitlecaseLetter>} );
ok("\x[0C4E]"  ~~ m/^<!isTitlecaseLetter>.$/, q{Match unrelated negated <?isTitlecaseLetter>} );
ok("\x[0C4E]"  ~~ m/^<-isTitlecaseLetter>$/, q{Match unrelated inverted <?isTitlecaseLetter>} );
ok("\x[0C4E]\c[GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI]" ~~ m/<?isTitlecaseLetter>/, q{Match unanchored <?isTitlecaseLetter>} );

# Lm          ModifierLetter


ok("\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<?isLm>$/, q{Match <?isLm> (ModifierLetter)} );
ok(!( "\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<!isLm>.$/ ), q{Don't match negated <?isLm> (ModifierLetter)} );
ok(!( "\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/^<-isLm>$/ ), q{Don't match inverted <?isLm> (ModifierLetter)} );
ok(!( "\x[2B61]"  ~~ m/^<?isLm>$/ ), q{Don't match unrelated <?isLm> (ModifierLetter)} );
ok("\x[2B61]"  ~~ m/^<!isLm>.$/, q{Match unrelated negated <?isLm> (ModifierLetter)} );
ok("\x[2B61]"  ~~ m/^<-isLm>$/, q{Match unrelated inverted <?isLm> (ModifierLetter)} );
ok(!( "\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<?isLm>$/ ), q{Don't match related <?isLm> (ModifierLetter)} );
ok("\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<!isLm>.$/, q{Match related negated <?isLm> (ModifierLetter)} );
ok("\c[IDEOGRAPHIC CLOSING MARK]" ~~ m/^<-isLm>$/, q{Match related inverted <?isLm> (ModifierLetter)} );
ok("\x[2B61]\c[IDEOGRAPHIC CLOSING MARK]\c[IDEOGRAPHIC ITERATION MARK]" ~~ m/<?isLm>/, q{Match unanchored <?isLm> (ModifierLetter)} );

ok("\c[MODIFIER LETTER SMALL H]" ~~ m/^<?isModifierLetter>$/, q{Match <?isModifierLetter>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<!isModifierLetter>.$/ ), q{Don't match negated <?isModifierLetter>} );
ok(!( "\c[MODIFIER LETTER SMALL H]" ~~ m/^<-isModifierLetter>$/ ), q{Don't match inverted <?isModifierLetter>} );
ok(!( "\c[YI SYLLABLE HA]"  ~~ m/^<?isModifierLetter>$/ ), q{Don't match unrelated <?isModifierLetter>} );
ok("\c[YI SYLLABLE HA]"  ~~ m/^<!isModifierLetter>.$/, q{Match unrelated negated <?isModifierLetter>} );
ok("\c[YI SYLLABLE HA]"  ~~ m/^<-isModifierLetter>$/, q{Match unrelated inverted <?isModifierLetter>} );
ok("\c[YI SYLLABLE HA]\c[MODIFIER LETTER SMALL H]" ~~ m/<?isModifierLetter>/, q{Match unanchored <?isModifierLetter>} );

# Lo          OtherLetter


ok("\c[LATIN LETTER TWO WITH STROKE]" ~~ m/^<?isLo>$/, q{Match <?isLo> (OtherLetter)} );
ok(!( "\c[LATIN LETTER TWO WITH STROKE]" ~~ m/^<!isLo>.$/ ), q{Don't match negated <?isLo> (OtherLetter)} );
ok(!( "\c[LATIN LETTER TWO WITH STROKE]" ~~ m/^<-isLo>$/ ), q{Don't match inverted <?isLo> (OtherLetter)} );
ok(!( "\c[LATIN SMALL LETTER TURNED DELTA]"  ~~ m/^<?isLo>$/ ), q{Don't match unrelated <?isLo> (OtherLetter)} );
ok("\c[LATIN SMALL LETTER TURNED DELTA]"  ~~ m/^<!isLo>.$/, q{Match unrelated negated <?isLo> (OtherLetter)} );
ok("\c[LATIN SMALL LETTER TURNED DELTA]"  ~~ m/^<-isLo>$/, q{Match unrelated inverted <?isLo> (OtherLetter)} );
ok(!( "\c[LATIN SMALL LETTER TURNED DELTA]" ~~ m/^<?isLo>$/ ), q{Don't match related <?isLo> (OtherLetter)} );
ok("\c[LATIN SMALL LETTER TURNED DELTA]" ~~ m/^<!isLo>.$/, q{Match related negated <?isLo> (OtherLetter)} );
ok("\c[LATIN SMALL LETTER TURNED DELTA]" ~~ m/^<-isLo>$/, q{Match related inverted <?isLo> (OtherLetter)} );
ok("\c[LATIN SMALL LETTER TURNED DELTA]\c[LATIN SMALL LETTER TURNED DELTA]\c[LATIN LETTER TWO WITH STROKE]" ~~ m/<?isLo>/, q{Match unanchored <?isLo> (OtherLetter)} );

ok("\c[ETHIOPIC SYLLABLE GLOTTAL A]" ~~ m/^<?isOtherLetter>$/, q{Match <?isOtherLetter>} );
ok(!( "\c[ETHIOPIC SYLLABLE GLOTTAL A]" ~~ m/^<!isOtherLetter>.$/ ), q{Don't match negated <?isOtherLetter>} );
ok(!( "\c[ETHIOPIC SYLLABLE GLOTTAL A]" ~~ m/^<-isOtherLetter>$/ ), q{Don't match inverted <?isOtherLetter>} );
ok(!( "\x[12AF]"  ~~ m/^<?isOtherLetter>$/ ), q{Don't match unrelated <?isOtherLetter>} );
ok("\x[12AF]"  ~~ m/^<!isOtherLetter>.$/, q{Match unrelated negated <?isOtherLetter>} );
ok("\x[12AF]"  ~~ m/^<-isOtherLetter>$/, q{Match unrelated inverted <?isOtherLetter>} );
ok("\x[12AF]\c[ETHIOPIC SYLLABLE GLOTTAL A]" ~~ m/<?isOtherLetter>/, q{Match unanchored <?isOtherLetter>} );

# Lr             # Alias for "Ll", "Lu", and "Lt".


ok("\c[LATIN CAPITAL LETTER A]" ~~ m/^<?isLr>$/, q{Match (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<!isLr>.$/ ), q{Don't match negated (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\c[LATIN CAPITAL LETTER A]" ~~ m/^<-isLr>$/ ), q{Don't match inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\x[87B5]"  ~~ m/^<?isLr>$/ ), q{Don't match unrelated (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[87B5]"  ~~ m/^<!isLr>.$/, q{Match unrelated negated (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[87B5]"  ~~ m/^<-isLr>$/, q{Match unrelated inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok(!( "\x[87B5]" ~~ m/^<?isLr>$/ ), q{Don't match related (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[87B5]" ~~ m/^<!isLr>.$/, q{Match related negated (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[87B5]" ~~ m/^<-isLr>$/, q{Match related inverted (Alias for "Ll", "Lu", and "Lt".)} );
ok("\x[87B5]\x[87B5]\c[LATIN CAPITAL LETTER A]" ~~ m/<?isLr>/, q{Match unanchored (Alias for "Ll", "Lu", and "Lt".)} );

# M           Mark


ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<isM>$/, q{Match <isM> (Mark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isM>.$/ ), q{Don't match negated <isM> (Mark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isM>$/ ), q{Don't match inverted <isM> (Mark)} );
ok(!( "\x[D0AA]"  ~~ m/^<isM>$/ ), q{Don't match unrelated <isM> (Mark)} );
ok("\x[D0AA]"  ~~ m/^<!isM>.$/, q{Match unrelated negated <isM> (Mark)} );
ok("\x[D0AA]"  ~~ m/^<-isM>$/, q{Match unrelated inverted <isM> (Mark)} );
ok("\x[D0AA]\c[COMBINING GRAVE ACCENT]" ~~ m/<isM>/, q{Match unanchored <isM> (Mark)} );

ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMark>$/, q{Match <?isMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMark>.$/ ), q{Don't match negated <?isMark>} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMark>$/ ), q{Don't match inverted <?isMark>} );
ok(!( "\x[BE64]"  ~~ m/^<?isMark>$/ ), q{Don't match unrelated <?isMark>} );
ok("\x[BE64]"  ~~ m/^<!isMark>.$/, q{Match unrelated negated <?isMark>} );
ok("\x[BE64]"  ~~ m/^<-isMark>$/, q{Match unrelated inverted <?isMark>} );
ok("\x[BE64]\c[COMBINING GRAVE ACCENT]" ~~ m/<?isMark>/, q{Match unanchored <?isMark>} );

# Mn          NonspacingMark


ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMn>$/, q{Match <?isMn> (NonspacingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMn>.$/ ), q{Don't match negated <?isMn> (NonspacingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMn>$/ ), q{Don't match inverted <?isMn> (NonspacingMark)} );
ok(!( "\x[47A5]"  ~~ m/^<?isMn>$/ ), q{Don't match unrelated <?isMn> (NonspacingMark)} );
ok("\x[47A5]"  ~~ m/^<!isMn>.$/, q{Match unrelated negated <?isMn> (NonspacingMark)} );
ok("\x[47A5]"  ~~ m/^<-isMn>$/, q{Match unrelated inverted <?isMn> (NonspacingMark)} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<?isMn>$/ ), q{Don't match related <?isMn> (NonspacingMark)} );
ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<!isMn>.$/, q{Match related negated <?isMn> (NonspacingMark)} );
ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<-isMn>$/, q{Match related inverted <?isMn> (NonspacingMark)} );
ok("\x[47A5]\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]\c[COMBINING GRAVE ACCENT]" ~~ m/<?isMn>/, q{Match unanchored <?isMn> (NonspacingMark)} );

ok("\c[TAGALOG VOWEL SIGN I]" ~~ m/^<?isNonspacingMark>$/, q{Match <?isNonspacingMark>} );
ok(!( "\c[TAGALOG VOWEL SIGN I]" ~~ m/^<!isNonspacingMark>.$/ ), q{Don't match negated <?isNonspacingMark>} );
ok(!( "\c[TAGALOG VOWEL SIGN I]" ~~ m/^<-isNonspacingMark>$/ ), q{Don't match inverted <?isNonspacingMark>} );
ok(!( "\c[CANADIAN SYLLABICS TYA]"  ~~ m/^<?isNonspacingMark>$/ ), q{Don't match unrelated <?isNonspacingMark>} );
ok("\c[CANADIAN SYLLABICS TYA]"  ~~ m/^<!isNonspacingMark>.$/, q{Match unrelated negated <?isNonspacingMark>} );
ok("\c[CANADIAN SYLLABICS TYA]"  ~~ m/^<-isNonspacingMark>$/, q{Match unrelated inverted <?isNonspacingMark>} );
ok("\c[CANADIAN SYLLABICS TYA]\c[TAGALOG VOWEL SIGN I]" ~~ m/<?isNonspacingMark>/, q{Match unanchored <?isNonspacingMark>} );

# Mc          SpacingMark


ok("\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<?isMc>$/, q{Match <?isMc> (SpacingMark)} );
ok(!( "\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<!isMc>.$/ ), q{Don't match negated <?isMc> (SpacingMark)} );
ok(!( "\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<-isMc>$/ ), q{Don't match inverted <?isMc> (SpacingMark)} );
ok(!( "\x[9981]"  ~~ m/^<?isMc>$/ ), q{Don't match unrelated <?isMc> (SpacingMark)} );
ok("\x[9981]"  ~~ m/^<!isMc>.$/, q{Match unrelated negated <?isMc> (SpacingMark)} );
ok("\x[9981]"  ~~ m/^<-isMc>$/, q{Match unrelated inverted <?isMc> (SpacingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMc>$/ ), q{Don't match related <?isMc> (SpacingMark)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMc>.$/, q{Match related negated <?isMc> (SpacingMark)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMc>$/, q{Match related inverted <?isMc> (SpacingMark)} );
ok("\x[9981]\c[COMBINING GRAVE ACCENT]\c[DEVANAGARI SIGN VISARGA]" ~~ m/<?isMc>/, q{Match unanchored <?isMc> (SpacingMark)} );

ok("\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<?isSpacingMark>$/, q{Match <?isSpacingMark>} );
ok(!( "\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<!isSpacingMark>.$/ ), q{Don't match negated <?isSpacingMark>} );
ok(!( "\c[DEVANAGARI SIGN VISARGA]" ~~ m/^<-isSpacingMark>$/ ), q{Don't match inverted <?isSpacingMark>} );
ok(!( "\x[35E3]"  ~~ m/^<?isSpacingMark>$/ ), q{Don't match unrelated <?isSpacingMark>} );
ok("\x[35E3]"  ~~ m/^<!isSpacingMark>.$/, q{Match unrelated negated <?isSpacingMark>} );
ok("\x[35E3]"  ~~ m/^<-isSpacingMark>$/, q{Match unrelated inverted <?isSpacingMark>} );
ok("\x[35E3]\c[DEVANAGARI SIGN VISARGA]" ~~ m/<?isSpacingMark>/, q{Match unanchored <?isSpacingMark>} );

# Me          EnclosingMark


ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<?isMe>$/, q{Match <?isMe> (EnclosingMark)} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<!isMe>.$/ ), q{Don't match negated <?isMe> (EnclosingMark)} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<-isMe>$/ ), q{Don't match inverted <?isMe> (EnclosingMark)} );
ok(!( "\x[9400]"  ~~ m/^<?isMe>$/ ), q{Don't match unrelated <?isMe> (EnclosingMark)} );
ok("\x[9400]"  ~~ m/^<!isMe>.$/, q{Match unrelated negated <?isMe> (EnclosingMark)} );
ok("\x[9400]"  ~~ m/^<-isMe>$/, q{Match unrelated inverted <?isMe> (EnclosingMark)} );
ok(!( "\c[COMBINING GRAVE ACCENT]" ~~ m/^<?isMe>$/ ), q{Don't match related <?isMe> (EnclosingMark)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<!isMe>.$/, q{Match related negated <?isMe> (EnclosingMark)} );
ok("\c[COMBINING GRAVE ACCENT]" ~~ m/^<-isMe>$/, q{Match related inverted <?isMe> (EnclosingMark)} );
ok("\x[9400]\c[COMBINING GRAVE ACCENT]\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/<?isMe>/, q{Match unanchored <?isMe> (EnclosingMark)} );

ok("\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<?isEnclosingMark>$/, q{Match <?isEnclosingMark>} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<!isEnclosingMark>.$/ ), q{Don't match negated <?isEnclosingMark>} );
ok(!( "\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/^<-isEnclosingMark>$/ ), q{Don't match inverted <?isEnclosingMark>} );
ok(!( "\x[7C68]"  ~~ m/^<?isEnclosingMark>$/ ), q{Don't match unrelated <?isEnclosingMark>} );
ok("\x[7C68]"  ~~ m/^<!isEnclosingMark>.$/, q{Match unrelated negated <?isEnclosingMark>} );
ok("\x[7C68]"  ~~ m/^<-isEnclosingMark>$/, q{Match unrelated inverted <?isEnclosingMark>} );
ok("\x[7C68]\c[COMBINING CYRILLIC HUNDRED THOUSANDS SIGN]" ~~ m/<?isEnclosingMark>/, q{Match unanchored <?isEnclosingMark>} );

# N           Number


ok("\c[SUPERSCRIPT ZERO]" ~~ m/^<isN>$/, q{Match <isN> (Number)} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<!isN>.$/ ), q{Don't match negated <isN> (Number)} );
ok(!( "\c[SUPERSCRIPT ZERO]" ~~ m/^<-isN>$/ ), q{Don't match inverted <isN> (Number)} );
ok(!( "\c[LATIN LETTER SMALL CAPITAL E]"  ~~ m/^<isN>$/ ), q{Don't match unrelated <isN> (Number)} );
ok("\c[LATIN LETTER SMALL CAPITAL E]"  ~~ m/^<!isN>.$/, q{Match unrelated negated <isN> (Number)} );
ok("\c[LATIN LETTER SMALL CAPITAL E]"  ~~ m/^<-isN>$/, q{Match unrelated inverted <isN> (Number)} );
ok("\c[LATIN LETTER SMALL CAPITAL E]\c[SUPERSCRIPT ZERO]" ~~ m/<isN>/, q{Match unanchored <isN> (Number)} );

ok("\c[DIGIT ZERO]" ~~ m/^<?isNumber>$/, q{Match <?isNumber>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<!isNumber>.$/ ), q{Don't match negated <?isNumber>} );
ok(!( "\c[DIGIT ZERO]" ~~ m/^<-isNumber>$/ ), q{Don't match inverted <?isNumber>} );
ok(!( "\x[A994]"  ~~ m/^<?isNumber>$/ ), q{Don't match unrelated <?isNumber>} );
ok("\x[A994]"  ~~ m/^<!isNumber>.$/, q{Match unrelated negated <?isNumber>} );
}
