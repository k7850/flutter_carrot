import 'package:carrot/size.dart';
import 'package:flutter/material.dart';

import '../user_repository.dart';
import '../validator_util.dart';
import 'custom_text_form_field.dart';

class CustomLoginForm extends StatelessWidget {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();
  // final만 써도 final var과 같음 // Stateless의 필드는 대부분 final

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
          Align(alignment: Alignment(1, 1), child: Text("Forgot Password?", style: Theme.of(context).textTheme.labelLarge)),
          SizedBox(height: size_25_gap),
          TextButton(
            // form 안에 들어가면 summit 버튼임
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // formKey가 연결되지 않으면 currentState가 null이다.
                // validator가 null을 return하면 true가 됨.
                UserRepository repo = UserRepository();
                repo.login(_email.text.trim(), _password.text.trim());
                Navigator.pushNamed(context, ""); // 푸쉬네임하면 화면 두장이 겹침
              }
            },
            child: Text("Log in", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
