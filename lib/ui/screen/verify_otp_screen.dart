import 'package:ecommerc_app/ui/utils/app_colors.dart';
import 'package:ecommerc_app/ui/widget/app_elevated_button.dart';
import 'package:ecommerc_app/ui/widget/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 46,
                ),
                const LogoWidget(),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Enter OTP Code',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'A 4 digit number sent to your email',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.seconderyColor,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldWidth: 50,
                    fieldHeight: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: AppColors.primaryColor,
                  ),
                  animationDuration: const Duration(microseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (value) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevatedButton(
                  text: 'Continue',
                  onTap: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                    text: 'This code will expire in ',
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: '120s',
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ],
                    
                  ),
                   
                ),
                const SizedBox(height: 16,),
                TextButton(onPressed: (){}, child: const Text('Resend'),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
