import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/hero_widget.dart';
import 'package:sarang_app/src/common_widget/logo_and_tagline_widget.dart';

class BannerWIdget extends StatelessWidget {
  const BannerWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LogoAndTagLineWidget(),
        HeroWidget(),
      ],
    );
  }
}
