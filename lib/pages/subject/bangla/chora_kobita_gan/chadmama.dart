import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../ads/native_ads_widget.dart';
import '../../../../base_scaffold.dart';
import '../../../../services/ads_helper.dart';

class ChadMama extends StatefulWidget {
  const ChadMama({super.key});

  @override
  State<ChadMama> createState() => _ChadMamaState();
}

class _ChadMamaState extends State<ChadMama> {
  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xffcc5e4e),
        title: const Text(
          StringConstants.chadMamaTitle,
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
                        image: AssetImage(ImageConstant.chadMamaCover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.chadMamaTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.skBishal,
                        fontSize: 24,
                        color: Color(0xffcc5e4e),
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.chadMamaSubTitle,
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
                      color: const Color(0xffcc5e4e),
                    ),
                  ),
                  const Text(
                    StringConstants.chadMamaDesc,
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
