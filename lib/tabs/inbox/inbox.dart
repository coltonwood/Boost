import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'INBOX',
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
