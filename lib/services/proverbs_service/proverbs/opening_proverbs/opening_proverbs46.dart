import 'dart:ui';

import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs 4-6 for ProverbType.opening
final openingProverbs46 = [
  Proverb(
    title: "In the Yagura Opening, Don't Push the Edge Pawn",
    japaneseTitle: 'Yagura-gakoi ni hashi-fu wo tsukuna',
    type: ProverbType.opening,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                "So long as you see the castle as a space secured for your King, you should push the edge Pawn thereby making more room for the King to breathe. However, if the opponent has also built up the Yagura castle, the opponent's attacking pieces will therefore be at your King's head. You may invite a premature clash by advancing the edge Pawn. So, do be careful. This is what the proverb teaches.",
          ),
          Diagram(
            sfenString: 'ln5nl/1r1s1bgk1/3p1gspp/ppp1ppp2/9/2PPP1PP1/PPSG1PN1P/1KGB1S1R1/LN6L b -',
            label: 'Diagram 1',
          ),
          Paragraph(
            text: 'If you play P9f in Diagram 1, there will follow:',
          ),
          MoveSequence(
            moves: [
              'P9f',
              'P8e',
              'P4f',
              'S7c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln5nl/1r3bgk1/2sp1gspp/p1p1ppp2/1p7/P1PPPPPP1/1PSG2N1P/1KGB1S1R1/LN6L b -',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'If you push up your edge Pawn in the same file as your opponent did his, you may let a fight start on the left wing. When you play White, S7c is a move to play after Black has played P9f.',
          ),
          Paragraph(
            text: 'Moves from Diagram 2:',
          ),
          MoveSequence(
            moves: [
              'S4g',
              'S8d',
              'P2e',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "Both sides have paved their way to begin an attack, but you should note that White is a step ahead because of Black's P9f.",
          ),
          Paragraph(
            text: 'Then there will follow:',
          ),
          MoveSequence(
            moves: [
              'P9e',
              'Px9e',
              'Sx9e',
              'Lx9e',
              'Lx9e',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: '1n5nl/1r3bgk1/3p1gspp/2p1ppp2/lp5P1/2PPPPP2/1PSG1SN1P/1KGB3R1/1N6L b SPlp',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                "See the price Black has to pay just because he hasn't observed the proverb. White's Sx9e is what you should remember when attacking the edge file with the Bo-gin.",
          ),
          Paragraph(
            text:
                'From Diagram 3, White can play R9b or P*9g, while Black is far from being comfortable having a skirmish started quite close to his King.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text: "What if you don't play P9f in Diagram 1?",
          ),
          MoveSequence(
            moves: [
              'P4f',
              'P9e',
              'S4g',
              'N7c',
              'P2e',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'l6nl/1r1s1bgk1/2np1gspp/1pp1ppp2/p6P1/2PPPPP2/PPSG1SN1P/1KGB3R1/LN6L w -',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "By not playing P9f in response to P9d, you have managed to keep White's attacking pieces at bay. You have allowed him to advance his edge Pawn to 9e instead, but Diagram 2 shows that you are the one to go first.",
          ),
          Paragraph(
            text: 'Again back in Diagram 1, what if White resorts to the Bo-gin?',
          ),
          MoveSequence(
            moves: [
              'P4f',
              'P8e',
              'S4g',
              'S7c',
              'P2e',
              'S8d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln5nl/1r3bgk1/3p1gspp/psp1ppp2/1p5P1/2PPPPP2/PPSG1SN1P/1KGB3R1/LN6L b -',
            label: 'Diagram 5',
          ),
          Paragraph(
            text:
                'You have nothing to worry about. When White plays S9e, you can chase it away by P9f. Also in this position, you are the one to take the initiative.',
          ),
          Paragraph(
            text:
                "Lastly, let me add the position in which you can play the edge Pawn. If White's Knight is on 7c at an early stage, as in Diagram 6, you can safely play P9f. In other words, as long as it's certain that White does not employ the Bo-gin, you can play P9f after White's P9d.",
          ),
          Diagram(
            sfenString: 'l6nl/1r1s1bgk1/2np1gspp/ppp1ppp2/9/2PPP1PP1/PPSG1PN1P/1KGB1S1R1/LN6L b -',
            label: 'Diagram 6',
          ),
          Paragraph(
            text:
                'This is my personal opinion, but when you play the double fortress opening, it is better to play something for the future offense rather than playing the defensive move (P9f in response to P9d).',
          ),
        ],
      ),
    ],
  ),
  Proverb(
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
  ),
  Proverb(
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
  ),
];
