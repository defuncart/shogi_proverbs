import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/external_links.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/buttons/custom_button.dart';
import 'package:shogi_proverbs/widgets/common/buttons/custom_text_button.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/data_privacy_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/developer_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';
import 'package:shogi_proverbs/widgets/common/text/clickable_text_span.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

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
                  label: AppLocalizations.generalShogiNotation,
                  onPressed: () => Navigator.of(context).pushNamed(RouteNames.shogiNotationScreen),
                ),
              ),
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
  const _DataPrivacyPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(AppLocalizations.dataPrivacyPopupTitle),
      content: DataPrivacyPanel(),
      actions: <Widget>[
        CustomTextButton(
          label: MaterialLocalizations.of(context).viewLicensesButtonLabel,
          onPressed: () => showLicensePage(
            context: context,
            applicationName: AppLocalizations.appTitle,
            applicationVersion: '0.1.0', //TODO use getVersion
            applicationIcon: Image.asset('assets/images/app_icon.png'),
            applicationLegalese: '© 2021 defuncart',
          ),
        ),
        CustomTextButton(
          label: MaterialLocalizations.of(context).closeButtonLabel,
          onPressed: () => Navigator.pop(context),
        ),
      ],
      scrollable: true,
    );
  }
}

class _CreditsPopup extends StatelessWidget {
  const _CreditsPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(AppLocalizations.creditsPopupTitle),
      content: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2!,
        textAlign: TextAlign.justify,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.creditsPopupLabel1),
            Container(height: 8.0),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel21,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  ClickableTextSpan(
                    text: AppLocalizations.creditsPopupLabel22,
                    url: ExternalLinks.proverbsContent,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel23,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Container(height: 8.0),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel31,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  ClickableTextSpan(
                    text: AppLocalizations.creditsPopupLabel32,
                    url: ExternalLinks.proverbsContent,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel33,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Container(height: 4.0),
            DeveloperPanel(),
          ],
        ),
      ),
      actions: <Widget>[
        CustomTextButton(
          label: MaterialLocalizations.of(context).closeButtonLabel,
          onPressed: () => Navigator.pop(context),
        ),
      ],
      scrollable: true,
    );
  }
}
