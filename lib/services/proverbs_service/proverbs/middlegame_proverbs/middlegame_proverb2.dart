import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen32.htm
const middlegameProverb2 = Proverb(
  index: 31,
  title: 'With three Pawns in hand, a joining Pawn and a dangling Pawn',
  japaneseTitle: 'Sampu mottara tsugifu ni tarefu',
  type: ProverbType.middle,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'When you have several Pawns in hand, you will have more lines of attack to choose from. The above saying teaches that a combination of a joining Pawn and a dangling Pawn tesuji is most likely to work in your favor, if you have enough Pawns.',
        ),
        Diagram(
          sfenString: '7nl/6gk1/5ppp1/8p/9/6P1P/5P3/7R1/7NL b 3P',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text: 'Moves from Diagram 1-1:',
        ),
        MoveSequence(
          moves: [
            'P2d',
            'Px2d',
            'P*2e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text: 'Above is the joining Pawn tesuji.',
        ),
        Paragraph(
          text: 'Moves thereafter:',
        ),
        MoveSequence(
          moves: [
            'Px2e',
            'P*2d',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: '7nl/6gk1/5pp2/7Pp/7p1/6P1P/5P3/7R1/7NL w 2p',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              "P*2d completes the proverb. From Diagram 1-2, Black can play Rx2e which will render quite a pressure on White. If any other piece other than a Pawn is in hand, Black can next drop it on 2c, which will crush the White's camp. So White simply cannot yield pieces.",
        ),
        Paragraph(
          text:
              "White may, as the last resort, play K3b for an early escape. After Black's Rx2d, he can play P*2b to defend the 2nd file. But this will ruin White's castle, and if Black attacks from the 5th file the prospect will be quite in Black's favor.",
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'The proverb also works when playing against the anaguma castle.',
        ),
        Diagram(
          sfenString: 'kng1+R4/lsg6/ppppp4/9/P1P6/2SPP4/2BG5/1KG6/LN7 b 3P',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              "In the above Diagram, White's anaguma looks like a strong, still intact fortress, but you can make a breakthrough.",
        ),
        MoveSequence(
          moves: [
            'P*8d',
            'Px8d',
            'P*8e',
            'Px8e',
            'P*8d',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'kng1+R4/lsg6/p1ppp4/1P7/PpP6/2SPP4/2BG5/1KG6/LN7 w 2p',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              'A dangling Pawn on 8d is what you should remember when playing against the anaguma. If you capture any other piece than a Pawn, you can drop it on 8c. Diagram 2-3 shows Black has just dropped a Knight on 8c.',
        ),
        Diagram(
          sfenString: 'kng1+R4/lsg6/pNppp4/1P7/PpP6/2SPP4/2BG5/1KG6/LN7 w 2p',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text: 'Moves from Diagram 2-3:',
        ),
        MoveSequence(
          moves: [
            'Sx8c',
            'Px8c+',
            'Gx8c',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Paragraph(
          text: 'After this, Black can take a Gold on 7a.',
        ),
        Paragraph(
          text:
              'Even if Black has no piece to drop on 8c, he can continue his offensive by Sx8e aiming for P8c+. (Diagram 2-4)',
        ),
        Diagram(
          sfenString: 'kng1+R4/lsg6/p+Pppp4/9/PSP6/3PP4/2BG5/1KG6/LN7 w 2p',
          label: 'Diagram 2-4',
        ),
        Paragraph(
          text:
              "See for yourself that White will eventually lose whichever piece he takes the promoted Pawn with, by Black's next move: P*8d.",
        ),
        Paragraph(
          text: 'Also against the Mino castle, the same tesuji is quite effective. See Diagram 2-5.',
        ),
        Diagram(
          sfenString: 'ln1g1+R3/1ks1g4/2ppp4/pP7/1pP5/P1SPP4/2BG5/1KG6/LN7 w 2p',
          label: 'Diagram 2-5',
        ),
        Paragraph(
          text:
              "Black, if he has any piece other than a Pawn, can drop it on 8c, likewise. If not, he can play Sx8e thereby applying a pressure on White's King. Please note that he has made his own King safer by getting rid of the Pawn on 8e, which really makes a big difference towards the end.",
        ),
        Paragraph(
          text:
              "Remember a dangling Pawn right in front of the opponent's King never fails to work in your favor. Ask yourself if a joining Pawn tesuji makes this possible.",
        ),
      ],
    ),
  ],
);
