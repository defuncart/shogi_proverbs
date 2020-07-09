import 'package:meta/meta.dart';
import 'package:shogi_proverbs/enums/proverb_type.dart';
import 'package:shogi_proverbs/models/page.dart';

/// A model representing a shogi proverb
class Proverb {
  /// The type. This is used for sorting.
  final ProverbType type;

  /// The title
  final String title;

  /// The title in japanese
  final String japaneseTitle;

  /// A list of pages
  final List<Page> pages;

  const Proverb({
    @required this.type,
    @required this.title,
    @required this.japaneseTitle,
    @required this.pages,
  })  : assert(type != null),
        assert(title != null),
        assert(japaneseTitle != null),
        assert(pages != null);

  bool get isMultiPage => pages.length > 1;
}
