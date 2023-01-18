import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'app_binding.dart';
import 'views/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      home: MaterialApp(
        title: 'LaraSchool',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginView(),
        builder: EasyLoading.init(),
      ),
    );
  }
}


