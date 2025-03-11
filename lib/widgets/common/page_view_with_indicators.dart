import 'package:flutter/material.dart' hide Page;

/// A pageView with bottom aligned indicators
class PageViewWithIndicators extends StatefulWidget {
  final List<Widget> children;

  PageViewWithIndicators({
    super.key,
    required this.children,
  }) : assert(children.isNotEmpty);

  @override
  State<PageViewWithIndicators> createState() => _PageViewWithIndicatorsState();
}

class _PageViewWithIndicatorsState extends State<PageViewWithIndicators> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: widget.children.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: widget.children,
          onPageChanged: (index) => setState(() => _tabController.animateTo(index)),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: TabPageSelector(
                controller: _tabController,
                color: Theme.of(context).colorScheme.secondary.withAlpha(128),
                selectedColor: Theme.of(context).colorScheme.secondary,
                borderStyle: BorderStyle.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
