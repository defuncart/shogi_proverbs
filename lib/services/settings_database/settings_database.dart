import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';

/// A database of the player's device settings
class SettingsDatabase implements ISettingsDatabase {
  /// A box to store objects
  Box<dynamic> _box;

  /// A name for the box
  static const _boxName = 'settings';

  /// Returns whether dark mode is enabled
  bool get isDarkMode => _box.get(_Keys.isDarkMode, defaultValue: _Defaults.isDarkMode);

  /// Sets whether dark mode is enabled
  set isDarkMode(bool value) => _box.put(_Keys.isDarkMode, value);

  /// Returns whether piece langauge is japanese
  bool get isPieceLanguageJapanese =>
      _box.get(_Keys.isPieceLanguageJapanese, defaultValue: _Defaults.isPieceLanguageJapanese);

  /// Sets whether piece langauge is japanese
  set isPieceLanguageJapanese(bool value) => _box.put(_Keys.isPieceLanguageJapanese, value);

  /// Initializes the database
  Future<void> initialize() async {
    if (!kIsWeb) {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
    }

    if (_box == null) {
      _box = await Hive.openBox<dynamic>(_boxName);
    }
  }
}

/// A class of keys used to store values
class _Keys {
  static const isDarkMode = 'isDarkMode';
  static const isPieceLanguageJapanese = 'isPieceLanguageJapanese';
}

/// A class of defaults for each key
class _Defaults {
  static const isDarkMode = false;
  static const isPieceLanguageJapanese = true;
}
