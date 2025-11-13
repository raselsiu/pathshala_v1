import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/poem.dart';
import 'package:sunamonir_pathshala/utils/text_string/poem.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../ads/native_ads_widget.dart';
import '../../../../services/ads_helper.dart';

class ChoroiPakhirGan extends StatefulWidget {
  const ChoroiPakhirGan({super.key});

  @override
  State<ChoroiPakhirGan> createState() => _ChoroiPakhirGanState();
}

class _ChoroiPakhirGanState extends State<ChoroiPakhirGan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff015e08),
        title: const Text(
          PoemConstant.choroiPakhiTitle,
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
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(PoemImage.choroiPakhi),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    child: Text(
                      PoemConstant.choroiPakhiTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.samirFont,
                        fontSize: 24,
                        color: Color(0xff015e08),
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      PoemConstant.choroiPakhiSubTitle,
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
                      color: const Color(0xff015e08),
                    ),
                  ),
                  const Text(
                    PoemConstant.choroiPakhiDesc,
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
