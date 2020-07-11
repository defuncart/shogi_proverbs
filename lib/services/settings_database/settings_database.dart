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
  @override
  bool get isDarkMode => _box.get(_Keys.isDarkMode, defaultValue: _Defaults.isDarkMode);

  /// Sets whether dark mode is enabled
  @override
  set isDarkMode(bool value) => _box.put(_Keys.isDarkMode, value);

  /// Returns the selected piece symbol
  @override
  int get selectedPieceSymbol => _box.get(
        _Keys.selectedPieceSymbol,
        defaultValue: _Defaults.selectedPieceSymbol,
      );

  /// Sets the selected piece symbol
  @override
  set selectedPieceSymbol(int value) => _box.put(_Keys.selectedPieceSymbol, value);

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
  static const selectedPieceSymbol = 'selectedPieceSymbol';
}

/// A class of defaults for each key
class _Defaults {
  static const isDarkMode = false;
  static const selectedPieceSymbol = 1;
}
