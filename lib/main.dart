import 'package:ecommerc_app/ui/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafty Bay',
      theme: ThemeData(
        useMaterial3: true,
      ),
     home: const SplashScreen(),
    );
  }
}
