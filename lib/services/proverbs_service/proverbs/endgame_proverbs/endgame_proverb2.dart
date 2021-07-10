import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen38.htm
const endgameProverb2 = Proverb(
  index: 38,
  title: 'Drive the King to the Back Rank',
  japaneseTitle: 'Gyoku wa gedan ni otose',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'Since most of the shogi pieces have greater forward rather than rearward power, naturally it is more effective to chase the King from the front. The King that sits on the first or the 9th rank has a smaller space to escape to.',
        ),
        Diagram(
          sfenString: '4+P2nl/7k1/6pp1/5P2p/6s2/7+rP/9/9/9 b 2BG',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text: 'What is the best move from Diagram 1-1? P4c+ would only let the King escape from 1c.',
        ),
        MoveSequence(
          moves: [
            'B*3a',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '4+P1Bnl/7k1/6pp1/5P2p/6s2/7+rP/9/9/9 w BG',
          label: 'Diagram 1-2',
        ),
        MoveSequence(
          description: 'Moves from Diagram 1-2:',
          moves: [
            'Kx3a',
            'P4c+',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Paragraph(
          text: 'Here P4c+ makes threatmate: If White plays elsewhere Black will play G*3b.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'K2b',
            'B*3a',
            'K1b',
            '+P3b',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: '4+P1Bnl/6+P1k/6pp1/8p/6s2/7+rP/9/9/9 w Gb',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              "White plays K2b to escape from threatmate, but Black's B*3a comes next, to which White only has to respond with K1b, then +P3b finally leaves White defenseless.",
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'In Diagram 2-1, having a dangling Pawn on 2d, which is valueless, Black has a very good move to play.',
        ),
        Diagram(
          sfenString: '5R1nl/4g1gk1/4pp3/6pPp/5Ps2/9/9/9/8L b Gg',
          label: 'Diagram 2-1',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-1:',
          moves: [
            'G*2c',
            'Gx2c',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '5R1nl/4g2k1/4pp1g1/6pPp/5Ps2/8P/9/9/8L b 2g',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "Don't play Px2c+ right away. There will follow Kx2c, Rx2a+, and White will then play G*2b (Diagram 2-2A).",
        ),
        Diagram(
          sfenString: '7+Rl/4g2g1/4pp1k1/6p1p/5Ps2/9/9/9/8L b GNgp',
          label: 'Diagram 2-2A',
        ),
        Paragraph(
          text: "If Black plays +Rx1a after the above, White's G*2a will capture the Rook.",
        ),
        Paragraph(
          text:
              'Those few moves just above are unsuccessful because Black chases the King from the rear. How will you approach from the front then?',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-2:',
          moves: [
            'Rx2a+',
            'Kx2a',
            'Px2c+',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '7kl/4g4/4pp1+P1/6p1p/5Ps2/9/9/9/8L w GNr2g',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text:
              'Sacrifice your Rook when the time is right. This way the King will be forced to come down to the 1st rank.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'G*3b',
            'N*3c',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: '7kl/4g1g2/4ppN+P1/6p1p/5Ps2/8P/9/9/8L w Grg',
          label: 'Diagram 2-4',
        ),
        Paragraph(
          text:
              'A knight drop at the head of the Gold. This is another tesuji for approaching the King. Gx3c, G*2b, or K3a, G*4a, either will end the game.',
        ),
        Paragraph(
          text:
              "Take a look at Diagram 2-2A and Diagram 2-3 again, and keep in mind what a difference it makes when you chase the King from the rear (Diagram 2-2A) as opposed to when you drive the King to the 1st rank and then give a finishing touch (Diagram 2-3).",
        ),
      ],
    ),
  ],
);
