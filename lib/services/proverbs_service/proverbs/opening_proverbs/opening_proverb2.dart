import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

const openingProverb2 = Proverb(
  title: "Don't Put King and Rook Close Together",
  japaneseTitle: 'Gyoku-hi sekkin su bekarazu',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'This is one of the most important proverbs that I should say is something you should learn before actually playing a game.',
        ),
        Paragraph(
          text:
              'The Rook is by far the most important piece in offence, therefore being close to the Rook means close to the battlefield. The King had better be some distance away.',
        ),
        Paragraph(
          text: 'Thus, one of the basics is that you should castle your King in the opposite direction to your Rook.',
        ),
        Paragraph(
          text:
              'When you want to play the 4th file ranging Rook, begin with P7f, followed by P6f, and R6h. Then you go on to play K4h, K3h, and K2h, so that the Rook and the King sit left and right, safely apart.',
        ),
        Paragraph(
          text:
              'After that, you play S3h, G6i-5h, S7h. Now you have completed the Mino castle and about to be ready to move into the next phase. (Diagram 1)',
        ),
        Diagram(
          sfenString: '9/9/9/9/9/2PP5/PP2PPPPP/1BSRG1SK1/LN3G1NL b -',
          label: 'Diagram 1',
        ),
        Paragraph(
          text:
              'Above is how the traditional ranging Rook opening has been played. Recently, however, S3h is often played before the King is moved.',
        ),
        Paragraph(
          text:
              "Next, I'll show you how you should move your pieces when you want to play the Yagura opening: P7f, S6h, P6f, P5f, S4h.",
        ),
        Paragraph(
          text: 'Then, you play G7h, K6i, G5h. (Diagram 2, the Crab-gakoi castle)',
        ),
        Diagram(
          sfenString: '9/9/9/9/9/2PPP4/PP3PPPP/1BGSGS1R1/LN1K3NL b -',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              'The castle in Diagram 2 is called the Kani (crab) castle, which is strong against an attack from above. From here you can build a Yagura castle by playing S7g, G5h-6g.',
        ),
        Paragraph(
          text:
              'There are many variations to build a Yagura, and you can be flexible. Just remember to move your generals diagonally.',
        ),
        Paragraph(
          text:
              'You still have to move your Bishop so that the King can safely sit in the Yagura castle. So you play, B7i, B6h, K7i, and K8h. (Diagram 3)',
        ),
        Diagram(
          sfenString: '9/9/9/9/9/2PPP4/PPSG1PPPP/1KGB1S1R1/LN5NL b -',
          label: 'Diagram 3',
        ),
        Paragraph(
          text: 'There, the King is sitting safely in the Yagura castle far from the Rook.',
        ),
      ],
    ),
  ],
);
