import 'package:meta/meta.dart';
import 'package:shogi_proverbs/models/sections/i_section.dart';

/// A class representing a page of a proverb
class Page {
  /// A list of sections
  final List<ISection> sections;

  const Page({@required this.sections}) : assert(sections != null);
}
