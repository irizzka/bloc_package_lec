import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final IconData iconData;
  final Function onTap;

  const CounterButton({
    @required this.iconData,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(iconData),
      onTap: onTap,
    );
  }
}