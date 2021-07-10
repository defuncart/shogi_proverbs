import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen39.htm
const endgameProverb3 = Proverb(
  index: 39,
  title: 'Against a King on the edge, push the edge Pawn',
  japaneseTitle: 'Hashi-gyoku niwa Hashi-fu',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "When the King sits in the edge file, pushing the Pawn aiming at the King's head is often effective. Look at Diagram 1-1, and see how you should approach the King.",
        ),
        Diagram(
          sfenString: 'lnS+P5/k8/1pp6/p8/9/P1P6/1P7/9/L8 b G',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              'G*8b, K9c, Gx8a will give you a Knight in hand, but in exchange for letting a Gold from your hand. What is worse, the King will escape through 9c. Another line of attack, +P6b then +P7b, is steady but slow. It is more than a pity that even the second move, P7b, is not threatmate.',
        ),
        Paragraph(
          text:
              'The best move here is P9e (Diagram 1-2). This does not make threatmate yet, but the next Px9d will leave White defenseless.',
        ),
        Diagram(
          sfenString: 'lnS+P5/k8/1pp6/p8/P8/2P6/1P7/9/L8 w G',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text: 'If White responds with Px9e, then Lx9e, P*9c, G*8b.',
        ),
        Paragraph(
          text: 'If White plays P8d, hoping to open an escape route for the King, then G*8b, K9c, Px9d, mate.',
        ),
        Paragraph(
          text:
              'The edge Pawn against the edge King can make all the difference in the endgame. When you have several options in a similar position, I advise that you should think of pushing the edge Pawn as a top priority.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'What is the best move to play from Diagram 2-1?',
        ),
        Diagram(
          sfenString: 'lnS6/9/kpp6/p8/9/P1P6/1P7/9/L8 b 2Gs',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              "G*8e may appear effective in blocking the King's escape route. But against this, White will play P8d. Even if you are determined to go on with Gx9d, you will be met with Kx9d, P9e, K8c, G*8b, K7d. (Diagram 2-A)",
        ),
        Diagram(
          sfenString: 'lnS6/1G7/2p6/1pk6/P8/2P6/1P7/9/L8 b Pgs',
          label: 'Diagram 2-A',
        ),
        Paragraph(
          text: 'So, also in this case, play as the proverb teaches: P9e.',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-1:',
          moves: [
            'P9e',
            'Px9e',
            'G*8e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'lnS6/9/kpp6/9/pG7/2P6/1P7/9/L8 w Gsp',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "Black's P9e from Diagram 2-1 is threatmate (Px9d, K8d, G*7e), so White has to respond with Px9e. Then G*8e is the infallible way to nab the King.",
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-2:',
          moves: [
            'S*9d',
            'Lx9e',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'lnS6/9/kpp6/s8/LG7/2P6/1P7/9/9 w GPp',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text:
              "From Diagram 2-3, White's only defense will be to interrupt the Lance, so he has to drop his Silver on 9d. But even this doesn't work. White will play Lx9e, leaving Black totally helpless. If, from here, White plays Sx9e, then P*9d, K9b, G*8b (mate).",
        ),
      ],
    ),
  ],
);
