import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/ads/native_ads_widget.dart';
import 'package:sunamonir_pathshala/base_scaffold.dart';
import 'package:sunamonir_pathshala/services/ads_helper.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class DiffAngleAndMeasure extends StatelessWidget {
  const DiffAngleAndMeasure({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double divHeight = MediaQuery.of(context).size.height * (screenWidth > 600 ? 0.18 : 0.15);
    return AdScaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff015473),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'বিন্দু, রেখা, কোণ ',
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
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সমকোণঃ ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                      ),
                      child: Image.asset(
                        ImageConstant.rightAngle,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          text: 'চিত্রে দেখানো A ও B 	ফোঁটা দুটিই এক একটি বিন্দু।',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\n\nসংজ্ঞা :\n\n',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    'যার দৈর্ঘ্য , প্রস্থ ও উচ্চতা নেই, শুধু অবস্থান আছে তাকে বিন্দু বলে।'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
                      child: NativeAdWidget(
                          adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
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
