import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen30.htm
const openingProverb12 = Proverb(
  index: 29,
  title: "Don't Push the 5th file-Pawn in Bishop-Exchange",
  japaneseTitle: 'Kakugawari shogi wa 5-suji wo tsukuna',
  type: ProverbType.opening,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'Kakugawari is the name of the opening in which you exchange Bishops from the double static Rooks. You should not push up a Pawn along the 5th file soon after you have exchanged Bishops.',
        ),
        Paragraph(
          text:
              "Diagram 1-1 (last move K2b) shows where White has played P5d after exchanging Bishops while Black has stuck to the basics. Had White played P6d thereby placing his Silver on 6c (Diagram 1-1A), it would have been a regular reclining Silver opening. Only a slight difference at a glance, but in Diagram 1-1 the position is already in Black's favor.",
        ),
        Diagram(
          sfenString: 'ln5nl/1r2g1gk1/3ps1sp1/p1p1ppp1p/1p5P1/P1PP1PP1P/1PS1PS3/1KG1G2R1/LN5NL b Bb',
          label: 'Diagram 1-1',
        ),
        Diagram(
          sfenString: 'ln5nl/1r2g1gk1/3sp1sp1/p1pp1pp1p/1p5P1/P1PP1PP1P/1PS1PS3/1KG1G2R1/LN5NL b Bb',
          label: 'Diagram 1-1A',
        ),
        MoveSequence(
          description: 'Moves from Diagram 1-1:',
          moves: [
            'K3g',
            'G5b-4c',
            'P4e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln5nl/1r4gk1/3psgsp1/p1p1ppp1p/1p3P1P1/P1PP2P1P/1PS1PSN2/1KG1G2R1/LN6L w Bb',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              "Just because White's Silver is on 5c, White cannot play Px4e. If he does, Black will next play Nx4e, a fork.",
        ),
        Paragraph(
          text: 'From Diagram 1-1A, however, White could respond as Px4e. If Black plays Nx4e, S4d will do.',
        ),
        Paragraph(
          text:
              'Even if, from Diagram 1-1, White plays S6d to avoid the fork, the above-mentioned line of attack by Black will be still effective.',
        ),
        MoveSequence(
          moves: [
            'P4e',
            'Px4e',
            'Nx4e',
            'S4d',
            'B*7',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'lnB4nl/1r2g1gk1/3p3p1/p1pspsp1p/1p3N1P1/P1PP2P1P/1PS1PS3/1KG1G2R1/LN6L w Pbp',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text: 'The above position should be more than satisfactory for Black.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              'Diagram 2-1 below shows where White has just played G4c instead of the problematic S5c described in the above section.',
        ),
        Diagram(
          sfenString: 'ln5nl/1r1s2gk1/3p1gsp1/p1p1ppp1p/1p5P1/P1PP1PP1P/1PS1PS3/1KG1G2R1/LN5NL b Bb',
          label: 'Diagram 2-1',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-1:',
          moves: [
            'N3g',
            'S7c',
            'P4e',
            'Px4e',
            'B*7a',
            'R7b',
            'B2f+',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln5nl/2r3gk1/2sp1gsp1/p1p1p1p1p/1p3p1P1/P1PP2P+BP/1PS1PSN2/1KG1G2R1/LN6L w bp',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "Black has succeeded in promoting his Bishop on 2f, a favorable prospect for him. This is what the proverb comes down to. If you push up the 5th-filePawn in the Kakugawari opening, you may invite the opponent's Bishop to promote.",
        ),
        Paragraph(
          text:
              'To exclude the possibility of B*7a, White may try another line of moves without moving the Silver from 6b. To this, Black should play a waiting game.',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2-1:',
          moves: [
            'N3g',
            'P6d',
            'S5f',
            'N7c',
            'G5h-6h',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'l6nl/1r1s2gk1/2n2gsp1/p1ppppp1p/1p5P1/P1PPSPP1P/1PS1P1N2/1KGG3R1/LN6L w Bb',
          label: 'Diagram 2-2A',
        ),
        Paragraph(
          text:
              'Since he cannot move the Silver from 6b, White will have a hard time coming up with an effective plan hereafter. If he plays S6c, Black can play the P4e through B*7a line. If White plays R8a, B*7b will do. Whichever way White may take, he is already on a bumpy road.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text: 'The diagram below is from a professional game played in one of the title matches.',
        ),
        Diagram(
          sfenString: 'ln3ksnl/1r1sg1gb1/p1pp1p1pp/4p1p2/1p7/2P6/PPBPPPP1P/2GS2SR1/LN2KG1NL b P',
          label: 'Diagram 3-1',
        ),
        Paragraph(
          text: 'From an Aigakari opening, White has just played P5d. Taking this as a cue, Black played Bx2b+.',
        ),
        Paragraph(
          text:
              "This was rather drastic. Black lost tempo by first playing B7g and then B2b+, but in this case for a good reason: He took the proverb the other way round. Seeing White's P5d, he thought he could prove White's P5d to be a bad move by guiding the position into a Kakugawari variation.",
        ),
        MoveSequence(
          description: 'Moves after Diagram 3-1:',
          moves: [
            'Sx2b',
            'S7g',
            'P4d',
            'P4f',
            'G5b-4c',
            'S4g',
            'S5c',
            'K6h',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln3k1nl/1r4gs1/p1ppsg1pp/4ppp2/1p7/2P2P3/PPSPPSP1P/2GK3R1/LN3G1NL w BPb',
          label: 'Diagram 3-2',
        ),
        Paragraph(
          text:
              "Indeed Black has lost tempo by the Bishop-exchange, but Black alone has already exchanged Pawns in the Rook file, which should be counted as Black's point. More than anything else, the position is now against the proverb, that is for White.",
        ),
        Paragraph(
          text:
              'After Diagram 3-2, White is likely to suffer many restrictions in building up his camp into a good shape.',
        ),
        Paragraph(
          text:
              'Remember, you will come across a number of problems if you push up your Pawn along the 5th file in the Kakugawari opening.',
        ),
      ],
    ),
  ],
);
