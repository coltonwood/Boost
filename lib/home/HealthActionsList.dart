import 'package:flutter/material.dart';
import 'package:flutter_redux_example/store/AppState.dart';

class HealthActionsList extends StatelessWidget {
  final ViewModel model;

  HealthActionsList(this.model);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: model.healthActions.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(model.healthActions[index].name));
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
