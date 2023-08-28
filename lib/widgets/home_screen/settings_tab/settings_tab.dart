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
              const SizedBox(height: 16.0),
              const DarkModePanel(),
              const SizedBox(height: 16.0),
              const PieceSymbolPanel(),
              const SizedBox(height: 16.0),
              Center(
                child: CustomButton(
                  label: AppLocalizations.generalShogiNotation,
                  onPressed: () => Navigator.of(context).pushNamed(RouteNames.shogiNotationScreen),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: CustomButton(
                  label: AppLocalizations.settingsTabDataPrivacyButtonText,
                  onPressed: () => showDialog(
                    context: context,
                    builder: (_) => const _DataPrivacyPopup(),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: CustomButton(
                  label: AppLocalizations.settingsTabCreditsButtonText,
                  onPressed: () => showDialog(
                    context: context,
                    builder: (_) => const _CreditsPopup(),
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
      content: const DataPrivacyPanel(),
      actions: <Widget>[
        CustomTextButton(
          label: MaterialLocalizations.of(context).viewLicensesButtonLabel,
          onPressed: () => showLicensePage(
            context: context,
            applicationName: AppLocalizations.appTitle,
            applicationVersion: '0.3.0', //TODO use getVersion
            applicationIcon: Image.asset('assets/images/app_icon.png'),
            applicationLegalese: '© 2023 defuncart',
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
        style: Theme.of(context).textTheme.bodyMedium!,
        textAlign: TextAlign.justify,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.creditsPopupLabel1),
            const SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel21,
                    style: Theme.of(context).textTheme.bodyMedium,
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
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel31,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel32,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  TextSpan(
                    text: AppLocalizations.creditsPopupLabel33,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const DeveloperPanel(),
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
