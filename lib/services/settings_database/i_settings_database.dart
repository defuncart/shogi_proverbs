/// A database of the user's device settings
abstract class ISettingsDatabase {
  /// Returns whether dark mode is enabled
  bool get isDarkMode;

  /// Sets whether dark mode is enabled
  set isDarkMode(bool value);
}
