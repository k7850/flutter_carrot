import 'package:carrot/size.dart';
import 'package:flutter/material.dart';

import '../user_repository.dart';
import '../validator_util.dart';
import 'custom_text_form_field.dart';

class CustomJoinForm extends StatelessWidget {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();
  // final만 써도 final var과 같음 // Stateless의 필드는 대부분 final

  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            title: "Username",
            validate: validateUsername(),
            textController: _username,
          ),
          CustomTextFormField(
            title: "Email",
            validate: validateEmail(),
            textController: _email,
          ),
          CustomTextFormField(
            title: "Password",
            isPassword: true,
            validate: validatePassword(),
            textController: _password,
          ),
          buildRichText(context),
          SizedBox(height: size_25_gap),
          TextButton(
            // form 안에 들어가면 summit 버튼임
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // formKey가 연결되지 않으면 currentState가 null이다.
                // validator가 null을 return하면 true가 됨.
                UserRepository repo = UserRepository();
                repo.join(_email.text.trim(), _password.text.trim(), _username.text.trim());
                Navigator.pushNamed(context, "/login"); // 푸쉬네임하면 화면 두장이 겹침
              }
            },
            child: Text("Sign Up", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }

  Widget buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "By continuting you agree to our ", style: Theme.of(context).textTheme.bodyMedium),
          TextSpan(text: "Terms of Service ", style: Theme.of(context).textTheme.labelMedium),
          TextSpan(text: "\nand ", style: Theme.of(context).textTheme.bodyMedium),
          TextSpan(text: "Privacy Policy.", style: Theme.of(context).textTheme.labelMedium),
        ],
      ),
    );
  }
}
