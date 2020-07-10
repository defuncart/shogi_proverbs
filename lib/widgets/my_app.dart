import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_shogi_board/flutter_shogi_board.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/services/proverb_service.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/proverb_detail.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultShogiBoardStyle(
      style: ShogiBoardStyle(
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
        home: _HomeScreen(),
      ),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.appTitle),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Proverb Single Page'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ProverbDetail(
                      proverb: ProverbService.proverbs.first,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                child: Text('Proverb Multi Page'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ProverbDetail(
                      proverb: ProverbService.proverbs.last,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
