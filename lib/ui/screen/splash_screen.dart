import 'package:ecommerc_app/ui/screen/main_bottom_navigation_bar.dart';
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
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const MainBottomNavigationBar()), (route) => false);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const LogoWidget(),
            const Spacer(),
            CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Verson 1.0.0',
              style: TextStyle(color: Colors.grey, letterSpacing: 0.6),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
