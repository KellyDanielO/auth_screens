import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custombtn.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.color),
        centerTitle: true,
        title: const Text(
          "Create Account",
          style: TextStyle(
              color: AppColors.color,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      hintText: 'Name',
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
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: TextField(
                    obscureText: isObsecure,
                    style:
                        const TextStyle(color: AppColors.color, fontSize: 18),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(color: AppColors.color, fontSize: 18),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(
                          isObsecure ? Icons.visibility_off : Icons.visibility,
                          color: AppColors.color,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * .02),
              GestureDetector(
                onTap: () {},
                child: CustomBtn(
                  width: width * .9,
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
