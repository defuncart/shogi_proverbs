import 'dart:ui';

import 'package:flutter/material.dart';

/// A config of themes used in the app
class AppThemes {
  static const _lightAppColors = _AppColors.light();

  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: _lightAppColors.scaffoldBackgroundColor,
    accentColor: _lightAppColors.accentColor,
    splashColor: _lightAppColors.accentColor,
    appBarTheme: AppBarTheme(
      color: _lightAppColors.appBarColor,
      brightness: Brightness.dark,
    ),
    //TODO this is because _PackagesView from about.dart uses card color for background color
    cardColor: _lightAppColors.scaffoldBackgroundColor,
  );

  static const _darkAppColors = _AppColors.dark();

  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: _darkAppColors.scaffoldBackgroundColor,
    accentColor: _darkAppColors.accentColor,
    splashColor: _darkAppColors.accentColor,
    appBarTheme: AppBarTheme(
      color: _darkAppColors.appBarColor,
      brightness: Brightness.dark,
    ),
    toggleableActiveColor: _darkAppColors.accentColor,
    disabledColor: _darkAppColors.disabledColor,
    //TODO this is because _PackagesView from about.dart uses card color for background color
    cardColor: _darkAppColors.scaffoldBackgroundColor,
  );
}

class _AppColors {
  final Color scaffoldBackgroundColor;
  final Color accentColor;
  final Color disabledColor;
  final Color appBarColor;

  const _AppColors.light()
      : scaffoldBackgroundColor = const Color(0xffe2e3d1),
        accentColor = const Color(0xff474838),
        disabledColor = const Color(0xffafafaf),
        appBarColor = const Color(0xff44423d);

  const _AppColors.dark()
      : scaffoldBackgroundColor = const Color(0xff252525),
        accentColor = const Color(0xfffc856d),
        disabledColor = const Color(0xffafafaf),
        appBarColor = const Color(0xff131b20);
}
