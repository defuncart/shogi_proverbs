import 'package:shogi_proverbs/services/proverbs_service/proverbs/imports.dart';

// http://www.shogi.net/kakugen/kakugen33.htm
const middlegameProverb3 = Proverb(
  index: 32,
  title: 'Recapture the Vanguard with a Joining Pawn',
  japaneseTitle: 'Kurai no dakkai awase no tesuji',
  type: ProverbType.middle,
  pages: [
    Page(
      sections: [
        Paragraph(
          text:
              'Even if your opponent has managed to get the vanguard position, ask yourself if you can recapture the square.',
        ),
        Paragraph(
          text:
              "In Diagram 1 (last move P*5f), White has managed to drop a Pawn at the head of his Silver on 5e. This is more than a vanguard Pawn. If it works as a foothold from which White drops other pieces, your castle won't be long in breaking apart. You have to do something to prevent that.",
        ),
        Diagram(
          sfenString: 'ln3k1nl/4r1gb1/2pp1gspp/pp3pp2/4s2P1/P1PPp4/1PBG1PP1P/1KS2S1R1/LN1G3NL b P',
          label: 'Diagram 1',
        ),
        MoveSequence(
          description: 'Moves from Diagram 1:',
          moves: [
            'R2f',
            'B3a',
            'P*5g',
            'Px5g+',
            'Sx5g',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln3kbnl/4r1g2/2pp1gspp/pp3pp2/4s2P1/P1PP3R1/1PBGSPP1P/1KS6/LN1G3NL w Pp',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              'Before you go about recapturing a square, you need to deploy your pieces so that the square in question will be duly covered. In this case, R2f is the first step. Then you join a Pawn on 5g, thereby moving up your Silver to the crucial spot. Thus, a joining Pawn tesuji helps recapture the square which was taken by the opponent.',
        ),
        MoveSequence(
          description: 'Moves from Diagram 2:',
          moves: [
            'P*5f',
            'Sx5f',
            'Sx5f',
            'Rx5f',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Diagram(
          sfenString: 'ln3kbnl/4r1g2/2pp1gspp/pp3pp2/7P1/P1PPR4/1PBG1PP1P/1KS6/LN1G3NL w S2Ps',
          label: 'Diagram 3',
        ),
        Paragraph(
          text:
              "From Diagram 2, White has to drop a Pawn on 5f. Otherwise, Black will drop his own Pawn there, which would only bring White's scheme to naught. Thus, Diagram 3 will be an inevitable position, yet it is already pretty bad for White. A Rook-exchange would give White a major headache because of his awkward castle, since his King sits on quite a vulnerable square.",
        ),
      ],
    ),
  ],
);
