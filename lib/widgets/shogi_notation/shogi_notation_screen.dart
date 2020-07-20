import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';

class ShogiNotationScreen extends StatelessWidget {
  const ShogiNotationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.generalShogiNotation),
      ),
    );
  }
}
