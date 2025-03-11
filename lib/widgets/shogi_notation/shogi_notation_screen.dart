import 'package:flutter/material.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/l10n/l10n.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/common/page_view_with_indicators.dart';
import 'package:shogi_proverbs/widgets/shogi_notation/pages/shogi_notation_page_1.dart';
import 'package:shogi_proverbs/widgets/shogi_notation/pages/shogi_notation_page_2.dart';
import 'package:shogi_proverbs/widgets/shogi_notation/pages/shogi_notation_page_3.dart';
import 'package:shogi_proverbs/widgets/shogi_notation/pages/shogi_notation_page_4.dart';

class ShogiNotationScreen extends StatelessWidget {
  const ShogiNotationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (!DIContainer.get<ISettingsDatabase>().hasSeenTutorial) {
      DIContainer.get<ISettingsDatabase>().hasSeenTutorial = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.generalShogiNotation),
      ),
      body: SafeArea(
        child: PageViewWithIndicators(
          children: const [
            ShogiNotationPage1(),
            ShogiNotationPage2(),
            ShogiNotationPage3(),
            ShogiNotationPage4(),
          ],
        ),
      ),
    );
  }
}
