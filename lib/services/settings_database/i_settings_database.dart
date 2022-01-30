/// A database of the user's device settings
abstract class ISettingsDatabase {
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

  /// Returns whether the user has seen the tutorial
  bool get hasSeenTutorial;

  /// Sets whether the user has seen the tutorial
  set hasSeenTutorial(bool value);

  /// Returns whether the user has seen proverb [id]
  bool hasSeenProverb(int id);

  /// Returns a sream of whether the user has seen proverb [id]
  Stream<bool> watchHasSeenProverb(int id);

  /// Sets whether the user has seen proverb [id]
  void setHasSeenProverb(int id);

  /// Initializes the database
  Future<void> initialize();

  /// Resets the database
  Future<void> reset();
}
