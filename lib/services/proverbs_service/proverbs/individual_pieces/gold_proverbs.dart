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
  Proverb(
    title: 'Entice the Gold diagonally forwards',
    japaneseTitle: 'Kin wa naname ni sasoe',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text: 'A Gold can move diagonally forward, but needs two moves to get back to where it was.',
          ),
          Diagram(
            sfenString: '7nl/3R+P1gk1/5gspp/5pp2/9/9/9/9/9 b 2P',
            label: 'Diagram 1',
          ),
          Paragraph(
            text: "White's King is in the Yagura castle. How will you go about to attack the Yagura?",
          ),
          MoveSequence(
            moves: [
              'P*5d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'A Pawn dropped like this is called a dangling Pawn. It is very effective here.',
          ),
          Paragraph(
            text:
                'P*4b is another possibility. However, you will need two more moves (P-4a+ and +P-4b) to make it work. If you play P*5d in the first place, your next intended move, P-5c+, will do the job more quickly.',
          ),
          Paragraph(
            text: 'So, in response to P*5d, White will have to play Gx5d: a Gold lured diagonally forward.',
          ),
          MoveSequence(
            moves: [
              'Gx5d',
              'P*4c',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: '7nl/3R+P1gk1/5Pspp/4gpp2/9/9/9/9/9 w p',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'The second Pawn drop on 4c is quite devastating, which is again luring the Gold on 3b diagonally forward.',
          ),
          MoveSequence(
            moves: [
              'Gx4c',
              '+P-5c',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: '7nl/3R3k1/4+Pgspp/4gpp2/9/9/9/9/9 w 2p',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                'The last move in Diagram 3 is check and claiming a Gold at the same time, which leaves White almost defenseless.',
          ),
          Paragraph(
            text: 'Remember that dangling Pawns can lure Golds away from the King.',
          ),
        ],
      ),
    ],
  ),
  Proverb(
    title: 'With a Gold on your back rank, you can sacrifice the Rook',
    japaneseTitle: 'Ichidan kin ni hisha sute ari',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'When your camp is well-protected against a Rook drop, you can sacrifice your Rook. This is what the proverb teaches.',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/P1P1P1P1P/1P1P1P1P1/2KG2S2/LN3G1NL w r',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                "When a Gold is on the first rank as in Diagram 1, there's no room for a Rook drop. The combination of the Silver on 3h and the Gold on 4i makes a strong defense against a Rook drop.",
          ),
          Paragraph(
            text: 'A Silver on the first rank, in contrast, makes an ill-shaped defense.',
          ),
          Paragraph(
            text:
                'Diagram 2 shows where a Silver and two Golds are placed around the King, building up a sturdy guard. On the other hand, the right side of the camp is weaker.',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/P1P1P1P1P/1PSP1P1P1/2KGG4/LN5NL w r',
            label: 'Diagram 2',
          ),
          Paragraph(
            text: 'White will drop the Rook on 3i.',
          ),
          Paragraph(
            text:
                'Provided the opponent has a Rook in hand, your King is safer in Diagram 1 than Diagram 2. This is one of those ironies in shogi that you should keep in mind: A seemingly sturdy castle with Silvers and/or Golds closely around the King can invite a dangerous Rook drop.',
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: 'ln3g1nl/1r4kb1/p4psp1/2pgp1p1p/1p1p1S3/2P6/PPBs1PPPP/6SK1/LN1GRG1NL b Pp',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                "Diagram 3 is from an actual game where White has just dropped a Silver on 6g. Black wants to play Sx5d, but White will respond with P*5f thereby closing up the Rook's path. How would you play here?",
          ),
          MoveSequence(
            moves: [
              'Rx5d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "Black has two Golds on the first rank, which is a strong defense against a Rook drop. So, Black resorted to an aggressive move: Rx5d. This made White's Silver on 6g look pointless, since the Silver was intended to restrict Black's Rook.",
          ),
          MoveSequence(
            moves: [
              'Gx5d',
              'Sx5d',
              'B-1c',
              'P*6d',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'ln5nl/1r3gk2/p4pspb/2pPS1p1p/1p1p5/2P6/PPBs1PPPP/6SK1/LN1G1G1NL w GPrp',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "Black's Silver is now edging up on White's King, while White's Bishop and Silver on 6g are idle pieces. The position above is in Black's favor in spite of Black's material loss (a Gold for a Rook).",
          ),
          Paragraph(
            text:
                "Take note that White's B-1c was a good move in his bad position, placing the Bishop on a better square and giving the King more breathing space. However, Black's next move, P*6d, was even better, gaining ground for further attack.",
          ),
          Paragraph(
            text:
                "A Rook is a strong piece and you may well be reluctant to let it fall into your opponent's hand, but provided your camp has no hole for a Rook drop, the sacrifice of it is certainly a possibility to be considered.",
          ),
        ],
      ),
    ],
  ),
];
