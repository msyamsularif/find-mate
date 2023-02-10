import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/banner_widget.dart';
import 'package:sarang_app/src/common_widget/custom_button_widget.dart';
import 'package:sarang_app/src/common_widget/custom_text_botton_widget.dart';
import 'package:sarang_app/src/common_widget/custom_text_field.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_age_job_screen.dart';
import 'package:sarang_app/src/theme_manager/values_manager.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: Column(
          children: [
            const BannerWIdget(),
            CustomTextFieldWidget(
              labelName: 'Complete Name',
              hintText: 'Write your name',
              controller: nameController,
            ),
            const SizedBox(height: AppSize.s14),
            CustomTextFieldWidget(
              labelName: 'Email Address',
              hintText: 'Write your mail address',
              controller: emailController,
            ),
            const SizedBox(height: AppSize.s14),
            CustomTextFieldWidget(
              labelName: 'Password',
              hintText: 'Write your security',
              controller: passwordController,
              isObsecure: true,
            ),
            const SizedBox(height: AppSize.s16),
            CustomButtonWidget(
              onTap: () {
                Navigator.pushNamed(context, SignUpAgeJob.routeName);
              },
              title: 'Get Started',
            ),
            const SizedBox(height: AppSize.s20),
            CustomTextButtonWidget(
              onTap: () {},
              title: 'Sign In to My Account',
            )
          ],
        ),
      ),
    );
  }
}
