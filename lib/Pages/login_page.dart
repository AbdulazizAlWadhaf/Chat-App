import 'package:chat_app/widgets/custom_gesture_detector.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.message, size: 196, color: Colors.grey),
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
                      'Log in',
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
                    'Don\'t have an account? ',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  CustomGestureDetector(text: ' Log in'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
