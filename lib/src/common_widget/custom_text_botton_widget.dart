import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const CustomTextButtonWidget({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: getBlack60TextStyle().copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
