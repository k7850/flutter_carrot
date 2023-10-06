import 'package:carrot/compnents/custom_join_form.dart';
import 'package:carrot/compnents/custom_message.dart';
import 'package:carrot/compnents/custom_title.dart';
import 'package:flutter/material.dart';

import '../compnents/logo.dart';
import '../size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

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
            CustomTitle(title: "Sign Up", subTitle: "Enter your credentials to continue"),
            SizedBox(height: size_25_gap),
            CustomJoinForm(),
            SizedBox(height: size_25_gap),
            InkWell(
                onTap: () => Navigator.pushNamed(context, "/login"),
                child: CustomMessage(mainMessage: "Already have an account? ", subMessage: "Sign up"))
          ],
        ),
      ),
    );
  }
}
