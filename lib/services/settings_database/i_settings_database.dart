/// A database of the user's device settings
abstract class ISettingsDatabase {
  /// Initializes the database
  Future<void> initialize();

  /// Returns whether dark mode is enabled
  bool get isDarkMode;

  /// Sets whether dark mode is enabled
  set isDarkMode(bool value);

  /// Returns whether piece langauge is japanese
  bool get isPieceLanguageJapanese;

  /// Sets whether piece langauge is japanese
  set isPieceLanguageJapanese(bool value);

  /// Returns whether coordinate indicators are enabled
  bool get shouldShowCoordinateIndicators;

  /// Sets whether coordinate indicators are enabled
  set shouldShowCoordinateIndicators(bool value);

  /// Returns the selected coordinate indicator
  int get coordinateIndicator;

  /// Sets the selected coordinate indicator
  set coordinateIndicator(int value);
}
