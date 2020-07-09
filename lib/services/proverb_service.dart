import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

class ProverbService {
  static final _proverbs = [
    Proverb(
      title: 'Avoid a Sitting King',
      japaneseTitle: 'Igyoku wa sakeyo',
      type: ProverbType.opening,
      sections: [
        Paragraph(
          text: 'It is extremely dangerous to start fighting with the King sitting on the original square.',
        ),
        Paragraph(
          text:
              'In Diagram 1, Black has already advanced a Silver onto 4f with his King in the original position. If he wants to launch an attack from here, how would he play?',
        ),
        Diagram(
          sfenString: 'ln3k1nl/1r3bg2/p1ppsgspp/1p2ppp2/7P1/2PPPSP2/PPS2P2P/2G1G2R1/LNB1K2NL b -',
          label: 'Diagram 1',
        ),
        MoveSequence(
          moves: [
            'P-3e',
            'Px3e',
            'Sx3e',
            'P*3d',
            'P-2d',
            'Px2d',
            'Sx2d',
            'Sx2d',
            'Bx2d',
            'Bx2d',
            'Rx2d',
          ],
          playerFirstMove: PlayerType.sente,
        ),
        Diagram(
          sfenString: 'ln3k1nl/1r4g2/p1ppsg2p/1p2pppR1/9/2PPP4/PPS2P2P/2G1G4/LN2K2NL w BS2Pbsp',
          label: 'Diagram 2',
        ),
        Paragraph(
          text:
              'So far, Black\'s climbing Silver appears to have made a point. But White has a devastating move to play here.',
        ),
        MoveSequence(
          moves: [
            'B*1e',
          ],
          playerFirstMove: PlayerType.gote,
        ),
        Paragraph(
          text:
              'You cannot be too careful when you have a sitting King. Black had to play K6i first in this case. Then the attack would have been successful.',
        ),
      ],
    ),
  ];

  static List<Proverb> get proverbs => _proverbs;
}
