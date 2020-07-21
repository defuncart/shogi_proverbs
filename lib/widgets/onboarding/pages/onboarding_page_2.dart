import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: AppLocalizations.onboardingPage2Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DarkModePanel(),
          Container(height: 16.0),
          PieceSymbolPanel(),
          Container(height: 32.0),
          Center(
            child: ShogiBoard(
              gameBoard: ShogiUtils.initialBoard,
            ),
          ),
          Container(height: 32.0),
          Text(AppLocalizations.onboardingPage2Label1),
        ],
      ),
    );
  }
}
