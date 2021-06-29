import 'package:shogi_proverbs/localizations.dart';

/// A enum describing the types of proverbs
enum ProverbType {
  pieces,
  opening,
  middle,
  end,
  other,
}

/// A class of extension methods for ProverbType
extension ProverbTypeExtensions on ProverbType {
  /// Returns a localized string for the [ProverbType]
  String get locaString {
    switch (this) {
      case ProverbType.pieces:
        return AppLocalizations.proverbTypepieces;
      case ProverbType.opening:
        return AppLocalizations.proverbTypeopening;
      case ProverbType.middle:
        return AppLocalizations.proverbTypemiddle;
      case ProverbType.end:
        return AppLocalizations.proverbTypeend;
      case ProverbType.other:
        return AppLocalizations.proverbTypeother;
    }
  }
}
