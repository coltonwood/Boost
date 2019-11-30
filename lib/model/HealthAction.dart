import 'package:flutter/foundation.dart';

class HealthAction {
  String name;
  String description;
  String longDescription;
  bool completed;

  HealthAction({
    @required this.name,
    @required this.description,
    @required this.longDescription,
    @required this.completed,
  });

  HealthAction copyWith({
    String name,
    String description,
    String longDescription,
    bool completed,
  }) {
    return HealthAction(
      name: name ?? this.name,
      description: description ?? this.description,
      longDescription: longDescription ?? this.longDescription,
      completed: completed ?? this.completed,
    );
  }
}
