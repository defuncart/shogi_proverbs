import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/external_links.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/text/clickable_text_span.dart';

class DeveloperPanel extends StatelessWidget {
  const DeveloperPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText2,
        children: [
          TextSpan(
            text: AppLocalizations.developerPanelLabel11,
          ),
          TextSpan(
            text: AppLocalizations.developerPanelLabel12,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: AppLocalizations.developerPanelLabel13,
          ),
          ClickableTextSpan(
            text: AppLocalizations.developerPanelLabel14,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
            ),
            url: ExternalLinks.sourceCode,
          ),
          TextSpan(
            text: AppLocalizations.developerPanelLabel15,
          ),
        ],
      ),
    );
  }
}
