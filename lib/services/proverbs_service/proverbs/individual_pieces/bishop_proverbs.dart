import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for bishop section of ProverbType.pieces
final bishopProverbs = [
  Proverb(
    title: 'In the Opening the Bishop is Stronger than the Rook',
    japaneseTitle: 'Joban wa hisha yori kaku',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Diagram(
            sfenString: 'ln1g1k1nl/1r3sg2/p2psp1pp/1pp3p2/4b4/2PP5/PPSG1PPPP/1BG2S1R1/LN2K2NL b pP',
            label: 'Diagram 1',
          ),
          Paragraph(
            text: 'Diagram 1 is from a Yagura opening where White has just exchanged Pawns on 5e.',
          ),
          Paragraph(
            text:
                'Here White has, roughly speaking, two ways to deploy his pieces, depending on where the Bishop is placed.',
          ),
          Paragraph(
            text: 'Plan A:',
          ),
          MoveSequence(
            moves: [
              'K-6i',
              'S-5d',
              'P-2f',
              'B-2b',
              'P-2e',
              'P-6d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: "Plan A aims at attacking the King's head directly, with the Bishop back on 2b.",
          ),
          Paragraph(
            text: 'Plan B:',
          ),
          MoveSequence(
            moves: [
              'K-6i',
              'S-5d',
              'P-2f',
              'R-5b',
              'P-2e',
              'B-7c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "In Plan B, White pulls the Bishop to 7c, aiming to deploy forces in the central area while applying pressure on Black's base.",
          ),
          Paragraph(
            text:
                'In the opening stage, where to move the Bishop is very important in deciding which strategy to take. Whether your strategy is offense-oriented or defense-oriented determines where the Bishop should be placed.',
          ),
          Paragraph(
            text:
                "Another example to show you how vital the Bishop's position can be when you are about to move into the middlegame.",
          ),
          Diagram(
            sfenString: 'ln4knl/4r1g2/p1bpsgspp/2p1ppp2/1p5P1/2PPPSP2/PPSG1PN1P/1KGB3R1/LN6L b -',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "In diagram 2, White has just played B7c, giving priority to defense. The Bishop here is for restricting Black's offensive formation.",
          ),
          Paragraph(
            text:
                "On the other hand, the Bishop pulled to 4b (Diagram 3) is for applying pressure on Black's King, therefore an offensive move.",
          ),
          Diagram(
            sfenString: 'ln5nl/1r3bgk1/p2p1gspp/1sp1ppp2/1p7/2PPPSPP1/PPSG1PN1P/1KGB3R1/LN6L b -',
            label: 'Diagram 3',
          ),
          Paragraph(
            text:
                'In either case, remember that the Bishop plays a central role in deciding your major plan in the middlegame.',
          ),
        ],
      ),
      Page(
        sections: [
          Paragraph(
            text:
                'At a very early stage of the game where your Golds and Silvers are still in their original positions, the Bishop can count more than the Rook does.',
          ),
          Paragraph(
            text:
                'Diagram 4 (last move K-6h) shows where White has just opened the way for the opening called Masuda-style Ishida-ryu opening.',
          ),
          Diagram(
            sfenString: 'lnsgkgsnl/6rb1/pppppp1pp/9/6pP1/2P6/PP1PPPP1P/1B1K3R1/LNSG1GSNL w -',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "From Diagram 4, White can play P-3f. Then there will be a Bishop-exchange followed by White's B*5e (Diagram 5). You may think White has gained the lead.",
          ),
          Diagram(
            sfenString: 'lnsgkgsnl/6r2/pppppp1pp/9/4b2P1/2P3P2/PP1PPP2P/1S1K3R1/LN1G1GSNL b BP',
            label: 'Diagram 5',
          ),
          Paragraph(
            text: 'Moves from Diagram 5:',
          ),
          MoveSequence(
            moves: [
              'B*7g',
              'Bx2h+',
              'Sx2h',
              'S-2b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                "B*7g is the move to play here. Black takes a Bishop in exchange for a Rook, which is not a material loss. After White's S-2b, there is a very good move on Black's part, which is...?",
          ),
          MoveSequence(
            moves: [
              'B*6e',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'lnsgkg1nl/6rs1/pppppp1pp/9/3B3P1/2P3P2/PPBPPP2P/1S1K3S1/LN1G1G1NL w Pr',
            label: 'Diagram 6',
          ),
          Paragraph(
            text:
                "With B*6e, Black is certain to get the Bishop promoted somewhere. White, on the other hand, cannot play Rx3f (Black will play Bx2b+). White cannot drop a Rook in the Black's camp, either.",
          ),
          Paragraph(
            text:
                'In the above example, Black gained the lead by a Rook-Bishop exchange, but I should add that generally it is better not to resort to the exchange at an early stage.',
          ),
        ],
      ),
    ],
  ),
];
