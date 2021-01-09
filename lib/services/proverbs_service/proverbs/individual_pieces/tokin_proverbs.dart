import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// Proverbs for tokin section of ProverbType.pieces
const tokinProverbs = [
  // http://www.shogi.net/kakugen/kakugen17.htm
  Proverb(
    index: 16,
    title: 'A Tokin on 5c cannot lose',
    japaneseTitle: 'Gosan no Tokin ni make wa nashi',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                'Of all the promoted pieces, Tokin or the promoted Pawn enjoys the greatest increase of power. That you have a promoted Pawn is good, but one around the central area will be especially valuable.',
          ),
          Paragraph(
            text: "In Diagram 1 you have a Tokin on 5c. How would you play here to hem in White's King?",
          ),
          Diagram(
            sfenString: '7nl/6gk1/4+P1spp/5pp2/9/9/9/9/9 b RB',
            label: 'Diagram 1',
          ),
          MoveSequence(
            moves: [
              'B*5d',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'B*5d aims at the Gold on 3b. This is threatmate from which White cannot escape:',
          ),
          MoveSequence(
            moves: [
              'Bx3b',
              'Kx3b',
              'G*4c',
              'K2b',
              'R*3b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text:
                'Even if you have only one Pawn in hand in Diagram 1, you can still play a very good move making the most of the Tokin on 5c.',
          ),
          MoveSequence(
            moves: [
              'P*4c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: "A Pawn on 4c can be promoted on 4b, thereby you can undermine White's defense.",
          ),
          Paragraph(
            text:
                'When you attack using the Tokin, all you give up to the opponent is just a plain Pawn. This is really the best policy you can ever dream of.',
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: 'ln1g5/1ks6/pppp+P4/9/2PP5/9/9/9/9 b R2S',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                "In Diagram 2, Black's Tokin is on a very good square threatening White's Mino castle. What would be the best way to continue your attack?",
          ),
          MoveSequence(
            moves: [
              'S*6b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(text: 'This is threatmate:'),
          MoveSequence(
            moves: [
              'S*7a',
              'Gx7a',
              'Sx7a=',
              'Kx7a',
              'G*6b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'Even if White responds with Gx6b, +Px6b will be another threatmate.',
          ),
          Paragraph(
            text:
                'You could drop a Rook on the 1st or 2nd row in Diagram 1 so that you can continue your attack from +P6b or +Px6c.',
          ),
          Paragraph(
            text:
                'With your Tokin sitting dangerously close to his castle, White will find it very hard to cope with your attack.',
          ),
          Paragraph(
            text: 'What if you have only one Pawn in the above Diagram?',
          ),
          MoveSequence(
            moves: [
              'P6d',
              'Px6d',
              'P*6c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'Your line of attack should be making another Tokin along with the pivotal Tokin on 5c.',
          ),
          Paragraph(
            text:
                'Thus, Tokin on 5c is effective either for the Yagura or the Mino castle. Except for the Anaguma (bear-hug) castle, that is. Against Anaguma, the Tokin on 5c seems less disruptive, since the King in Anaguma sits one step farther away, which can seem a lot farther away in the actual game.',
          ),
        ],
      ),
    ],
  ),
  // http://www.shogi.net/kakugen/kakugen18.htm
  Proverb(
    index: 17,
    title: 'A Tokin is Faster Than You Think',
    japaneseTitle: 'Tokin no oso haya',
    type: ProverbType.pieces,
    pages: [
      Page(
        sections: [
          Paragraph(
            text:
                "The proverb, literally meaning that Tokin is slow but fast, teaches that it may take time to drop a Pawn and promote it, but once you've made a Tokin, you may be surprised at how it gives impetus to the attack.",
          ),
          Paragraph(
            text:
                "Diagram 1 is from an actual game. White has dropped a Pawn on 4a blocking Black's Dragon's path. How would you play here?",
          ),
          Diagram(
            sfenString: 'ln1g1p+R2/1ks2r2l/1pp1pg2p/p2p1sp2/5n3/P1P1PSP1P/1P1P1S3/1BKGG4/LN5NL b 2Pbp',
            label: 'Diagram 1',
          ),
          MoveSequence(
            moves: [
              'P*2c',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: "Strikes you as slow? But actually it's a very good move.",
          ),
          Paragraph(
            text: 'Moves after Diagram1:',
          ),
          MoveSequence(
            moves: [
              'B*2h',
              'P2b+',
              'Bx1i+',
              '+P3b',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Paragraph(
            text:
                'Seeing there was no way to prevent Black from playing P2b+, White dropped a Bishop on 2h, while Black went on with his intended course.',
          ),
          Paragraph(
            text: 'Further moves:',
          ),
          MoveSequence(
            moves: [
              'R6b',
              'Rx4a',
              'G5d',
              '+P4b',
              '+Bx2i',
              '+P5a',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'ln1g+P+R3/1ksr4l/1pp1p3p/p2pgsp2/5n3/P1P1PSP1P/1P1P1S3/1BKGG4/LN5+b1 w 2Pnlp',
            label: 'Diagram 2',
          ),
          Paragraph(
            text:
                'White cannot allow Black to capture his valuable piece in exchange for a Tokin. Even if the Tokin attack may seem to start from a distance, it is fast enough as long as the opponent has to respond to it.',
          ),
          Paragraph(
            text: 'Moves after Diagram 2:',
          ),
          MoveSequence(
            moves: [
              'G7a',
              '+P5b',
              'R6c',
              'Sx4e',
              'Sx4e',
              'N*7e',
            ],
            playerFirstMove: PlayerType.gote,
          ),
          Diagram(
            sfenString: 'lng2+R3/1ks1+P3l/1pprp3p/p2pg1p2/2N2s3/P1P1P1P1P/1P1P1S3/1BKGG4/LN5+b1 w 2Psnlp',
            label: 'Diagram 3',
          ),
          Paragraph(
            text: 'Black succeeded in capturing a Rook, leading the game to a winning position.',
          ),
          Paragraph(
            text: 'The Tokin attack, when successfully applied, is fast enough to give you a pleasant surprise.',
          ),
        ],
      ),
      Page(
        sections: [
          Diagram(
            sfenString: 'ln5nl/r4bgk1/1p1p1gspp/p1s1ppp2/9/1S1PP4/PP1GSP1PP/1KG3RB1/LN5NL b 2Pp',
            label: 'Diagram 4',
          ),
          Paragraph(
            text:
                "Diagram 4 shows where both players have adopted the double fortress opening. With White's S7d, there is a hole in White's camp. How would you play here?",
          ),
          MoveSequence(
            moves: [
              'P*7b',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Paragraph(
            text: 'White cannot take this Pawn. If he does, you can play Bx9a+.',
          ),
          Paragraph(
            text: 'You may think P*7c will be equally good. In this case, however, White can play P6d, good defense.',
          ),
          Paragraph(
            text: 'Moves from Diagram 4:',
          ),
          MoveSequence(
            moves: [
              'P*7b',
              'B-5c',
              'P-7a+',
              'Bx7a',
              'P*7e',
            ],
            playerFirstMove: PlayerType.sente,
          ),
          Diagram(
            sfenString: 'lnb4nl/r5gk1/1p1p1gspp/p1s1ppp2/2P6/1S1PP4/PP1GSP1PP/1KG3RB1/LN5NL w 2p',
            label: 'Diagram 5',
          ),
          Paragraph(
            text:
                "If White plays B5c like above, he may be able to defend Black's P7a+, but after P7a+, Bx7a, Black can play P*7e, claiming the Silver for free.",
          ),
          Paragraph(
            text:
                "After Black's P*7b, White may play P6d, which will launch the following moves: P7a+, N7c, +P8a. Thus, this is the least destructive position for White, but he will certainly lose the Lance.",
          ),
          Paragraph(
            text:
                'Creation of a Tokin may not be powerful enough to lead to an overwhelming predominace at once, but it will certainly get you to a favorable position. This is the spirit of the proverb: The Tokin may seem slow, but is fast.',
          ),
        ],
      ),
    ],
  ),
];
