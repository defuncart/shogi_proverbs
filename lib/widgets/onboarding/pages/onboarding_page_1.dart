import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: AppLocalizations.onboardingPage1Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.onboardingPage1Label1),
          const SizedBox(height: 16),
          Text(AppLocalizations.onboardingPage1Label2),
          const SizedBox(height: 16),
          Text(AppLocalizations.onboardingPage1Label3),
          const SizedBox(height: 16),
          Text(AppLocalizations.onboardingPage1Label4),
        ],
      ),
    );
  }
}
