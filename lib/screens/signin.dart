import 'package:auth_screens/constants/colors.dart';
import 'package:auth_screens/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custombtn.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObsecure = true;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(
                      color: AppColors.color,
                      fontSize: 32,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: height * .05),
                Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(85, 158, 158, 158),
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: TextField(
                      style: TextStyle(color: AppColors.color, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Email or username',
                        hintStyle:
                            TextStyle(color: AppColors.color, fontSize: 18),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * .02),
                Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(85, 158, 158, 158),
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: TextField(
                      obscureText: isObsecure,
                      style:
                          const TextStyle(color: AppColors.color, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            color: AppColors.color, fontSize: 18),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon: Icon(
                            isObsecure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * .01),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: checked,
                            onChanged: (value) =>
                                setState(() => checked = !checked),
                          ),
                          const Text(
                            "Remember me",
                            style:
                                TextStyle(color: AppColors.color, fontSize: 16),
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgotten password?",
                          style:
                              TextStyle(color: AppColors.color, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * .01),
                GestureDetector(
                  onTap: () {},
                  child: CustomBtn(
                    width: width * .9,
                    text: 'Sign In',
                    btnColor: AppColors.primaryColor,
                    btnTextColor: Colors.black,
                  ),
                ),
                SizedBox(height: height * .02),
                GestureDetector(
                  onTap: () => Get.to(() => const SignUpScreen()),
                  child: CustomBtn(
                    width: width * .9,
                    text: 'Create Account',
                    btnColor: AppColors.color,
                    btnTextColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
