import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shogi_proverbs/configs/app_themes.dart';
import 'package:shogi_proverbs/widgets/my_app.dart';

void main() {
  // on Android set status & navigation bar colors to improve launch screen
  if (defaultTargetPlatform == TargetPlatform.android) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: AppThemes.light.scaffoldBackgroundColor,
      ),
    );
  }

  runApp(const ProviderScope(child: MyApp()));
}
