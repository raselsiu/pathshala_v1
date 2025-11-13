import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class CountryCapitalCurrency extends StatelessWidget {
  const CountryCapitalCurrency({super.key});

  final String jsonData = '''
[
  { "country": "বাংলাদেশ", "capital": "ঢাকা", "currency": "টাকা" },
  { "country": "ভারত", "capital": "নতুন দিল্লি", "currency": "রুপি" },
  { "country": "চীন", "capital": "বেইজিং", "currency": "ইউয়ান" },
  { "country": "জাপান", "capital": "টোকিও", "currency": "ইয়েন" },
  { "country": "পাকিস্তান", "capital": "ইসলামাবাদ", "currency": "রুপি" },
  { "country": "শ্রীলংকা", "capital": "কলম্বো", "currency": "রুপি" },
  { "country": "ইন্দোনেশিয়া", "capital": "জাকার্তা", "currency": "রুপিয়াহ" },
  { "country": "মালয়েশিয়া", "capital": "কুয়ালালামপুর", "currency": "রিঙ্গিত" },
  { "country": "থাইল্যান্ড", "capital": "ব্যাংকক", "currency": "বাথ" },
  { "country": "দক্ষিণ কোরিয়া", "capital": "সিউল", "currency": "উন" },
  { "country": "উত্তর কোরিয়া", "capital": "পিয়ংইয়ং", "currency": "উন" },
  { "country": "ভিয়েতনাম", "capital": "হ্যানয়", "currency": "ডং" },
  { "country": "ফিলিপাইন", "capital": "ম্যানিলা", "currency": "পেসো" },
  { "country": "সৌদি আরব", "capital": "রিয়াদ", "currency": "রিয়াল" },
  { "country": "ইরান", "capital": "তেহরান", "currency": "রিয়াল" },
  { "country": "ইরাক", "capital": "বাগদাদ", "currency": "দিনার" },
  { "country": "ইসরাইল", "capital": "জেরুজালেম", "currency": "নিউ শেকেল" },
  { "country": "তুরস্ক", "capital": "আঙ্কারা", "currency": "লিরা" },
  { "country": "সিঙ্গাপুর", "capital": "সিঙ্গাপুর", "currency": "সিঙ্গাপুরি ডলার" },
  { "country": "মালদ্বীপ", "capital": "মালে", "currency": "রুফিয়া" },
  { "country": "কাতার", "capital": "দোহা", "currency": "রিয়াল" },
  { "country": "বাহরাইন", "capital": "মানামা", "currency": "দিনার" },
  { "country": "কুয়েত", "capital": "কুয়েত সিটি", "currency": "দিনার" },
  { "country": "ওমান", "capital": "মাসকট", "currency": "রিয়াল" },
  { "country": "সংযুক্ত আরব আমিরাত", "capital": "আবুধাবি", "currency": "দিরহাম" },
  { "country": "ইয়েমেন", "capital": "সানা", "currency": "রিয়াল" },
  { "country": "জর্ডান", "capital": "আম্মান", "currency": "দিনার" },
  { "country": "লেবানন", "capital": "বৈরুত", "currency": "লেবানিজ পাউন্ড" },
  { "country": "সিরিয়া", "capital": "দামেস্ক", "currency": "সিরিয়ান পাউন্ড" },
  { "country": "প্যালেস্টাইন", "capital": "রামাল্লা", "currency": "ইসরায়েলি শেকেল" },
  { "country": "মায়ানমার", "capital": "নেপিদো", "currency": "কিয়াত" },
  { "country": "কাজাখস্তান", "capital": "নুর-সুলতান", "currency": "টেঙ্গে" },
  { "country": "উজবেকিস্তান", "capital": "তাশখন্দ", "currency": "সোম" },
  { "country": "তুর্কমেনিস্তান", "capital": "আশগাবাত", "currency": "মানাত" },
  { "country": "কিরগিজস্তান", "capital": "বিশকেক", "currency": "সোম" },
  { "country": "তাজিকিস্তান", "capital": "দুশানবে", "currency": "সোমনি" },
  { "country": "আফগানিস্তান", "capital": "কাবুল", "currency": "আফগানি" },
  { "country": "মঙ্গোলিয়া", "capital": "উলানবাটোর", "currency": "তুগরিক" },
  { "country": "আর্মেনিয়া", "capital": "ইয়েরেভান", "currency": "দ্রাম" },
  { "country": "আজারবাইজান", "capital": "বাকু", "currency": "মানাত" },
  { "country": "জর্জিয়া", "capital": "তিবিলিসি", "currency": "লারি" },
  { "country": "নেপাল", "capital": "কাঠমাণ্ডু", "currency": "নেপালি রুপি" },
  { "country": "ভুটান", "capital": "থিম্পু", "currency": "গুলট্রাম" },
  { "country": "কম্বোডিয়া", "capital": "ফনম পেন", "currency": "রিয়েল" },
  { "country": "লাওস", "capital": "ভিয়েনতিয়েন", "currency": "কিপ" },
  { "country": "ব্রুনাই", "capital": "বন্দর সেরি বেগাওয়ান", "currency": "ব্রুনেই ডলার" },
  { "country": "তাইওয়ান", "capital": "তাইপেই", "currency": "নিউ তাইওয়ান ডলার" },
  { "country": "সাইপ্রাস", "capital": "নিকোসিয়া", "currency": "ইউরো" },
  { "country": "হংকং", "capital": "হংকং", "currency": "হংকং ডলার" }
]

  ''';

  final String jsonEuropeData = '''
[
  {"country": "হাঙ্গেরি", "capital": "বুদাপেস্ট", "currency": "ফোরিন্ট"},
  {"country": "পোল্যান্ড", "capital": "ওয়ারশ", "currency": "জোলাটি"},
  {"country": "রোমানিয়া", "capital": "বুখারেস্ট", "currency": "লিউ"},
  {"country": "অস্ট্রিয়া", "capital": "ভিয়েনা", "currency": "ইউরো"},
  {"country": "বেলজিয়াম", "capital": "ব্রাসেলস", "currency": "ইউরো"},
  {"country": "চেক প্রজাতন্ত্র", "capital": "প্রাগ", "currency": "চেক কোরুনা"},
  {"country": "ডেনমার্ক", "capital": "কোপেনহেগেন", "currency": "ডেনিশ ক্লোনা"},
  {"country": "ফিনল্যান্ড", "capital": "হেলসিংকি", "currency": "ইউরো"},
  {"country": "জার্মানি", "capital": "বার্লিন", "currency": "ইউরো"},
  {"country": "গ্রিস", "capital": "এথেলস", "currency": "ইউরো"},
  {"country": "আইসল্যান্ড", "capital": "রিকজাভিক", "currency": "ক্রোনা"},
  {"country": "আয়ারল্যান্ড", "capital": "ডাবলিন", "currency": "ইউরো"},
  {"country": "ইতালি", "capital": "রোম", "currency": "ইউরো"},
  {"country": "নেদারল্যান্ডস", "capital": "আমস্টারডাম", "currency": "ইউরো"},
  {"country": "নরওয়ে", "capital": "অসলো", "currency": "নরওয়েজিয়ান ক্রোনা"},
  {"country": "পোর্তুগাল", "capital": "লিসবৰন", "currency": "ইউরো"},
  {"country": "স্পেন", "capital": "মাদ্রিদ", "currency": "ইউরো"},
  {"country": "রাশিয়া", "capital": "মস্কো", "currency": "রুবল"},
  {"country": "সুইডেন", "capital": "স্টকহোম", "currency": "ক্রোনা"},
  {"country": "সুইজারল্যান্ড", "capital": "বার্ন", "currency": "সুইস ফ্রাংক"},
  {"country": "ইউক্রেন", "capital": "কিয়েভ", "currency": "রিভনা"},
  {"country": "যুক্তরাজ্য", "capital": "লন্ডন", "currency": "পাউন্ড স্টার্লিং"}
]

  ''';
  final String jsonAfricaData = '''
[
  {"country": "আলজেরিয়া", "capital": "আলজিয়ার্স", "currency": "দিনার"},
  {"country": "ক্যামেরুন", "capital": "ইয়্যাউডন্ডি", "currency": "সিএফএ ফ্রাঙ্ক"},
  {"country": "কঙ্গো", "capital": "ব্রাজাভিল", "currency": "কঙ্গোলীজ ফ্রাঙ্ক"},
  {"country": "মিশর", "capital": "কায়রো", "currency": "মিশরীয় পাউন্ড"},
  {"country": "ইথিওপিয়া", "capital": "আদ্দিস আবাবা", "currency": "বির"},
  {"country": "ঘানা", "capital": "আক্রা", "currency": "সিডি"},
  {"country": "কেনিয়া", "capital": "নাইরোবি", "currency": "শিলিং"},
  {"country": "লিবিয়া", "capital": "ত্রিপোলি", "currency": "দিনার"},
  {"country": "দক্ষিণ আফ্রিকা", "capital": "কেপটাউন", "currency": "রেন্ড"},
  {"country": "সুদান", "capital": "খার্তুম", "currency": "পাউন্ড"},
  {"country": "জিম্বাবুয়ে", "capital": "হারারে", "currency": "জিম্বাবুয়ান ডলার"},
  {"country": "তিউনিসিয়া", "capital": "তিউনিস", "currency": "দিনার"},
  {"country": "সিয়েরা লিওন", "capital": "ফ্রিটাউন", "currency": "লিওন"},
  {"country": "সেনেগাল", "capital": "ডাকার", "currency": "সিএফএ ফ্রাঁ"},
  {"country": "সোমালিয়া", "capital": "মোগাদিসু", "currency": "শিলিং"},
  {"country": "উগান্ডা", "capital": "কাম্পালা", "currency": "শিলিং"}
]

  ''';
  final String jsonSouthAmericaData = '''
[
  {"country": "যুত্তরাষ্ট্র", "capital": "ওয়াশিংটন ডিসি", "currency": "মার্কিন ডলার"},
  {"country": "কানাডা", "capital": "অটোয়া", "currency": "কানাডিয়ান ডলার"},
  {"country": "মেক্সিকো", "capital": "মেক্সিকো সিটি", "currency": "মেক্সিকান পেসো"},
  {"country": "কোস্টারিকা", "capital": "সানজোসে", "currency": "কোলোন"},
  {"country": "পানামা", "capital": "পানামা সিটি", "currency": "বালবোয়া"},
  {"country": "হন্ডুরাস", "capital": "তেগুচিগালপা", "currency": "লেম্পিরা"},
  {"country": "জ্যামাইকা", "capital": "কিংস্টন", "currency": "জ্যামাইকান ডলার"},
  {"country": "বারবাডোজ", "capital": "ব্রিজটাউন", "currency": "ডলার"},
  {"country": "হাইতি", "capital": "পোর্ট অব প্রিন্স", "currency": "গুর্দে"},
  {"country": "কিউবা", "capital": "হাভানা", "currency": "কিউবান পেসো"}
]
  ''';
  final String jsonEastAmericaData = '''
[
  {"country": "আর্জেন্টিনা", "capital": "বুয়েন্স আয়ার্স", "currency": "পেসো"},
  {"country": "ব্রাজিল", "capital": "ব্রাসিলিয়া", "currency": "রিয়েল"},
  {"country": "ভেনিজুয়েলা", "capital": "কারাকাস", "currency": "বলিভার"},
  {"country": "কলম্বিয়া", "capital": "বোগোটা", "currency": "পেসো"},
  {"country": "উরুগুয়ে", "capital": "মন্টেডিডিও", "currency": "পেসো"},
  {"country": "চিলি", "capital": "সান্টিয়াগো", "currency": "পেসো"},
  {"country": "পেরু", "capital": "লিমা", "currency": "প্যারুভিয়ান সোল"},
  {"country": "প্যারাগুয়ে", "capital": "আসুনসিওন", "currency": "পারাগুয়ান গুয়ারানি"},
  {"country": "বলিভিয়া", "capital": "লাপাজ", "currency": "বলিভিয়ানো"},
  {"country": "ইকুয়েডর", "capital": "কুইটো / কিটো", "currency": "ডলার"}
]
  ''';
  final String jsonOceaniaData = '''
[
  {"country": "অস্ট্রেলিয়া", "capital": "ক্যানবেরা", "currency": "অস্ট্রেলিয়ান ডলার"},
  {"country": "নিউজিল্যান্ড", "capital": "ওয়েলিংটন", "currency": "নিউজিল্যান্ড ডলার"},
  {"country": "ফিজি", "capital": "সুভা", "currency": "ফিজিয়ান ডলার"},
  {"country": "পাপুয়া নিউগিনি", "capital": "পোর্ট মোর্সবি", "currency": "কিনা"},
  {"country": "নাউরু", "capital": "ইয়ারেন", "currency": "ডলার"}
]
  ''';

  @override
  Widget build(BuildContext context) {
    // Decode the JSON data
    List<dynamic> countryData = json.decode(jsonData);
    List<dynamic> countryEuropeData = json.decode(jsonEuropeData);
    List<dynamic> countryAfricaData = json.decode(jsonAfricaData);
    List<dynamic> countrySouthAmericaData = json.decode(jsonSouthAmericaData);
    List<dynamic> countryEastAmericaData = json.decode(jsonEastAmericaData);
    List<dynamic> countryOceaniaData = json.decode(jsonOceaniaData);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'দেশ - রাজধানী - মুদ্রা ',
            style: TextStyle(color: Colors.white, fontFamily: StringConstants.samirFont),
          ),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xffda197a),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'এশিয়া মহাদেশ',
                        style: TextStyle(
                          fontFamily: StringConstants.samirFont,
                          fontSize: 25,
                          letterSpacing: 1,
                          color: Color(0xffd3086e),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: DataTable(
                      columnSpacing: 10,
                      dataTextStyle: const TextStyle(color: Colors.black87),
                      border: TableBorder.all(color: Colors.purple, width: 1),
                      columns: const [
                        DataColumn(
                            label: Text(
                          "দেশ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "রাজধানী",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "মুদ্রা",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                      ],
                      rows: countryData.map((country) {
                        return DataRow(
                          cells: [
                            DataCell(SizedBox(
                              child: Text(
                                country["country"],
                                textAlign: TextAlign.center,
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["capital"],
                                textAlign: TextAlign.center,
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["currency"],
                                textAlign: TextAlign.center,
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xffda197a),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'ইউরোপ মহাদেশ',
                        style: TextStyle(
                          fontFamily: StringConstants.samirFont,
                          fontSize: 25,
                          letterSpacing: 1,
                          color: Color(0xffd3086e),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: DataTable(
                      columnSpacing: 10,
                      dataTextStyle: const TextStyle(color: Colors.black87),
                      border: TableBorder.all(color: Colors.purple, width: 1),
                      columns: const [
                        DataColumn(
                            label: Text(
                          "দেশ",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "রাজধানী",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "মুদ্রা",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                      ],
                      rows: countryEuropeData.map((country) {
                        return DataRow(
                          cells: [
                            DataCell(SizedBox(
                              child: Text(
                                country["country"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["capital"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["currency"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xffda197a),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'আফ্রিকা মহাদেশ',
                        style: TextStyle(
                          fontFamily: StringConstants.samirFont,
                          fontSize: 25,
                          letterSpacing: 1,
                          color: Color(0xffd3086e),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: DataTable(
                      columnSpacing: 10,
                      dataTextStyle: const TextStyle(color: Colors.black87),
                      border: TableBorder.all(color: Colors.purple, width: 1),
                      columns: const [
                        DataColumn(
                            label: Text(
                          "দেশ",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "রাজধানী",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "মুদ্রা",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                      ],
                      rows: countryAfricaData.map((country) {
                        return DataRow(
                          cells: [
                            DataCell(SizedBox(
                              child: Text(
                                country["country"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["capital"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["currency"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xffda197a),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'উত্তর আমেরিকা মহাদেশ',
                        style: TextStyle(
                          fontFamily: StringConstants.samirFont,
                          fontSize: 25,
                          letterSpacing: 1,
                          color: Color(0xffd3086e),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: DataTable(
                      columnSpacing: 10,
                      dataTextStyle: const TextStyle(color: Colors.black87),
                      border: TableBorder.all(color: Colors.purple, width: 1),
                      columns: const [
                        DataColumn(
                            label: Text(
                          "দেশ",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "রাজধানী",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "মুদ্রা",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                      ],
                      rows: countrySouthAmericaData.map((country) {
                        return DataRow(
                          cells: [
                            DataCell(SizedBox(
                              child: Text(
                                country["country"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["capital"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["currency"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xffb12a7d),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'দক্ষিণ আমেরিকা মহাদেশ',
                        style: TextStyle(
                          fontFamily: StringConstants.samirFont,
                          fontSize: 25,
                          letterSpacing: 1,
                          color: Color(0xffb12a7d),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: DataTable(
                      columnSpacing: 10,
                      dataTextStyle: const TextStyle(color: Colors.black87),
                      border: TableBorder.all(color: Colors.purple, width: 1),
                      columns: const [
                        DataColumn(
                            label: Text(
                          "দেশ",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "রাজধানী",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "মুদ্রা",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                      ],
                      rows: countryEastAmericaData.map((country) {
                        return DataRow(
                          cells: [
                            DataCell(SizedBox(
                              child: Text(
                                country["country"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["capital"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["currency"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xffb12a7d),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'ওশেনিয়া',
                        style: TextStyle(
                          fontFamily: StringConstants.samirFont,
                          fontSize: 25,
                          letterSpacing: 1,
                          color: Color(0xffb12a7d),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: DataTable(
                      columnSpacing: 10,
                      dataTextStyle: const TextStyle(color: Colors.black87),
                      border: TableBorder.all(color: Colors.purple, width: 1),
                      columns: const [
                        DataColumn(
                            label: Text(
                          "দেশ",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "রাজধানী",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          "মুদ্রা",
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )),
                      ],
                      rows: countryOceaniaData.map((country) {
                        return DataRow(
                          cells: [
                            DataCell(SizedBox(
                              child: Text(
                                country["country"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["capital"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                            DataCell(SizedBox(
                              child: Text(
                                country["currency"],
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: StringConstants.samirFont,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ));
        }));
  }
}
