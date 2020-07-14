import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16.0),
              DarkModePanel(),
              SizedBox(height: 16.0),
              PieceSymbolPanel(),
              SizedBox(height: 16.0),
              Center(
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text(
                    AppLocalizations.settingsTabAboutButtonText,
                    style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                  onPressed: () => showAboutDialog(
                    context: context,
                    applicationName: AppLocalizations.appTitle,
                    applicationVersion: '0.0.1', //TODO use getVersion
                    applicationIcon: Image.asset('assets/images/app_icon.png'),
                    children: [
                      for (final text in [
                        AppLocalizations.aboutPopupText1,
                        AppLocalizations.aboutPopupText2,
                        AppLocalizations.aboutPopupText3,
                      ])
                        Column(
                          children: [
                            Text(
                              text,
                              textAlign: TextAlign.justify,
                            ),
                            Container(height: 8),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
