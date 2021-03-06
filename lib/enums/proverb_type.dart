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
  static final _mapProverTypeLocaString = {
    ProverbType.pieces: AppLocalizations.proverbTypepieces,
    ProverbType.opening: AppLocalizations.proverbTypeopening,
    ProverbType.middle: AppLocalizations.proverbTypemiddle,
    ProverbType.end: AppLocalizations.proverbTypeend,
    ProverbType.other: AppLocalizations.proverbTypeother,
  };

  /// Returns a localized string for the [ProverbType]
  String get locaString => _mapProverTypeLocaString[this];
}
