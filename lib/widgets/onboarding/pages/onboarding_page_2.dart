import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/l10n.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: context.l10n.onboardingPage2Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DarkModePanel(),
          const SizedBox(height: 16.0),
          const PieceSymbolPanel(),
          const SizedBox(height: 32.0),
          Center(
            child: ShogiBoard(
              gameBoard: ShogiUtils.initialBoard,
            ),
          ),
          const SizedBox(height: 32.0),
          Text(context.l10n.onboardingPage2Label1),
        ],
      ),
    );
  }
}
