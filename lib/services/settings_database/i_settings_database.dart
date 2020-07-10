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
}
