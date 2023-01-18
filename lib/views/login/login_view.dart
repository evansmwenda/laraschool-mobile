import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today_quiz/views/login/login.dart';

import '../../widgets/common_widget.dart';
import '../home/home.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 200,),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20),
              //   child: Center(
              //     child: Image.asset(
              //       "assets/images/logo.png",
              //       height: 192,
              //       width: 295,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 15),
              const Text(
                "Log In",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  // color: Color(0xFF957FC3),
                ),
              ),
              SizedBox(height: 15),

              MyTextField(
                controller: Get.find<LoginController>().emailController,
                labelText: "Email",
                hintText: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              Obx(
                    () => MyPasswordTextField(
                  controller: Get.find<LoginController>().passController,
                  labelText: "Password",
                  hintText: "Password",
                  obscureText: Get.find<LoginController>().obscureText,
                  onToggled: () => Get.find<LoginController>().toggleObscure(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: Checkbox(
                          checkColor: Colors.white,
                          // fillColor:
                          // MaterialStateProperty.all(Color(0xFF957FC3)),
                          value: Get.find<LoginController>().isChecked,
                          shape: const CircleBorder(),
                          onChanged: (bool? value) {
                            Get.find<LoginController>().toggleChecked();
                          },
                        ),
                      )),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: MyButton(
                  title: "Login",
                  color: Colors.blue,
                  onPressed: (){
                    Get.to(() => HomeView());
                  },
                  // color: Color(0xFF583D88),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      // color: Colors.green,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF2567D9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
