import 'package:flutter/foundation.dart';
import 'package:flutter_redux_example/model/HealthAction.dart';
import 'package:flutter_redux_example/store/health-actions/actions.dart';
import 'package:redux/redux.dart';

class AppState {
  final List<HealthAction> healthActions;

  AppState({@required this.healthActions});

  AppState.initialState() : healthActions = List.unmodifiable(<HealthAction>[]);
}

class ViewModel {
  final List<HealthAction> healthActions;
  final Function() onGetHealthActions;
  final Function() onRemoveHealthActions;

  ViewModel({
    this.healthActions,
    this.onGetHealthActions,
    this.onRemoveHealthActions,
  });

  factory ViewModel.create(Store<AppState> store) {
    _onGetHealthActions() {
      store.dispatch(GetHealthActions());
    }

    _onRemoveHealthActions() {
      store.dispatch(RemoveHealthActions());
    }

    return ViewModel(
      healthActions: store.state.healthActions,
      onGetHealthActions: _onGetHealthActions,
      onRemoveHealthActions: _onRemoveHealthActions,
    );
  }
}
