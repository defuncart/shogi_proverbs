import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';

final isDarkModeProvider = StateProvider((_) => DIContainer.get<ISettingsDatabase>().isDarkMode);

class DarkModePanel extends StatelessWidget {
  const DarkModePanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(AppLocalizations.darkModePanelText),
        Consumer(
          builder: (_, read, __) => Switch(
            value: read(isDarkModeProvider).state,
            onChanged: (value) {
              context.read(isDarkModeProvider).state = value;
              DIContainer.get<ISettingsDatabase>().isDarkMode = value;
            },
          ),
        ),
      ],
    );
  }
}
