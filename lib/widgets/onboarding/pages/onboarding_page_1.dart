import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/onboarding/pages/onboarding_page.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      headline: AppLocalizations.onboardingPage1Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.onboardingPage1Label1,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16.0),
          Text(
            AppLocalizations.onboardingPage1Label2,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16.0),
          Text(
            AppLocalizations.onboardingPage1Label3,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16.0),
          Text(
            AppLocalizations.onboardingPage1Label4,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16.0),
          Text(
            AppLocalizations.onboardingPage1Label5,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
