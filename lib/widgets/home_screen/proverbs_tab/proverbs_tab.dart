import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs_service.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/proverb_detail.dart';

class ProverbsTab extends StatelessWidget {
  const ProverbsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final proverbs = ProverbsService.proverbs;
    return ListView(
      children: [
        for (final kvp in proverbs.entries)
          ExpansionTile(
            initiallyExpanded: true,
            title: Text(kvp.key.locaString),
            children: [
              for (final proverb in kvp.value)
                ListTile(
                  title: Text(proverb.title),
                  subtitle: Text(proverb.japaneseTitle),
                  onTap: () async {
                    if (!DIContainer.get<ISettingsDatabase>().hasSeenTutorial) {
                      final openTutorial = await showDialog(
                        context: context,
                        builder: (_) => _AskViewTutorialPopup(),
                      );
                      // user must choose yes/no, dismissing by taping outside of popup doesn't count
                      if (openTutorial != null) {
                        DIContainer.get<ISettingsDatabase>().hasSeenTutorial = true;
                        if (!openTutorial) {
                          _openProverbDetail(proverb, context);
                        } else {
                          Navigator.of(context).pushNamed(RouteNames.shogiNotationScreen);
                        }
                      }
                    } else {
                      _openProverbDetail(proverb, context);
                    }
                  },
                ),
            ],
          ),
      ],
    );
  }

  void _openProverbDetail(Proverb proverb, BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ProverbDetail(
            proverb: proverb,
          ),
        ),
      );
}

/// Returns true if user decides to see tutorial, otherwise false
class _AskViewTutorialPopup extends StatelessWidget {
  const _AskViewTutorialPopup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(AppLocalizations.askSeenTutorialPopupTitle),
      content: Text(
        AppLocalizations.askSeenTutorialPopupDescription,
        textAlign: TextAlign.justify,
      ),
      actions: [
        FlatButton(
          child: Text(AppLocalizations.generalNo.toUpperCase()),
          textColor: Theme.of(context).accentColor,
          onPressed: () => Navigator.of(context).pop(false),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        FlatButton(
          child: Text(AppLocalizations.generalYes.toUpperCase()),
          textColor: Theme.of(context).accentColor,
          onPressed: () => Navigator.of(context).pop(true),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ],
    );
  }
}
