import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen44.htm
const endgameProverb8 = Proverb(
  index: 44,
  title: 'In the endgame, speed is more important than material profit',
  japaneseTitle: 'Shuban wa koma no sontoku yori sokudo',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'There are three factors you should consider when deciding which side is superior at a certain position. They are material gain, stability of the King, and whose turn it is to play.',
        ),
        Paragraph(
          text:
              "In the beginning and middle game, more important are superiority in material and the King's stability for evaluating who is leading the game. But in the endgame, the third factor becomes very important. Speed, or how fast one can approach the King can be a game-deciding matter.",
        ),
        Diagram(
          sfenString: 'l4+B1nl/4+P1gk1/1rnp1gspp/p1p2pp2/sp1P3P1/2PS2P1P/PP1G1PS2/1KG1+p2R1/LN2+b3L b N',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              'Diagram 1-1 (last move +B5i) shows where White has just moved his promoted Bishop from 4i to 5i. S4f would be too slow here. This is not the time to worry about losing a Silver. If S4f, White will then play P8f, followed by: Px8f, Sx8f (Diagram 1-A).',
        ),
        Diagram(
          sfenString: 'l4+B1nl/4+P1gk1/1rnp1gspp/p1p2pp2/3P3P1/1sPS1SP1P/P2G1P3/1KG1+p2R1/LN2+b3L b NPp',
          label: 'Diagram 1-A',
        ),
        Paragraph(
          text:
              'After Diagram 1-A, even if Black plays P*8g, there will follow Sx8g+, Gx8g, Rx8g+, Kx8g, P*8f... mate.',
        ),
        Paragraph(
          text: 'So, back in Diagram 1-1, the best move to play is N*2d. (Diagram 1-2)',
        ),
        Diagram(
          sfenString: 'l4+B1nl/4+P1gk1/1rnp1gspp/p1p2ppN1/sp1P3P1/2PS2P1P/PP1G1PS2/1KG1+p2R1/LN2+b3L w -',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text: 'This Knight drop is specially called the "demolishing the Yagura fortress" tesuji.',
        ),
        MoveSequence(
          description: 'Moves from Diagram 1-2:',
          moves: [
            'Px2d',
            'Px2d',
            'Sx2d',
            'Rx2d',
            'P*2c',
            'S*3a',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'l4+BSnl/4+P1gk1/1rnp1g1pp/p1p2ppR1/sp1P5/2PS2P1P/PP1G1PS2/1KG1+p4/LN2+b3L w Pn',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text: 'The last move, S*3a, is the finishing stroke. If K3c, then +Bx3b, Kx3b, G*2b, K3c, Rx2c+ (mate).',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'ln1g1+R1nl/1ks1g4/1pp1s3p/p2ppB3/5p3/P1P1P1p2/1P1P1P1rP/2K1GS3/LN1G3NL b SPb2p',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              'Above is from a static-versus- ranging-Rook game, where White has just played S5c claiming the Bishop. How would you play from here?',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-1:',
          moves: [
            'Bx5c+',
            'Gx5c',
            'S*6b',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              "If Bx1a+ instead, White will play Rx2i+ (Diagram 2-A), and will then take the Lance on 1i. There is no material imbalance in Diagram 2-A, but Black's King is much more vulnerable. It would be next to impossible for Black to win from here.",
        ),
        Diagram(
          sfenString: 'ln1g1+R1n+B/1ks1g4/1pp1s3p/p2pp4/5p3/P1P1P1p2/1P1P1P2P/2K1GS3/LN1G3+rL b SLPbn2p',
          label: 'Diagram 2-A',
        ),
        Paragraph(
          text:
              'In the endgame, you should first think about how you can move your attacking pieces forward rather than gaining pieces. From Diagram 2-1, Bx5c+ is the move to play, bringing the King near mate.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'Gx6b',
            'S*7a',
            'K9c',
            'Sx6b+',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln3+R1nl/2s+S5/kpp1g3p/p2pp4/5p3/P1P1P1p2/1P1P1P1rP/2K1GS3/LN1G3NL w GP2bs2p',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              'S*6b is the sacrifice you should remember when you want to demolish the Mino castle. After Gx6b, you can check with a Silver droop on 7a.',
        ),
        Paragraph(
          text:
              "Diagram 2-2 promises a certain victory for Black. White's King was guarded by four generals in Diagram 2-1, but now the King is almost bare. It all depends on your judgement: speed or material gain.",
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              'In this section you will see an actual game. It will show you how beautifully the proverb was put into practice.',
        ),
        Diagram(
          sfenString: 'ln5nl/1r4gk1/pp3s1pp/1bpps1p2/4pN3/2P2R1P1/PP1Ps3P/2GS5/LNK2G2L b BG4P',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text:
              'White has just played S*5g claiming the Rook. If Black plays R4g, then Sx6h+, Gx6h, S*5f, R3g, Sx5f-4e. Black will lose the Knight on 4e, which should serve as a foothold. Not only that, his King will be less guarded. The prospect will be quite unfavorable.',
        ),
        MoveSequence(
          description: 'Moves from Diagram 3-1:',
          moves: [
            'P*3c',
            'Nx3c',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text: "So, it's time for Black to think of offense.",
        ),
        Paragraph(
          text: 'Even after White responds with Nx3c, Black does not try to save his Rook.',
        ),
        MoveSequence(
          moves: [
            'N5c+',
            'Sx4f+',
            'P*4d',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln6l/1r4gk1/pp2+Nsnpp/1bppsPp2/4p4/2P2+s1P1/PP1P4P/2GS5/LNK2G2L w BG2Prp',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              'N5c+, leaping in the other direction, was a good move, and when P*4d followed, it was a deathblow to White.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 2:',
          moves: [
            '+S5g',
            'Px4c+',
            '+Sx6h',
            'Gx6h',
            'Sx4c',
            'S*4a',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln3S2l/1r4gk1/pp2+Nsnpp/1bpp2p2/4p4/2P4P1/PP1P4P/3G5/LNK2G2L w BGS2Prs2p',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text:
              "White has gained the Rook, but that has cost him two moves: Sx4f+ to take the Rook and +S5g to restore the +S back to the attacking force. Black, on the other hand, used his two moves effectively in bringing White's King close to mate.",
        ),
        Paragraph(
          text: 'In the endgame, material loss means less, while speed means a lot more.',
        ),
      ],
    ),
  ],
);
