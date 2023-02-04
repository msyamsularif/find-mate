import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manager.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelName;
  final String hintText;
  final bool isObsecure;
  final TextEditingController controller;

  const CustomTextFieldWidget({
    Key? key,
    required this.labelName,
    required this.hintText,
    this.isObsecure = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),
        const SizedBox(height: AppSize.s8),
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: getWhiteTextStyle(),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: getBlack30TextStyle(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p30,
              vertical: AppPadding.p15,
            ),
            filled: true,
            fillColor: ColorManager.secondary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s50),
            ),
          ),
        ),
      ],
    );
  }
}
