import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen29.htm
const openingProverb11 = Proverb(
  index: 28,
  title: 'There are Three Advantages to Pawn-Exchange in the Rook File',
  japaneseTitle: 'Hisha-saki kokan mittsu no toku ari',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Diagram(
          sfenString: '6snl/6gb1/5pppp/9/7P1/9/6P1P/7R1/7NL b -',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              'A series of moves that starts from Diagram 1-1 and ends with Black having a Pawn in hand is known as the Pawn-exchange in the Rook file.',
        ),
        Paragraph(
          text: 'Moves from Diagram 1-1:',
        ),
        MoveSequence(
          moves: [
            'P2d',
            'Px2d',
            'Rx2d',
            'P*2c',
            'R2h',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              'The term "Hisha-saki kokan" (Pawn-exchange in the Rook file) is usually applied only to the static Rook opening.',
        ),
        Paragraph(
          text: '''The three advantages are:
(1) You have a Pawn in hand.
(2) Your Rook can penetrate the opponent's camp in one move.
(3) Your other pieces can move up more smoothly.''',
        ),
        Paragraph(
          text: 'Diagram 1-2 (last move S*4a) is an illustration of (2) above.',
        ),
        Diagram(
          sfenString: '5s1nl/6gb1/5ppp1/8p/9/8P/6P2/7R1/7NL w P',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              'If White responds with G3a or G4b, you can play R4c+, which will lead to a successful position for you.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'By exchanging Pawns in the Rook file, you will have a greater choice in your offensive plans.',
        ),
        Paragraph(
          text:
              "Diagram 2-1 shows where Black has already exchanged Pawns, and this partial position is what you should remember as your cue for breaking through White's defense.",
        ),
        Diagram(
          sfenString: '5k1nl/6gb1/5ppp1/8p/9/8P/6P2/7R1/7NL b P',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text: 'Moves from Diagram 2-1:',
        ),
        MoveSequence(
          moves: [
            'P1e',
            'Px1e',
            'P*1c',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '5k1nl/6gb1/5pppP/9/8p/9/6P2/7R1/7NL w p',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              'Begin with the edge-wing attack: P1e, Px1e, P*1c. This is one of the basics. When beginning the edge attack, it is crucial whether you have a Pawn in hand or not.',
        ),
        Paragraph(
          text: 'Moves from Diagram 2-2:',
        ),
        MoveSequence(
          moves: [
            'Lx1c',
            'S*1b',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Paragraph(
          text: 'If White neglects responding to your P*1c, you can play Lx1e.',
        ),
        Paragraph(
          text:
              'If, from Diagram 2-2, White plays Nx1c, you can play Lx1e, thereby you will be able to play P*1d at your next move.',
        ),
        Paragraph(
          text:
              "White's L*1c is the most ordinary response at this juncture. Your next move, S*1b, will ensure a great gain on your part.",
        ),
        Paragraph(
          text: 'You can next play either Sx2c+ or Sx2a+, with which White simply cannot cope.',
        ),
        Paragraph(
          text: 'Thus, you should not miss an opportunity of exchanging Pawns in the Rook file.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              "The Pawn-exchange in the Rook file makes room for your other pieces to advance towards the opponent's camp.",
        ),
        Diagram(
          sfenString: '5k1nl/6gb1/5p1p1/6p1p/7P1/7SP/6P2/7R1/7NL w -',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text:
              'Diagram 3-1 shows where Black has begun the bo-Gin tactic (climbing Silver), but the position is hardly promising for Black. In order for the bo-Gin to work, Black needs to play P1f and P1e, or P3f and P3e.',
        ),
        Paragraph(
          text:
              'Diagram 3-2 shows a similar position but there is a big difference: the Pawns in the second file have already been exchanged.',
        ),
        Diagram(
          sfenString: '5k1nl/6gb1/5p1p1/6p1p/9/7SP/6P2/7R1/7NL w P',
          label: 'Diagram 3-2',
        ),
        Paragraph(
          text:
              "There is nothing to hinder Black's Silver to advance to 2e, from where he can next play Sx3d thereby making the breakthrough in the 2nd file possible.",
        ),
        Paragraph(
          text:
              'If White plays G3c to secure the Pawn on 3d, Black can drop his Pawn on 2d (Diagram 3-3). Quite successful position for Black.',
        ),
        Diagram(
          sfenString: '5k1nl/7b1/5pgp1/6pPp/7S1/8P/6P2/7R1/7NL w -',
          label: 'Diagram 3-3',
        ),
        Paragraph(
          text: '''From Diagram 3, 
(a) if White plays Px2d, Sx2d, Gx2d, Rx2d, 
(b) if White makes no response in this area,
   (b1) Px2c+, Gx2c, S2d, Gx2d, Rx2d, or 
   (b2) Sx3d, Gx3d, Px2c+, or 
   (b3) Sx3d, Gx2d, Sx2c+, Gx2c, Rx2c+.''',
        ),
        Paragraph(
          text: 'All will lead to quite a favorable position for Black.',
        ),
        Paragraph(
          text: 'Remember, your own Pawn in the Rook file can be a hindrance to your deployment.',
        ),
      ],
    ),
  ],
);
