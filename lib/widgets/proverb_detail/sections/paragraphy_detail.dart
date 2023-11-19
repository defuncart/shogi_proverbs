import 'package:flutter/material.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// A detail widget for a [Paragraph]
class ParagraphDetail extends StatelessWidget {
  final Paragraph paragraph;

  const ParagraphDetail({super.key, required this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Text(
      paragraph.text,
      textAlign: TextAlign.justify,
    );
  }
}
