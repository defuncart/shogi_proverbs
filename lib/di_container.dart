import 'package:get_it/get_it.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/services/settings_database/settings_database.dart';

abstract class DIContainer {
  static final _getIt = GetIt.instance;
  static bool _hasBeenSetup = false;

  static void setup() {
    if (!_hasBeenSetup) {
      _getIt.registerSingleton<ISettingsDatabase>(SettingsDatabase());
      _hasBeenSetup = true;
    }
  }

  static T get<T extends Object>() => _getIt.get<T>();
}
