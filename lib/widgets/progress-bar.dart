import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar({@required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(10),
        ),
        height: 20,
        alignment: Alignment.centerLeft,
        child: FractionallySizedBox(
          widthFactor: (percentage / 100) > 1 ? 1 : percentage / 100,
          heightFactor: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
