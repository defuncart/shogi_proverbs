import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen35b.htm
const middlegameProverb5 = Proverb(
  index: 35,
  title: "If there is an unprotected piece, you won't be stuck for a move",
  japaneseTitle: 'Ukigoma ni te ari',
  type: ProverbType.middle,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "When a piece is not connected with any other piece, it is called \"ukigoma\" or a floating piece, literally. If you find any undefended piece on your opponent's part, you may come up with a good move. This is the gist of the proverb.",
        ),
        Paragraph(
          text:
              'In other words, you should make sure there is no unprotected piece on your part unless you so choose. Especially when your opponent has a Bishop in hand, extra caution will be necessary.',
        ),
        Diagram(
          sfenString: 'ln1g1k1nl/1r4g2/p2p1pspp/2p1s1p2/1p7/2PP1P1P1/PPSG1SP1P/2K4R1/LN1G3NL b BPbp',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              'In Diagram 1-1, White has just played S5d, but this was a bad move resulting in making a piece undefended. Black has a good move to play here.',
        ),
        MoveSequence(
          moves: [
            'B*1h',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text: 'R5h may strike as a possibility, but White will then play P*5e, allowing good shape for White.',
        ),
        Paragraph(
          text:
              "B*1h claims the Silver on 5d, but White cannot simply dodge Bishop. If he does, he will allow Black's Bx6c+. All he can do, therefore, will be to secure the Silver with another piece.",
        ),
        MoveSequence(
          moves: [
            'R5b',
            'P*5e',
            'Sx5e',
            'Bx6c+',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1g1k1nl/4r1g2/p2+B1pspp/2p3p2/1p2s4/2PP1P1P1/PPSG1SP1P/2K4R1/LN1G3NL w Pb2p',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              'Now that you have a promoted Bishop in the other camp, the position is overwhelmingly in your favor, with either P*5c or +Bx8a to play next.',
        ),
      ],
    ),
    //
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
