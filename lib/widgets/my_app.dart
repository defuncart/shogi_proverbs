import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi_proverbs/configs/app_themes.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';
import 'package:shogi_proverbs/widgets/home_screen/home_screen.dart';
import 'package:shogi_proverbs/widgets/onboarding/onboarding_screen.dart';
import 'package:shogi_proverbs/widgets/shogi_notation/shogi_notation_screen.dart';

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
    // await DIContainer.get<ISettingsDatabase>().reset();

    return true;
  }

  @override
  Widget build(BuildContext context) {
    final futureBuilder = FutureBuilder(
      future: _initAppFuture,
      // ignore: avoid_types_on_closure_parameters
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
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      builder: (_, __) => Scaffold(
        resizeToAvoidBottomPadding: false,
        body: LayoutBuilder(
          builder: (_, constraints) => constraints.maxWidth > 675
              ? _FakeMobileWrapper(
                  child: futureBuilder,
                  constraints: constraints,
                )
              : futureBuilder,
        ),
      ),
    );
  }
}

class _FakeMobileWrapper extends StatelessWidget {
  final Widget child;
  final BoxConstraints constraints;

  const _FakeMobileWrapper({
    @required this.child,
    @required this.constraints,
    Key key,
  })  : assert(child != null),
        assert(constraints != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = constraints.maxHeight;
    final width = height / 2;

    return Container(
      color: Colors.black,
      child: Center(
        child: SizedBox(
          height: height,
          width: width,
          child: child,
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
      builder: (_, read, __) => DefaultShogiBoardStyle(
        style: ShogiBoardStyle(
          pieceColor: read(isDarkModeProvider).state
              ? AppThemes.dark.textTheme.bodyText1.color
              : AppThemes.light.textTheme.bodyText1.color,
          borderColor: read(isDarkModeProvider).state ? AppThemes.dark.disabledColor : AppThemes.light.disabledColor,
          usesJapanese: read(selectedPieceSymbolProvider).state == 1,
          coordIndicatorType: CoordIndicatorType.arabic,
        ),
        child: MaterialApp(
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
          home: DIContainer.get<ISettingsDatabase>().hasSeenOnboarding ? HomeScreen() : OnboardingScreen(),
          routes: {
            RouteNames.homeScreen: (_) => HomeScreen(),
            RouteNames.shogiNotationScreen: (_) => ShogiNotationScreen(),
          },
        ),
      ),
    );
  }
}
