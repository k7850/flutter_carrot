import 'package:flutter/material.dart';

import '../size.dart';

class CustomTitle extends StatelessWidget {
  String title;
  String subTitle;

  CustomTitle({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$title", style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: size_5_gap),
        Text("$subTitle", style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
