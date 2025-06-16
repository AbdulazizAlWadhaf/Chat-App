import 'package:chat_app/widgets/custom_gesture_detector.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  static String id = 'SignupPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.message_rounded, size: 196),
                const SizedBox(height: 64),
                CustomTextField(hintText: 'Email'),
                const SizedBox(height: 16),
                CustomTextField(hintText: 'Password'),
                const SizedBox(height: 32),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 64,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    CustomGestureDetector(
                      text: ' Log in',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
