import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';
import 'package:shogi_proverbs/widgets/onboarding/pages/onboarding_page.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      headline: AppLocalizations.onboardingPage2Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DarkModePanel(),
          SizedBox(height: 16.0),
          PieceSymbolPanel(),
          SizedBox(height: 32.0),
          Center(
            child: ShogiBoard(
              gameBoard: ShogiUtils.initialBoard,
            ),
          ),
          SizedBox(height: 32.0),
          Text(
            AppLocalizations.onboardingPage2Label1,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
