import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'MORE',
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
