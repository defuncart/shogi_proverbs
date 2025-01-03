import 'package:flutter/material.dart';

/// A text button which uses the current theme to style itself
///
/// Text color matches accent
class CustomTextButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const CustomTextButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
