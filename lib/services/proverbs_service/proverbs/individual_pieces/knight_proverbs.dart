import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for knight section of ProverbType.pieces
final knightProverbs = [
  Proverb(
    title: 'Drop the Knight Well Back',
    japaneseTitle: 'Keima wa hikaete ute',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Diagram(
            sfenString: '7nl/4gg1k1/4sp1p1/4p1p1p/9/4PPP1P/5GNP1/6SK1/5G2L b BN',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                "Diagram 1 shows part of the position from the static Rook versus ranging Rook game. White's King is in an odd square, but this actually happens when White plays Kx2b after Black's Bx2b+, Bishop exchange.",
          ),
          Paragraph(
            text: 'Now is the good time for Black to drop a Knight, but where?',
          ),
          MoveSequence(
            moves: ['N*2f'],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: '7nl/4gg1k1/4sp1p1/4p1p1p/9/4PPPNP/5GNP1/6SK1/5G2L w B',
            label: 'Diagram 2',
          ),
          Paragraph(
            text: 'N*2f illustrates the Knight dropped well back, so that it can leap onto 3d, forking King and Gold.',
          ),
          Paragraph(
            text: 'White cannot allow his/her Gold to be taken. A Gold general should be by the King in guard.',
          ),
          MoveSequence(
            moves: [
              'K-3b',
              'Nx3d',
              'G-4a',
              'B*2b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'If White plays G-3c on Diagram 2, Black will play N-4e, another fork.',
          ),
          Paragraph(
            text:
                "After White's K-3b, a natural move, Black goes on to play Nx3d. If White plays G-4a, B*2b will do. There'll be no stopping Black's Bx1a. If White plays G-3c, Black can still play B*2b. Then, Gx3d and Bx1a will follow, leading to a favorable position for Black.",
          ),
          Paragraph(
            text:
                'When you cannot drop a Knight where it can fork, see if you can drop it further back. You may come up with a smart move.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                'A knight comes in handy when attacking the Mino-castle. Look at Diagram 3, where Black has just dropped a Knight on 8f. Surprisingly, this very move is threatmate to the seemingly unshakable Mino-castle.',
          ),
          Diagram(
            sfenString: 'ln1g5/1ks1g4/1ppp5/p3p4/9/PNPP5/1P7/9/L8 b BGSN',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'Moves to mate are:',
          ),
          MoveSequence(
            moves: [
              'N*7d',
              'Px7d',
              'Nx7d',
              'K-9b',
              'S*9c',
              'Kx9c',
              'B*8b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'Followed by',
          ),
          MoveSequence(
            moves: [
              'K-8d',
              'G*7e',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text: 'or',
          ),
          MoveSequence(
            moves: [
              'K-9b',
              'Bx9a+',
              'Kx9a',
              'G*8b',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'ln1g5/1ks1g4/1p7/p1ppp4/9/PNPP5/1P7/9/L8 w -',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                'Diagram 4 shows a similar position as Diagram 3. Again N*8f is a smart move. If you have a Pawn in hand, you can attack from the 9th file. If you have more pieces in hand, you can just play N-7d, mate.',
          ),
          Paragraph(
            text: 'Lastly let me show you how a Knight works in the edge attack.',
          ),
          Diagram(
            sfenString: 'ln1g5/1ks1g4/1ppp5/p3p4/9/P1PP5/1P7/9/L8 b N2P',
            label: 'Diagram 5',
          ),
          Paragraph(
            text: 'Moves from Diagram 5:',
          ),
          MoveSequence(
            moves: [
              'P-9e',
              'Px9e',
              'P*9c',
              'Lx9c',
              'P*9d',
              'Lx9d',
              'N*8f',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'The basic pattern of the edge attack begins with P-9e followed by P*9c.',
          ),
          Paragraph(
            text:
                'If you have more Pawns in hand, you can play P*9b before P*9c, which will give your opponent no choice.',
          ),
          Paragraph(
            text:
                "After luring White's Lance up to 9d, you play N*8f claiming the Lance. A very promising prospect on your part.",
          ),
          Paragraph(
            text:
                'When playing with the Mino-castle, you should remember that it is a sturdy castle when attacked from the side, but from the edge it could be pretty vulnerable.',
          ),
        ],
      ),
    ],
  ),
  Proverb(
    title: 'The Knight that jumps high falls prey to a Pawn.',
    japaneseTitle: 'Keima no takatobi Fu no ejiki',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'Beginners invariably seem to love this piece which leaps forward in two directions. When played prematurely, however, a Knight can be easy prey for a Pawn.',
          ),
          Diagram(
            sfenString: '3g1k1nl/6gb1/3psp1pp/6p2/4p4/5PP2/4PSN1P/4G2R1/8L b 2P',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                'N-4e may give you a good feeling, momentarily. But White will then play S-4b, aiming at a later P*4d. That will be one Knight of yours that falls prey to a Pawn.',
          ),
          Paragraph(
            text:
                "If Black did not have a Pawn on 5g, you could play N-4e. After S-4b, you can drop a P on 5d, thereby you can exchange your N for White's S in the future. Material gain means a lot in the beginning phase.",
          ),
          Paragraph(
            text: 'Back on Diagram 1, you need to do something before playing N-4e. Which is...?',
          ),
          MoveSequence(
            moves: [
              'P-3e',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                'P-3e is an important move to play here. By pushing a Pawn to be taken, you can drop a Pawn in hand on the 3rd file.',
          ),
          Paragraph(
            text: 'Moves thereafter:',
          ),
          MoveSequence(
            moves: [
              'Px3e',
              'P*3c',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                "After P*3c, if White responds with Bx3c or Gx3c, you can play N-4e forking the two pieces of higher value. What if White plays Nx3c? Yes, P*3d. You've learnt a lesson.",
          ),
        ],
      ),
    ],
  ),
];
