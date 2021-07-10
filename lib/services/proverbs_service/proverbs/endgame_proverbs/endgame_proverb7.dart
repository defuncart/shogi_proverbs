import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen43.htm
const endgameProverb7 = Proverb(
  index: 43,
  title: "An attack with four pieces won't fail",
  japaneseTitle: '4mai no seme wa kirenai',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'How many pieces will you need to continue attacking till the end of the game? Three is not always enough. When you have four attacking pieces including those in hand, your offensive will be strong enough to carry through.',
        ),
        Paragraph(
          text:
              'Diagram 1 (last move P*4h) shows where Black, with the anaguma castle guarded by four generals, has begun attacking using the promoted Rook, the promoted Bishop and a Knight. He has a Pawn in hand, but at the moment there is no good place to drop it. Thus, there are only three pieces active on the offensive. It looks like too small an attacking force. How will you convert it into a four-piece attack position?',
        ),
        Diagram(
          sfenString: 'ln1g2+R2/1kss4l/1p1g3pn/1bppp+Bp1p/p4N3/2P1P1P1P/PP1P1P3/LSGS1p2L/KNG4r1 b P',
          label: 'Diagram 1',
        ),
        Paragraph(
          text: 'You begin with P5e. If Px5e, then P*5d will add the fourth attacking piece.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'P4i+',
            'Px5d',
            '+P5i',
            'P5c+',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1g2+R2/1kss4l/1p1g+P2pn/1bpp1+Bp1p/p4N3/2P3P1P/PP1P1P3/LSGS4L/KNG1+p2r1 w 2P',
          label: 'Diagram 2',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2:',
          moves: [
            '+P6i',
            '+Px6c',
            'Sx6b-6c',
            'N5c+',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1g2+R2/1ks5l/1p1s+N2pn/1bpp1+Bp1p/p8/2P3P1P/PP1P1P3/LSGS4L/KNG+p3r1 w G2Pp',
          label: 'Diagram 3',
        ),
        Paragraph(
          text: "In Diagram 3, the position is clearly in Black's favor.",
        ),
        Paragraph(
          text:
              "When you approach the King, try to procure four attacking pieces. Then you won't have to worry about running out of steam.",
        ),
      ],
    ),
  ],
);
