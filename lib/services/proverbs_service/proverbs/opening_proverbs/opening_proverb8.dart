import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen26.htm
const openingProverb8 = Proverb(
  index: 25,
  title: 'Make a Vanguard Pawn, then Make it Stick',
  japaneseTitle: 'Kurai wo tottara kurai no kakuho',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              "Suppose your Pawn is on the f-rank directly opposite your opponent's Pawn on the d-rank, then the threat is even. Neither side has a kurai. But if yours is on the e-rank preventing the opponent's Pawn to advance further, you have a kurai in that file. Taking a kurai means to restrict the opponent's moves. But sometimes it can be a target at which your opponent makes an attack.",
        ),
        Paragraph(
          text:
              "The proverb above teaches that you should not only hold the vanguard Pawn steady, but make sure it won't be a target from your opponent.",
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1pp1psbpp/p2p1pp2/4P2P1/P1P1SPP2/1P1P4P/1BKSG2R1/LN1G3NL w -',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              "Diagram 1-1 shows where Black has just played to support the Pawn on 5e (called the 5e-kurai-dori) against White's ranging Rook opening.",
        ),
        Paragraph(
          text:
              "Diagram 1-2 is called gyoku-to-kurai-dori (King's head kurai-dori), where Black has played S7f to the same effect.",
        ),
        Diagram(
          sfenString: 'ln1g3nl/1ks1gr3/1pp1psbpp/p2p1pp2/2P1P2P1/P1S6/1P1PSPP1P/1BK1G2R1/LN1G3NL w -',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              'Please note that in both cases a Silver goes up to support the Pawn on e. The Silver is the most suitable reinforcing piece on the front.',
        ),
        Paragraph(
          text:
              'Look again at both Diagrams. See that even if White tries a counterattack against the vanguard Pawn, Black can summon another Silver to the front in just one move.',
        ),
        Paragraph(
          text: 'One more thing about a kurai. Look at Diagram 1-3.',
        ),
        Diagram(
          sfenString: '9/9/9/9/2P1P4/2SPS2P1/PP3PP1P/1BK1G2R1/LN1G3NL b -',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text:
              "Black has two kurai's here, but that's simply too good to get away with. You will end up incurring heaps of troubles trying to keep those two footholds, unless you have the position like one below (Diagram 1-4), where the kurai's are side by side, on top of two Silvers placed close-by. That's only when your two kurai's work.",
        ),
        Diagram(
          sfenString: '9/9/9/9/2PP5/2SSP2P1/PP3PP1P/1BK1G2R1/LN1G3NL b -',
          label: 'Diagram 1-4',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              'A vanguard Pawn is a pretty good thing to have, from which you can build up your future strategy, but it could work against you at times.',
        ),
        Diagram(
          sfenString: 'lnsgkg1nl/1r5b1/ppppps1pp/5pp2/4P4/2P3PP1/PP1P1P2P/1B3S1R1/LNSGKG1NL w -',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text:
              'In Diagram 2-1, Black has just played to make the midfile-Pawn into a vanguard (P5e), but it was a bad idea.',
        ),
        Paragraph(
          text: 'After Diagram 2-1:',
        ),
        MoveSequence(
          moves: [
            'R5b',
            'S5g',
            'P5d',
            'Px5d',
            'Sx5d',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'lnsgkg1nl/4r2b1/pppp3pp/4spp2/9/2P3PP1/PP1PSP2P/1B5R1/LNSGKG1NL b Pp',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "Above is a typical example where White's counterattack worked. Black should have known his S5g was too late to support the Pawn on 5e.",
        ),
        Paragraph(
          text:
              'Diagram 2-3 (last move P8e) is another illustration of an attempted vanguard Pawn from a Yagura opening.',
        ),
        Diagram(
          sfenString: 'ln4knl/1r1s2g2/p2p1gspp/2pbppp2/1p7/2PPP1P2/PPSG1PSPP/1KGB3R1/LN5NL b -',
          label: 'Diagram 2-3',
        ),
        Paragraph(
          text: 'Moves from Diagram 2-3 (1):',
        ),
        MoveSequence(
          moves: [
            'P6e',
            'B4b',
            'S6f',
            'P8f',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Paragraph(
          text:
              'It is never easy to create a vanguard Pawn in the double fortress opening. In Diagram 2-3, it may appear quite easy for Black to take a kurai in the 6th file by playing P6e. But White will then play P8f to exchange Pawns, which is hardly desirable for Black. What if, then, you play G6f instead of S6f so that White cannot come for the Pawn-exchange in the 8th file?',
        ),
        Paragraph(
          text: 'Moves from Diagram 2-3 (2):',
        ),
        MoveSequence(
          moves: [
            'P6e',
            'B4b',
            'G6f',
            'S7c',
            'P2f',
            'R6b',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln4knl/3r1bg2/p1sp1gspp/2p1ppp2/1p1P5/2PGP1PP1/PPS2PS1P/1KGB3R1/LN5NL b -',
          label: 'Diagram 2-4',
        ),
        Paragraph(
          text: 'White will then shift the Rook on the 6th file, so that he can play P6d, Px6d, Sx6d.',
        ),
        Paragraph(
          text:
              "Remember, you had better not try to keep the vanguard Pawn at the cost of breaking a part of the castle. Especially when playing the Yagura, don't think of having a vanguard Pawn unless your left Silver can go up to support the Pawn.",
        ),
      ],
    ),
  ],
);
