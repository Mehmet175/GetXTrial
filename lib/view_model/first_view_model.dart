import 'package:get/get.dart';
import 'package:untitled/base/base_view_model.dart';

class FirstViewModel extends BaseViewModel {

  @override
  void onInit() {
    asyncExampleInit();
    super.onInit();
  }


  Future<void> asyncExampleInit() async {
    setStateLoading();
    await Future.delayed(const Duration(seconds: 2));
    setStateError("Deneme mesajı");
    await Future.delayed(const Duration(seconds: 2));
    setStateOk();
    for(int i = 0; i < 10; i++) {
      counter += 1;
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  final _counter = 0.obs;
  int get counter => _counter.value;
  set counter(int value) {
    _counter.value = value;
  }

}