import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for lance section of ProverbType.pieces
final lanceProverbs = [
  Proverb(
    index: 2,
    title: 'Drop the Lance on the back rank',
    japaneseTitle: 'Kyo wa gedan kara ute',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'The Lance dropped on the first rank has eight squares to go to. If dropped on the second rank, it can only go to one square. When in doubt, drop the lance as far back as you can.',
          ),
          Diagram(
            sfenString: 'ln1g4+R/1ks1gp3/1pp1p3n/5Pppp/p8/2P1P1P1P/PP2+s1+b2/LSG3+r1L/KNG6 b BNL3Ps',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                'Diagram 1 is from the endgame between the static Rook anaguma (Black) and the ranging Rook (White) (last move S-5g+). How should Black play next? Where would you drop your Lance?',
          ),
          MoveSequence(
            moves: [
              'L*6i',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "Are you aware that White has no Pawn in hand? When you drop a Lance, make sure that the Lance won't be killed by the opponent's Pawn drop. In the position above, not only does the Lance target the Gold on 6b, but also eliminates White's +S-6g. So, this is a very good move both in offense and defense.",
          ),
          Paragraph(
            text:
                "White will then play G-7a, but Black can now drop a Knight on 6d, forking Gold and Silver. Note that you cannot just drop a Knight on 6d, which happens to be on the +B's path.",
          ),
          Paragraph(
            text:
                "The Lance dropped from the first rank can be far more effective than the one dropped farther up the board.",
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: '9/5bgk1/5gsp1/4ppp2/7P1/4P1P2/5P3/8R/9 b Lp',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "Where would you, as Black, drop your Lance in Diagram 2? L*1g may have been the first idea that came to your mind. It's not entirely a bad idea. You could then play L-1b+ to chase the King and R-1c+ afterwards. But this line of moves is what we call \"heavy\", meaning slow and less efficient.",
          ),
          Paragraph(text: 'L*1i is a much better move.'),
          Paragraph(
            text:
                'Even if White plays K-3a in the hopes of running away to a safe place, it will be of no avail. Since White has nothing in hand other than a Pawn, he/she cannot escape from R-1a+, checkmate.',
          ),
          Paragraph(
            text:
                'When you build up a strategy using a Rook and a smaller piece, you usually place the smaller piece ahead of the Rook for a breakthrough, but when you have a Lance in hand, the Rook can go first.',
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: 'ln5nl/1r3bgk1/p2s1gspp/2ppppp2/1p6P/2PPP1PP1/PPS2PN1L/2G1GS2R/LNBK5 b -',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                'Diagram 3 shows the double fortress (double Yagura) opening, where Black is about to attack with the Spearing the Sparrow tactic. Please note how the Lance plays the crucial role from here.',
          ),
          MoveSequence(
            moves: [
              'N-2e',
              'S-2d',
              'Nx1c+',
              'Sx1c',
              'P-1d',
              'Sx1d',
              'Lx1d',
              'Lx1d',
              'Rx1d',
              'L*1a',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln5nl/1r3bgk1/p2s1g1p1/2ppppp1R/1p7/2PPP1PP1/PPS2P3/2G1GS3/LNBK5 b SLPnp',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "With N-2e, Black begins to attack the 1st file. If White plays S-2d after Black's P-1d, there will follow: P-2e, Sx2e, P-1c+, good for Black. So White has to play Sx1d. Then after Lx1d, Lx1d, Rx1d, White drops a Lance on 1a, which looks quite promising on White's part.",
          ),
          MoveSequence(
            moves: [
              'P*1c',
              'Lx1c',
              'Bx1c+',
              'Nx1c',
              'L*3i',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln7/1r3bgk1/p2s1g1pn/2ppppp1R/1p7/2PPP1PP1/PPS2P3/2G1GS3/LN1K2L2 w SLbn2p',
            label: 'Diagram 5',
          ),
          Paragraph(
            text:
                'The last move in the above diagram, L*3i, is what you should remember, the latest joseki. Drop the Lance from the bottom. Now the third file is the target.',
          ),
          MoveSequence(
            moves: [
              'N-7c',
              'P-3e',
              'Px3e',
              'L*3d',
              'N*3c',
              'Lx3e',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'l8/1r3bgk1/p1ns1gnpn/2ppppL1R/1p4L2/2PPP2P1/PPS2P3/2G1GS3/LN1K5 w SPb3p',
            label: 'Diagram 6',
          ),
          Paragraph(
            text:
                "White's N-7c may not appear to be a very good move, but there doesn't seem to be a more favorable alternative to play here. Black attacked the vulnerable part of the Yagura castle, starting with P-3e followed by double Lance attack on the third file, which led to a good position for Black.",
          ),
        ],
      ),
    ],
  ),
];
