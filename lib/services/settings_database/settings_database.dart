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
  bool get isDarkMode =>
      _box.get(_Keys.darkMode, defaultValue: _Defaults.darkMode);

  /// Sets whether dark mode is enabled
  set isDarkMode(bool value) => _box.put(_Keys.darkMode, value);

  /// Initializes the database
  Future<void> initialize() async {
    if (!kIsWeb) {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
    }

    if (_box == null) {
      _box = await Hive.openBox<dynamic>(_boxName);
    }

    final defaults = {
      _Keys.darkMode: _Defaults.darkMode,
    };

    for (final kvp in defaults.entries) {
      if (!_box.containsKey(kvp.key)) {
        await _box.put(kvp.key, kvp.value);
      }
    }
  }
}

/// A class of keys used to store values
class _Keys {
  static const darkMode = 'darkMode';
}

/// A class of defaults for each key
class _Defaults {
  static const darkMode = false;
}
