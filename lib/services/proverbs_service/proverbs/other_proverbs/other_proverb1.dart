import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen45.htm
const otherProverb1 = Proverb(
  index: 45,
  title: 'Drop where your opponent wants to drop',
  japaneseTitle: 'teki no uchitai tokoro e ute',
  type: ProverbType.other,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'When you drop a piece of your own where the opponent wants to drop, you can prevent him from launching an attack.',
        ),
        Diagram(
          sfenString: '7nl/9/9/8p/6ps1/5P2P/5GPS1/6GK1/7NL b Pp',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              'In Diagram 1-1, White is about to drop a Pawn on 2f. Before that happens, you play P*2f, and you can prevent a disaster.',
        ),
        Diagram(
          sfenString: 'ln7/1r7/p8/2sp5/1p7/3P5/PPSG5/1KGB5/LN7 b P2p',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              "From Diagram 1-2, if you don't do anything, White will play P*7f. After your Gx7f or Sx7f, White will then drop another Pawn on 7e, and you will suffer from material loss. So you should play P*7f first to prevent it.",
        ),
        Paragraph(
          text: 'Now, what is the best move to play in Diagram 3?',
        ),
        Diagram(
          sfenString: '9/9/9/9/9/2P1SPP1P/PPSPP4/2G6/LNK2G1NL b Pr',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              'White wants to drop a Rook on 2h. G3i will only incur R*5i. Here again, P*2h is a very good move. By filling the square in question with your piece, you can nip possible trouble in the bud.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'Not only in defense, the proverb is also applicable in offence.',
        ),
        Diagram(
          sfenString: '7nl/5sg2/5pp1p/7p1/6S2/9/5PP1P/7R1/7NL b Pp',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              'Prior to the above diagram, Black played P2d, after which White responded with Px2d. If Black goes on to play Sx2d, the 2nd file may seem certain to be broken into. But it is not quite so. White can then play P*2b. Then there will follow: P*2c, S3a!, Px2b+, Sx2b (Diagram 2-2).',
        ),
        Diagram(
          sfenString: '7nl/6gs1/5pp1p/7S1/9/9/5PP1P/7R1/7NL b 2Pp',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "Therefore, Black has to do something before playing Sx2d. Just as the proverb teaches: P*2b. White has to take the Pawn to save his Knight. Then, and only then, Black's offense will work. After that White cannot play P*2c, which would be a sheer waste of time.",
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'Diagram 3-1 shows Black is in the middle of the edge attack on the Yagura castle.',
        ),
        Diagram(
          sfenString: '8l/6gk1/5gspn/4ppp1p/7P1/4PBP2/5PN1L/8R/9 b Pp',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text:
              "White has just taken the Pawn dropped on 1c. If Black plays Lx1d right away, White will be able to defend by P*1b. The force on 1c square is in equilibrium (Black's 3 versus White's 3), which means Black's offense won't work. At a time like this, you should remember the proverb. So, the move to play here is: P*1b.",
        ),
        Paragraph(
          text:
              "Against your P*1b, White has to respond with Lx1b. Then you will be able to realize your scheme and play Lx1d. Now Black's 3 are balanced against White's 2, since White is unable to drop a Pawn on 1b to support 1c. The edge attack is promised to succeed.",
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'In this section, I will show you how the proverb is effective in attacking the Mino castle.',
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1g4/pppps1b2/4pp1r1/2SP2ppp/1R1B1P3/P3PGSPP/5GK2/LN5NL b 3P',
          label: 'Diagram 4-1',
        ),
        Paragraph(
          text:
              "Diagram 4-1 (last move B3c) is from a double ranging Rook opening, where Black has developed an ideal attacking formation with the four pieces (Rook, Bishop, Silver, and Knight ) well organized against White's Mino castle.",
        ),
        MoveSequence(
          description: 'Moves from Diagram 4-1:',
          moves: [
            'P*8d',
            'Px8d',
            'P*8c',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1g4/pPpps1b2/1p2pp1r1/2SP2ppp/1R1B1P3/P3PGSPP/5GK2/LN5NL w Pp',
          label: 'Diagram 4-2',
        ),
        Paragraph(
          text: "After White's Px8d, Sx8d won't do, because White will then play P*8c.",
        ),
        MoveSequence(
          description: 'Moves from Diagram 4-1:',
          moves: [
            'Sx8c',
            'Sx8d',
            'Sx8d',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1g3nl/1k2g4/p1pps1b2/1s2pp1r1/3P2ppp/1R1B1P3/P3PGSPP/5GK2/LN5NL b 2Ps2p',
          label: 'Diagram 4-3',
        ),
        Paragraph(
          text:
              "If, from Diagram 4-2, White plays K7a, Black can comfortably play Rx8d. So, White's Sx8c is the best defense, and then Black goes on to play Sx8d for Silver exchange.",
        ),
        Paragraph(
          text:
              "From Diagram 4-3, Rx8d may seem natural enough, but think further. White will then play P*8c to repel the Rook, which will be no good for Black. So, here again, P*8c (Diagram 4-4) is a good move.",
        ),
        Diagram(
          sfenString: 'ln1g3nl/1k2g4/pPpps1b2/1s2pp1r1/3P2ppp/1R1B1P3/P3PGSPP/5GK2/LN5NL w Ps2p',
          label: 'Diagram 4-4',
        ),
        Paragraph(
          text:
              'There will follow: Kx8c, Rx8d, K7b, P*8c. The 8th file will certainly be under your control, making a winning position for you.',
        ),
      ],
    ),
  ],
);
