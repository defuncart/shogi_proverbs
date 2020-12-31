import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

const openingProverb6 = Proverb(
  title: "Don't Put the King on the Bishop's Diagonal",
  japaneseTitle: 'Gyoku wa Kaku-suji wo sakeyo',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "Before you begin to build up your castle, be sure to look at your opponent's camp as well as yours. Pay attention, above all, where the opponent's Bishop sits. Placing your King on the Bishop's diagonal can be very dangerous.",
        ),
        Diagram(
          sfenString: 'l2g2knl/3r1sgb1/p1n1pp1pp/1ppps1p2/9/2PPP4/PPSG1PPPP/1KGB1S1R1/LN5NL w -',
          label: 'Diagram 1',
        ),
        Paragraph(
          text:
              'Diagram 1 shows where Black has played K-8h, in the Yagura castle: a normal move, apparently. But it turned out to be a bad move, since the King moved into a dangerous zone.',
        ),
        Paragraph(
          text: 'Moves from Diagram 1:',
        ),
        MoveSequence(
          moves: [
            'N8e',
            'S8f',
            'P6e',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'l2g2knl/3r1sgb1/p3pp1pp/1pp1s1p2/1n1p5/1SPPP4/PP1G1PPPP/1KGB1S1R1/LN5NL b -',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              "N8e is a smart move on White's part. Naturally Black avoids offering his Silver in exchange for a Knight; therefore, he plays S8f, but White's next move, P6e, gives Black a headache. Black cannot play Px6e.",
        ),
        Paragraph(
          text: 'Moves thereafter:',
        ),
        MoveSequence(
          moves: [
            'S5g',
            'Px6f',
            'Sx6f',
            'S6e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'l2g2knl/3r1sgb1/p3pp1pp/1pp3p2/1n1s5/1SPSP4/PP1G1PPPP/1KGB3R1/LN5NL b Pp',
          label: 'Diagram 3',
        ),
        Paragraph(
          text: 'In Diagram 3, Black is already in a losing position.',
        ),
        Paragraph(
          text:
              "Back in Diagram 1 where White is ready to attack from the 6th file, Black should have built a different type of castle, like the one in Diagram 4 (last move N7c). You don't have to stick to the authentic Yagura castle at all times. Even if you cannot complete the castle and leave it as in Diagram 4, it does not mean that you are in a bad position.",
        ),
        Diagram(
          sfenString: 'l2g2knl/3r1sg2/p1n1ppbpp/1ppps1p2/7P1/2PPP1P2/PP1GSP2P/1BGS3R1/LNK4NL b -',
          label: 'Diagram 4',
        ),
        Paragraph(
          text:
              "As a guideline, you should remember, unless there are two pieces or more that are interposed between the Bishop and your King, it won't be safe to place your King in the Bishop's diagonal. You should note, however, in case those interposed pieces are sure to be attacked, for instance by White's N8e and P6e as in Diagram 1, it is not at all safe. Don't forget that the Bishop's diagonal can be quite dangerous for your King.",
        ),
      ],
    ),
  ],
);
