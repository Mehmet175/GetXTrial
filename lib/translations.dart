import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled/base/base_view.dart';
import 'package:untitled/base/base_view_model.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello World',
      'title' : 'en_US Title'
    },
    'de_DE': {
      'hello': 'Hallo Welt',
      'title' : 'de_DE Title'
    },
    'tr_TR' : {
      'hello' : 'Merhaba Dünya',
      'title' : 'tr_TR Title'
    }
  };
}

class TranslationsPage extends BaseView<TranslationViewModel> {
  @override
  Widget bBuild() {
    return Container();
  }

  @override
  String get pageTitle => "title".tr;

}

class TranslationViewModel extends BaseViewModel{
  @override
  void onInit() {
    setStateOk();
    super.onInit();
  }
}