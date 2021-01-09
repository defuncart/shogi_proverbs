import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen23.htm
const openingProverb5 = Proverb(
  index: 22,
  title: 'Push up the Edge Pawn When Playing the Mino Castle',
  japaneseTitle: 'Mino-gakoi wa hashifu wo tsuke',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "The edge Pawn in the Mino-castle could play a crucial role. When your opponent plays P1d as in Diagram 1, you'd best respond with P1f. Later on the square of 1g will mean a great deal for your King.",
        ),
        Diagram(
          sfenString: '8l/9/7p1/6p1p/9/9/5PPPP/4G1SK1/5G1NL b -',
          label: 'Diagram 1',
        ),
        Paragraph(
          text:
              "Had your opponent's Pawn come to 9e, as in Diagram 2, and if your Gold on 6a were taken, your King will be mated in three moves: S*7a, K-9b, G*8b.",
        ),
        Diagram(
          sfenString: 'ln1+P5/1ks6/ppp6/9/P8/2P6/1P7/9/L8 b GS',
          label: 'Diagram 2',
        ),
        Paragraph(
          text: 'In Diagram 3, however, Black will need four Generals to mate the King.',
        ),
        Diagram(
          sfenString: 'ln1+P5/1ks6/1pp6/p8/9/P1P6/1P7/9/L8 b 2G2S',
          label: 'Diagram 3',
        ),
        Paragraph(
          text: 'Moves from Diagram 3:',
        ),
        MoveSequence(
          moves: [
            'S*7a',
            'K9b',
            'G*9c',
            'Kx9c',
            'S*8b',
            'K9b',
            'Sx9a+',
            'K9c',
            'S8b-',
            'Kx8b',
            'G*9b',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              "You should not drop a Gold on 9b as in Diagram 2. The King will then sit on 9c, and you won't be able to check any further.",
        ),
        Paragraph(
          text:
              'Compare those two diagrams above and see what a difference an edge Pawn can make when the King is in the Mino-castle. The edge square secured by pushing up a Pawn was worth two Generals in this case.',
        ),
        Diagram(
          sfenString: 'ln1+P5/1ks6/1pp6/9/p8/2P6/PP7/9/L8 b 3G3S',
          label: 'Diagram 4',
        ),
        Paragraph(
          text:
              "What if the edge Pawn was another square ahead (Diagram 4)? In order to mate White's King, you will need as many as six Generals.",
        ),
        Paragraph(
          text: 'Moves from Diagram 4:',
        ),
        MoveSequence(
          moves: [
            'S*7a',
            'K-9b',
            'G*9c',
            'Kx9c',
            'S*8b',
            'K-9d',
            'S*8e',
            'Kx8e',
            'G*7e',
            'K-9d',
            'G*8e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              'If, after the 5th move in the above, White plays K9b, it will be even quicker: G*9c, Nx9c, Sx9a+, Kx9a, G*8b.',
        ),
        Paragraph(
          text:
              'Now I hope I have made it clear that pushing up the edge Pawn, which is a part of the Mino-castle, can earn a lot: each square gained means two Generals.',
        ),
        Paragraph(
          text:
              "When you build up the Mino-castle, don't forget to push up the edge Pawn. You won't regret it, especially toward the endgame.",
        ),
      ],
    ),
  ],
);
