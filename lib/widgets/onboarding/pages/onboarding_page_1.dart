import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            //content
            Text(
              AppLocalizations.onboardingPage1Headline,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 32.0),
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
            //content
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
