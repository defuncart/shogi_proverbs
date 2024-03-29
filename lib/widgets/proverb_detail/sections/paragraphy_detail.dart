import 'package:flutter/material.dart';
import 'package:shogi_proverbs/models/sections/paragraph.dart';

/// A detail widget for a [Paragraph]
class ParagraphDetail extends StatelessWidget {
  final Paragraph paragraph;

  const ParagraphDetail({Key? key, required this.paragraph}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      paragraph.text,
      textAlign: TextAlign.justify,
    );
  }
}
