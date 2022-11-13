import 'package:flutter/material.dart';

/// Displays a list of chips, one of which is selected
class SegmentedChips extends StatefulWidget {
  final List<String> labels;
  final int initiallySelectedIndex;
  final void Function(int) onSelected;

  const SegmentedChips({
    Key? key,
    required this.labels,
    this.initiallySelectedIndex = 0,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<SegmentedChips> createState() => _SegmentedChipsState();
}

class _SegmentedChipsState extends State<SegmentedChips> {
  late int _selectedIndex;

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
            if (index != 0) const SizedBox(width: 16),
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
              selectedColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: Theme.of(context).disabledColor,
              checkmarkColor: Theme.of(context).scaffoldBackgroundColor,
            ),
          ],
        ),
      ).toList(),
    );
  }
}
