import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen42.htm
const endgameProverb6 = Proverb(
  index: 42,
  title: 'Drop a Silver behind the King',
  japaneseTitle: 'Gyoku no shita kara Gin wo ute',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'This is another tesuji using a Silver. Diagram 1 shows where a Sliver has been dropped on 3a. The King cannot be rescued. The position may not be obvious at a glance, so we will examine it move by move.',
        ),
        Diagram(
          sfenString: '4+R1Snl/5gk2/5pppp/9/6P1P/9/9/9/9 w r2b3g3s3n3l12p',
          label: 'Diagram 1',
        ),
        Paragraph(
          text: 'From the diagram Black will next play +Rx4b, mate. So White has to prevent that by...',
        ),
        Paragraph(
          text: """
1) P2d, which will be answered with +Rx4b, K2c, +R2b.
2) G4a, which will lead to +Rx4a, Kx4a, G*3b.
3) G*4a, which will meet Sx4b+, and if K2b, +R4a (Not exactly mate, but hopeless). If Gx4b, G*3a...(mate)
4) S*4a, which looks good if followed by Sx4b+, Sx4b, securing 3a. But Black will then play G*2b, what we call the "okuri" tesuji, or a sacrifice in order to send the King away into an inescapable corner.""",
        ),
        Paragraph(
          text:
              'Once you have learnt how effective the Silver works from behind, you will be able to apply the principle in other positions.',
        ),
        Paragraph(
          text: "In Diagram 2, White has just played G4a to chase the promoted Rook away.",
        ),
        Diagram(
          sfenString: '4+Rg1nl/6k2/5pppp/9/6P1P/9/9/9/9 b GSr2b2g3s3n3l12p',
          label: 'Diagram 2',
        ),
        Paragraph(
          text: 'No need to panic. What should you play?',
        ),
        MoveSequence(moves: ['G4b'], playerFirstMove: PlayerType.sente),
        Paragraph(
          text:
              'White will have to respond with Gx4b. Then your S*3a will make exactly the same position as Diagram 1.',
        ),
        Paragraph(
          text: 'Like the belly Silver, this is also a pretty effective tesuji you should remember.',
        ),
      ],
    ),
  ],
);
