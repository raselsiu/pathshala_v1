import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

class Somarthok extends StatefulWidget {
  const Somarthok({super.key});
  @override
  State<Somarthok> createState() => _SomarthokState();
}

class _SomarthokState extends State<Somarthok> {
  final List<Map<String, String>> listOfColumns = [
    {"word": "ভাই", "opposit": "সহোদর, ভাইয়া, ভাইজান"},
    {"word": "মরণ", "opposit": "মৃত্যু, ইন্তেকাল "},
    {"word": "ভ্রমর", "opposit": "ভোমরা, অলি, মধুকর"},
    {"word": "বন্যা", "opposit": "প্লাবন, বান, জলোচ্ছ্বাস"},
    {"word": "বৃক্ষ", "opposit": "গাছ, তরু, বিটপী, উদ্ভিদ"},
    {"word": "নারী", "opposit": "রমণী, মহিলা, অবলা, স্ত্রীলোক"},
    {"word": "নদী ", "opposit": "তরঙ্গিনী, প্রবাহিনী, শৈবালিনী"},
    {"word": "পণ্ডিত  ", "opposit": "বিদ্বান, জ্ঞানী, বিজ্ঞ, অভিজ্ঞ "},
    {"word": "ফুল ", "opposit": "পুষ্প, কুসুম, প্রসূন, রঙ্গন"},
    {"word": "বায়ু ", "opposit": "বাতাস, অনিল, পবন, হাওয়া"},
    {"word": "হৃদয় ", "opposit": "মন, হৃদয়, অন্তর ,দিল "},
    {"word": "রাত  ", "opposit": "রাত্রি, রজনী, নিশি, যামিনী,"},
    {"word": "দিন  ", "opposit": "দিবস, দিবা, রোজ, বার"},
    {"word": "সকাল  ", "opposit": "ভোর, প্রত্যুষ, প্রভাত, ভোরবেলা "},
    {"word": "আলো  ", "opposit": "কিরণ, আলোক, প্রভা, জ্যোতি "},
    {"word": "চুল  ", "opposit": "কুন্তল, চিকুর, কবরী, কেশ"},
    {"word": "পর্বত  ", "opposit": "পাহাড়, শৈল, গিরি"},
    {"word": "অতিথি  ", "opposit": "মেহমান,কুটুম"},
    {"word": "বিদ্যুৎ  ", "opposit": " তড়িৎ, বিজলি"},
    {"word": "বস্ত্র  ", "opposit": " বসন, পরিধেয়, পোশাক"},
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
          const SizedBox(height: 25),
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
                        borderRadius: BorderRadius.circular(25),
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
