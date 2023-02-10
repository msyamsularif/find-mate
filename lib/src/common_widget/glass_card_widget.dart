import 'package:flutter/material.dart';

import '../theme_manager/asset_image_icon_manager.dart';
import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manager.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.symmetric(
        vertical: AppMargin.m26,
        horizontal: AppMargin.m30,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p14,
        horizontal: AppPadding.p24,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(
          33,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sabrina Anho',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f20,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              Text(
                '22, Traveler',
                style: getWhiteTextStyle(fontSize: FontSizeManager.f14),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  '${AssetImageIconManager.assetPath}/icon_profile.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
