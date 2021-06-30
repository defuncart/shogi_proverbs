import 'package:shogi_proverbs/models/sections/i_section.dart';

/// A model representing a section contain paragraph text
class Paragraph implements ISection {
  /// The paragraph text
  final String text;

  const Paragraph({
    required this.text,
  });
}
