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
          'বিভিন্ন কোণ ',
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
                        'সমকোণঃ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                          color: Colors.teal,
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: StringConstants.bnFontFamily),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nসংজ্ঞা :\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30, color: Colors.teal),
                            ),
                            TextSpan(
                              text:
                                  'একটি সরলরেখার উপর খাড়াভাবে অপর একটি সরলরেখা টানা হলে মিলন বিন্দুতে যে কোণ তৈরি হয় তাই সমকোণ। কোণ পরিমাপের একককে ডিগ্রি (০) বলা হয়। সমকোণের মান ৯০ ডিগ্রি ',
                            ),
                            TextSpan(
                              text: '(৯০\u00B0)।',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
                      child: NativeAdWidget(
                          adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Text(
                        'চিত্রে ∠ABC একটি সমকোণ। AD সরলরেখার ওপর BC লম্ব। ফলে দুটি কোণ ∠ABC ও ∠DBC উৎপন্ন হয়। সুতরাং ∠ABC ও ∠DBC উভয়ই সমকোণ।',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: StringConstants.bnFontFamily),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সূক্ষ্মকোণঃ\n ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                      ),
                      child: Image.asset(
                        ImageConstant.sukkhoKun,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nসংজ্ঞা :\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 30)),
                            TextSpan(
                              text: 'এক সমকোণ (৯০',
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ') অপেক্ষা ছোট কোণকে সূক্ষ্মকোণ বলে।।\n\n',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                            TextSpan(
                              text: 'চিত্রে ∠ABC = ৬০',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ', যা এক সমকোণ অপেক্ষা ছোট। সুতরাং: ∠ABC একটি সূক্ষ্মকোণ।\n\n',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'স্থুলকোণঃ\n ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                      ),
                      child: Image.asset(
                        ImageConstant.sthuloKun,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
                      child: NativeAdWidget(
                        adUnitId: AdHelper.nativeAdUnitId,
                        adSize: NativeAdSize.small,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nসংজ্ঞা :\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 30)),
                            TextSpan(
                              text: 'এক সমকোণ (৯০',
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ') অপেক্ষা বড়, কিন্তু দুই সমকোণ (১৮০',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ') অপেক্ষা ছোট কোণকে স্থূলকোণ বলে।\n',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'চিত্রে ∠ABC দুই সমকোণ (১৮০',
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ') অপেক্ষা ছোট, কিন্তু এক সমকোণ (৯০',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ') অপেক্ষা বড়। সুতরাং:- ∠ABC একটি স্থূলকোণ।\n\n',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Text(
                        'সরলকোণঃ ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.bnFontFamily,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                      ),
                      child: Image.asset(
                        ImageConstant.sorolKun,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nসংজ্ঞা :\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 30)),
                            TextSpan(
                              text: 'যে কোণের পরিমাণ ১৮০',
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ' বা দুই সমকোণের সমান তাকে সরলকোণ বলে।\n\n',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                            TextSpan(
                              text:
                                  'চিত্রে ∠ACB কোণের পরিমাণ দুই সমকোণের সমান। সুতরাং ∠ACB একটি সরলকোণ।',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 15.0),
                        child: Text(
                          '\nপ্রবৃদ্ধ কোণঃ',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: StringConstants.bnFontFamily,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                      ),
                      child: Image.asset(
                        ImageConstant.up180Degree,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: StringConstants.bnFontFamily),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nসংজ্ঞা :\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 30)),
                            TextSpan(
                              text: 'দুই সমকোণ (১৮০',
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ') অপেক্ষা বড়, কিন্তু চার সমকোণ (৩৬০',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                            TextSpan(
                              text: '\u00B0',
                              style: TextStyle(fontFamily: StringConstants.enFontFamily),
                            ),
                            TextSpan(
                              text: ') অপেক্ষা ছোট কোণকে প্রবৃত্ত কোণ বলে।\n\n',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                            TextSpan(
                              text:
                                  'চিত্রে ∠AOB একটি প্রবৃদ্ধ কোণ, যা দুই সমকোণ অপেক্ষা বড় কিন্তু চার সমকোণ অপেক্ষা ছোট।\n\n',
                              style: TextStyle(fontFamily: StringConstants.bnFontFamily),
                            ),
                          ],
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
