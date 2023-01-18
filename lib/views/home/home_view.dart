import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:today_quiz/views/home/home.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"),),
      body: Obx(() => Center(
        child: Get.find<HomeController>().isLoading ? const CircularProgressIndicator() : Column(
          children: [
            const SizedBox(height: 30,),
            const Text("Welcome,"),
            Obx(() => Text("Title: ${Get.find<HomeController>().title}"),),
          ],
        ),
      )),
    );
  }
}
