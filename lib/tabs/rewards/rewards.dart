import 'package:flutter/material.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'REWARDS',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 30,
            ),
          ),
        )
      ],
    );
  }
}
