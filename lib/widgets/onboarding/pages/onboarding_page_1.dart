import 'package:flutter/material.dart';
import 'package:shogi_proverbs/l10n/l10n.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: context.l10n.onboardingPage1Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(context.l10n.onboardingPage1Label1),
          Text(context.l10n.onboardingPage1Label2),
          Text(context.l10n.onboardingPage1Label3),
          Text(context.l10n.onboardingPage1Label4),
        ],
      ),
    );
  }
}
