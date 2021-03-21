import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen31.htm
const middlegameProverb1 = Proverb(
  index: 30,
  title: 'Against a Silver in front of its Pawn, defend with a Pawn',
  japaneseTitle: 'Fugoshi-gin niwa Fu de taikou',
  type: ProverbType.middle,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'The Silver on 6d in Diagram 1-1 is the Fugoshi-gin. Normally a Silver had better be behind its Pawn, but a seemingly rash Silver like this one leads to a certain line of attack, which can be surprisingly fast and effective. It would be useful to know how to cope with it.',
        ),
        Diagram(
          sfenString: 'ln3k1nl/1r4gb1/p2p1gspp/3sppp2/1pp4P1/2PPPPP2/PPSG1S2P/2G4R1/LNBK3NL b -',
          label: 'Diagram 1-1',
        ),
        Paragraph(
          text:
              "In Diagram 1-1, White has just played P7e to push his Silver even further towards Black's camp. Black should not respond with Px7e. If he does, there will follow Sx7e, P*7f, P8f, Px8f, Sx8f, only to please White.",
        ),
        Paragraph(
          text:
              'Against the rash Silver, align your Pawns up front first. Then counter with a Pawn-push on another file. See for yourself how good it looks when Black plays P6e from Diagram 1-1, which is the tesuji you should remember.',
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'Sx6e',
            'Px7e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln3k1nl/1r4gb1/p2p1gspp/4ppp2/1pPs3P1/4PPP2/PPSG1S2P/2G4R1/LNBK3NL w Pp',
          label: 'Diagram 1-2',
        ),
        Paragraph(
          text:
              "If White plays Sx6e, Black's Px7e will make a famous Silver pincer. Whatever White may play next, Black's P*6f will claim the Silver.",
        ),
        Paragraph(
          text:
              "White should not have played Sx6e in the first place. Px7f would have been better. Suppose you are Black, how would you play after White's Px7f?",
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'Gx7f',
            'S7c',
            'P*7e',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln3k1nl/1r4gb1/p1sp1gspp/4ppp2/1pPP3P1/2G1PPP2/PPS2S2P/2G4R1/LNBK3NL w p',
          label: 'Diagram 1-3',
        ),
        Paragraph(
          text: 'In Diagram 1-3, Black has two vanguard Pawns on 6th and 7th files. Very gratifying.',
        ),
        Paragraph(
          text:
              'To sum it up, against the Fugoshi-gin, arrange your Pawns in a line so that you can resort to counter Pawn push.',
        ),
      ],
    ),
    Page(
      sections: [
        Paragraph(
          text:
              "Diagram 2-1 below shows where White has just played B3a to reinforce the line of attack described in the above section. If Black plays N3g, a rather aimless move, White's P7e will gather momentum.",
        ),
        Diagram(
          sfenString: 'ln3kbnl/1r4g2/p2p1gspp/2psppp2/1p5P1/2PPPPP2/PPSG1S2P/2G4R1/LNBK3NL b -',
          label: 'Diagram 2-1',
        ),
        Paragraph(
          text: 'If Black responds with P6e, hoping the Sx6e-Px7e attack will work, White will then play Bx7e.',
        ),
        Paragraph(
          text:
              "So, from Diagram 2-1, Black's move should be B5g, which will hold the square 7e in its path, making the power balance on 7e even.",
        ),
        MoveSequence(
          description: 'Moves thereafter:',
          moves: [
            'P7e',
            'P6e',
            'Sx6e',
            'Px7e',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln3kbnl/1r4g2/p2p1gspp/4ppp2/1pPs3P1/4PPP2/PPSGBS2P/2G4R1/LN1K3NL w Pp',
          label: 'Diagram 2-2',
        ),
        Paragraph(
          text:
              "If White persists in playing the same line of attack starting from P7e, Black can apply the same tesuji: P6e. In Diagram 2-2 above, White's Silver on 6e is about to be captured.",
        ),
        Paragraph(
          text:
              "A rash Silver which comes before its Pawn could be beguilingly effective, but there should be a way to cope with it. Be sure to take a good look at the opponent's formation before deciding on your next move.",
        ),
      ],
    ),
  ],
);
