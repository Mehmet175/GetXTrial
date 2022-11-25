import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/base/bindings.dart';
import 'package:untitled/translations.dart';

import '../base/base_view.dart';
import '../view_model/second_view_model.dart';

class SecondPage extends BaseView<SecondViewModel> {
  const SecondPage({super.key});

  @override
  String get pageTitle => "Second Page";

  @override
  Widget bBuild() {
    return Center(
      child: TextButton(onPressed: () => Get.to(() => TranslationsPage(), binding: BaseBindings()),
        child: const Text("ÇEviri Sayfası"),
      ),
    );
  }
}
