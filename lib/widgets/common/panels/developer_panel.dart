import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/external_links.dart';
import 'package:shogi_proverbs/l10n.dart';
import 'package:shogi_proverbs/widgets/common/text/clickable_text_span.dart';

class DeveloperPanel extends StatelessWidget {
  const DeveloperPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text: context.l10n.developerPanelLabel11,
          ),
          TextSpan(
            text: context.l10n.developerPanelLabel12,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: context.l10n.developerPanelLabel13,
          ),
          ClickableTextSpan(
            text: context.l10n.developerPanelLabel14,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
            ),
            url: ExternalLinks.sourceCode,
          ),
          TextSpan(
            text: context.l10n.developerPanelLabel15,
          ),
        ],
      ),
    );
  }
}
