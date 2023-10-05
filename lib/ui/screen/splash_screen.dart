import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:ecommerc_app/ui/widget/logo_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const LogoWidget(),
              const Spacer(),
            CircularProgressIndicator(color: AppColors.primaryColor,),
            const SizedBox(height: 16,),
            const Text('Verson 1.0.0',style: TextStyle(color: Colors.grey,letterSpacing: 0.6),),
             const SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}