import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/ads/native_ads_widget.dart';
import 'package:sunamonir_pathshala/services/ads_helper.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/poem.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

class KomolaFuli extends StatefulWidget {
  const KomolaFuli({super.key});

  @override
  State<KomolaFuli> createState() => _KomolaFuliState();
}

class _KomolaFuliState extends State<KomolaFuli> {
  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppConstants.colorCommon,
        title: const Text(
          PoemConstant.komolafuliTitle,
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
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
                    height: 150,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.poemCoverImg),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    child: Text(
                      PoemConstant.komolafuliTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.samirFont,
                        fontSize: 24,
                        color: AppConstants.colorCommon,
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      PoemConstant.komolafuliSubTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.samirFont,
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
                      color: AppConstants.colorCommon,
                    ),
                  ),
                  const Text(
                    PoemConstant.komolafuliDesc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Nikosh',
                      height: 1.5,
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
