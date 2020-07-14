import 'package:flutter/material.dart';

/// A foundation for which all onboarding pages can use
class OnboardingPage extends StatelessWidget {
  final String headline;
  final Widget content;

  const OnboardingPage({
    Key key,
    @required this.headline,
    @required this.content,
  })  : assert(headline != null),
        assert(content != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              headline,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 32.0),
            //content
            content,
            //content
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
