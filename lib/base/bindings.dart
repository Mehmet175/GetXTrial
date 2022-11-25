import 'package:get/get.dart';
import 'package:untitled/translations.dart';
import 'package:untitled/view_model/first_view_model.dart';
import 'package:untitled/view_model/second_view_model.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstViewModel>(() => FirstViewModel());
    Get.lazyPut<SecondViewModel>(() => SecondViewModel());
    Get.lazyPut<TranslationViewModel>(() => TranslationViewModel());
  }

}