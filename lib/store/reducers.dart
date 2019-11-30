import 'package:flutter_redux_example/store/AppState.dart';
import 'package:flutter_redux_example/store/health-actions/reducers.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    healthActions: healthActionsReducer(state.healthActions, action),
  );
}
