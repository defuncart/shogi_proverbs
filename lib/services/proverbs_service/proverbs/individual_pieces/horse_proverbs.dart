import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for horse section of ProverbType.pieces
const horseProverbs = [
  // http://www.shogi.net/kakugen/kakugen15.htm
  Proverb(
    index: 14,
    title: 'Pull the Horse to your own Camp',
    japaneseTitle: 'Uma wa jijin ni',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                "The Horse can be surprisingly difficult to use in offense. It should be far more effective if the Horse is placed in your own camp threatening the opponent's camp from afar. This is the idea behind the proverb.",
          ),
          Diagram(
            sfenString: 'ln1g4+B/1ks1g4/1p2s4/p1ppp1p1p/9/P1P1P1P1P/1P1P5/2KSG4/LN1GS2rL b RNL3Pbnp',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                "Diagram 1 shows where White has just dropped a Rook on 2i. If Black plays likewise: R*4a, White will then play P*2b blocking the path of Black's Horse.",
          ),
          Diagram(
            sfenString: 'ln1g1R2+B/1ks1g2p1/1p2s4/p1ppp1p1p/9/P1P1P1P1P/1P1P5/2KSG4/LN1GS2rL b NL3Pbn',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "If the Dragon instead of the Horse was in White's camp as in Diagram 3, Black can play +R2i after P*2b. In this way Black can place the Dragon on a vital point in just one move. But in Diagram 2, Black has to play two moves, i.e.,+B1b and +Bx3d, before the Horse comes to a good square.",
          ),
          Paragraph(
            text: "You should always be prepared for the opponent's blocking Pawn drop.",
          ),
          Diagram(
            sfenString: 'ln1g5/1ks1g2p+R/1p2s4/p1ppp1p1p/9/P1P1P1P1P/1P1P5/2KSG4/LN1GS2rL b BNL3Pbn',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                'Back in Diagram 1, the move you should play is +B6f. (Diagram 4) See for yourself that the Horse is on a very good square both in offense and defense.',
          ),
          Diagram(
            sfenString: 'ln1g5/1ks1g4/1p2s4/p1ppp1p1p/9/P1P+BP1P1P/1P1P5/2KSG4/LN1GS2rL w RNL3Pbnp',
            label: 'Diagram 4',
          ),
          Paragraph(
            text: 'Moves after Diagram 4:',
          ),
          MoveSequence(
            moves: [
              'Rx1i+',
              'P9e',
              'Px9e',
              'P*9c',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'ln1g5/1ks1g4/Pp2s4/2ppp1p1p/p8/2P+BP1P1P/1P1P5/2KSG4/LN1GS3+r w RNL2Pbnl2p',
            label: 'Diagram 5',
          ),
          Paragraph(
            text: 'With the Horse behind, the edge attack is quite effective.',
          ),
          Paragraph(
            text:
                'After Diagram 5, if White plays Lx9c, you can go on to play P*9d. White will respond with Lx9d, then you can play N*8f, claiming a Lance on 9d and a Pawn on 7d at the same time. This is a quite favorable position for you.',
          ),
          Paragraph(
            text: 'Remember this all results from the Horse being pulled back in your own camp.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                'The following position (Diagram 6) is from a professional title match. The move which can be called the quintessence of the proverb above actually decided the game.',
          ),
          Diagram(
            sfenString: 'ln1g5/1ks3R+B1/2ppp4/p3s1G1p/3P5/2P1GP2P/PP1BP+n3/2KS3r1/LN6L b GL5Psnp',
            label: 'Diagram 6',
          ),
          Paragraph(
            text:
                "The game began with the Hineri-bisha opening which led to a wild middlegame, with both players vying to set their own Rooks free from their entangled positions (sabaku). Diagram 6 shows where White has just played N4g+, closing in on Black's camp. Since the King's guard is rather thin, White's S*5i or +N5h could be quite devastating.",
          ),
          MoveSequence(
            moves: [
              '+B7g',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln1g5/1ks3R2/2ppp4/p3s1G1p/3P5/2P1GP2P/PP+BBP+n3/2KS3r1/LN6L w GL5Psnp',
            label: 'Diagram 7',
          ),
          Paragraph(
            text: "By carrying out what the proverb teaches, Black's camp was duly reinforced.",
          ),
          MoveSequence(
            moves: [
              'S*5h',
              'G4d',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'ln1g5/1ks3R2/2ppp4/p3sG2p/3P5/2P1GP2P/PP+BBP+n3/2KSs2r1/LN6L w GL5Pnp',
            label: 'Diagram 8',
          ),
          Paragraph(
            text:
                "Black's G4d was a calm and calculated move, making good use of an idle piece and clearing the Rook's path, which will enable him to play P*3h, when necessary, to block White's Rook.",
          ),
          Paragraph(
            text: 'Moves after Diagram 8:',
          ),
          MoveSequence(
            moves: [
              'Sx6g=',
              '+Bx6g',
              '+N5h',
              '+Bx5h',
              'Rx5h+',
              'L*8f',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'ln1g5/1ks3R2/p1ppp4/4sG2p/3P5/1LP1GP2P/PP2P4/2KS+r4/LN6L w GSN5P2bnp',
            label: 'Diagram 9',
          ),
          Paragraph(
            text:
                "White did not have much choice left. He took the Bishop and played +N5h. Next came a beautiful countermove from Black that finished the game. He took the Knight and then dropped a Lance on 8f, giving White's King forced mate.",
          ),
          Paragraph(
            text: 'Moves to mate:',
          ),
          MoveSequence(
            moves: [
              'P*8c',
              'Lx8c+',
              'Kx8c',
              'N*7e',
              'K7d',
              'S*8e',
              'Kx8e',
              'N7g',
              'K8d',
              'G*8e',
            ],
            playerFirstMove: PlayerType.gote,
          ),
        ],
      ),
    ],
  ),
];
