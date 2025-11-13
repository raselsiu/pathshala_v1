import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../ads/native_ads_widget.dart';
import '../../../../base_scaffold.dart';
import '../../../../services/ads_helper.dart';

class AtaGacherTutaPakhi extends StatefulWidget {
  const AtaGacherTutaPakhi({super.key});

  @override
  State<AtaGacherTutaPakhi> createState() => _AtaGacherTutaPakhiState();
}

class _AtaGacherTutaPakhiState extends State<AtaGacherTutaPakhi> {
  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppConstants.tutaPakhiColor,
        title: const Text(
          StringConstants.tutaPakhiTitle,
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.skBishal),
        ),
      ),
      body: Column(
        children: [
          NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.tutaPakhiCover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.tutaPakhiTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.skBishal,
                        fontSize: 24,
                        color: AppConstants.tutaPakhiColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.tutaPakhiSubTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.skBishal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppConstants.tutaPakhiColor,
                    ),
                  ),
                  const Text(
                    StringConstants.tutaPakhiDesc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Nikosh',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
