import 'package:flutter/material.dart';
import 'package:flutter_redux_example/store/AppState.dart';

class GetHealthActionsButton extends StatelessWidget {
  final ViewModel model;

  GetHealthActionsButton(this.model);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Fetch'),
      onPressed: () => model.onGetHealthActions(),
    );
  }
}
