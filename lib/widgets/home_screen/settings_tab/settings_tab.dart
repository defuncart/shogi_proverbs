import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/home_screen/settings_tab/segmented_chips.dart';

final isDarkModeProvider = StateProvider((_) => DIContainer.get<ISettingsDatabase>().isDarkMode);
final selectedPieceSymbolProvider = StateProvider((_) => DIContainer.get<ISettingsDatabase>().selectedPieceSymbol);

class SettingsTab extends StatelessWidget {
  static const _languageSymbols = ['K', '玉'];

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(AppLocalizations.settingsTabDarkModeLabel),
                  Consumer((_, read) => Switch(
                        value: read(isDarkModeProvider).state,
                        onChanged: (value) {
                          isDarkModeProvider.read(context).state = value;
                          DIContainer.get<ISettingsDatabase>().isDarkMode = value;
                        },
                      )),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.settingsTabPieceSymbolLabel),
                  Consumer((_, read) => SegmentedChips(
                        labels: _languageSymbols,
                        initiallySelectedIndex: read(selectedPieceSymbolProvider).state,
                        onSelected: (selectedIndex) {
                          selectedPieceSymbolProvider.read(context).state = selectedIndex;
                          DIContainer.get<ISettingsDatabase>().selectedPieceSymbol = selectedIndex;
                        },
                      )),
                ],
              ),
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
