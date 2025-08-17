import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/l10n/l10n.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';

final isDarkModeProvider = StateProvider((_) => DIContainer.get<ISettingsDatabase>().isDarkMode);

class DarkModePanel extends StatelessWidget {
  const DarkModePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(context.l10n.darkModePanelText),
        Consumer(
          builder: (_, ref, _) => Switch(
            value: ref.read(isDarkModeProvider),
            onChanged: (value) {
              ref.read(isDarkModeProvider.notifier).state = value;
              DIContainer.get<ISettingsDatabase>().isDarkMode = value;
            },
            activeThumbColor: Theme.of(context).scaffoldBackgroundColor,
            activeTrackColor: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
