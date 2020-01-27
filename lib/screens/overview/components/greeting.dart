import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  Greeting({Key key, @required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Text(
        'Good morning, $name!',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
