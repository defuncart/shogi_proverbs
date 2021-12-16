import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A config of themes used in the app
class AppThemes {
  static const _lightAppColors = _AppColors.light();

  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: _lightAppColors.scaffoldBackgroundColor,
    splashColor: _lightAppColors.accentColor,
    colorScheme: ColorScheme.light().copyWith(
      primary: _lightAppColors.accentColor,
      secondary: _lightAppColors.accentColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightAppColors.appBarColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    ),
    toggleableActiveColor: _lightAppColors.accentColor,
    //TODO this is because _PackagesView from about.dart uses card color for background color
    cardColor: _lightAppColors.scaffoldBackgroundColor,
  );

  static const _darkAppColors = _AppColors.dark();

  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: _darkAppColors.scaffoldBackgroundColor,
    splashColor: _darkAppColors.accentColor,
    colorScheme: ColorScheme.light().copyWith(
      primary: _darkAppColors.accentColor,
      secondary: _darkAppColors.accentColor,
    ),
    appBarTheme: AppBarTheme(
      color: _darkAppColors.appBarColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
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
