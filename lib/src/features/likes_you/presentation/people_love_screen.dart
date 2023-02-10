import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/people_love_card_widget.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manager.dart';

class PeopleLoveScreen extends StatelessWidget {
  static const String routeName = '/people-loved';
  const PeopleLoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'People Your\nLoved',
          textAlign: TextAlign.center,
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSizeManager.f20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: AppSize.s30,
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: AppSize.s50),
        itemCount: 1,
        itemBuilder: (context, index) {
          return const PeopleLoveCardWidget();
        },
      ),
    );
  }
}
