import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shogi_proverbs/localizations.dart';

final isDarkModeProvider = StateProvider((_) => false);

class SettingsTab extends HookWidget {
  const SettingsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(AppLocalizations.settingsTabDarkModeLabel),
                  Switch(
                    value: useProvider(isDarkModeProvider).state,
                    onChanged: (value) =>
                        isDarkModeProvider.read(context).state = value,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
