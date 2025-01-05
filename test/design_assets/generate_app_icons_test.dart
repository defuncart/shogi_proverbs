import 'package:app_store_screenshots/app_store_screenshots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shogi_proverbs/configs/app_themes.dart';

const _fontName = 'NotoSans';

void main() {
  setUp(() async {
    await loadFont(
      path: 'assets_dev/fonts/NotoSansJP-RegularLite.otf',
      name: _fontName,
    );
  });

  generateAppIcon(
    onBuildIcon: (size) => Theme(
      data: AppThemes.light,
      child: AppIcon(
        size: size,
      ),
    ),
  );

  generateAppIconAndroidForeground(
    onBuildIcon: (size) => Theme(
      data: AppThemes.light,
      child: AppIcon(
        size: size,
        hasTransparentBackground: true,
      ),
    ),
  );
}

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    this.size = 512,
    this.hasTransparentBackground = false,
  });

  final double size;
  final bool hasTransparentBackground;

  @override
  Widget build(BuildContext context) {
    final fontSize = size * 0.6836;
    final textStyle = TextStyle(
      fontSize: fontSize,
      color: Theme.of(context).colorScheme.primary,
      fontFamily: _fontName,
      height: 1,
    );

    return Container(
      width: size,
      height: size,
      color: hasTransparentBackground ? Colors.transparent : Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: size * 0.12, // required in order to 'correctly' center the text
            child: Text(
              '王',
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
