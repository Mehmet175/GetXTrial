import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/base/base_view.dart';
import 'package:untitled/base/bindings.dart';
import 'package:untitled/view/second_page.dart';
import 'package:untitled/view_model/first_view_model.dart';

class FirstPage extends BaseView<FirstViewModel> {
  const FirstPage({super.key});

  @override
  String get pageTitle => "First Page";

  @override
  Widget bBuild() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(controller.counter.toString()),
        TextButton(onPressed: _onPress, child: const Text("Second Page"))
      ],
    );
  }

  void _onPress() => Get.to(() => const SecondPage(), binding: BaseBindings());
}
