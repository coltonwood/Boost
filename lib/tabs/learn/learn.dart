import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'LEARN',
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
