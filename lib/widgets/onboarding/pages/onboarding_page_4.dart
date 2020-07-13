import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';

class OnboardingPage4 extends StatelessWidget {
  const OnboardingPage4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page 4'),
          RaisedButton(
            child: Text('Continue'),
            onPressed: () {
              DIContainer.get<ISettingsDatabase>().hasSeenOnboarding = true;
              Navigator.of(context).pushReplacementNamed(RouteNames.homeScreen);
            },
          ),
        ],
      ),
    );
  }
}
