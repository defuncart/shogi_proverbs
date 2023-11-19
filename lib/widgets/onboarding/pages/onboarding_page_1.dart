import 'package:flutter/material.dart';
import 'package:shogi_proverbs/l10n.dart';
import 'package:shogi_proverbs/widgets/common/pages/content_page.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentPage(
      headline: context.l10n.onboardingPage1Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.onboardingPage1Label1),
          const SizedBox(height: 16),
          Text(context.l10n.onboardingPage1Label2),
          const SizedBox(height: 16),
          Text(context.l10n.onboardingPage1Label3),
          const SizedBox(height: 16),
          Text(context.l10n.onboardingPage1Label4),
        ],
      ),
    );
  }
}
