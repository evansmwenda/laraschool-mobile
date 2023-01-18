import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _hasError = false.obs;
  bool get hasError => _hasError.value;
  final _errorMessage = "".obs;
  String get errorMessage => _errorMessage.value;
  final _isChecked = false.obs;
  bool get isChecked => _isChecked.value;
  final _obscureText = true.obs;
  bool get obscureText => _obscureText.value;

  void toggleChecked() {
    _isChecked.value = !(_isChecked.value);
  }

  void toggleObscure() {
    _obscureText.value = !(_obscureText.value);
  }
}