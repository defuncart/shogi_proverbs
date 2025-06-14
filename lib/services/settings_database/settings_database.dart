import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';

class SettingsDatabase implements ISettingsDatabase {
  /// A box to store objects
  late Box<dynamic> _box;

  /// A name for the box
  static const _boxName = 'settings';

  @override
  bool get isDarkMode => _box.get(_Keys.isDarkMode, defaultValue: _Defaults.isDarkMode);

  @override
  set isDarkMode(bool value) => _box.put(_Keys.isDarkMode, value);

  @override
  int get selectedPieceSymbol => _box.get(
    _Keys.selectedPieceSymbol,
    defaultValue: _Defaults.selectedPieceSymbol,
  );

  @override
  set selectedPieceSymbol(int value) => _box.put(_Keys.selectedPieceSymbol, value);

  @override
  bool get hasSeenOnboarding => _box.get(_Keys.hasSeenOnboarding, defaultValue: _Defaults.hasSeenOnboarding);

  @override
  set hasSeenOnboarding(bool value) => _box.put(_Keys.hasSeenOnboarding, value);

  @override
  bool get hasSeenTutorial => _box.get(_Keys.hasSeenTutorial, defaultValue: _Defaults.hasSeenTutorial);

  @override
  set hasSeenTutorial(bool value) => _box.put(_Keys.hasSeenTutorial, value);

  @override
  bool hasSeenProverb(int id) => _proverbsSeen.contains(id);

  @override
  Stream<bool> watchHasSeenProverb(int id) =>
      _box.watch(key: _Keys.proverbsSeen).map((_) => _proverbsSeen.contains(id));

  @override
  void setHasSeenProverb(int id) {
    final proverbsSeen = List<int>.from(_proverbsSeen)..add(id);
    _box.put(_Keys.proverbsSeen, Set<int>.from(proverbsSeen).toList());
  }

  List<int> get _proverbsSeen => _box.get(_Keys.proverbsSeen, defaultValue: _Defaults.proverbsSeen);

  @override
  Future<void> initialize() async {
    if (!kIsWeb) {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
    }

    _box = await Hive.openBox<dynamic>(_boxName);
  }

  @override
  Future<void> reset() => _box.deleteAll(_box.keys);
}

/// A class of keys used to store values
class _Keys {
  static const isDarkMode = 'isDarkMode';
  static const selectedPieceSymbol = 'selectedPieceSymbol';
  static const hasSeenOnboarding = 'hasSeenOnboarding';
  static const hasSeenTutorial = 'hasSeenTutorial';
  static const proverbsSeen = 'proverbsSeen';
}

/// A class of defaults for each key
class _Defaults {
  static const isDarkMode = false;
  static const selectedPieceSymbol = 1;
  static const hasSeenOnboarding = false;
  static const hasSeenTutorial = false;
  static const proverbsSeen = <int>[];
}
