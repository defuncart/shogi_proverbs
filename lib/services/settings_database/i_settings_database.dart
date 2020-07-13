/// A database of the user's device settings
abstract class ISettingsDatabase {
  /// Initializes the database
  Future<void> initialize();

  /// Returns whether dark mode is enabled
  bool get isDarkMode;

  /// Sets whether dark mode is enabled
  set isDarkMode(bool value);

  /// Returns the selected piece symbol
  int get selectedPieceSymbol;

  /// Sets the selected piece symbol
  set selectedPieceSymbol(int value);

  /// Returns whether the user has seen onboarding
  bool get hasSeenOnboarding;

  /// Sets whether the user has seen onboarding
  set hasSeenOnboarding(bool value);
}
