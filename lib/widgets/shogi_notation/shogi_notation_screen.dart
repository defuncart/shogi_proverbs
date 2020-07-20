import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/page_view_with_indicators.dart';
import 'package:shogi_proverbs/widgets/shogi_notation/pages/shogi_notation_page_1.dart';

class ShogiNotationScreen extends StatelessWidget {
  const ShogiNotationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.generalShogiNotation),
      ),
      body: SafeArea(
        child: PageViewWithIndicators(
          children: [
            ShogiNotationPage1(),
          ],
        ),
      ),
    );
  }
}
