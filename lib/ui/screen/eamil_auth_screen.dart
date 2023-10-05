import 'package:ecommerc_app/ui/screen/verify_otp_screen.dart';
import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:ecommerc_app/ui/widget/app_elevated_button.dart';
import 'package:ecommerc_app/ui/widget/app_textfield_widget.dart';
import 'package:ecommerc_app/ui/widget/logo_widget.dart';
import 'package:flutter/material.dart';

class EmialAuthScreen extends StatefulWidget {
  const EmialAuthScreen({super.key});

  @override
  State<EmialAuthScreen> createState() => _EmialAuthScreenState();
}

class _EmialAuthScreenState extends State<EmialAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 46,
                ),
                const LogoWidget(),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Please enter your email address',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.seconderyColor,
                      letterSpacing: 0.5),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFiledWidget(
                  controller: TextEditingController(),
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevatedButton(
                  text: 'Continue',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyOtpScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
