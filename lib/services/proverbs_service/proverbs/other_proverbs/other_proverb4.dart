import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen47.htm
const otherProverb4 = Proverb(
  index: 48,
  title: 'Take two for one, even if there is a Pawn in it.',
  japaneseTitle: 'Nimai-gae nara Fu tomo seyo',
  type: ProverbType.other,
  pages: [
    Page(
      sections: [
        Paragraph(
          text: 'First let me show the "balance sheet" for piece exchange.',
        ),
        Paragraph(
          text: '''
R less than G+S               R more than N+L
B less than S+L                B more than N+L  
R less than G+P+alpha    B less than S+P+alpha''',
        ),
        Paragraph(
          text:
              "It depends on the situation whether R for G+P or B for S+P pays. Alpha represents an additional advantage such as leaving the opponent out of Pawns or causing bad shape on the opponent's part.",
        ),
        Paragraph(
          text:
              'Needless to say, a major piece has great power, so when you are about to give up your major piece in exchange for two pieces, and that a Pawn is one of them, ask yourself if you will be able to enjoy an extra benefit. Most often, you will need it.',
        ),
        Diagram(
          sfenString: 'lnsgk1snl/1r4g2/p1pppp1pp/6R2/1p5b1/2P6/PP1PPPP1P/1SG6/LN2KGSNL b B2P',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              'Diagram 1-1 (last move B*2e) shows one of joseki positions from the Bishop-exchange opening. White has just dropped a Bishop. How do you respond to it?',
        ),
        MoveSequence(
          description: 'Moves after Diagram 1-1:',
          moves: [
            'Rx3b+',
            'Sx3b',
            'S3h',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'lnsgk2nl/1r4s2/p1pppp1pp/9/1p5b1/2P6/PP1PPPP1P/1SG3S2/LN2KG1NL w BG2Pr',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              'To give up the Rook here is what the joseki teaches. Black takes a Gold and a Pawn, while White takes a Rook.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 1-2:',
          moves: [
            'S3c',
            'S7g',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Paragraph(
          text:
              'From Diagram 1-2, if White plays P8f, followed by Px8f, Rx8f, Black will then play B*2b. So, White is right to play S3c beforehand.',
        ),
        Diagram(
          sfenString: 'lnsgk2nl/1r7/p1ppppspp/9/1p5b1/2P6/PPSPPPP1P/2G3S2/LN2KG1NL w BG2Pr',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              'In Diagram 1-3, White has no Pawns in hand, and his Bishop sits on an awkward square. They make up for the loss of the Rook. Therefore, the position above is in favor of Black. This is an accepted evaluation today.',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'ln3k1nl/1r1s2g2/pppppg1sp/5ppp1/9/2P1P4/PPSP1PP1P/2GB1S1R1/LN2KG1NL w Pb',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              "Prior to the Diagram above, White responded unconventionally to Black's Pawn-exchange along the 2nd file: from S2c to P*2d. Seeing this, Black has dropped a Bishop on 6h, based on the idea taught by the proverb.",
        ),
        MoveSequence(
          description: 'Moves after Diagram 2-1:',
          moves: [
            'B*5a',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Paragraph(
          text:
              "If White doesn't pay due attention to Black's plan and plays something else, say, K3a, Black will play Bx2d, Sx2d, Rx2d. (Diagram 2-A)",
        ),
        Diagram(
          sfenString: 'ln4knl/1r1s2g2/pppppg2p/5ppR1/9/2P1P4/PPSP1PP1P/2G2S3/LN2KG1NL w S2P2b',
          label: 'Diagram 2-A',
        ),
        Paragraph(
          text:
              'In Diagram 2-A, White has allowed Black to break into the 2nd file, which is the crucial file for his castle. Also, unlike Black, White has no Pawn in hand. All in all, Black has a slight edge over White.',
        ),
        Paragraph(
          text:
              'From Diagram 2-1, White may play G3c to prevent the "two-for-one" tesuji, to which Black can respond with P3f. Then there will follow: K3a, N3g. Black will go on to play P2e next.',
        ),
        Paragraph(
          text:
              'When you play White, you should avoid playing G3c at an early stage, since the square can be easily targeted by the Knight.',
        ),
        Paragraph(
          text:
              'From Diagram 2-1, therefore, B*5a is the most commonly played move. Then after several more moves, the players are likely to get to the position like Diagram 2-2.',
        ),
        Diagram(
          sfenString: 'ln2b2nl/1r4gk1/3psg1s1/p1p1ppppp/1p7/P1PPP1P1P/1PSG1PN2/1KGB1S1R1/LN6L w P',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "Strictly speaking, the position is even, but while Black's Bishop is comparatively free to move, White's has to sit there to protect the 2d square. In this sense, Black should be a little more comfortable at this poin",
        ),
        Paragraph(
          text: 'Although it did not surface, the idea of "two for one" was always there.',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'ln4knl/1rg2sg2/p1p1p1b2/3ps1ppp/1pP2p3/P1RP4P/B1N1PPP2/2GS2S2/L4GKNL b 2P',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text:
              'The above is from a twisted Rook opening, where White has just played P8e. Now Black can put the "two-for-one" scheme into practice.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 3-1:',
          moves: [
            'P7d',
            'Px7d',
            'Bx6d',
            'G7c',
            'Bx7c+',
            'Nx7c',
            'Rx7d',
            'P*7b',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'l5knl/1rp2sg2/p1n1p1b2/2R1s1ppp/1p3p3/P2P4P/2N1PPP2/2GS2S2/L4GKNL b G4Pb',
          label: 'Diagram 3-2',
        ),
        Paragraph(
          text:
              "After White's G7c, Bx7c is the intended move. By Diagram 3-2, Black has given up a Bishop in exchange for a Gold and a Pawn, which is a materially unfavorable deal. But again, White has been left without Pawns in hand, which is more than enough to compensate for the material disadvantage at this point.",
        ),
        MoveSequence(
          description: 'Moves after Diagram 3-2:',
          moves: [
            'R6d',
            'K2b',
            'R2a+',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'l2+R3nl/1rp2sgk1/p1n1p1b2/4s1ppp/1p3p3/P2P4P/2N1PPP2/2GS2S2/L4GKNL w G4Pb',
          label: 'Diagram 3-3',
        ),
        Paragraph(
          text:
              'R6d is a good move, since White has no Pawn to drop on 6c. Now that his Rook has been promoted, Black is clearly dominant.',
        ),
      ],
    ),
  ],
);
