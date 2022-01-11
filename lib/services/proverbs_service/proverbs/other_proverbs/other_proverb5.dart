import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen48.htm
const otherProverb5 = Proverb(
  index: 49,
  title: 'Early escape is worth eight moves',
  japaneseTitle: 'Gyoku no hayanige hatte no toku ari',
  type: ProverbType.other,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "If someone asked me if this is literally true, I would have to answer that you'd have to take it with a grain of salt. But in shogi, just one move can be crucial meaning, so I would like to say that if you gain one move's advantage, it should be sufficient.",
        ),
        Paragraph(
          text:
              'This proverb is most often taken as an adage about the endgame, but it can be applicable in the beginning game.',
        ),
        Diagram(
          sfenString: 'ln4knl/1r2g1g2/2ppppspp/ps4p2/1p7/P1P2PPP1/1PSPPSN1P/2G1G4/LN2K2RL b Bb',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              'From Diagram 1-1 (last move S8d), White will play P9e, then Px9e, Sx9e... The edge will be broken. So you should play...',
        ),
        MoveSequence(
          moves: [
            'K4h',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              'To move King further away from the likely spot of collision, even in the early stage, is quite effective.',
        ),
        Diagram(
          sfenString: 'l6nl/1r2k1g2/2nsbgspp/p1ppppp2/1p5P1/2PPPBPSP/PPSG1PN2/1KG6/LN5RL b -',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              'In Diagram 1-2, White has just moved his King from 4a to 5b. This is also another example of the early escape in the beginning stage.',
        ),
        Diagram(
          sfenString: 'ln1g1gsnk/1r6l/p1pps1bpp/4ppp2/1p1P1P2P/2P3P2/PPB1P1NP1/2SRG1S2/LN2KG2L w -',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              "In Diagram 1-3 (last move P4e), Black's camp has assumed an anomalous castle with the King on its original square, called the Fujii system. The basic position used to be like Diagram 1-A (last move B4b), in which the collision occurs above the King's head. So, the idea was to go without the unnecessary move (K4h), which is not at all an \"early escape\" in this case.",
        ),
        Diagram(
          sfenString: 'ln1g1gsnk/5r2l/p1pps1bpp/4ppp2/1p1P1P2P/2P3P2/PPB1P1NP1/3RGKS2/LNS2G2L b -',
          label: 'Diagram 1-A',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'kn7/l1s+P+R4/3pp4/pGp6/1p7/2PPb4/PPG6/1KG6/LN1s+r4 b 2s',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              'In the Diagram above, White has just dropped a Silver on 6i, threatmate (from Sx7h+). Here, P9f will not open up an escape route. From Sx7h+, Gx7h, Bx7h+...mate. So, the move you should play here is...',
        ),
        MoveSequence(
          moves: [
            'K9h.',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              'The King that sits before the Lance is called the "Yonenaga King," which used to be a rarity, but now it is one of the standard positions.',
        ),
        Paragraph(
          text: 'After K9h, White has to continue threatmate. Otherwise, Black will have threatmate first by +Px7b.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'Sx7h+',
            'Gx7h',
            'Bx7h+',
            '+Px7b',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'kn7/l1+P1+R4/3pp4/pGp6/1p7/2PP5/PP7/K1+b6/LN2+r4 w 2g2s',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "That White's Bx7h+ does not check the King makes all the difference. With +Px7b, the victory is in Black's hand.",
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: '8l/9/6np1/7bp/5P3/3P1p2P/3SP1PP1/4GGKS1/7NL b 2Ps3p',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text:
              "In Diagram 3-1 (last move P*4f), Black has assumed a castle called the Gold excelsior (also called the Two Golds), while White has attacked using the joining Pawns and the dangling Pawn tesuji. Black has to respond correctly to the attack aiming at the King's ear.",
        ),
        Paragraph(
          text:
              'S5f will be a possibility. If White plays S*4g, then there will follow: Sx4g, Px4g+, Gx4h-4g, P*4f. (Diagram 3-A)',
        ),
        Diagram(
          sfenString: '8l/9/6np1/7bp/5P3/3P1p2P/4PGPP1/4G1KS1/7NL b S3Ps2p',
          label: 'Diagram 3-A',
        ),
        Paragraph(
          text:
              'The 4g square may seem to be strongly guarded, but a piece-exchange will go on and on. So, instead of S5f, you should play...',
        ),
        MoveSequence(
          moves: [
            'S-3i.',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              "The Silver on 2h was intended to prepare for an attack from above, but in Diagram 3-1, it is only blocking the King's escape route. So, S3i is a very good move here, making room for the King to flee. S1g and P2f are also quite effective in the same vein.",
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'S*4g',
            'K-2h',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: '8l/9/6np1/7bp/5P3/3P1p2P/3SPsPP1/4GG1K1/6SNL w 2P3p',
          label: 'Diagram 3-2',
        ),
        Paragraph(
          text:
              'Shifting the King to a less dangerous part of the board will give you time to turn to offense. Remember, when your opponent dropped a piece on top of the foothold, having the King escape instead of taking the piece can make slow the offense.',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'ln5nl/1r4gk1/p2p1g3/2pspp1pP/1p7/2PPP2P1/PPSG1P3/2G4R1/LN1K4L b BS2Pbsnp',
          label: 'Diagram 4-1',
        ),
        Paragraph(
          text:
              "Before Black's King gets into the Yagura castle, the collision started with piece-exchanges on a large scale prior to Diagram 4-1 (last move K2b). How would you play from here?",
        ),
        MoveSequence(
          moves: [
            'K-7i',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              "You may be tempted to play P2e, seeing that White's King is barely guarded. But go slowly. With your King still sitting on 6i, it would be too dangerous.",
        ),
        Paragraph(
          text:
              "Shogi is a game where one competes how fast he can make the opponent's King weaker until the King is defenseless. With your King in an unstable position, you will have to play unduly burdened. If your King happens to be outside of the castle, before starting an attack you should think how you can move it to a safer spot.",
        ),
        Diagram(
          sfenString: '5kbnl/r2s2g2/l1np1gspp/1pp1ppp2/p8/2PPPSPP1/PP1G1PN1P/1SGB3R1/LNK5L w -',
          label: 'Diagram 4-2',
        ),
        Paragraph(
          text:
              "Diagram 4-2 shows where Black has just played S8h to prepare for White's edge attack from the spearing the sparrow opening. This move is reasonable and makes sense, for now. But actually Black's camp is in very bad shape with the notorious wall Silver. So, please remember, when you no longer have to worry about the edge attack, playing N7g or S7g to make room for the King will be worth more than two moves.",
        ),
      ],
    ),
  ],
);
