import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shogi_proverbs/configs/app_themes.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/home_screen/home_screen.dart';
import 'package:shogi_proverbs/widgets/home_screen/settings_tab/settings_tab.dart';

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizationsDelegate.supportedLocals,
      themeMode: useProvider(isDarkModeProvider).state
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      home: HomeScreen(),
    );
  }
}
