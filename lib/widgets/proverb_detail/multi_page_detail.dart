import 'package:flutter/material.dart' hide Page;
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/widgets/common/page_view_with_indicators.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/page_detail.dart';

/// A detail widget for a multi-page [Page]
class MultiPageDetail extends StatelessWidget {
  final List<Page> pages;

  const MultiPageDetail({
    Key key,
    @required this.pages,
  })  : assert(pages != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageViewWithIndicators(
      children: [
        for (final page in pages) PageDetail(page: page),
      ],
    );
  }
}
