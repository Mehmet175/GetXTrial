import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/translations.dart';
import 'package:untitled/view/first_page.dart';
import 'package:untitled/view_model/first_view_model.dart';
import 'package:untitled/view_model/second_view_model.dart';

Future<void> main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  Get.lazyPut(() => FirstViewModel());
 // Get.lazyPut(() => SecondViewModel());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(),
      locale: const Locale("tr", "TR"),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
