import 'package:flutter/material.dart';
import 'package:flutter_redux_example/store/AppState.dart';

class RemoveHealthActionsButton extends StatelessWidget {
  final ViewModel model;

  RemoveHealthActionsButton(this.model);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Delete all'),
      onPressed: () => model.onRemoveHealthActions(),
    );
  }
}
