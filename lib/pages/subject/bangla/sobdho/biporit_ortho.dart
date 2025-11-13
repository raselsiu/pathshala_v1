import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

class BiporitSobdo extends StatefulWidget {
  const BiporitSobdo({super.key});
  @override
  State<BiporitSobdo> createState() => _BiporitSobdoState();
}

class _BiporitSobdoState extends State<BiporitSobdo> {
  final List<Map<String, String>> listOfColumns = [
    {"word": "বন্ধু", "opposit": "শত্রু"},
    {"word": "আপন", "opposit": "পর"},
    {"word": "ভালো", "opposit": "খারাপ"},
    {"word": "বড়", "opposit": "ছোট"},
    {"word": "আলো", "opposit": "অন্ধকার"},
    {"word": "সত্য", "opposit": "মিথ্যা"},
    {"word": "নতুন", "opposit": "পুরানো"},
    {"word": "উঠা", "opposit": "নামা"},
    {"word": "দিন", "opposit": "রাত"},
    {"word": "আনন্দ", "opposit": "দুঃখ"},
    {"word": "কঠিন", "opposit": "সহজ"},
    {"word": "উচ্চ", "opposit": "নিম্ন"},
    {"word": "আসে", "opposit": "যায়"},
    {"word": "বাঁচা", "opposit": "মরা"},
    {"word": "শান্তি", "opposit": "অশান্তি"},
    {"word": "গরম", "opposit": "ঠান্ডা"},
    {"word": "ভেতর", "opposit": "বাইর"},
    {"word": "পছন্দ", "opposit": "অপছন্দ"},
    {"word": "সোজা", "opposit": "বাকা"},
    {"word": "নম্র", "opposit": "অহংকারী"},
    {"word": "ধনী", "opposit": "গরিব"},
    {"word": "সাহসী", "opposit": "ভীরু"},
    {"word": "পরিষ্কার", "opposit": "নোংরা"},
    {"word": "সকালে", "opposit": "রাতে"},
    {"word": "বাম", "opposit": "ডান"},
    {"word": "আগে", "opposit": "পরে"},
    {"word": "দ্রুত", "opposit": "ধীরে"},
    {"word": "চাপা", "opposit": "খোলা"},
    {"word": "কাজ", "opposit": "বেকার"},
    {"word": "প্রশ্ন", "opposit": "উত্তর"},
    {"word": "কাঁদা", "opposit": "হাসা"},
    {"word": "নতুন", "opposit": "পুরনো"},
    {"word": "খোলা", "opposit": "বন্ধ"},
    {"word": "ভালোবাসা", "opposit": "ঘৃণা"},
    {"word": "লম্বা", "opposit": "খাটো"},
    {"word": "হালকা", "opposit": "ভারী"},
    {"word": "সাদা", "opposit": "কালো"},
    {"word": "পূর্ব", "opposit": "পশ্চিম"},
    {"word": "উত্তর", "opposit": "দক্ষিণ"},
    {"word": "শুরু", "opposit": "শেষ"},
    {"word": "পাঠ", "opposit": "বিরতি"},
    {"word": "সঠিক", "opposit": "ভুল"},
    {"word": "উন্নতি", "opposit": "অবনতি"},
    {"word": "পাকা", "opposit": "কাঁচা"},
    {"word": "সোজাসাপটা", "opposit": "চাতুর্যময়"},
    {"word": "মিষ্টি", "opposit": "তেতো"},
    {"word": "দয়া", "opposit": "নির্দয়তা"},
    {"word": "নরম", "opposit": "কঠিন"},
    {"word": "ভরপুর", "opposit": "খালি"},
    {"word": "সকাল", "opposit": "বিকেল"},
    {"word": "বীর", "opposit": "কাপুরুষ"},
    {"word": "ঘন", "opposit": "পাতলা"},
    {"word": "আনুভুতি", "opposit": "নির্বিকার"},
    {"word": "জ্ঞান", "opposit": "অজ্ঞান"},
    {"word": "নেতৃত্ব", "opposit": "অনুসরণ"},
    {"word": "উন্নত", "opposit": "পিছিয়ে"},
    {"word": "আকর্ষণীয়", "opposit": "নির্বিষ"},
    {"word": "সফর", "opposit": "বসবাস"},
    {"word": "স্বাধীন", "opposit": "পরাধীন"},
    {"word": "জাগরণ", "opposit": "ঘুম"},
    {"word": "বিশ্রান্ত", "opposit": "ক্লান্ত"},
    {"word": "পরিণতি", "opposit": "আরম্ভ"},
    {"word": "বিশ্বাসী", "opposit": "অবিশ্বাসী"},
    {"word": "আশ্চর্য", "opposit": "সাধারণ"},
    {"word": "শৃঙ্খলা", "opposit": "অবিশৃঙ্খলা"},
    {"word": "নিরাপদ", "opposit": "বিপদজনক"},
    {"word": "অগ্রসর", "opposit": "পিছিয়ে"},
    {"word": "পরিচ্ছন্ন", "opposit": "আবর্জনাময়"},
    {"word": "মৃদু", "opposit": "তীব্র"},
    {"word": "প্রাচীন", "opposit": "আধুনিক"},
    {"word": "সহনশীল", "opposit": "অসহিষ্ণু"},
    {"word": "উদ্যমী", "opposit": "আলস্য"},
    {"word": "নতুনত্ব", "opposit": "একঘেয়েমি"},
    {"word": "সামাজিক", "opposit": "একাকী"},
    {"word": "প্রচুর", "opposit": "অল্প"},
    {"word": "চিকন", "opposit": "মোটা"},
    {"word": "আকার", "opposit": "আকারহীন"},
    {"word": "উজ্জ্বলতা", "opposit": "ম্লানতা"},
    {"word": "আশাবাদী", "opposit": "নিরাশাবাদী"},
    {"word": "পুস্তক", "opposit": "শূন্যতা"},
    {"word": "নিবেদন", "opposit": "উপেক্ষা"},
    {"word": "বিচার", "opposit": "অন্যায়"},
    {"word": "উন্নয়ন", "opposit": "পতন"},
    {"word": "বিনয়", "opposit": "গর্ব"},
    {"word": "নিয়ম", "opposit": "অপব্যবহার"},
    {"word": "আগ্রহ", "opposit": "উদাসীনতা"},
    {"word": "বিশ্বস্ত", "opposit": "অবিশ্বস্ত"},
    {"word": "স্বাভাবিক", "opposit": "অস্বাভাবিক"},
    {"word": "উৎসাহ", "opposit": "হতাশা"},
    {"word": "সৃজনশীল", "opposit": "ধ্বংসাত্মক"},
    {"word": "আন্তরিক", "opposit": "কৃত্রিম"},
    {"word": "সুরেলা", "opposit": "বেসুরো"},
    {"word": "সহজাত", "opposit": "অসহজ"},
    {"word": "পূজা", "opposit": "অবমাননা"},
    {"word": "সচল", "opposit": "অচল"},
    {"word": "প্রথম", "opposit": "শেষ"},
    {"word": "সুনাম", "opposit": "কুখ্যাতি"},
    {"word": "বিচারক", "opposit": "অবিচারক"},
    {"word": "বাহ্যিক", "opposit": "আভ্যন্তরীণ"},
    {"word": "ধারণ", "opposit": "ত্যাগ"},
    {"word": "সাক্ষ্য", "opposit": "অস্বীকার"},
    {"word": "অন্তর", "opposit": "বাহির"},
    {"word": "উজ্জীবিত", "opposit": "নিস্তেজ"},
    {"word": "তেজস্ক্রিয়", "opposit": "নিষ্ক্রিয়"},
    {"word": "নিয়ন্ত্রিত", "opposit": "অনিয়ন্ত্রিত"},
    {"word": "সংযুক্ত", "opposit": "বিচ্ছিন্ন"},
  ];

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'সমার্থক শব্দ',
          style: TextStyle(
            fontFamily: StringConstants.samirFont,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 30),
                    child: DataTable(
                      border: TableBorder.all(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      columns: const [
                        DataColumn(
                            label: Text(
                          'শব্দ',
                          style: TextStyle(
                            fontFamily: StringConstants.bnFontFamily,
                            fontSize: 25,
                            color: Colors.teal,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'সমার্থক শব্দ',
                          style: TextStyle(
                            fontFamily: StringConstants.bnFontFamily,
                            fontSize: 25,
                            color: Colors.teal,
                          ),
                        )),
                      ],
                      rows:
                          listOfColumns // Loops through dataColumnText, each iteration assigning the value to element
                              .map(
                                ((element) => DataRow(
                                      cells: <DataCell>[
                                        DataCell(
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              element["word"]!,
                                              style: const TextStyle(
                                                fontFamily: StringConstants.bnFontFamily,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ), //Extracting from Map element the value
                                        DataCell(
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              element["opposit"]!,
                                              style: const TextStyle(
                                                fontFamily: StringConstants.bnFontFamily,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                              .toList(),
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
