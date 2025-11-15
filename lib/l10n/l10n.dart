import 'package:flutter/material.dart';
import 'package:shogi_proverbs/l10n/generated/localizations.dart';

extension L10nExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
