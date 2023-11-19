import 'package:flutter/material.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/l10n.dart';
import 'package:shogi_proverbs/models/sections/diagram.dart';
import 'package:shogi_proverbs/models/sections/move_sequence.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/sections/diagram_detail.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/sections/move_sequence_detail.dart';

class ShogiNotationPage4 extends StatelessWidget {
  const ShogiNotationPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: context.l10n.shogiNotationPage4Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.shogiNotationPage4Label1,
          ),
          const SizedBox(height: 16),
          const DiagramDetail(
            diagram: Diagram(
              sfenString: 'lnsgkgsnl/1r5b1/ppppppppp/9/9/9/PPPPPPPPP/1B5R1/LNSGKGSNL b -',
              label: 'Diagram 1',
            ),
          ),
          const SizedBox(height: 16),
          Text(
            context.l10n.shogiNotationPage4Label2,
          ),
          const SizedBox(height: 16),
          const MoveSequenceDetail(
            moveSequence: MoveSequence(
              moves: [
                'P-7f',
                'P-8d',
                'P-2f',
                'P-8e',
                'G-7h',
                'P-3d',
                'Bx2b',
                'Sx2b',
              ],
              playerFirstMove: PlayerType.sente,
            ),
          ),
          const SizedBox(height: 16),
          const DiagramDetail(
            diagram: Diagram(
              sfenString: 'lnsgkg1nl/1r5s1/p1pppp1pp/6p2/1p7/2P4P1/PP1PPPP1P/2G4R1/LNS1KGSNL b bB',
              label: 'Diagram 2',
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
