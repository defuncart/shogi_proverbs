import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen27.htm
const openingProverb9 = Proverb(
  index: 26,
  title: 'The 5e Vanguard Pawn is the Tennozan Mountain',
  japaneseTitle: 'Go-go no kurai wa Tennozan',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'People used to take this proverb quite seriously, and did the best they could to prevent the opponent from maintaining a 5e vanguard Pawn. But in present-day shogi, it does not always hold true.',
        ),
        Paragraph(
          text:
              'Diagram 1 (last move K4a) shows where White has successfully realized the 5e vanguard Pawn. The position is supposed to be in favor of White according to the proverb, but not so in reality.',
        ),
        Diagram(
          sfenString: 'ln1g1k1nl/4r1gb1/p1pp1s1p1/4spp1p/4p4/P1P2PPRP/1P1PPSN2/1BKGSG3/LN6L b Pp',
          label: 'Diagram 1',
        ),
        Paragraph(
          text: "See how Black's R,B,S,and N are ideally placed for an attack.",
        ),
        MoveSequence(
          moves: [
            'P3e',
            'Px3e',
            'P4e',
            'Px4e',
            'P5f',
            'Px5f',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              "First he plays P3e before moving the Knight, and then P5f, thereby aiming at the Pawn on 5e. These are orthodox and effective moves on Black's part.",
        ),
        MoveSequence(
          description: 'Then there will follow:',
          moves: [
            'Bx2b+',
            'Gx2b',
            'Sx5f',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln1g1k1nl/4r2g1/p1pp1s1p1/4s3p/5pp2/P1P1S2RP/1P1P2N2/2KGSG3/LN6L w B2Pb4p',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              'If White plays P*5e to keep the vanguard, Black can play S4e asking for Silver-exchange so that his Knight can leap onto 4e.',
        ),
        MoveSequence(
          moves: [
            'P*5e',
            'Sx4e',
            'Sx4e',
            'Nx4e',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1g1k1nl/4r2g1/p1pp1s1p1/8p/4pNp2/P1P4RP/1P1P5/2KGSG3/LN6L w BS3Pbs3p',
          label: 'Diagram 3',
        ),
        Paragraph(
          text:
              "The series of moves above leaves White's camp in a complete mess with most of the pieces disconnected with each other, while Black has at least two possibilities to play: S*5c and R6f. Either looks good.",
        ),
        Paragraph(
          text: 'Diagram 3 clearly shows Black is dominant at this point.',
        ),
      ],
    ),
  ],
);
