import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen46.htm
const otherProverb2 = Proverb(
  index: 46,
  title: 'Defend against major pieces by drawing them closer',
  japaneseTitle: 'Oo-goma wa chikazukete ukeyo',
  type: ProverbType.other,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'Major pieces, namely Rooks and Bishops, are most effective when they threaten from afar. In a clash at close quarters, however, they are sometimes forced to draw back in order not to be taken by less valuable pieces. You can take advantage of this characteristic in defense.',
        ),
        Diagram(
          sfenString: '9/9/9/9/2P1b4/9/PP7/1KG6/LNB6 b SPp',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              "In Diagram 1-1, White has just checked Black's King with B5e. How would you defend here? S*7g would invite White's P*7f. So you should play...?",
        ),
        MoveSequence(
          moves: [
            'P*6f',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '9/9/9/9/2P1b4/3P5/PP7/1KG6/LNB6 b SPp',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              'This is called the "mid-interposition". Unless you know the idea, the move should be hard to come up with.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 1-2:',
          moves: [
            'Bx6f',
            'S*7g',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: '9/9/9/9/2P6/3b5/PPS6/1KG6/LNB6 w 2p',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              'By sacrificing one Pawn, you can scare the Bishop away. After White moves his Bishop to a safe square, you will have your turn, which can make a big difference, especially in the endgame.',
        ),
        Paragraph(
          text:
              'Let the big piece draw near, so that you can take the initiative. Once you have learned this, it should help you greatly in actual games.',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: '8l/9/9/9/4b2pp/9/5PPPP/4G1SK1/4BG1NL b 2gn',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              'In Diagram 2-1 (last move B5e), Black is being attacked at the weak spot in the Mino castle. If left unattended, White will play N*3f...mate. If Black plays K3i for an early escape, G*2h will do the job. Even if Black plays K4h after this, N*5f, K5g, G*6f (mate).',
        ),
        Paragraph(
          text:
              'If Black has anything in hand to drop on 4f, that would make the castle sturdy, but he has no piece in hand. Then what should Black play?',
        ),
        MoveSequence(
          moves: [
            'P4f',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text: 'The move may seem like a waste of time, but in fact it is far from it.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'Bx4f',
            'G4g',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: '8l/9/9/9/7pp/5b3/5GPPP/6SK1/4BG1NL w 2gnp',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              'After Bx4g, it is still threatmate for Black, but G4g at once claims the Bishop and defends the 3f square.',
        ),
        Paragraph(
          text: 'For those who like to play the ranging Rook, this tesuji will come in handy.',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'ln7/1ks1+P+R3/ppppp4/5p3/2G6/2P6/PPN6/1K3+r3/L8 b GPs',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text:
              "Above is a partial diagram in the endgame. How should Black play to win this game? At present, though, Black has to respond to the check. K8i will be followed by S*8h, K9h, Sx7g+ (mate). K7i won't do, either (from S*7h). So he has to drop something to interpose. G*7h, the most commonplace, will allow S*6g (Diagram 3-A), after which White will be able to continue his attack.",
        ),
        Diagram(
          sfenString: 'ln7/1ks1+P+R3/ppppp4/5p3/2G6/2P6/PPNs5/1KG2+r3/L8 b P',
          label: 'Diagram 3-A',
        ),
        Paragraph(
          text:
              'After Diagram 3-A, Black could play P*6h, but White will then respond with Sx6h+, which is a good move. Then there will follow Gx6h, +Rx6h, S*7h, G*6g (Diagram 3-B). In Diagram 3-B, Black is defenseless.',
        ),
        Diagram(
          sfenString: 'ln7/1ks1+P+R3/ppppp4/5p3/2G6/2P6/PPNg5/1KS+r5/L8 b p',
          label: 'Diagram 3-B',
        ),
        Paragraph(
          text:
              "On the other hand in White's camp, if Black can only play +P6b, White's King will have no defense. In order for Black to win, he has to contrive to earn time. A commonplace defense won't do. So...?",
        ),
        MoveSequence(
          moves: [
            'P*6h',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text: 'The proverb will be a big help.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            '+Rx6h',
            'G*7h',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln7/1ks1+P+R3/ppppp4/5p3/2G6/2P6/PPN6/1KG+r5/L8 w sp',
          label: 'Diagram 3-2',
        ),
        Paragraph(
          text:
              'From Diagram 3-2, if White plays +R5h, Black can play the aforementioned +P6h to finish the game. If White plays S*7i, K8i will be scary but alright.',
        ),
        Paragraph(
          text:
              'Remember, taking the initiative can be crucial in the endgame. By drawing the big piece closer and then repel it, you will be able to take the initiative.',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'lnsgk1snl/1r4gb1/p1ppppppp/9/9/PpP4R1/3PPPP1P/1BG6/LNS1KGSNL b 2P',
          label: 'Diagram 4-1',
        ),
        Paragraph(
          text:
              'Lastly I would like you to note that this tesuji is not only meant for the endgame. Diagram 4-1 is from the twisting Rook opening, where White has just dropped a dangling Pawn on 8f. In order to cope with the coming P8g+, Black has three means:',
        ),
        Paragraph(
          text: '''
1) Support the 8g square with one more piece.
2) Reduce the opponent's effective power on 8g.
3) Play an even more damaging move to White than P8g+ does to Black.
''',
        ),
        Paragraph(
          text: 'At the moment, Black has only one choice available: 2).',
        ),
        Paragraph(
          text:
              'P*8d is the move that meets the idea taught by proverb. Then there will follow: Rx8d, B6f, R8b, S8h. (Diagram 4-A)',
        ),
        Diagram(
          sfenString: 'lnsgk1snl/1r4gb1/p1ppppppp/9/9/PpPB3R1/3PPPP1P/1SG6/LN2KGSNL w Pp',
          label: 'Diagram 4-A',
        ),
        Paragraph(
          text:
              'Indeed Black has managed to prevent the damage that P8g+ would bring, but has lost one Pawn in the process. What is worse, Black cannot take the Pawn on 8f anytime soon. So, that was not a successful defense.',
        ),
        MoveSequence(
          description: 'Moves after Diagram 4-1:',
          moves: [
            'P*8e',
            'Rx8e',
            'N7g',
            'R8b',
            'P*8e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'lnsgk1snl/1r4gb1/p1ppppppp/9/1P7/PpP4R1/3PPPP1P/1BG6/LNS1KGSNL w P',
          label: 'Diagram 4-2',
        ),
        MoveSequence(
          description: 'Moves from Diagram 4-2:',
          moves: [
            'S6b',
            'P7e',
            'P6d',
            'Rx8f',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln1gk1snl/1r1s2gb1/p1p1ppppp/3p5/1PP6/PR7/2NPPPP1P/1BG6/L1S1KGSNL w Pp',
          label: 'Diagram 4-3',
        ),
        Paragraph(
          text:
              'P*8e is what Black should play. Playing N7g gives him the initiative, and in Diagram 4-3 Black has taken a Pawn back. The position here is promising for Black.',
        ),
      ],
    ),
  ],
);
