import 'package:flutter_redux_example/model/HealthAction.dart';
import 'package:flutter_redux_example/store/health-actions/actions.dart';

List<HealthAction> healthActionsReducer(
  List<HealthAction> state,
  dynamic action,
) {
  // fetch all health actions
  if (action is GetHealthActions) {
    return new List.generate(
      20,
      (idx) => new HealthAction(
        name: 'Health Action $idx',
        description: 'Complete HA $idx.',
        longDescription: 'Completed HA $idx...or die.',
        completed: false,
      ),
    );
  }

  // clear health actions array
  if (action is RemoveHealthActions) {
    return [];
  }
  return state;
}
