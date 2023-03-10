import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manager.dart';

class PeopleLoveCardWidget extends StatelessWidget {
  const PeopleLoveCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: Container(
        margin: const EdgeInsets.only(bottom: AppMargin.m18),
        decoration: BoxDecoration(
          color: ColorManager.secondary,
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(AppPadding.p10),
          leading: Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  '${AssetImageIconManager.assetPath}/people_love3_image.png',
                ),
              ),
              shape: BoxShape.circle,
            ),
          ),
          title: Text(
            'Ismirada',
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f20,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          subtitle: Text(
            '24, Doctor',
            style: getGrey60TextStyle(),
          ),
        ),
      ),
    );
  }
}
