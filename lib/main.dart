import 'package:auth_screens/constants/colors.dart';
import 'package:auth_screens/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Auth Screens',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: const AppBarTheme(
          color: AppColors.backgroundColor,
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
