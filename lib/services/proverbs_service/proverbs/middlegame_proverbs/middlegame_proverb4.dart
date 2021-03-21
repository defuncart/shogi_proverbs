import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen34.htm
const middlegameProverb4 = Proverb(
  index: 33,
  title: "Against Ranging Rook, aim at a Bishop's Exchange",
  japaneseTitle: 'Furi-bisha niwa Kaku koukan wo nerae',
  type: ProverbType.middle,
  pages: [
    Page(
      sections: [
        Paragraph(
          text: 'This applies when you plan a quick attack against ranging Rook.',
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1ppppsbpp/p4pp2/7P1/P1P1P1P2/1P1PSP2P/1BK1GS1R1/LN1G3NL b -',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              "Diagram 1-1 (last move S4c) is just an ordinary position you are likely to see when playing static Rook against ranging Rook. Just for the sake of argument, suppose both Bishops are in each other's hand instead of on board (Diagram 1-2).",
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1pppps1pp/p4pp2/7P1/P1P1P1P2/1P1PSP2P/2K1GS1R1/LN1G3NL b Bb',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              "From Diagram 1-2, the static Rook side has a very good move to play: P2d. This is why the ranging Rook side has to avoid Bishop-exchange. After Px2d, Rx2d, White may drop a Pawn on 2b for defense, but Black can drop his on 2c to get a favorable position.",
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'We will look into another one.',
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1ppppsbpp/p4pp2/7P1/P1P1P1P2/1P1PSP2P/1BK1GS1R1/LN1G3NL b -',
          label: 'Diagram 2-1',
        ),
        MoveSequence(
          description: 'From Diagram 2-1 (last move S4c) there will follow:',
          moves: [
            'P4f',
            'P6d',
            'P4e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1pp1psbpp/p2p1pp2/5P1P1/P1P1P1P2/1P1PS3P/1BK1GS1R1/LN1G3NL w -',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "After Black's P4e, if White responds with Px4e, Black will next play Bx3c+, followed by Nx3c, P2d, Px2d, Rx2d (Diagram 2-3), a favorable position for Black.",
        ),
        Diagram(
          sfenString: 'ln1g4l/1ks1gr3/1pp1psn1p/p2p2pR1/5p3/P1P1P1P2/1P1PS3P/2K1GS3/LN1G3NL w BPb2p',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text: 'Therefore, White cannot let that happen.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 2-2:',
          moves: [
            'P7d',
            'N3g',
            'P5d',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1p3sbpp/p1ppppp2/5P1P1/P1P1P1P2/1P1PS1N1P/1BK1GS1R1/LN1G4L w -',
          label: 'Diagram 2-4',
        ),
        Paragraph(
          text:
              'What if, instead of playing Px4e, White plans to get his King more breathing room by P7d? In this case, Black does not have to hurry: By N3g he can strengthen his attacking force an wait for the right time.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 2-4:',
          moves: [
            'P2d',
            'Px2d',
            'Px4d',
            'Sx4d',
            'P*4e',
            'S5c',
            'B3c+',
            'Nx3c',
            'Rx2d',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln1g4l/1ks1gr3/1p2s1n1p/p1ppp1pR1/5P3/P1P1P1P2/1P1PS1N1P/2K1GS3/LN1G4L w BPb2p',
          label: 'Diagram 2-5',
        ),
        Paragraph(
          text:
              'Strictly speaking, the position is even in Diagram 2-5, but Black initiated the sequence of moves and now has the position exactly as he had planned. Black should have nothing to complain here.',
        ),
      ],
    ),
  ],
);
