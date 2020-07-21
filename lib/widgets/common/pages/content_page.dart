import 'package:flutter/material.dart';

/// A foundation for which pages of PageViewWithIndicators can use
class ContentPage extends StatelessWidget {
  final String headline;
  final Widget content;

  const ContentPage({
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
            Container(height: 16.0),
            Text(
              headline,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Container(height: 32.0),
            //content
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.justify,
              child: content,
            ),
            //content
            Container(height: 8.0),
          ],
        ),
      ),
    );
  }
}
