import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/external_links.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/onboarding/pages/onboarding_page.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      headline: AppLocalizations.onboardingPage3Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label11,
                ),
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label12,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () async => await _openUrl(ExternalLinks.privacyPolicy),
                ),
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label13,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            AppLocalizations.onboardingPage3Label2,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16.0),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label31,
                ),
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label32,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label33,
                ),
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label34,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () async => await _openUrl(ExternalLinks.sourceCode),
                ),
                TextSpan(
                  text: AppLocalizations.onboardingPage3Label35,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                AppLocalizations.onboardingPage3ContinueButtonText,
                style: TextStyle(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              onPressed: () {
                DIContainer.get<ISettingsDatabase>().hasSeenOnboarding = true;
                Navigator.of(context).pushReplacementNamed(RouteNames.homeScreen);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
