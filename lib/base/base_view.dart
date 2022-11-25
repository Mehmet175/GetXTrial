import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/base/base_view_model.dart';

abstract class BaseView<T extends BaseViewModel> extends GetView<T> {
  const BaseView({super.key});

  String get pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(pageTitle),
        ),
        body: Obx(() => stateControl()));
  }

  Widget stateControl() {
    switch (controller.state) {
      case StateEnum.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case StateEnum.ok:
        return bBuild();
      case StateEnum.error:
        return Center(
          child: Text(controller.errorMessage ?? " - "),
        );
    }
  }

  Widget bBuild();
}
