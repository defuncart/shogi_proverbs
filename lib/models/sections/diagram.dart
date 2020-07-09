import 'package:meta/meta.dart';
import 'package:shogi_proverbs/models/sections/i_section.dart';

/// A class representing a section containing a game board diagram
class Diagram implements ISection {
  /// A sfen representation of the game board
  final String sfenString;

  /// A text label
  final String label;

  const Diagram({
    @required this.sfenString,
    @required this.label,
  });
}
