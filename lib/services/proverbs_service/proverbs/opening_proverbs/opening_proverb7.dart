import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen25.htm
const openingProverb7 = Proverb(
  index: 24,
  title: 'In the Opening Push up Pawns in the Odd-number Files',
  japaneseTitle: 'Joban wa kisuu no Fu wo tsuke',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'Depending on which Pawns are pushed in the opening, the future strategy varies. Diagram 1 (last move P6d) shows where Black has aligned his Pawns in the fourth row along the 1st, 3rd, 5th, 7th and 9th file, quite observant of the proverb in question. As a matter of fact, this formation will work best in a quick attack scheme with the Rook in its original position.',
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1pp1psbp1/p2p1pp1p/7P1/P1P1P1P1P/1P1PSP3/1BKGGS1R1/LN5NL b -',
          label: 'Diagram 1',
        ),
        Paragraph(
          text:
              'For the sake of argument, see the position below where Pawns in the even number files are all a square ahead. You can see how problematic it is for the Bishop to be effective. This explains the idea behind the proverb.',
        ),
        Diagram(
          sfenString: '9/9/9/9/9/1P1P1P1P1/P1P1P1P1P/1B7/9 b -',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              'When the game becomes slow, you are likely to push up other Pawns as well, like Diagram 3 (last move B2f). But remember, odd number first, then even number. This is the general idea.',
        ),
        Diagram(
          sfenString: 'ln3r1nl/1kg6/1s1g1sbp1/ppppppp1p/7P1/PPPPPPPBP/1S1GS4/1KG4R1/LN5NL w -',
          label: 'Diagram 3',
        ),
        Paragraph(
          text:
              'Also in the Yagura opening, you first play with the odd-number file Pawns. See Diagram 4 (last move P7d) how both Bishops are threatening each other camp with the 3rd, 5th and 7th file Pawns neatly positioned for their Bishops to pass.',
        ),
        Diagram(
          sfenString: 'ln3kbnl/1r1sg1g2/p2p2spp/1pp1ppp2/9/2PPP1P2/PPSG1P1PP/2G2S1R1/LNBK3NL b -',
          label: 'Diagram 4',
        ),
        Paragraph(
          text:
              'Needless to say, the proverb is not against the advancement of the Pawns in the even-number files at all times.',
        ),
      ],
    ),
  ],
);
