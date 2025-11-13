import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../ads/native_ads_widget.dart';
import '../../../../base_scaffold.dart';
import '../../../../services/ads_helper.dart';

class GaneGaneSikhi extends StatefulWidget {
  const GaneGaneSikhi({super.key});

  @override
  State<GaneGaneSikhi> createState() => _GaneGaneSikhiState();
}

class _GaneGaneSikhiState extends State<GaneGaneSikhi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: AdScaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'বর্ণ দিয়ে ছড়া',
            style: TextStyle(
              color: Colors.white,
              fontFamily: StringConstants.samirFont,
            ),
          ),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 0),
            ),
            padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
            labelColor: Colors.deepPurple,
            indicatorColor: Colors.white,
            unselectedLabelColor: const Color(0xffffffff),
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontFamily: StringConstants.samirFont,
            ),
            tabs: const <Widget>[
              Tab(
                text: 'স্বরবর্ণ ছড়া',
              ),
              Tab(
                text: 'ব্যঞ্জনবর্ণ ছড়া',
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 200,
                          child: Image.asset(ImageConstant.ganeganeSorbornoCover),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'অ',
                                style: TextStyle(
                                  color: Color(0xFFFF0000),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'শোক ফুটে ডালে ডালে\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'আ',
                                style: TextStyle(
                                  color: Color(0xFFEB1C1C),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ম গাছে পাতা দোলে।\n\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ই',
                                style: TextStyle(
                                  color: Color(0xFFE61C1C),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'লিশ হলো মাছের রাজা।\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: ' ঈ',
                                style: TextStyle(
                                  color: Color(0xFFEF0D0D),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'দ এসেছে হবে মজা।\n\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'উ',
                                style: TextStyle(
                                  color: Color(0xFFF93636),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ট চলেছে হেলেদুলে\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ঊ',
                                style: TextStyle(
                                  color: Color(0xFFE72B2B),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'র্মি দেখো নদীর কূলে।\n\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ঋ',
                                style: TextStyle(
                                  color: Color(0xFFE01D1D),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'তু আসে ঋতু যায়\nফুল ফলে মন মাতায়।\n\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'এ',
                                style: TextStyle(
                                  color: Color(0xFFEF1E1E),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'কতারাতে সুর উঠেছে।\n ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ঐ',
                                style: TextStyle(
                                  color: Color(0xFFEE1C1C),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'রাবতের দল ছুটেছে।\n\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ও',
                                style: TextStyle(
                                  color: Color(0xFFE31717),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ল খেলে শক্তি বাড়ে।\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ঔ',
                                style: TextStyle(
                                  color: Color(0xFFE92828),
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'ষধ খেলে অসুখ সারে।',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: StringConstants.samirFont,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 200,
                          child: Image.asset(ImageConstant.ganeganeBenjonBornoCover),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "খান আতাউর রহমান",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: StringConstants.samirFont,
                            color: Colors.purple,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'ক',
                                  style: TextStyle(
                                    color: Color(0xFFF31C1C),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ কলা ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'খ',
                                  style: TextStyle(
                                    color: Color(0xFFE91F1F),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ খাই এত \nবেশি খেতে নাই\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'গ',
                                  style: TextStyle(
                                    color: Color(0xFFEE2424),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ গরু ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঘ',
                                  style: TextStyle(
                                    color: Color(0xFFE11515),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ঘাস \nকত ঘাস খেতে চাস\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঙ',
                                  style: TextStyle(
                                    color: Color(0xFFF71A1A),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' বলে কোলা ব্যাঙ \nসারাদিন ঘ্যাঙ ঘ্যাঙ\n\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'চ',
                                  style: TextStyle(
                                    color: Color(0xFFF11A1A),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ চোখ ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ছ',
                                  style: TextStyle(
                                    color: Color(0xFFF92929),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ছল \nচোখ দুটো ছলছল\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'জ',
                                  style: TextStyle(
                                    color: Color(0xFFF51818),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ জল ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঝ',
                                  style: TextStyle(
                                    color: Color(0xFFE42828),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ঝিল\n কত জল ঝিলমিল\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঞ',
                                  style: TextStyle(
                                    color: Color(0xFFF72525),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' বলে মিঞা ভাই \nভয় নাই ভয় নাই\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ট',
                                  style: TextStyle(
                                    color: Color(0xFFF51A1A),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ টুপি ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঠ',
                                  style: TextStyle(
                                    color: Color(0xFFF02929),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ঠিক \nহেরে গেলে ঠিক ঠিক\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ড',
                                  style: TextStyle(
                                    color: Color(0xFFEB2424),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ডাল ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঢ',
                                  style: TextStyle(
                                    color: Color(0xFFE71B1B),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ঢোল ঢাকে ঢোলে শোরগোল\n\nতালু আর জিভে মিলে মূর্ধণ্য ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ণ\n',
                                  style: TextStyle(
                                    color: Color(0xFFF11919),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: '\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ত',
                                  style: TextStyle(
                                    color: Color(0xFFF21E1E),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ তুমি ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'থ',
                                  style: TextStyle(
                                    color: Color(0xFFF82020),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ থামি \nথামব না তুমি আমি\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'দ',
                                  style: TextStyle(
                                    color: Color(0xFFEF1616),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ দাঁত ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ধ',
                                  style: TextStyle(
                                    color: Color(0xFFF61D1D),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' এ ধার \nকার দাঁতে কত ধার\n\nদাঁতে আর জিভে মিলে হলো দন্ত্য ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ন\n',
                                  style: TextStyle(
                                    color: Color(0xFFF10E0E),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: '\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'প',
                                  style: TextStyle(
                                    color: Color(0xFFF11515),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ পাকা ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ফ',
                                  style: TextStyle(
                                    color: Color(0xFFF32222),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ফল \nরাজা গেল রসাতল\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ব',
                                  style: TextStyle(
                                    color: Color(0xFFEC0F0F),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ বোন ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ভ',
                                  style: TextStyle(
                                    color: Color(0xFFFD1111),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ভাই \nকত বোন কত ভাই\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ম',
                                  style: TextStyle(
                                    color: Color(0xFFF51818),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ মাটি ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ম',
                                  style: TextStyle(
                                    color: Color(0xFFF11818),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ মা \nমাটি যেন আমার মা\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'য',
                                  style: TextStyle(
                                    color: Color(0xFFEE1B1B),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ যাবে ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'র',
                                  style: TextStyle(
                                    color: Color(0xFFF31212),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ রথ \nরথ যাবে ছাড় পথ\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ল',
                                  style: TextStyle(
                                    color: Color(0xFFF41515),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ লাল ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ব',
                                  style: TextStyle(
                                    color: Color(0xFFEA1919),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ বাতি \nজ্বলছে রে লাল বাতি\n\nতালব্য ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'শ',
                                  style: TextStyle(
                                    color: Color(0xFFF21515),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' এ বলে \nবেশি বেশি কেন নিলে\n\nতালু আর জিভে মিলে মূর্ধণ্য ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ষ',
                                  style: TextStyle(
                                    color: Color(0xFFF71515),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' \nদাঁতে আর জিভে মিলে হয় দন্ত্য ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'স',
                                  style: TextStyle(
                                    color: Color(0xFFE91818),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: '\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ষ',
                                  style: TextStyle(
                                    color: Color(0xFFEF1717),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ষাঁড় ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'স',
                                  style: TextStyle(
                                    color: Color(0xFFEE2323),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ সাপ \nপালা সাপ ওরে বাপ\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'হ',
                                  style: TextStyle(
                                    color: Color(0xFFEF2222),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ হাতি ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ড়',
                                  style: TextStyle(
                                    color: Color(0xFFEC1717),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ বড় \nহাতি দেখ কত বড়\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঢ',
                                  style: TextStyle(
                                    color: Color(0xFFF71D1D),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ ফোঁটা দিলে ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ঢ়\n',
                                  style: TextStyle(
                                    color: Color(0xFFF00D0D),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' মধু বড় গাঢ়\n\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ৎ',
                                  style: TextStyle(
                                    color: Color(0xFFF51010),
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' এ কুপোকাৎ\n\nফট করে বাজিমাত',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: StringConstants.samirFont,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
