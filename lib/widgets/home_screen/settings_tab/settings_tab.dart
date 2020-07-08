import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';

class SettingsTab extends StatelessWidget {
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
                    value: false,
                    onChanged: (_) {},
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
