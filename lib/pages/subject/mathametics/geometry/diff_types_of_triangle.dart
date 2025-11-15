import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/ads/native_ads_widget.dart';
import 'package:sunamonir_pathshala/base_scaffold.dart';
import 'package:sunamonir_pathshala/services/ads_helper.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class DiffTypesOfTriangle extends StatelessWidget {
  const DiffTypesOfTriangle({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double divHeight = MediaQuery.of(context).size.height * (screenWidth > 600 ? 0.18 : 0.15);
    return AdScaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff015473),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'বিভিন্ন ধরনের ত্রিভূজ',
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StaggeredGrid.count(
              crossAxisCount: 1,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Equal Triangle Section
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সমবাহু ত্রিভূজ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      child: Image.asset(
                        ImageConstant.equalTriangle,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          text:
                              'সমবাহু ত্রিভুজ হলো এমন একটি ত্রিভুজ যার তিনটি বাহুর দৈর্ঘ্য সমান এবং তিনটি কোণের প্রতিটির পরিমাপ ৬০ ডিগ্রি।',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: StringConstants.bnFontFamily,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
                      child: NativeAdWidget(
                          adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
                    ),
                    // Sonodibahu Section
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সমবাহু ত্রিভূজ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      child: Image.asset(
                        ImageConstant.equalTriangle,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          text:
                              'সমবাহু ত্রিভুজ হলো এমন একটি ত্রিভুজ যার তিনটি বাহুর দৈর্ঘ্য সমান এবং তিনটি কোণের প্রতিটির পরিমাপ ৬০ ডিগ্রি।',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: StringConstants.bnFontFamily,
                          ),
                        ),
                      ),
                    ),
                    // Somokoni Triangle Section
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সমবাহু ত্রিভূজ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      child: Image.asset(
                        ImageConstant.equalTriangle,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          text:
                              'সমবাহু ত্রিভুজ হলো এমন একটি ত্রিভুজ যার তিনটি বাহুর দৈর্ঘ্য সমান এবং তিনটি কোণের প্রতিটির পরিমাপ ৬০ ডিগ্রি।',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: StringConstants.bnFontFamily,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
