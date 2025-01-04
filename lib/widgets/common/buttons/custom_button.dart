import 'package:flutter/material.dart';

/// A button which uses the current theme to style itself
///
/// Text color matches scaffold, while button color matches accent
class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
