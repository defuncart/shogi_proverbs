import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/buttons/custom_button.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/data_privacy_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/developer_panel.dart';
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
                child: CustomButton(
                  label: AppLocalizations.settingsTabDataPrivacyButtonText,
                  onPressed: () => showDialog(
                    context: context,
                    builder: (_) => _DataPrivacyPopup(),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: CustomButton(
                  label: AppLocalizations.settingsTabCreditsButtonText,
                  onPressed: () => showDialog(
                    context: context,
                    builder: (_) => _CreditsPopup(),
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

class _DataPrivacyPopup extends StatelessWidget {
  const _DataPrivacyPopup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(AppLocalizations.dataPrivacyPopupTitle),
      content: DataPrivacyPanel(),
      actions: <Widget>[
        FlatButton(
          child: Text(MaterialLocalizations.of(context).viewLicensesButtonLabel),
          onPressed: () => showLicensePage(
            context: context,
            applicationName: AppLocalizations.appTitle,
            applicationVersion: '0.0.1', //TODO use getVersion
            applicationIcon: Image.asset('assets/images/app_icon.png'),
            applicationLegalese: '© 2020 defuncart',
          ),
        ),
        FlatButton(
          child: Text(MaterialLocalizations.of(context).closeButtonLabel),
          onPressed: () => Navigator.pop(context),
        ),
      ],
      scrollable: true,
    );
  }
}

class _CreditsPopup extends StatelessWidget {
  const _CreditsPopup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(AppLocalizations.creditsPopupTitle),
      content: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2,
        textAlign: TextAlign.justify,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.creditsPopupLabel1),
            Container(height: 8.0),
            Text(AppLocalizations.creditsPopupLabel2),
            Container(height: 8.0),
            Text(AppLocalizations.creditsPopupLabel3),
            Container(height: 4.0),
            DeveloperPanel(),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(MaterialLocalizations.of(context).closeButtonLabel),
          onPressed: () => Navigator.pop(context),
        ),
      ],
      scrollable: true,
    );
  }
}
