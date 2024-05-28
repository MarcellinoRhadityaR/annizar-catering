import 'package:flutter/material.dart';

import '../../constants.dart';

import 'components/otp_form.dart';

class OtpScreen extends StatelessWidget {
  final String email;
  static String routeName = "/otp";

  const OtpScreen({super.key, required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "OTP Verification",
                  style: headingStyle,
                ),
                const Text("Segera periksa gmail anda untuk menerima kode OTP"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("This code will expired in "),
                    TweenAnimationBuilder(
                      tween:
                          Tween(begin: 900.0, end: 0.0), // 5 minutes in seconds
                      duration:
                          const Duration(minutes: 15), // Duration of 5 minutes
                      builder: (_, dynamic value, child) {
                        int minutes = (value ~/ 60).toInt();
                        int seconds = (value % 60).toInt();
                        String formattedTime =
                            "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
                        return Text(
                          formattedTime,
                          style: const TextStyle(color: kPrimaryColor),
                        );
                      },
                    ),
                  ],
                ),
                OtpForm(
                  email: email,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // OTP code resend
                  },
                  child: const Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
