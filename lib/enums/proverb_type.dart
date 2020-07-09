import '../localizations.dart';

/// A enum describing the types of proverbs
enum ProverbType {
  pawn,
  lance,
  knight,
  silver,
  gold,
  bishop,
  horse,
  dragon,
  tokin,
  opening,
  middle,
  end,
  other,
}

extension ProverbTypeExtensions on ProverbType {
  // TODO update to use getText
  static final _mapProverTypeLocaString = {
    ProverbType.pawn: AppLocalizations.proverbTypepawn,
    ProverbType.lance: AppLocalizations.proverbTypelance,
    ProverbType.knight: AppLocalizations.proverbTypeknight,
    ProverbType.silver: AppLocalizations.proverbTypesilver,
    ProverbType.gold: AppLocalizations.proverbTypegold,
    ProverbType.bishop: AppLocalizations.proverbTypebishop,
    ProverbType.horse: AppLocalizations.proverbTypehorse,
    ProverbType.dragon: AppLocalizations.proverbTypedragon,
    ProverbType.tokin: AppLocalizations.proverbTypetokin,
    ProverbType.opening: AppLocalizations.proverbTypeopening,
    ProverbType.middle: AppLocalizations.proverbTypemiddle,
    ProverbType.end: AppLocalizations.proverbTypeend,
    ProverbType.other: AppLocalizations.proverbTypeother,
  };

  String get locaString => _mapProverTypeLocaString[this];
}
