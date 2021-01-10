import 'package:meta/meta.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';

/// A model representing a shogi proverb
class Proverb {
  /// The index (0 - 49)
  final int index;

  /// The type (used for sorting)
  final ProverbType type;

  /// The title
  final String title;

  /// The title in japanese
  final String japaneseTitle;

  /// A list of pages
  final List<Page> pages;

  const Proverb({
    @required this.index,
    @required this.type,
    @required this.title,
    @required this.japaneseTitle,
    @required this.pages,
  })  : assert(index != null),
        assert(index >= 0 && index < 50),
        assert(type != null),
        assert(title != null),
        assert(japaneseTitle != null),
        assert(pages != null);

  /// Whether the proverb is multi-paged
  bool get isMultiPage => pages.length > 1;
}
