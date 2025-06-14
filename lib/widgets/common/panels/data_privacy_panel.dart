import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/external_links.dart';
import 'package:shogi_proverbs/l10n/l10n.dart';
import 'package:shogi_proverbs/widgets/common/text/clickable_text_span.dart';

class DataPrivacyPanel extends StatelessWidget {
  final double spacerHeight;

  const DataPrivacyPanel({
    super.key,
    this.spacerHeight = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: spacerHeight,
      children: [
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(
                text: context.l10n.dataPrivacyPanelLabel11,
              ),
              ClickableTextSpan(
                text: context.l10n.dataPrivacyPanelLabel12,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
                url: ExternalLinks.privacyPolicy,
              ),
              TextSpan(
                text: context.l10n.dataPrivacyPanelLabel13,
              ),
            ],
          ),
        ),
        Text(
          context.l10n.dataPrivacyPanelLabel2,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
