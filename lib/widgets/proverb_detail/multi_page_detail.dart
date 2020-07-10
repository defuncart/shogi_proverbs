import 'package:flutter/material.dart' hide Page;
import 'package:shogi_proverbs/models/page.dart';
import 'package:shogi_proverbs/widgets/proverb_detail/page_detail.dart';

/// A detail widget for a multi-page [Page]
class MultiPageDetail extends StatefulWidget {
  final List<Page> pages;

  MultiPageDetail({
    Key key,
    @required this.pages,
  })  : assert(pages != null),
        super(key: key);

  @override
  _MultiPageDetailState createState() => _MultiPageDetailState();
}

class _MultiPageDetailState extends State<MultiPageDetail> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: [
            for (final page in widget.pages) PageDetail(page: page),
          ],
          onPageChanged: (index) => setState(() => _currentIndex = index),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: _PageIndicator(
                currentIndex: _currentIndex,
                totalNumPages: widget.pages.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int totalNumPages;

  const _PageIndicator({
    Key key,
    @required this.currentIndex,
    @required this.totalNumPages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < totalNumPages; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color:
                      i == currentIndex ? Theme.of(context).accentColor.withAlpha(128) : Theme.of(context).accentColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
        ],
      ),
    );
  }
}
