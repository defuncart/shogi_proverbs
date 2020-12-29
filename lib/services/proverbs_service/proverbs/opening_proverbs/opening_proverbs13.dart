import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs 1-3 for ProverbType.opening
final openingProverbs13 = [
  Proverb(
    title: 'Avoid a Sitting King',
    japaneseTitle: 'Igyoku wa sakeyo',
    type: ProverbType.opening,
    pages: [
      Page(
        sections: [
          Paragraph(
            text: 'It is extremely dangerous to start fighting with the King sitting on the original square.',
          ),
          Paragraph(
            text:
                'In Diagram 1, Black has already advanced a Silver onto 4f with his King in the original position. If he wants to launch an attack from here, how would he play?',
          ),
          Diagram(
            sfenString: 'ln3k1nl/1r3bg2/p1ppsgspp/1p2ppp2/7P1/2PPPSP2/PPS2P2P/2G1G2R1/LNB1K2NL b -',
            label: 'Diagram 1',
          ),
          MoveSequence(
            moves: [
              'P-3e',
              'Px3e',
              'Sx3e',
              'P*3d',
              'P-2d',
              'Px2d',
              'Sx2d',
              'Sx2d',
              'Bx2d',
              'Bx2d',
              'Rx2d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'ln3k1nl/1r4g2/p1ppsg2p/1p2pppR1/9/2PPP4/PPS2P2P/2G1G4/LN2K2NL w BS2Pbsp',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "So far, Black's climbing Silver appears to have made a point. But White has a devastating move to play here.",
          ),
          MoveSequence(
            moves: [
              'B*1e',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                'You cannot be too careful when you have a sitting King. Black had to play K6i first in this case. Then the attack would have been successful.',
          ),
        ],
      ),
    ],
  ),
  Proverb(
    title: "Don't Put King and Rook Close Together",
    japaneseTitle: 'Gyoku-hi sekkin su bekarazu',
    type: ProverbType.opening,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'This is one of the most important proverbs that I should say is something you should learn before actually playing a game.',
          ),
          Paragraph(
            text:
                'The Rook is by far the most important piece in offence, therefore being close to the Rook means close to the battlefield. The King had better be some distance away.',
          ),
          Paragraph(
            text: 'Thus, one of the basics is that you should castle your King in the opposite direction to your Rook.',
          ),
          Paragraph(
            text:
                'When you want to play the 4th file ranging Rook, begin with P7f, followed by P6f, and R6h. Then you go on to play K4h, K3h, and K2h, so that the Rook and the King sit left and right, safely apart.',
          ),
          Paragraph(
            text:
                'After that, you play S3h, G6i-5h, S7h. Now you have completed the Mino castle and about to be ready to move into the next phase. (Diagram 1)',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/2PP5/PP2PPPPP/1BSRG1SK1/LN3G1NL b -',
            label: 'Diagram 1',
          ),
          Paragraph(
            text:
                'Above is how the traditional ranging Rook opening has been played. Recently, however, S3h is often played before the King is moved.',
          ),
          Paragraph(
            text:
                "Next, I'll show you how you should move your pieces when you want to play the Yagura opening: P7f, S6h, P6f, P5f, S4h.",
          ),
          Paragraph(
            text: 'Then, you play G7h, K6i, G5h. (Diagram 2, the Crab-gakoi castle)',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/2PPP4/PP3PPPP/1BGSGS1R1/LN1K3NL b -',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'The castle in Diagram 2 is called the Kani (crab) castle, which is strong against an attack from above. From here you can build a Yagura castle by playing S7g, G5h-6g.',
          ),
          Paragraph(
            text:
                'There are many variations to build a Yagura, and you can be flexible. Just remember to move your generals diagonally.',
          ),
          Paragraph(
            text:
                'You still have to move your Bishop so that the King can safely sit in the Yagura castle. So you play, B7i, B6h, K7i, and K8h. (Diagram 3)',
          ),
          Diagram(
            sfenString: '9/9/9/9/9/2PPP4/PPSG1PPPP/1KGB1S1R1/LN5NL b -',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'There, the King is sitting safely in the Yagura castle far from the Rook.',
          ),
        ],
      ),
    ],
  ),
  Proverb(
    title: 'Defend the King with three Generals, Attack with Rook, Bishop, Silver and Knight',
    japaneseTitle: 'Gyoku no mamori wa Kin Gin 3 mai, seme wa Hi, Kaku, Gin, Kei',
    type: ProverbType.opening,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'You might have heard about how the Fujii system and the Crab Silver diverge from the basic formation. They can be very effective indeed when employed by a skillful hand. But I advise you to learn the basics first and then attempt the trickier lines.',
          ),
          Paragraph(
            text: 'Diagram 1-1 (up to S5g) is from one of the most popular openings: static Rook vs ranging Rook.',
          ),
          Diagram(
            sfenString: 'ln1g3nl/1ks1grs2/1pppp1bpp/p4pp2/7P1/P1P1P1P2/1P1PSP2P/1BK1GS1R1/LN1G3NL w -',
            label: 'Diagram 1-1',
          ),
          Paragraph(
            text: '''
Black, with the static Rook, is setting up for a quick attack. White, on the other hand, has formed a Mino-castle with two Golds and a Silver. Black will then play S4f, reinforcing his attack. This may seem at odds with "three generals' defence," but in this case the Silver on 4h is regarded as part of the defence.
''',
          ),
          Diagram(
            sfenString: 'ln1g3nl/1ks1grs2/1pppp1bpp/p4pp2/7P1/P1P1P4/1PBP1PP1P/1KS1GS1R1/LN1G3NL w -',
            label: 'Diagram 1-2',
          ),
          Paragraph(
            text:
                "Diagram 1-2 (up to S-7h) shows the beginning of a slow game, where the static Rook side has built up the left Mino-castle, vying with White's sturdy guard.",
          ),
          Paragraph(
            text:
                'In a ranging-against-static-Rook game, the right half of the board (where the Rooks sit) is likely to become the battlefield, rather than making direct attack against each King.',
          ),
          Diagram(
            sfenString: 'l2g3nl/1ks2r3/1png2bp1/2pppsp1p/p4p1P1/2PPP1P1P/PP1GSPN2/LS1B3R1/KNG5L b -',
            label: 'Diagram 1-3',
          ),
          Paragraph(
            text:
                "Diagram 1-3 (up to S-4d) represents Black's anaguma with the static Rook. The Gold on 6g prepares for the future attack from the mid-area.",
          ),
          Diagram(
            sfenString: 'l2g3nl/1ks4r1/1png1sbp1/2p1ppp1p/p2p3P1/2P1P1P1P/PPSP1P3/LSGB3R1/KNG4NL w -',
            label: 'Diagram 1-4',
          ),
          Paragraph(
            text:
                'Diagram 1-4 (up to S-7g) is the absolute in anaguma castles, with four generals. This does not violate the three-generals guideline but makes even more sturdy defence, maybe a little too sturdy. You need to improvise when you want to attack with such scanty pieces for offence.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text: 'Next we will look into a typical double-static-Rook opening.',
          ),
          Diagram(
            sfenString: 'l6nl/1r3bgk1/p1ns1gspp/2ppppp2/1p5P1/2PPPPP2/PPSG1SN1P/1KGB3R1/LN6L b -',
            label: 'Diagram 2-1',
          ),
          Paragraph(
            text:
                'In Diagram 2-1, both players have exactly the same position with three Generals in defence and RBSN in offence. Both are in good shape. An intense battle is expected to ensue from here.',
          ),
          Diagram(
            sfenString: 'ln5nl/1r3sgk1/p1bp1gspp/2p1ppp2/1p5P1/2PPPPP2/PPSG1SN1P/1KGB3R1/LN6L b -',
            label: 'Diagram 2-2',
          ),
          Paragraph(
            text:
                "In Diagram 2-2 (up to S4b), Black's fortress is the same as above while White employs all the generals for defence. The Bishop on 7c functions to restrain Black's deployment rather than aiming at a direct attack. This again is too defence-oriented, and I would not advise you to employ it.",
          ),
          Diagram(
            sfenString: 'l5knl/1r2g1g2/2n1p1sp1/p1ppspp1p/1p5P1/P1PPSPP1P/1PS1P1N2/2G1G2R1/LNK5L b Bb',
            label: 'Diagram 2-3',
          ),
          Paragraph(
            text:
                'Diagram 2-3 (up to N7c) shows both camps having the same position, the Bishop-exchange with the reclining Silver in this case. The Silver above the Pawn on 5th file is called the reclining Silver. With this position, a fierce battle seems to be imminent, since the Bishop is in hand instead of sitting on the board. This should yield wider variety of offence.',
          ),
          Paragraph(
            text:
                'Proceeding from the position in the diagram, Black will play P-4e, followed by Px4e, P-3e. Ideally Black should play K-8h or G-6h before opening the attack. Modern joseki teaches us, however, that procrastination is very costly in this position.',
          ),
          Diagram(
            sfenString: 'lr4knl/5ggb1/2n1ps1p1/p1ppspp1p/9/PPP1SPPRP/1S1PP1N2/1BGG5/LNK5L b Pp',
            label: 'Diagram 2-4',
          ),
          Paragraph(
            text:
                "In Diagram 2-4 (up to R8a), both players have taken the Aigakari opening, which includes Pawn-exchange in the Rook files. From here Black can play P-3e, Px3e, P-4e. For White's part, the position is a tad on the defensive, but playing S-6e is a possibility.",
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                "Finally, some positions from the double-ranging-Rook opening. In this opening, the opponent's attacking pieces are aiming at the head of your King, so your castle had better be well-prepared for an attack from above.",
          ),
          Diagram(
            sfenString: 'ln6l/1skgg4/1pppp1n1b/p4pr1p/1P1P2sp1/PRPBS3P/2N1PPPP1/4GGKS1/L6NL b p',
            label: 'Diagram 3-1',
          ),
          Paragraph(
            text:
                'Diagram 3-1 (up to B1c) is a typical double-ranging-Rook opening called Kin-Muso, or Two-Piece-Gold. Incidentally, this includes typically bad shape called the wall-Silver, but is strong against an attack from above, nonetheless.',
          ),
          Diagram(
            sfenString: 'ln6l/1skggr3/1pppp1n2/p4psbp/1P1P3p1/PRPBSPP1P/2N1PGSP1/5GK2/L6NL w p',
            label: 'Diagram 3-2',
          ),
          Paragraph(
            text:
                'In Diagram 3-2 (up to N7g), Black has taken the Yagura castle instead of the Kin-Muso. Remember Yagura is also the right castle when playing the double-ranging-Rook. Compared with the Kin-Muso, the notorious wall-Silver is no longer there, so your King should enjoy more breathing space.',
          ),
          Diagram(
            sfenString: 'kn6l/lsgg1r3/ppppp1n2/5psbp/1PPP3p1/PR1BSPP1P/2N1PGSP1/6GK1/L6NL w p',
            label: 'Diagram 3-3',
          ),
          Paragraph(
            text:
                "In Diagram 3-3 (up to N7g), Black has built the Yagura, while White has ensconced the King in the anaguma castle. Note that the Golds are on 6b and 7b, which makes an anomalous anaguma castle. Anaguma's Golds are normally on 7a and 7b. Two Golds side-by-side is a countermeasure against the attack from above when playing double-ranging-Rook. Three Generals should make a good defence, but their placement differs from position to position.",
          ),
          Diagram(
            sfenString: 'ln1g4l/1ks1g4/1pppsp1p1/p4br2/1SPPp2np/PR1B5/2N1PPPPP/5SG2/L3G1KNL b Pp',
            label: 'Diagram 3-4',
          ),
          Paragraph(
            text:
                "White in Diagram 3-4 (up to N2e) has built the Mino-castle. However, as far as the double-ranging-Rook is concerned, the Mino is not a very good defence. Incidentally, Black's King is not very safe, either, with his vulnerable right edge.",
          ),
        ],
      ),
    ],
  ),
];
