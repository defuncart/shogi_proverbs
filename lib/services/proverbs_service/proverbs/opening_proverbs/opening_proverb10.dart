import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen28.htm
const openingProverb10 = Proverb(
  title: 'The 4e Vanguard Pawn is the Tennozan Mountain',
  japaneseTitle: '4-5 no kurai wa Tennozan',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'The 5e vanguard Pawn is no longer a game-deciding tactic in present-day shogi. Instead, we see 4e as a square to hold.',
        ),
        Diagram(
          sfenString: 'ln3gbnl/1r2g1s2/p2p1psk1/2p1p1ppp/1p1P1P3/2P1S1PPP/PPB1P1N2/3RG1S2/LN3GK1L w -',
          label: 'Diagram 1',
        ),
        Paragraph(
          text:
              "White in Diagram 1 (last move P6e) has started to assume a left-Mino castle, but has been unable to build it into the ultimate left-Mino, which is completed with the Pawn on 4d and the Gold on 4c. Not only has Black's vanguard Pawn on 4e prevented White's ideal formation, the Bishop on 8h is now a direct threat for White's camp because of the kurai.",
        ),
        Paragraph(
          text:
              'Even if White plays G5c and then P4d, in an attempt to make it into a better-shaped castle, there will follow: Px4d, Gx4d, P*4e, G4c. He will end up having a defect on 4d: Black will be able to drop any acquired piece on 4d.',
        ),
        Paragraph(
          text:
              'The 4e vanguard Pawn has been proved to be the real Tennozan, which explains the recent sharp decline of the left-Mino opening games among professionals.',
        ),
        Diagram(
          sfenString: 'l6nl/1r3bgk1/p1ns1gspp/2ppppp2/1p3P1P1/2PPP1P2/PPSG1SN1P/1KGB3R1/LN6L w -',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              'Diagram 2 shows a double fortress opening, where Black has just played P4e. White should play Px4e here. Supposing he plays 8a instead, which happens to be a bad move, how should Black take advantage of that?',
        ),
        Paragraph(
          text: 'Moves after Diagram 2:',
        ),
        MoveSequence(
          moves: [
            'R8a',
            'Px4d',
            'Gx4d',
            'P*4e',
            'G4d-4c',
            'B4f',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'lr5nl/5bgk1/p1ns1gspp/2ppp1p2/1p3P1P1/2PPPBP2/PPSG1SN1P/1KG4R1/LN6L w p',
          label: 'Diagram 3',
        ),
        Paragraph(
          text:
              "White's R8a was obviously a slack move allowing Black to have the 4e vanguard Pawn. Black can then place his Bishop in an ideal square, 4f, which is effective both in offence and defense.",
        ),
      ],
    ),
  ],
);
