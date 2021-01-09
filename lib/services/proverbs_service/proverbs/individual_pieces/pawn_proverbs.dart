import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for pawn section of ProverbType.pieces
const pawnProverbs = [
  // http://www.shogi.net/kakugen/kakugen02.htm
  Proverb(
    index: 0,
    title: 'A Pawn is Worth a Thousand Generals',
    japaneseTitle: 'Ippu Atai Senkin',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                "There are far more positions than you'd think in which a Pawn in hand makes a big difference. Look at Diagram 1.",
          ),
          Diagram(
            sfenString: '7nl/5bgk1/5g1pp/4ppp2/7NP/4PB3/5P3/7R1/8L b P',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                "White has formed a usual Yagura castle less one Silver. With Black's Knight on 2e, a Pawn drop on 3c will be quite effective. If you have a Pawn in hand, that is. Thus, a Pawn in hand could be compared to a thousand Gold pieces.",
          ),
          Paragraph(
            text: 'The most likely moves to follow are:',
          ),
          MoveSequence(
            moves: [
              'P*3c',
              'Nx3c',
              'Nx1c+',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "After Black's P*3c, White could play G-3a, but that would leave bad shape for White. So, Nx3c is a natural move, avoiding loss of material. Note the next move: Nx1c+. In the wrong direction, you say? No, this is right.",
          ),
          Paragraph(
            text: 'There will follow:',
          ),
          MoveSequence(
            moves: [
              'Lx1c',
              'P-1d',
              'Lx1d',
              'Lx1d',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text: 'By following the natural moves, Black will have a breakthrough along the first file.',
          ),
          Paragraph(
            text: 'Back at the Diagram 1, if you have more than one Pawn, you could also play as follows:',
          ),
          MoveSequence(
            moves: [
              'P*3c',
              'Nx3c',
              'Nx3c+',
              'G4c-3c',
              'N*2e',
              'G3c-4c',
              'P*3c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                'When your opponent has formed a yagura castle, make sure you have at least one Pawn in hand before playing N-2e.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                "Diagram 2 (up to Px2d) shows where White played Px2d after Black's P-2d. Now what will be the next move using a Pawn in hand to attack White's yagura castle?",
          ),
          Diagram(
            sfenString: '7nl/5bgk1/5gs1p/4pppp1/8P/4PBP2/5PN2/7R1/8L b Pp',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "P*2e is the move you should remember. When playing double fortress opening (both sides play the yagura castle), a joining-Pawn tesuji (to drop a Pawn on the square just in front of an opposing Pawn with the goal of its being captured) can be quite effective when applied in the enemy's King file.",
          ),
          Paragraph(
            text:
                "To Black's P*2e, White cannot but respond by Px2e, otherwise Black will play Px2d and again a solid foothold so that he can next play Nx2e. This will be good for Black. Then White will have to play S-2d to prevent from loss of material, to which Black can reply Nx1c+.",
          ),
          Paragraph(
            text: """
  1) If White responds with Lx1c, Bx2d will do.
  2) If Nx1c, again Bx2d will do the trick.
  Either way, Black will be able to continue undermining the yagura camp.
  3) If Kx1c, P*2e will be the most severe blow for White.
  Remember, when the opponent's King gets in your Bishop's path, attack the interposing piece. This is one of the most important patterns.""",
          ),
          Paragraph(
            text:
                "When playing yagura, most White players tend to play Sx2d instead of Px2d after Black's P-2d, thereby avoiding the joining-Pawn tesuji. This will give you an idea how effective the Pawn drop can be.",
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: 'ln1g1R3/1ks6/pppp5/5B3/P8/1PP1P4/9/9/9 b Pp',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'Against the Mino-castle, on Diagram 3, where would you drop your Pawn?',
          ),
          Paragraph(
            text:
                'P*6b is the crucial move. If White plays G-5b, he will allow the Pawn to promote onto 6a. So he will have to play G-7a, only to meet:',
          ),
          MoveSequence(
            moves: [
              'Rx7a+',
              'Kx7a',
              'P-6a+',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "Rx7a+ is the decisive move. White has no choice but to play Kx7a. Then you go on to play P-6a+, double checkmate! White's King will be forced to mate whatever he may play.",
          ),
          Paragraph(
            text:
                'If you cannot drop your Pawn along the 6th file, check if you can on the 5th file. P*5b will also be a very effective move (diagram 4).',
          ),
          Diagram(
            sfenString: 'ln1g1R3/1ks1P4/pppp5/5B3/P8/1PP6/9/9/9 w p',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                'You will then promote the Pawn on 6a, against which White will play G-7a, then you pull the tokin back to 5b. The Mino-castle is sure to fall.',
          ),
          Paragraph(
            text:
                'What if White plays Gx5b at Diagram 4? You know it. R-7a+ will lead to exactly the same position as above.',
          ),
          Paragraph(
            text:
                "If you are thinking of playing P*5c instead of P*5b, you should remember White's P*5a will turn the table around.",
          ),
          Paragraph(
            text: 'When playing against the Mino-castle, attack the Gold on 6a. This is the golden rule.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                'Sometimes a Pawn in hand could decide a game. Look at Diagram 5 (last move R-3b). Black played Px2d, to which White played R-3b, inadvertently giving Black a windfall.',
          ),
          Diagram(
            sfenString: 'ln1g3n1/1ks3rbl/1p1g5/p1ppppsRp/6p2/P1P1PP2P/1P1PS4/1BKGGS3/LN5NL b P2p',
            label: 'Diagram 5',
          ),
          MoveSequence(
            moves: [
              'P*3c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'This is called a focal point Pawn drop.',
          ),
          Paragraph(
            text:
                'The square in question is guarded by three White pieces. See for yourself that White cannot save himself from loss of the material whichever way he may respond.',
          ),
          Paragraph(
            text: 'Diagram 6 (last move Px2d) also shows how devastating a focal point Pawn drop can be.',
          ),
          Diagram(
            sfenString: 'ln1gbr1n1/1ks5l/1p1g5/p1pppsppp/5p3/P1P1P1P1P/1P1PS1N2/1BKGGS1R1/LN6L b Pp',
            label: 'Diagram 6',
          ),
          MoveSequence(
            moves: [
              'P*4b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'If Bx4b, Black can play Bx4d gaining the Silver for free. If Rx4b, Black can play Rx2d.',
          ),
          Paragraph(
            text:
                'When you drop a Pawn in the square where more than one piece is in defense, it should block one of them, thereby undermining the whole defense.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                "Diagram 7 (last move G-6c) shows where a static-Rook versus ranging-Rook game gets into the mid-stage. Note that Black's Pawn along the 4th file is missing from the board, and is in hand instead. This is a solid advantage for Black, giving him an opportunity to put the proverb to good use.",
          ),
          Diagram(
            sfenString: 'ln1g1r1nl/1ks6/1p1g2bp1/p1pppsp1p/5p1P1/P1P1P1P1P/1P1PS4/1BKGGS1R1/LN5NL b P',
            label: 'Diagram 7',
          ),
          Paragraph(
            text: 'Moves after Diagram 7:',
          ),
          MoveSequence(
            moves: [
              'P-2d',
              'Px2d',
              'P*2b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                'Since he has a Pawn in hand, Black can begin his attack on the 2nd file by P-2d. If White plays Bx2b after P*2b, Black can play Rx2d, a favorable turn for Black.',
          ),
          Paragraph(
            text:
                "If White does not respond to P*2b and play something else, Black can play Px2a+, taking the Knight and then the Lance for free. If, after Diagram 7, White plays Bx2d in response to P-2d, P*2b will still be a good move. After White plays N-3c, Black's P-2a+ will follow. White cannot take the promoted Pawn, for the Silver on 4d will be taken for free.",
          ),
          Paragraph(
            text:
                "Suppose White plays something elsewhere, how would you as Black play next? +Px1a? That wouldn't be a bad idea, but there is an even better move. +P-2b and then +Px2c will be more devastating to the opponent. This line of moves is what we call \"authentic line\"",
          ),
          Paragraph(
            text:
                'Look at Diagram 7 again. Attack on the second file aiming at a crucial Pawn drop will give White a big headache. White may have to think of resigning even before he gets into the endgame.',
          ),
          Paragraph(
            text:
                'When playing static Rook against ranging Rook, ask yourself how you can play Rx2d, for this could often steer the game in your favor. Also check whether you can play P*2b with the prospect of promoting the Pawn and letting it work.',
          ),
        ],
      ),
    ],
  ),
  // http://www.shogi.net/kakugen/kakugen03.htm
  Proverb(
    index: 1,
    title: 'A Pawn-anchored Gold is more solid than a rock',
    japaneseTitle: 'Kinzoko no Fu iwa yori katashi',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'When your opponent attacks with a promoted Rook, remember that a Pawn-anchored Gold makes a solid guard.',
          ),
          Diagram(
            sfenString: 'ln1g5/1ks6/1pp6/pl1p5/9/P1P6/1P1PSP3/2KGG4/LN6+r b Pp',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                'Diagram 1 shows where White has just dropped a Lance on 8d. Together with the promoted Rook on the bottom row, White aims to attack your King directly. The expected line of moves is:',
          ),
          MoveSequence(
            moves: [
              'Lx8g',
              'Kx8g',
              '+Rx8i',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                'Here P*5i is the move Black should play. This is the harder-than-a-rock Pawn, a bulwark against the promoted Rook.',
          ),
          Diagram(
            sfenString: 'ln1g5/1ks6/1pp6/pl1p5/9/P1P6/1P1P1P3/1BKGGS3/LN4P1+r w p',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "Look at diagram 2 (last move P*4i). Here you see a Pawn-anchored Silver. In this case White can drop a Pawn on 3h, so it may not seem as solid as a Pawn-anchored Gold. Still, White will need to play Px3i+ and +P-3h in order to get the promoted Rook's path open. In the meantime, you can play some effective moves.",
          ),
          Paragraph(
            text: 'Take note how an anchor Pawn makes sturdy defense in either case.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text: 'Sometimes a Pawn-anchored Gold can be as brittle as a sandcastle.',
          ),
          Paragraph(
            text:
                "Diagram 3 shows where Black interposed a Pawn P*5i after White's R*3i, which was also anchoring the Gold on 5h. In this case, however, there was a problem.",
          ),
          Diagram(
            sfenString: '9/9/9/9/9/2P6/PPSP5/2G1G4/LNK1P1r2 w p',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'Moves after Diagram 3:',
          ),
          MoveSequence(
            moves: [
              'P*5g',
              'G-6h',
              'Rx5i+',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                "White's P*5g reveals where the problem lies. Black cannot respond with Gx5g which will only allow White to play Rx5i+, a fatal fork, so Black has to play G-6h, to which White can reply by promoting his Rook on 5i taking the Pawn. After this, if Black plays K-8h, White will play P-5h+. A happy position for White.",
          ),
          Paragraph(
            text: 'Look at Diagram 3 again. The correct move here is K-8h.',
          ),
          Paragraph(
            text: 'I will show you another dubious anchor Pawn. Look at Diagram 4.',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/2P6/PP1P1P3/2GSG4/LNK1P1+r2 w l',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "Black has just dropped a Pawn on 5i after White's +R-3i, check. This was a grievous mistake on Black's part. White will then drop a Lance along the 5th file, L*5e, with which Black cannot cope because he cannot use another Pawn on the same file.",
          ),
          Paragraph(
            text: 'So, in Diagram 4, you should play S-5i, so that you can drop a Pawn in case of L*5e.',
          ),
          Paragraph(
            text: 'Always beware of a Lance drop when you drop an anchor Pawn.',
          ),
        ],
      ),
    ],
  ),
];
