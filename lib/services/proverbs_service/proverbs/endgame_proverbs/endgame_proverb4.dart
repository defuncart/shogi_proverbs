import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen40.htm
const endgameProverb4 = Proverb(
  index: 40,
  title: 'A Knight at the head of the King is hard to approach',
  japaneseTitle: 'Keitou no Gyoku yose nikushi',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text: 'What is the move you should NOT play in Diagram 1?',
        ),
        Diagram(
          sfenString: 'lnS6/2s6/kppg5/p2p5/2P6/P1S6/1P7/9/L8 b GNP',
          label: 'Diagram 1',
        ),
        Paragraph(
          text:
              'If you play N*8e, the King will come to 8d. Then even if you go on to play S8b=, there will not be any more effective moves on your part. (Diagram A)',
        ),
        Diagram(
          sfenString: 'ln7/1Ss6/1ppg5/pk7/1NP6/P1S6/1P7/9/L8 w GP',
          label: 'Diagram A',
        ),
        Paragraph(
          text: 'Suppose there is no Knight on 8e above. (Diagram B)',
        ),
        Diagram(
          sfenString: 'ln7/1Ss6/1ppg5/pk1p5/2P6/P1S6/1P7/9/L8 b GP',
          label: 'Diagram B',
        ),
        Paragraph(
          text:
              'There is an easy mate: G*8e. Please note that the Knight dropped at the head of the King blocked an easy access further on. This is why you should be careful when dropping a Knight in check in the endgame.',
        ),
        Paragraph(
          text: 'The right move in Diagram 1 is P9e. Again, use an edge Pawn against the edge King.',
        ),
      ],
    ),
  ],
);
