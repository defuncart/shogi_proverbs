import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

/// Proverbs for silver section of ProverbType.pieces
const silverProverbs = [
  // http://www.shogi.net/kakugen/kakugen07.htm
  Proverb(
    index: 5,
    title: 'Use the Silver like a Plover (moving zig-zag)',
    japaneseTitle: 'Gin wa chidori ni tsukae',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'A flock of plovers in flight looks like cross-stitches. Hence, a Silver piece used like a plover refers to a move diagonally forward or rearward, rather than straight ahead.',
          ),
          Paragraph(
            text:
                'From Diagram 1 (last move K-3a), let me show you how you should redress the awkward positioning of the Silver in front of your Pawn.',
          ),
          Diagram(
            sfenString: 'ln4knl/1r3bg2/3psgspp/2p1ppp2/pp7/2PPPSPP1/PPSG1P2P/1KGB3R1/LN5NL b -',
            label: 'Diagram 1',
          ),
          MoveSequence(
            moves: [
              'P-3e',
              'Px3e',
              'Sx3e',
              'P*3d',
              'S-4f',
              'K-2b',
              'S-3g',
              'S-6d',
              'S-3f',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln5nl/1r3bgk1/3p1gspp/2psppp2/pp7/2PPP1SP1/PPSG1P2P/1KGB3R1/LN5NL w P',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'You start with exchanging Pawns on the 3rd file, then play S-3g, and then S-3f so that you can next play N3g and B-4f, which will be an ideal position on your part. Not only is there no ill-positioned Silver in front of your Pawn, but all your pieces are prepared to attack.',
          ),
          Diagram(
            sfenString: 'ln1g3nl/1ks1g1r2/1pp1psbpp/p2p1p3/6PP1/P1P1PS3/1P1P1P2P/1BKSG2R1/LN1G3NL b p',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'On Diagram 3, you cannot afford to leave the Silver on 4f as it is.',
          ),
          MoveSequence(
            description: 'Moves after Diagram 3:',
            moves: [
              'S-3g',
              'P-5d',
              'S-3f',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln1g3nl/1ks1g1r2/1pp2sbpp/p2ppp3/6PP1/P1P1P1S2/1P1P1P2P/1BKSG2R1/LN1G3NL b p',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                'Now that you get to the above position (Diagram 4), you can safely follow your instincts and play the natural moves like P-4f and N-3g. Then the position will take care of itself.',
          ),
          Paragraph(
            text:
                'Diagram 5 shows where Black is about to play deftly from the fifth-file vanguard Pawn opening. Pay attention to the right Silver.',
          ),
          Diagram(
            sfenString: 'ln5nl/1kg2r3/1s1gpsbp1/pppp1pp1p/4P2P1/P1P1SSP1P/1P3P3/1BKGG2R1/LN5NL w P',
            label: 'Diagram 5',
          ),
          MoveSequence(
            description: 'A)',
            moves: [
              'N-7c',
              'P-3e',
              'Px3e',
              'Sx3e',
              'P*3d',
              'P-2d',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          MoveSequence(
            description: 'B)',
            moves: [
              'P-5d',
              'G5h-6g',
              'Px5e',
              'S4fx5e',
              'P*5d',
              'S-6f',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                "Sometimes it is a good idea to shift the Silver from right to left as in B depending on the opponent's move.",
          ),
          Paragraph(
            text:
                'Remember that a Silver is like a midfielder moving swiftly around the mid-ranks in preparation for a major attack.',
          ),
        ],
      ),
    ],
  ),
  // http://www.shogi.net/kakugen/kakugen07.htm#Nox
  Proverb(
    index: 6,
    title: "Silver at the head of the (opponent's) Knight is the standard move",
    japaneseTitle: 'Keisaki no gin joseki nari',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Diagram(
            sfenString: '8l/9/7p1/5spnp/9/4P3P/5PPP1/4G1SK1/5G1NL b BGSNbgsnl',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                'Diagram 1 shows where White has just dropped a Knight on 2d. It may not seem particularly alarming, but is in fact a threatmate, starting from N*3f. Black has to prevent that, but how?',
          ),
          Paragraph(
            text:
                "N*4h? Indeed, a Knight drop can be effectively defended by a counter-drop of the same piece, sometimes. But in this case, it will allow White to continue his/her attack by P-1e. If you respond with Px1e, White's N*1f will bring a near-mate position. See for yourself that your N on 4h will only block your own King.",
          ),
          Paragraph(
            text:
                'You may come up with G*2f on Diagram 1, which will also cover the edge. Not a bad idea, but what if White plays L*2e? You cannot respond with G*2e. If you do, White will proceed to carry out the original plan: N*3f...mate.',
          ),
          Paragraph(
            text: 'The move to play here is S*2e.',
          ),
          Paragraph(
            text: "See how the Silver covers both squares the opponent's Knight threatens: 3f and 1f.",
          ),
          MoveSequence(
            description: 'Moves after Diagram 1:',
            moves: [
              'G*3e',
              'Sx2d',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                "White's G*3e aims to take the Silver, but you can go on to get rid of the menacing Knight to kill the threat. Remember that a Knight at the head of the opponent's Knight not only covers both squares under threat, but also can take the Knight itself when necessary.",
          ),
          Paragraph(
            text:
                'Do not, therefore, drop a Bishop instead of a Silver. Apparently they have a similar function, but in this case, a Bishop is helpless when White plays G*3e.',
          ),
        ],
      ),
    ],
  ),
];
