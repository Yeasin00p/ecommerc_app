import 'package:ecommerc_app/ui/widget/app_elevated_button.dart';
import 'package:ecommerc_app/ui/widget/app_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                const SizedBox(height: 46,),
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 120,
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(height: 16,),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
                const SizedBox(height: 8,),
                const Text(
                  'Please enter your email address',
                  style: TextStyle(
                      fontSize: 16, color: Color(0xFFa6a6a6), letterSpacing: 0.5),
                ),
                const SizedBox(height: 16,),
                AppTextFiledWidget(
                  controller: TextEditingController(),
                  hintText: 'Email',
                ),
                const SizedBox(height: 16,),
                AppElevatedButton(text: 'Continue', onTap: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
