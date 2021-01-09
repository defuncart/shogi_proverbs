import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for dragon section of ProverbType.pieces
const dragonProverbs = [
  // http://www.shogi.net/kakugen/kakugen16.htm
  Proverb(
    index: 15,
    title: 'The Dragon had better be inside',
    japaneseTitle: 'Ryu wa soto yori uchi',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text: "The promoted Rook is most destructive when it has penetrated deep inside the opponent's camp.",
          ),
          Paragraph(
            text:
                'Every shogi piece is meant to move forward, so an attack from the front can be coped with more easily than one from the side. Therefore, the promoted Rook can be quite effective as a tool to threaten from the side.',
          ),
          Diagram(
            sfenString: 'ln5+R1/1kgs5/1sbg5/ppppp1p1p/9/PPPPP1P1P/1SBG5/1KGS5/LN6+r b NL2Pnl2p',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                "Diagram 1 shows where each player has promoted his Rook. What the proverb teaches is that the promoted Rook deeper within the opponent's territory is better. The reason is...",
          ),
          MoveSequence(
            moves: [
              'P*2i',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'Now look at Diagram 2.',
          ),
          Diagram(
            sfenString: 'ln3p1+R1/1kgs5/1sbg5/ppppp1p1p/9/PPPPP1P1P/1SBG5/1KGS5/LN3+r3 b NL2Pnlp',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "In the above Diagram, White's promoted Rook is even closer, on 4i. It will be your turn to face difficulty when White drops a Pawn on 4a.",
          ),
          Paragraph(
            text:
                "Generally speaking, the big pieces like Rooks and Bishops function better when placed at a distance and aim at the opponent's King from afar, but when both you and your opponent have the promoted Rook in each other's camp, it would help you if you could place yours closer to the opponent's castle.",
          ),
          Paragraph(
            text: 'Remember, the promoted Rook is also good for defense.',
          ),
        ],
      ),
    ],
  ),
];
