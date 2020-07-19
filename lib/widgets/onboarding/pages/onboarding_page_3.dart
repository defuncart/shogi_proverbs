import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/common/buttons/custom_button.dart';
import 'package:shogi_proverbs/widgets/common/panels/data_privacy_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/developer_panel.dart';
import 'package:shogi_proverbs/widgets/onboarding/pages/onboarding_page.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      headline: AppLocalizations.onboardingPage3Headline,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DataPrivacyPanel(),
          SizedBox(height: 16.0),
          DeveloperPanel(),
          SizedBox(height: 16.0),
          Center(
            child: CustomButton(
              label: AppLocalizations.onboardingPage3ContinueButtonText,
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
}
