import 'package:meta/meta.dart';
import 'package:shogi_proverbs/models/sections/i_section.dart';

/// A class describing a section contain paragraph text
class Paragraph implements ISection {
  /// The paragraph text
  final String text;

  const Paragraph({
    @required this.text,
  }) : assert(text != null);
}
