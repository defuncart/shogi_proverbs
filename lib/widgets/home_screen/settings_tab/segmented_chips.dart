import 'package:flutter/material.dart';

/// Displays a list of chips, one of which is selected
class SegmentedChips extends StatefulWidget {
  final List<String> labels;
  final int initiallySelectedIndex;
  final void Function(int) onSelected;

  SegmentedChips({
    Key key,
    @required this.labels,
    this.initiallySelectedIndex = 0,
    @required this.onSelected,
  })  : assert(labels != null),
        assert(onSelected != null),
        super(key: key);

  @override
  _SegmentedChipsState createState() => _SegmentedChipsState();
}

class _SegmentedChipsState extends State<SegmentedChips> {
  int _selectedIndex;

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.initiallySelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(
        widget.labels.length,
        (index) => Row(
          children: [
            if (index != 0) Container(width: 8),
            FilterChip(
              label: Text(
                widget.labels[index],
                style: TextStyle(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              onSelected: (_) {
                setState(() => _selectedIndex = index);
                widget.onSelected(index);
              },
              selected: index == _selectedIndex,
              selectedColor: Theme.of(context).accentColor,
              backgroundColor: Theme.of(context).disabledColor,
              checkmarkColor: Theme.of(context).scaffoldBackgroundColor,
            ),
          ],
        ),
      ).toList(),
    );
    //       return ChoiceChip(
    //         label: Text('Item $index'),
    //         selected: _selectedIndex == index,
    //         onSelected: (bool selected) {
    //           setState(() {
    //             _selectedIndex = selected ? index : null;
    //           });
    //         },
    //       );
    //     },
    //   ).toList(),
    // );
  }
}
