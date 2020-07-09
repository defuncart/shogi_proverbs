import 'package:meta/meta.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/sections/i_section.dart';

/// A model representing a shogi proverb
class Proverb {
  /// The type. This is used for sorting.
  final ProverbType type;

  /// The title
  final String title;

  /// The title in japanese
  final String japaneseTitle;

  /// A list of sections
  final List<ISection> sections;

  const Proverb({
    @required this.type,
    @required this.title,
    @required this.japaneseTitle,
    @required this.sections,
  });
}
