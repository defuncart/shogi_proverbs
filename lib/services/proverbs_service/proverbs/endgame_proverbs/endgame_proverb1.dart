import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen37.htm
const endgameProverb1 = Proverb(
  index: 37,
  title: 'Approach the King by Surrounding him',
  japaneseTitle: 'Gyoku wa tsutsumu yoni yoseyo',
  type: ProverbType.end,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'Diagram 1-1 is a rudimentary position of "yose", or bringing the King near mate. Dropping a Gold on 3b makes brinkmate: White cannot defend G*4a and G*6a at the same time. Even if White plays G6c for the King to escape, G*4b will finish the game.',
        ),
        Diagram(
          sfenString: '4k4/2G1g1G2/9/9/9/9/9/9/9 w G2r2b4s4n4l18p',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text: 'Remember, the most effective way is not to chase the King from one side but to attack on both flanks.',
        ),
        Paragraph(
          text: 'How would you play in Diagram 1-2, putting the proverb to a good use?',
        ),
        Diagram(
          sfenString: '2R2g1nl/3+P1sk2/5p1p1/6p1p/5P1P1/9/9/9/9 b G',
          label: 'Diagram 1-2',
        ),
        MoveSequence(
          description: 'Moves from Diagram 1-2:',
          moves: [
            'Rx4a+',
            'Kx4a',
            'G*2b',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '5k1nl/3+P1s1G1/5p1p1/6p1p/5P1P1/9/9/9/9 w Gr',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text: 'Another problem below.',
        ),
        Diagram(
          sfenString: '6gnl/4+P1sk1/4B1pp1/8p/9/9/9/9/9 b GS',
          label: 'Diagram 1-4',
        ),
        Paragraph(
          text: '+P4b or S*4b is not good enough. The faster and more stylish set of moves are:',
        ),
        MoveSequence(
          moves: [
            'Bx3a+',
            'Kx3a',
            'G*1b',
            'Lx1b',
            'S*1a',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: '6knS/4+P1s1l/6pp1/8p/9/9/9/9/9 w Gbg',
          label: 'Diagram 1-5',
        ),
        Paragraph(
          text: 'The King has been wrapped up, truly.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'How would you work with the following position?',
        ),
        Diagram(
          sfenString: '5k1nl/6g2/4+Ppsp1/6p1p/9/9/9/9/9 b 2GS',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              "You may well come across a similar position in an actual game. Don't play like S*5b, K3a, S4c+. You should note that the King has an escape route: from 2b to 1c to 2d to 3e. If this happens, we say the King has fled into the mighty deep.",
        ),
        Paragraph(
          text: 'G*2b is the move to play (Diagram 2-2).',
        ),
        Diagram(
          sfenString: '5k1nl/6gG1/4+Ppsp1/6p1p/9/9/9/9/9 w GS',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text: 'If left alone, G*5b does it. If Sx2b, then S*5b, K3a, G*4a. If Gx4b, then S*5b, K3a, G*4a, K3b, +P4c.',
        ),
        Paragraph(
          text: 'Just one drop, G*2b, imposed the defenseless position on White.',
        ),
        Paragraph(
          text:
              'A drop like this is also called "Drop a piece along the King\'s escape route" tesuji. If White responds with taking it, that will cut the escape route.',
        ),
        Paragraph(
          text:
              'Incidentally, there is a similar tesuji in the middle game where you drop a Pawn sure to be taken (Diagram 2-3). Whichever response White may use: Sx2b or Gx2b, he will have an unwanted wall in the 2nd file.',
        ),
        Diagram(
          sfenString: 'ln5nl/1r2gkgP1/p1p1pssp1/3p1p2p/2P3S2/7RP/PPNPPP3/1SG1K1G2/L6NL w BPb2p',
          label: 'Diagram 2-3',
        ),
      ],
    ),
    Page(
      sections: [
        Diagram(
          sfenString: 'l7l/1r2k1+PS1/2npg1+P2/1sp1ppp2/pp4nP1/2PPP3p/PPSG1P3/1KG2+b3/LN6L b GSrbnp',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text:
              'Diagram 3-1 (last move G5c) is just before the grand finale. How would you play from here? +P3b-4b, K6b, +P3c-4c, G6d, +P4b-5b, K7b would fall too short to be called the grand finale. The King still has some space to move into.',
        ),
        MoveSequence(
          moves: [
            'S*7a',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              "Black has two promoted Pawns in the 3rd file, so White's King only has his right wing to escape into. You should think how to cut the King's escape route. S*7a is the move that observes the proverb in question.",
        ),
        Diagram(
          sfenString: 'l1S5l/1r2k1+PS1/2npg1+P2/1sp1ppp2/pp4nP1/2PPP3p/PPSG1P3/1KG2+b3/LN6L w Grbnp',
          label: 'Diagram 3-2',
        ),
        MoveSequence(
          description: 'Moves from Diagram 3-2:',
          moves: [
            'R7b',
            'G8b',
            'K6a',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Paragraph(
          text:
              "Black reinforces his scheme by G8b. White's K6a is a tenacious move. Here you should be calm and not hurry yourself to take the Rook.",
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            '+P3b-4b',
            'Rx7a',
            '+P3c-4c',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'l1rk4l/1G3+P1S1/2npg+P3/1sp1ppp2/pp4nP1/2PPP3p/PPSG1P3/1KG2+b3/LN6L w rbsnp',
          label: 'Diagram 3-3',
        ),
        Paragraph(
          text: 'Taking the Rook right away is hardly a good move. Make sure you approach the King on both flanks.',
        ),
        Paragraph(
          text:
              "To sum it up, in the endgame, don't you ever let the King escape to the wider space. Look left and right and approach the King as though you are wrapping him up.",
        ),
      ],
    ),
  ],
);
