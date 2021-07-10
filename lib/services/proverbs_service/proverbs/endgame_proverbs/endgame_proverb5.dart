import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen41.htm
const endgameProverb5 = Proverb(
  index: 41,
  title: "Drop a Silver at the King's belly",
  japaneseTitle: 'Gyoku no hara kara Gin wo ute',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'The Silver does not move sideways, but when a Silver is dropped just beside the King, it often paves the way to mate.',
        ),
        Paragraph(
          text: 'Diagram 1-1 is the position you should keep in mind.',
        ),
        Diagram(
          sfenString: '5+B1nl/6Sk1/6pp1/8p/9/9/9/9/9 w 2rb4g3s3n3l15p',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              "White's King is in hisshi, or brinkmate: White, despite all the pieces he has in hand, cannot prevent Black's next Sx2c+ or +B3a. Don't you ever play S*3a, which will only let the King escape from 1c. As another proverb goes, squeeze first, check later.",
        ),
        Paragraph(
          text: 'Diagram 1-2 is a variation from above. How would you play here?',
        ),
        Diagram(
          sfenString: '5+B1nl/8k/6pp1/8p/9/9/9/9/9 b GS2rb3g3s3n3l15p',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text: 'G*2b, Kx2b will lead to the position in Diagram 1.',
        ),
        Paragraph(
          text: 'What if S*3b, instead? White will then play G*2b.',
        ),
        Paragraph(
          text: 'Diagram 1-3 also illustrates the useful tesuji based on the same idea.',
        ),
        Diagram(
          sfenString: '7nl/6GSk/6pp1/8p/7P1/9/9/9/9 w G2r2b2g3s3n3l14p',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              'If left alone, Black will play G*1c, Nx1c, S2a- (mate). If White plays R*5a to cover the 2a square, Sx1a+, Kx1a, G*2b (mate).',
        ),
        Paragraph(
          text:
              'To drop a Silver on the side of the King can be a basis for multiple threatmates. Hence, this is a very useful tesuji when approaching the King.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'How do you approach the King from Diagram 2-1?',
        ),
        Diagram(
          sfenString: '4+R2nl/6k2/4pp1p1/4s1p1p/4b2P1/9/9/9/9 b 2S',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              "Again, dropping a Silver on the King's side is the crucial move. It will at once block the King's only escape route, 3c, and make threatmate.",
        ),
        Paragraph(
          text: 'So White has to play K2b to escape from the threatmate. Now what will you play here?',
        ),
        Diagram(
          sfenString: '4+R2nl/5S1k1/4pp1p1/4s1p1p/4b2P1/9/9/9/9 b S',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text: 'Again, the Silver on the side: S*3b.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'K1c',
            '+Rx2a',
            'B2b',
            'S3c+',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: '7+Rl/6Sb1/4pp+Spk/4s1p1p/7P1/9/9/9/9 w N',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text: 'White is unable to defend his King further.',
        ),
        Paragraph(
          text: 'The final diagram below shows a similar position in which a belly Silver tesuji is most effective.',
        ),
        Diagram(
          sfenString: '4+R2nl/7k1/4sgspp/4ppp2/9/9/9/9/9 w G',
          label: 'Diagram 2-4',
        ),
        Paragraph(
          text: 'S*3b does the job. If left alone, +R2a. If Kx3b, then G*3a.',
        ),
        Paragraph(
          text: 'Remember, sometimes a belly Silver can do more than what check does.',
        ),
      ],
    ),
  ],
);
