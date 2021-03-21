import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen36.htm
const middlegameProverb7 = Proverb(
  index: 36,
  title: "Begin your attack with a sacrifice Pawn push",
  japaneseTitle: 'Kaisen wa Fu no tsukisute kara',
  type: ProverbType.middle,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'Pawns are lined at the forefront. Naturally enough, they tend to be the first to capture and to be captured.',
        ),
        Paragraph(
          text: 'Diagram 1 is from a Yagura opening. See how they begin the attack.',
        ),
        Diagram(
          sfenString: 'ln5nl/1r3sgk1/2b2gsp1/p1ppppp1p/1p7/P1PPPPPPP/1PSG1SN2/1KGB2R1L/LN7 b -',
          label: 'Diagram 1',
        ),
        MoveSequence(
          description: 'Moves from Diagram 1:',
          moves: [
            'P5e',
            'Px5e',
            'P4e',
            'Px4e',
            'P3e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln5nl/1r3sgk1/2b2gsp1/p1pp2p1p/1p2ppP2/P1PP3PP/1PSG1SN2/1KGB2R1L/LN7 w 2p',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              "Black begins with pushing Pawns on 5th, 4th and 3rd file. The first one, P5e, is for doubly blocking the diagonal of White's Bishop. The second Pawn push is to allow his Knight to move. And as for P3e, provided the opponent responds with Px3e, Black hopes to next play Nx4e, then P*3c.",
        ),
        MoveSequence(
          description: 'Moves from Diagram 2:',
          moves: [
            'S4d',
            'Px3d',
            'Gx3d',
            'P1e',
            'Px1e',
            'P*1c',
            'Lx1c',
            'N2e',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln5n1/1r3sgk1/2b4pl/p1pp1sg2/1p2pp1Np/P1PP3P1/1PSG1S3/1KGB2R1L/LN7 w 5p',
          label: 'Diagram 3',
        ),
        Paragraph(
          text:
              "By sacrificing a Pawn on 1c and thereby luring the Lance up, Black's N2e reveals his Rook and claims the Gold on 3d. It may look delightful to Black, but things are not so simple.",
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'P*3e',
            'Lx1c+',
            'Kx1c',
            'L*1i',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln5n1/1r3sg2/2b4pk/p1pp1sg2/1p2ppp1p/P1PP3P1/1PSG1S3/1KGB2R1L/LN6L w n4p',
          label: 'Diagram 4',
        ),
        Paragraph(
          text:
              "By Diagram 4, Black has lost four Pawns. When it gets into an all-out war, however, having 4 Pawns fewer is hardly any more damaging than having one Pawn fewer. By sacrificing your Pawns you will be able to drop one in your opponent's territory, which will count more as the game proceeds.",
        ),
      ],
    ),
  ],
);
