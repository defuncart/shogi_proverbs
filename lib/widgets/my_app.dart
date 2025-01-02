import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi_proverbs/configs/app_themes.dart';
import 'package:shogi_proverbs/configs/route_names.dart';
import 'package:shogi_proverbs/di_container.dart';
import 'package:shogi_proverbs/services/settings_database/i_settings_database.dart';
import 'package:shogi_proverbs/widgets/common/panels/dark_mode_panel.dart';
import 'package:shogi_proverbs/widgets/common/panels/piece_symbol_panel.dart';
import 'package:shogi_proverbs/widgets/home_screen/home_screen.dart';
import 'package:shogi_proverbs/widgets/onboarding/onboarding_screen.dart';
import 'package:shogi_proverbs/widgets/shogi_notation/shogi_notation_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<bool> _initAppFuture;

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
            return const SizedBox.shrink();
          default:
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData && snapshot.data == true) {
              return const _MyApp();
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
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (_, constraints) => kIsWeb && constraints.maxWidth > 675
              ? _FakeMobileWrapper(
                  constraints: constraints,
                  child: futureBuilder,
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
    required this.child,
    required this.constraints,
    Key? key,
  }) : super(key: key);

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
  const _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final isDarkMode = ref.watch(isDarkModeProvider);

        return DefaultShogiBoardStyle(
          style: ShogiBoardStyle(
            maxSize: 500,
            pieceColor:
                isDarkMode ? AppThemes.dark.textTheme.bodyLarge!.color! : AppThemes.light.textTheme.bodyLarge!.color!,
            borderColor: isDarkMode ? AppThemes.dark.disabledColor : AppThemes.light.disabledColor,
            usesJapanese: ref.watch(selectedPieceSymbolProvider) == 1,
            coordIndicatorType: CoordIndicatorType.arabic,
          ),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              systemNavigationBarColor:
                  isDarkMode ? AppThemes.dark.scaffoldBackgroundColor : AppThemes.light.scaffoldBackgroundColor,
              statusBarColor: Colors.transparent,
              systemNavigationBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
              statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
              statusBarBrightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
            child: MaterialApp(
              scrollBehavior: _AppScrollBehavior(),
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
              theme: AppThemes.light,
              darkTheme: AppThemes.dark,
              home: DIContainer.get<ISettingsDatabase>().hasSeenOnboarding
                  ? const HomeScreen()
                  : const OnboardingScreen(),
              routes: {
                RouteNames.homeScreen: (_) => const HomeScreen(),
                RouteNames.shogiNotationScreen: (_) => const ShogiNotationScreen(),
              },
            ),
          ),
        );
      },
    );
  }
}

class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
