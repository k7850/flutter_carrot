import 'package:flutter/material.dart';

class CustomMessage extends StatelessWidget {
  String mainMessage;
  String subMessage;
  CustomMessage({required this.mainMessage, required this.subMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "$mainMessage", style: Theme.of(context).textTheme.labelLarge),
            TextSpan(text: "$subMessage", style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
