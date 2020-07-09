import 'package:shogi_proverbs/enums/proverb_type.dart';

/// A model representing a shogi proverb
class Proverb {
  /// The type. This is used for sorting.
  final ProverbType type;

  /// The title
  final String title;

  /// The title in japanese
  final String japaneseTitle;

  const Proverb({
    this.type,
    this.title,
    this.japaneseTitle,
  });
}
