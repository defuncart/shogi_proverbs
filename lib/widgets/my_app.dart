import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi_proverbs/configs/app_themes.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/home_screen/home_screen.dart';
import 'package:shogi_proverbs/widgets/home_screen/settings_tab/settings_tab.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<bool> _initAppFuture;

  @override
  void initState() {
    super.initState();

    _initAppFuture = _initApp();
  }

  Future<bool> _initApp() async {
    DIContainer.setup();

    await DIContainer.get<ISettingsDatabase>().initialize();

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: _initAppFuture,
          builder: (_, AsyncSnapshot<bool> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
              case ConnectionState.active:
                return Center(
                  child: CircularProgressIndicator(),
                );
              default:
                if (snapshot.connectionState == ConnectionState.done && snapshot.hasData && snapshot.data == true) {
                  return _MyApp();
                }
              //TODO else show error
            }

            return Container();
          },
        ),
      ),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      (_, read) => MaterialApp(
        localizationsDelegates: [
          const AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizationsDelegate.supportedLocals,
        themeMode: read(isDarkModeProvider).state ? ThemeMode.dark : ThemeMode.light,
        theme: AppThemes.light,
        darkTheme: AppThemes.dark,
        home: DefaultShogiBoardStyle(
          style: read(isDarkModeProvider).state
              ? ShogiBoardStyle(
                  pieceColor: Colors.white,
                  borderColor: AppThemes.dark.disabledColor,
                )
              : ShogiBoardStyle(),
          child: HomeScreen(),
        ),
      ),
    );
  }
}
