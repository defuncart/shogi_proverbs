import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen35.htm
const middlegameProverb5 = Proverb(
  index: 34,
  title: 'Range your Rook onto the strategic foothold',
  japaneseTitle: 'Kyoten ni Hisha wo fure',
  type: ProverbType.middle,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "So far you have learnt that you should aim at a Bishop's exchange when playing against ranging Rook. If you play ranging Rook, however, it goes the other way around: Aim at a Rook's exchange.",
        ),
        Diagram(
          sfenString: 'ln3g1nl/1r1sg1kb1/p2psp1p1/2p1p1p1p/1p7/2PP4P/PPBSPPPP1/3RG1SK1/LN3G1NL b -',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              "Diagram 1-1 shows where a ranging Rook side plays against a quick-attack static Rook side. Suppose, for the sake of argument, that the Rook is in each other's hand instead of on board. (Diagram 1-2)",
        ),
        Diagram(
          sfenString: 'ln3g1nl/3sg1kb1/p2psp1p1/2p1p1p1p/1p7/2PP4P/PPBSPPPP1/4G1SK1/LN3G1NL b Rr',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text: 'From Diagram 1-2, Black can play R*8b and White likewise R*7i. Then there will follow:',
        ),
        MoveSequence(
          moves: [
            'Rx8a+',
            'Rx8i+',
            '+Rx9a',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '+R4g1nl/3sg1kb1/p2psp1p1/2p1p1p1p/1p7/2PP4P/PPBSPPPP1/4G1SK1/L+r3G1NL b NLn',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              'Now it is quite obvious that Black is leading the game, what with the material advantage and the greater security of his King.',
        ),
        Paragraph(
          text:
              "While White's King sits in the 3rd file, Black's is already in the 2nd. Only a file away, you might think, but it would make a big difference where the attack from the side is expected as in Diagram 1-3. Remember, the Mino castle which the ranging Rook side has assumed in the above position is comparatively sturdy against the attack from the side and less dangerous for your King because it is a step further away from the likely battle.",
        ),
        Paragraph(
          text:
              'A Rook-exchange works for the ranging Rook side in many cases due to the safer castle. In other words, that is what you should aim for when you play ranging Rook. In preparation for that, you need to range your Rook to a crucial spot. So, where is the crucial spot? I will expound on that in the following section.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              'The strategic foothold on which you should range your Rook is where two Pawns confront with each other.',
        ),
        Diagram(
          sfenString: 'ln3g1nl/1r2g1kb1/p2psp1p1/1s2p1p1p/1pp6/2PPPPP1P/PPBS3P1/3RG1SK1/LN3G1NL b -',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              'In Diagram 2-1, White, with the static Rook and the climbing Silver on 8d, has just played P7e. Responding with Px7e will be out of the question: Sx7e, P*7f, P8d.',
        ),
        Paragraph(
          text: 'This is your cue to range your Rook onto the 7th file.',
        ),
        Paragraph(
          text:
              "Where Pawns collide with each other, you can expect one or both Pawns to disappear from that file. So if you range your Rook on the same file, you may well expect to promote it in the opponent's territory.",
        ),
        Paragraph(
          text:
              "Also, the opponent's Rook is likely to come to the same file, which will increase the probability of exchanging Rooks.",
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'G4a-b',
            'L9h',
            'R7b',
            'B5i',
            'P6d',
            'B4h',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln5nl/2r1ggkb1/p3sp1p1/1s1pp1p1p/1pp6/2PPPPP1P/PP1S3P1/L1R1GBSK1/1N3G1NL w -',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              'Neither side takes the Pawn. Whichever takes it will only give the opponent momentum. Let the opponent take it, and your piece can move forward by taking it again.',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-2:',
          moves: [
            'P7f',
            'Sx7f',
            'P6e',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln5nl/2r1ggkb1/p3sp1p1/1s2p1p1p/1p1p5/2SPPPP1P/PP5P1/L1R1GBSK1/1N3G1NL b Pp',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text: 'So far we have seen one of the most popular variations of the bo-gin (climbing Silver) opening.',
        ),
        Paragraph(
          text:
              'Strictly speaking, the position here is even. But if Black can bring about the Rook-exchange, he will have much to hope for.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              "In Diagram 3-1, White has taken the diagonal climbing Silver (naname-bo-gin) in which his left Silver diagonally advanced from 4b to 5c to 6d. Compared with the standard bo-gin, the diagonal variation can save time: He can play P7e one move earlier than the original version. However, you should be careful because, when Black plays P6e to open his Bishop's path, it also claims the Silver on 6d.",
        ),
        Diagram(
          sfenString: 'ln3g1nl/1r1sg1kb1/p2p1p1p1/3sp1p1p/1pp6/2PPPP2P/PPBS2PP1/3RG1SK1/LN3G1NL b -',
          label: 'Diagram 3-1',
        ),
        MoveSequence(
          description: 'After Diagram 3-1:',
          moves: [
            'R7h',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              'As was mentioned before, the Rook should be moved to the file where the Pawns have collided with each other, hence R7h.',
        ),
        Paragraph(
          text:
              'From then on, there are several good variations to play, but now we will look at one of the fastest, with big pieces exchanged in succession.',
        ),
        MoveSequence(
          description: 'Moves from Diagram 3-1:',
          moves: [
            'R-7h',
            'Px7f',
            'Sx7f',
            'R-7b',
            'P-6e',
            'Bx7g+',
            'Rx7g',
            'S6d-5c',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln3g1nl/2rsg1k2/p2psp1p1/4p1p1p/1p1P5/2S1PP2P/PPR3PP1/4G1SK1/LN3G1NL b BPbp',
          label: 'Diagram 3-2',
        ),
        Paragraph(
          text: 'White has to pull his Silver back to 5c after a Bishop exchange.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'S6g',
            'Rx7g+',
            'Nx7g',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln3g1nl/3sg1k2/p2psp1p1/4p1p1p/1p1P5/4PP2P/PPNS2PP1/4G1SK1/L4G1NL w RBPrbp',
          label: 'Diagram 3-3',
        ),
        Paragraph(
          text:
              "Black's S7g is what we call a move with good aji, at once moving the Silver onto a good square for defense and prompting the Rook exchange.",
        ),
        Paragraph(
          text:
              'From Diagram 3-3, White can drop his Rook first, but Black, with his King in a safer place, will have a better prospect later on.',
        ),
      ],
    ),
  ],
);
