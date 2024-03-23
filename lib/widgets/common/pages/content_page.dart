import 'package:flutter/material.dart';

/// A foundation for which pages of PageViewWithIndicators can use
class ContentPage extends StatelessWidget {
  final String headline;
  final Widget content;

  const ContentPage({
    Key? key,
    required this.headline,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              headline,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            //content
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyMedium!,
              textAlign: TextAlign.justify,
              child: content,
            ),
            //content
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
