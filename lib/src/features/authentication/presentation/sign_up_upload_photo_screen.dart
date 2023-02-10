import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/custom_button_widget.dart';
import 'package:sarang_app/src/common_widget/custom_text_botton_widget.dart';
import 'package:sarang_app/src/common_widget/logo_and_tagline_widget.dart';
import 'package:sarang_app/src/common_widget/upload_photo_widget.dart';
import 'package:sarang_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manager.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
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
            const LogoAndTagLineWidget(),
            const SizedBox(height: AppSize.s50),
            const UploadPhotoWidget(),
            const SizedBox(height: 53.0),
            Text(
              'Andi Mania',
              style: getWhiteTextStyle(
                fontSize: FontSizeManager.f22,
                fontWeight: FontWeightManager.semiBold,
              ),
            ),
            const SizedBox(height: AppSize.s4),
            Text(
              '22, Lawyer',
              style: getBlack60TextStyle(),
            ),
            const SizedBox(height: 240),
            CustomButtonWidget(
              onTap: () {},
              title: 'Update My Profile',
            ),
            const SizedBox(height: AppSize.s20),
            CustomTextButtonWidget(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  ExplorePeopleScreen.routeName,
                );
              },
              title: 'Skip for Now',
            ),
          ],
        ),
      ),
    );
  }
}
