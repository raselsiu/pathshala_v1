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
                          height: 2,
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
                    // Ads
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
                      child: NativeAdWidget(
                          adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                            text:
                                '\nসমবাহু ত্রিভুজ হলো এমন একটি ত্রিভুজ যার তিনটি বাহুর দৈর্ঘ্য সমান এবং তিনটি কোণের পরিমাপও সমান।',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: '\n\nবৈশিষ্ট্যঃ\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: '\n১. তিনটি বাহু সমান।'),
                              TextSpan(
                                  text: '\n২. তিনটি কোণ সমান এবং প্রতিটি কোণের মান ৬০ ডিগ্রি।'),
                              TextSpan(text: '\n৩. এটি একটি সূক্ষ্মকোণী ত্রিভুজ।'),
                            ]),
                      ),
                    ),

                    // Somodibahu Section
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সমদ্বিবাহু ত্রিভূজ',
                        style: TextStyle(
                          fontSize: 35,
                          height: 2,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      child: Image.asset(
                        ImageConstant.somodibahu,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                            text: '\nযে ত্রিভুজের দুটি বাহু সমান তাকে সমদ্বিবাহু ত্রিভুজ বলে।',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: '\n\nবৈশিষ্ট্যঃ\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: '\n১. দুটি বাহু সমান।'),
                              TextSpan(text: '\n২. সমান বাহু দুটির বিপরীত কোণ সমান।'),
                              TextSpan(text: '\n৩. অসমান বাহুটিকে ভূমি বলা হয়।।'),
                              TextSpan(
                                  text:
                                      '\n৪. শীর্ষবিন্দু থেকে ভূমির উপর অঙ্কিত লম্ব, ভূমিকে সমদ্বিখণ্ডিত করে।'),
                            ]),
                      ),
                    ),
                    // Somokuni Triangle Section
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সমকেোণী ত্রিভূজ',
                        style: TextStyle(
                          fontSize: 35,
                          height: 2,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      child: Image.asset(
                        ImageConstant.somokuni,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                            text:
                                '\nসমকোণী ত্রিভুজ হলো এমন একটি ত্রিভুজ যার একটি কোণ সমকোণ অর্থাৎ ৯০ ডিগ্রি',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: '\n\nবৈশিষ্ট্যঃ\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: '\n১. একটি কোণ সমকোণ।'),
                              TextSpan(text: '\n২. অপর দুটি কোণ সূক্ষ্মকোণ।'),
                              TextSpan(
                                  text:
                                      '\n৩. সমকোণের বিপরীত বাহুটি সবচেয়ে বড় এবং একে অতিভুজ বলে।'),
                              TextSpan(text: '\n৪. অন্য দুটি বাহুকে লম্ব ও ভূমি বলা হয়।'),
                            ]),
                      ),
                    ),
                    // bisomobahu  Section
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'বিষমবাহু ত্রিভূজ',
                        style: TextStyle(
                          fontSize: 35,
                          height: 2,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      child: Image.asset(
                        ImageConstant.bisomobahu,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                            text:
                                '\nবিষমবাহু ত্রিভুজ হলো এমন একটি ত্রিভুজ যার তিনটি বাহুর দৈর্ঘ্যই পরস্পর অসমান এবং তিনটি কোণই পরস্পর অসমান।',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: '\n\nবৈশিষ্ট্যঃ\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: '\n১. তিনটি বাহুই অসমান।'),
                              TextSpan(text: '\n২. তিনটি কোণই অসমান।'),
                              TextSpan(
                                  text:
                                      '\n৩. এটি সমকোণী, সূক্ষ্মকোণী বা স্থূলকোণী যেকোনো ধরনের হতে পারে — শুধু শর্ত হলো তিন বাহুই অসমান হতে হবে।'),
                            ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
