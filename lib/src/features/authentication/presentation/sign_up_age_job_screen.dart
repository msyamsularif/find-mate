import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/banner_widget.dart';
import 'package:sarang_app/src/common_widget/custom_button_widget.dart';
import 'package:sarang_app/src/common_widget/custom_text_field.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:sarang_app/src/theme_manager/values_manager.dart';

class SignUpAgeJob extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';
  const SignUpAgeJob({super.key});

  @override
  State<SignUpAgeJob> createState() => _SignUpAgeJobState();
}

class _SignUpAgeJobState extends State<SignUpAgeJob> {
  final TextEditingController jobController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  void dispose() {
    jobController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p50,
        ),
        child: Column(
          children: [
            const BannerWIdget(),
            CustomTextFieldWidget(
              labelName: 'Occupation',
              hintText: 'Write your occupation',
              controller: jobController,
            ),
            const SizedBox(height: AppSize.s16),
            CustomTextFieldWidget(
              labelName: 'Age',
              hintText: 'Write your age',
              controller: ageController,
            ),
            const SizedBox(height: 117),
            CustomButtonWidget(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  SignUpUploadPhotoScreen.routeName,
                );
              },
              title: 'Continue Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
