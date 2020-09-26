import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/external_links.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/common/text/clickable_text_span.dart';

class DataPrivacyPanel extends StatelessWidget {
  final double spacerHeight;

  const DataPrivacyPanel({
    Key key,
    this.spacerHeight = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyText2,
            children: [
              TextSpan(
                text: AppLocalizations.dataPrivacyPanelLabel11,
              ),
              ClickableTextSpan(
                text: AppLocalizations.dataPrivacyPanelLabel12,
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
                url: ExternalLinks.privacyPolicy,
              ),
              TextSpan(
                text: AppLocalizations.dataPrivacyPanelLabel13,
              ),
            ],
          ),
        ),
        SizedBox(height: spacerHeight),
        Text(
          AppLocalizations.dataPrivacyPanelLabel2,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
