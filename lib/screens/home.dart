import 'package:auth_screens/constants/colors.dart';
import 'package:auth_screens/screens/signin.dart';
import 'package:auth_screens/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custombtn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                    color: AppColors.color,
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: height * .1),
              GestureDetector(
                onTap: () => Get.to(() => const SignInScreen()),
                child: CustomBtn(
                  width: width * .8,
                  text: 'Sign In',
                  btnColor: AppColors.color,
                  btnTextColor: Colors.black,
                ),
              ),
              SizedBox(height: height * .02),
              GestureDetector(
                onTap: () => Get.to(() => const SignUpScreen()),
                child: CustomBtn(
                  width: width * .8,
                  text: 'Create Account',
                  btnColor: AppColors.primaryColor,
                  btnTextColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
