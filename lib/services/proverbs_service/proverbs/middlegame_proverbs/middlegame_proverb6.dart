import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen35b.htm
const middlegameProverb6 = Proverb(
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
              "Now that you have a promoted Bishop in the oppoen's camp, the position is overwhelmingly in your favor, with either P*5c or +Bx8a to play next.",
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'ln1gb2nl/1ks3r2/3gs2p1/ppppppp1p/7P1/PPPPP1P1P/2SG1P3/1KSB3R1/LN1G3NL w -',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              'Diagram 2-1 shows another variety of the ranging vs static Rook opening. Both players have taken time to build up their own sturdy castles: the static Rook side the 4-piece Mino and the ranging Rook side the high Mino.',
        ),
        Paragraph(
          text:
              'The high Mino is already pretty strong, but what should White play if he aims at making an even more sturdy Silver crown castle from here?',
        ),
        MoveSequence(
          moves: [
            'S8c',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1gb2nl/1k4r2/1s1gs2p1/ppppppp1p/7P1/PPPPP1P1P/2SG1P3/1KSB3R1/LN1G3NL b -',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              'You need to play S8c and G7b to build up the Silver crown. But S8c left two floating pieces in Diagram 2-2: G6a and G6c. This gives Black a big chance.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 2-2:',
          moves: [
            'P2d',
            'Px2d',
            'Bx2d',
            'R2b',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              "Before White plays G7b, Black plays P2d. A clever move. White's R2b is a usual response in a case like this.",
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'Bx5a+',
            'Rx2h+',
            '+Bx6a',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln1+B3nl/1k7/1s1gs4/ppppppp1p/9/PPPPP1P1P/2SG1P3/1KS4+r1/LN1G3NL w BGPrp',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text: 'By taking the floating Gold on 6a, Black has a win position in Diagram 2-3.',
        ),
        Paragraph(
          text: 'Letting a piece unprotected even momentarily can be very dangerous.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              'As a variation to the previous position where White was on his way to build up the Silver crown, White could have first played R2b to avoid the above line of attack. This, however, I will not recommend since Black would have the initiative.',
        ),
        Paragraph(
          text:
              'As an alternative, White played L1b. Then both played S8g and S8c, respectively, aiming for the Silver crown (Diagram 3-1).',
        ),
        Diagram(
          sfenString: 'ln1gb2n1/1k4r1l/1s1gs2p1/ppppppp1p/7P1/PPPPP1P1P/1SSG1P3/1K1B3R1/LN1G3NL b -',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text: 'Will Black succeed if he follows the same line of attack as described in the previous section?',
        ),
        MoveSequence(
          description: 'Moves after Diagram 3-1:',
          moves: [
            'P2d',
            'Px2d',
            'Bx2d',
            'R2b',
            'Bx5a+',
            'Rx2h+',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln1g+B2n1/1k6l/1s1gs4/ppppppp1p/9/PPPPP1P1P/1SSG1P3/1K5+r1/LN1G3NL b BPrp',
          label: 'Diagram 3-2',
        ),
        Paragraph(
          text:
              "As you see, Black cannot play +B6a, because White's Rx2h+ is check. After Black plays the inevitable G7h, White will take the Bishop by G5a. Black will have just lost his Rook.",
        ),
        Paragraph(
          text:
              "In order to avoid this, Black may play P*2e after White's R2b. Then White will play B7c (Diagram 3-3).",
        ),
        Diagram(
          sfenString: 'ln1g3n1/1k5rl/1sbgs4/pppppppBp/7P1/PPPPP1P1P/1SSG1P3/1K5R1/LN1G3NL b p',
          label: 'Diagram 3-3',
        ),
        Paragraph(
          text:
              "What do you think of Diagram 3-3? Black's Rook path is blocked with his own piece, whereas White can next play P6e. Thus, the position is far from successful for Black.",
        ),
        Paragraph(
          text:
              'When you have a loose piece of your own, it would be wise not to start offense. Make sure your pieces are well connected with each other and your castle is sturdy before you begin your attack.',
        ),
        Paragraph(
          text: 'Back in Diagram 1-1, the best move is G7h for Black and G7b for White.',
        ),
      ],
    ),
  ],
);
