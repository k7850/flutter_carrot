import 'package:carrot/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String title;
  bool isPassword;
  final textController;
  final validate;
  bool isPasswordCheck = true;

  CustomTextFormField({required this.title, required this.validate, this.textController, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$title", style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: 85,
          child: Align(
            alignment: Alignment(0, -1),
            child: TextFormField(
              controller: textController,
              // value가 들어옴
              // value로 유효성 검사하기
              // null 리턴 : 유효성 검사 통과
              // 메세지 리턴 : 유효성 검사 실패
              validator: validate,
              obscureText: isPassword, // 패스워드 가리기 true일때
              decoration: InputDecoration(
                hintText: " Enter $title",
                suffixIcon: !isPassword
                    ? Icon(Icons.check, color: Colors.green)
                    : isPasswordCheck
                        ? Icon(Icons.visibility_off, color: Colors.grey)
                        : Icon(Icons.visibility, color: Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }
}
