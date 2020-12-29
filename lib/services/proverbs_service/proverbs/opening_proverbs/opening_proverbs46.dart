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
];
