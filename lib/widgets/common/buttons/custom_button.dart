import 'package:flutter/material.dart';

/// A button which uses the current theme to style itself
///
/// Text color matches scaffold, while button color matches accent
class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const CustomButton({
    Key key,
    @required this.label,
    @required this.onPressed,
  })  : assert(label != null),
        assert(onPressed != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
