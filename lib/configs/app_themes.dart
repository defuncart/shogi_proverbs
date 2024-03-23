import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A config of themes used in the app
class AppThemes {
  static const _lightAppColors = _AppColors.light();

  static final light = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: _lightAppColors.scaffoldBackgroundColor,
    splashColor: _lightAppColors.accentColor,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: _lightAppColors.accentColor,
      onPrimary: _lightAppColors.scaffoldBackgroundColor,
      secondary: _lightAppColors.accentColor,
      onSecondary: _lightAppColors.scaffoldBackgroundColor,
      error: Colors.transparent,
      onError: Colors.transparent,
      background: _lightAppColors.scaffoldBackgroundColor,
      onBackground: _lightAppColors.accentColor,
      surface: _lightAppColors.scaffoldBackgroundColor,
      onSurface: _lightAppColors.accentColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightAppColors.appBarColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      foregroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
    ),
    dialogTheme: const DialogTheme(
      surfaceTintColor: Colors.transparent,
    ),
    //TODO this is because _PackagesView from about.dart uses card color for background color
    cardColor: _lightAppColors.scaffoldBackgroundColor,
  );

  static const _darkAppColors = _AppColors.dark();

  static final dark = ThemeData.dark().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: _darkAppColors.scaffoldBackgroundColor,
    splashColor: _darkAppColors.accentColor,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: _darkAppColors.accentColor,
      onPrimary: _darkAppColors.scaffoldBackgroundColor,
      secondary: _darkAppColors.accentColor,
      onSecondary: _darkAppColors.scaffoldBackgroundColor,
      error: Colors.transparent,
      onError: Colors.transparent,
      background: _darkAppColors.scaffoldBackgroundColor,
      onBackground: Colors.white,
      surface: _darkAppColors.scaffoldBackgroundColor,
      onSurface: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: _darkAppColors.appBarColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      foregroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
    ),
    disabledColor: _darkAppColors.disabledColor,
    dialogTheme: const DialogTheme(
      surfaceTintColor: Colors.transparent,
    ),
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
