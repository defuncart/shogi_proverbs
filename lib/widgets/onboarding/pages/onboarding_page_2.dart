import 'package:flutter/material.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi/shogi.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            // content
            Text(
              AppLocalizations.onboardingPage2Headline,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 32.0),
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
            // content
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
