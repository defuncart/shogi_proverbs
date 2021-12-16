import 'package:flutter/material.dart';
import 'package:shogi_proverbs/widgets/common/page_view_with_indicators.dart';
import 'package:shogi_proverbs/widgets/onboarding/pages/onboarding_page_1.dart';
import 'package:shogi_proverbs/widgets/onboarding/pages/onboarding_page_2.dart';
import 'package:shogi_proverbs/widgets/onboarding/pages/onboarding_page_3.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageViewWithIndicators(
          children: const [
            OnboardingPage1(),
            OnboardingPage2(),
            OnboardingPage3(),
          ],
        ),
      ),
    );
  }
}
