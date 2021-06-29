import 'package:flutter/material.dart' hide Page;

/// A pageView with bottom aligned indicators
class PageViewWithIndicators extends StatefulWidget {
  final List<Widget> children;

  PageViewWithIndicators({
    Key? key,
    required this.children,
  })  : assert(children.isNotEmpty),
        super(key: key);

  @override
  _PageViewWithIndicatorsState createState() => _PageViewWithIndicatorsState();
}

class _PageViewWithIndicatorsState extends State<PageViewWithIndicators> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: widget.children,
          onPageChanged: (index) => setState(() => _currentIndex = index),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: _PageIndicator(
                currentIndex: _currentIndex,
                totalNumPages: widget.children.length,
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
    Key? key,
    required this.currentIndex,
    required this.totalNumPages,
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
                      i == currentIndex ? Theme.of(context).accentColor : Theme.of(context).accentColor.withAlpha(128),
                  shape: BoxShape.circle,
                ),
              ),
            )
        ],
      ),
    );
  }
}
