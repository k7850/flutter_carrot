import 'package:carrot/compnents/custom_login_form.dart';
import 'package:carrot/compnents/custom_message.dart';
import 'package:carrot/compnents/custom_title.dart';
import 'package:flutter/material.dart';

import '../compnents/custom_text_form_field.dart';
import '../compnents/logo.dart';
import '../size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: size_25_gap),
            Logo(size: 50),
            SizedBox(height: size_75_gap),
            CustomTitle(title: "Loging", subTitle: "Enter your emails and password"),
            SizedBox(height: size_25_gap),
            CustomLoginForm(),
            SizedBox(height: size_25_gap),
            InkWell(
              onTap: () => Navigator.pushNamed(context, "/join"),
              child: CustomMessage(mainMessage: "Don't have an account? ", subMessage: "Sign up"),
            )
          ],
        ),
      ),
    );
  }
}
