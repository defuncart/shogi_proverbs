import 'package:flutter/material.dart';

/// A text button which uses the current theme to style itself
///
/// Text color matches accent
class CustomTextButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const CustomTextButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.secondary,
      ),
      child: Text(label),
      onPressed: onPressed,
    );
  }
}
