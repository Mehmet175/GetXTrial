import 'package:get/get.dart';

class BaseViewModel extends GetxController{
  final _state = StateEnum.loading.obs;
  StateEnum get state => _state.value;
  set state(StateEnum value) {
    _state.value = value;
  }

  String? errorMessage;

  void setStateLoading() => state = StateEnum.loading;
  void setStateOk() => state = StateEnum.ok;
  void setStateError(String message) {
    errorMessage = message;
    state = StateEnum.error;
  }

}

enum StateEnum {
  loading, ok, error
}