import 'package:flutter/material.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/l10n/l10n.dart';
import 'package:shogi_proverbs/models/proverb.dart';
import 'package:shogi_proverbs/services/proverbs_service/proverbs_service.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/common/buttons/custom_text_button.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/proverb_detail.dart';

class ProverbsTab extends StatelessWidget {
  final String filterTerm;

  const ProverbsTab({
    super.key,
    required this.filterTerm,
  });

  @override
  Widget build(BuildContext context) {
    final proverbs = ProverbsService.proverbsWithFilter(filterTerm);
    return proverbs.isEmpty
        ? Center(
            child: Text(context.l10n.proverbsTabNoResultsText),
          )
        : ListView(
            children: [
              for (final kvp in proverbs.entries)
                ExpansionTile(
                  initiallyExpanded: true,
                  textColor: Theme.of(context).textTheme.bodyMedium?.color,
                  collapsedTextColor: Theme.of(context).disabledColor,
                  iconColor: Theme.of(context).textTheme.bodyMedium?.color,
                  collapsedIconColor: Theme.of(context).disabledColor,
                  shape: const Border(),
                  title: Text(kvp.key.locaString(context)),
                  children: [
                    for (final proverb in kvp.value) _ProverbTile(proverb: proverb),
                  ],
                ),
            ],
          );
  }
}

class _ProverbTile extends StatelessWidget {
  final Proverb proverb;

  const _ProverbTile({
    required this.proverb,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: DIContainer.get<ISettingsDatabase>().hasSeenProverb(proverb.index),
      stream: DIContainer.get<ISettingsDatabase>().watchHasSeenProverb(proverb.index),
      builder: (context, snapshot) {
        return Opacity(
          opacity: (snapshot.data ?? false) ? 0.6 : 1,
          child: ListTile(
            title: Text(proverb.title),
            subtitle: Text(proverb.japaneseTitle),
            onTap: () async {
              FocusScope.of(context).unfocus();

              if (!DIContainer.get<ISettingsDatabase>().hasSeenTutorial) {
                final openTutorial = await showDialog(
                  context: context,
                  builder: (_) => const _AskViewTutorialPopup(),
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
        );
      },
    );
  }

  void _openProverbDetail(Proverb proverb, BuildContext context) {
    DIContainer.get<ISettingsDatabase>().setHasSeenProverb(proverb.index);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ProverbDetail(
          proverb: proverb,
        ),
      ),
    );
  }
}

/// Returns true if user decides to see tutorial, otherwise false
class _AskViewTutorialPopup extends StatelessWidget {
  const _AskViewTutorialPopup();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(context.l10n.askSeenTutorialPopupTitle),
      content: Text(
        context.l10n.askSeenTutorialPopupDescription,
        textAlign: TextAlign.justify,
      ),
      actions: [
        CustomTextButton(
          label: context.l10n.generalNo,
          onPressed: () => Navigator.of(context).pop(false),
        ),
        CustomTextButton(
          label: context.l10n.generalYes,
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    );
  }
}

extension on ProverbType {
  /// Returns a localized string for the [ProverbType]
  String locaString(BuildContext context) {
    switch (this) {
      case ProverbType.pieces:
        return context.l10n.proverbTypepieces;
      case ProverbType.opening:
        return context.l10n.proverbTypeopening;
      case ProverbType.middle:
        return context.l10n.proverbTypemiddle;
      case ProverbType.end:
        return context.l10n.proverbTypeend;
      case ProverbType.other:
        return context.l10n.proverbTypeother;
    }
  }
}
