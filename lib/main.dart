import 'package:ecommerc_app/ui/screen/eamil_auth_screen.dart';
import 'package:ecommerc_app/ui/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafty Bay',
      theme: ThemeData(
        useMaterial3: true,
      ),
     home: const EmialAuthScreen(),
    );
  }
}
