import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen01.htm
const otherProverb3 = Proverb(
  index: 47,
  title: "Don't run from a fork",
  japaneseTitle: 'Ryo-dori nigeru bekarazu',
  type: ProverbType.other,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "When two of your pieces are attacked by one enemy piece with the same move, you cannot save both. This is not an uncommon situation when you play a quick attack opening like Yokofu-dori. The idea conveyed in the above proverb is: Don't just think of rescuing one of the threatened pieces, but consider the position in a positive light.",
        ),
        Paragraph(
          text:
              "Look at Diagram 1-1 (last move B*5e). This is one of the possible positions you might run into when playing Yokofu-dori.",
        ),
        Diagram(
          sfenString: 'lnsgk2nl/6g2/p1pppps1p/9/4b4/6P2/P2PPP2P/2G4S1/LNS1KG1NL b RB3Pr3p',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text: '''
You are Black. Your next move is?
G-3h? No, you'll lose a Lance on 9i.
S-8h? No, you'll lose a Silver on 2h.
P*8b. Yes, that's the only way to put the proverb to good use.
''',
        ),
        MoveSequence(
          description: 'The most likely moves thereafter would be:',
          moves: [
            'Bx2h+',
            'Px8a+',
            'S-6b',
            'P*7b',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'l+P1gk2nl/2Ps2g2/p1pppps1p/9/9/6P2/P2PPP2P/2G4+b1/LNS1KG1NL w RBNPrs3p',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              "Here the position is even. When in ryo-dori, the obvious first choice should be saving one of the pieces, which is often the right move. But sometimes you may come up with a better idea. This is what the proverb is teaching.",
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              "Now let me show you how the idea was applied in a real game. Look at Diagram 2-1. White just dropped a Bishop on 3i, forking a Rook and a Gold. R-2f will be out of the question because it would only allow the Bishop to take a Gold and and promote on 6f. Worse yet, it is ote(mate). R*4h would rescue both pieces indeed, but it would only make White gloat knowing you can't attack with a meager paratroop.",
        ),
        Diagram(
          sfenString: 'ln4knl/4g1g2/3sp1spp/p4p3/6SP1/PG1GP4/5P2P/1K1B3R1/LN4bNL b R6Ps2p',
          label: 'Diagram 2-1',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-1:',
          moves: [
            'R*7a',
            'S*4a',
            'P*3d',
            'S-2b',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'lnR2sknl/4g1gs1/3sp2pp/p4pP2/6SP1/PG1GP4/5P2P/1K1B3R1/LN4bNL b 5P2p',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "Black didn't run from a fork, but went on to attack. White's idea was to maintain material advantage, so he tried to steer toward a long and slow game...",
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-2:',
          moves: [
            'P*6d',
            'S-5d',
            'P-5e',
            'Bx2h+',
            'Px5d',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'lnR2sknl/4g1gs1/4p2pp/p2PPpP2/6SP1/PG1G5/5P2P/1K1B3+b1/LN5NL w S4Pr2p',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text:
              "In response to the third move, P-5e, White didn't play S-4c. If he had, Black's R-2f would have been just the right defense. If White had played Bx6f+, Black would have responded with B-7g, which would make a great difference compared with a position where Black played R-2f in the first place.",
        ),
        Paragraph(
          text:
              "Diagram 2-3 shows both parties in equilibrium. Compare it with Diagram 2-1 where Black's Rook and Gold are forked, which you might well consider a crisis. Black played deftly, put the proverb into practice and got himself out of trouble.",
        ),
      ],
    ),
  ],
);
