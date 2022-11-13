import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// A TextSpan which is clickable and opens a given url
class ClickableTextSpan extends TextSpan {
  /// Constructs a new instance of `ClickableTextSpan`
  ///
  /// [text] and [url] are required.
  /// [style] is optional. If not given, default from theme will be used.
  ClickableTextSpan({
    required String text,
    TextStyle? style,
    required String url,
  }) : super(
          text: text,
          style: style,
          recognizer: TapGestureRecognizer()..onTap = () async => await _openUrl(url),
        );

  static Future<void> _openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}
