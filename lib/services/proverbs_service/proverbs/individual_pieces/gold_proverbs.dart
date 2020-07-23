import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for gold section of ProverbType.pieces
final goldProverbs = [
  Proverb(
    title: 'Save the Gold till the end (for the coup de grace)',
    japaneseTitle: 'Kin wa todome ni nokose',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text: 'A Gold is a valuable piece in checkmate.',
          ),
          Diagram(
            sfenString: '4k4/9/9/9/9/9/9/9/9 b GS',
            label: 'Diagram 1',
          ),
          Paragraph(
            text: "How will you brinkmate White's King?",
          ),
          MoveSequence(
            moves: [
              'S*5c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: "Instead of using a Gold, you should narrow the King's escape by dropping a Silver first.",
          ),
          Paragraph(
            text:
                'With nothing in hand, White cannot escape from mate. If K-4a or K-6a, a Gold dropped at the head of the King will finish the game.',
          ),
          Paragraph(
            text:
                "If you drop a Gold instead of a Silver on 5c, there will follow: K-6a, S*6b, K-7b... You'll let the King escape.",
          ),
          Paragraph(
            text: 'Suppose you have no Golds in hand in Diagram 1, you will need three Silvers to finish:',
          ),
          MoveSequence(
            moves: [
              'S*5c',
              'K-4a',
              'S*3c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: '5k3/9/4S1S2/9/9/9/9/9/9 w S',
            label: 'Diagram 2',
          ),
          Paragraph(
            text: 'Please remember, where there is no Gold available, it is not easy to get access to the King.',
          ),
          Paragraph(
            text:
                'Lastly, the following diagram shows a tsume problem. This will pretty much recapitulate what I said above.',
          ),
          Diagram(
            sfenString: '6S2/8k/7p1/8p/9/9/9/9/9 b RGr2b3g3s4n4l16p',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'Solution:',
          ),
          MoveSequence(
            moves: [
              'R*1a',
              'Kx1a',
              'G*2b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
        ],
      ),
    ],
  ),
];
