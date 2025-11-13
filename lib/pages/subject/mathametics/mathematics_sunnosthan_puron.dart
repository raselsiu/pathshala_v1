import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/mathematics/practice_question.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MathSunnosthanPuron extends StatefulWidget {
  const MathSunnosthanPuron({super.key});

  @override
  State<MathSunnosthanPuron> createState() => _MathSunnosthanPuronState();
}

class _MathSunnosthanPuronState extends State<MathSunnosthanPuron> {
  List<List<String>> tableData = [
    ["১", "২", "৩", "", "৫", "", "৭", ""],
    ["৯", "", "", "১২", "১৩", "", "১৫", ""],
    ["১৭", "", "", "২০", "", "", "২৩", "২৪"],
    ["", "", "", "২৮", "", "৩০", "", ""],
    ["৩৩", "", "", "৩৬", "", "৩৮", "", "৪০"],
    ["৪১", "", "৪৩", "", "", "", "৪৭", ""],
    ["৪৯", "", "৫১", "", "৫৩", "", "৫৫", "৫৬"],
    ["", "৫৮", "৫৯", "", "৬১", "", "৬৩", ""],
    ["৬৫", "", "", "৬৮", "", "৭০", "", ""],
    ["৭৩", "", "", "৭৬", "", "", "৭৯", "৮০"],
    ["", "", "৮৩", "", "৮৫", "", "৮৭", ""],
    ["৮৯", "", "", "৯২", "", "", "৯৫", "৯৬"],
    ["৯৭", "", "", "১০০", "", "", "", ""],
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'অনুশীলন করি',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right: 30.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 5,
                        color: const Color(0xff262324),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: const Text(
                          'খালি ঘরে সঠিক সংখ্যাটি বসাই',
                          style: TextStyle(
                            fontFamily: StringConstants.samirFont,
                            fontSize: 22,
                            color: Color(0xff18053f),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Table(
                border: TableBorder.all(
                  color: const Color(0xff8e52f5),
                  width: 1,
                  borderRadius: BorderRadius.circular(10),
                ),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: tableData.map((row) {
                  return TableRow(
                    children: row.map((cell) {
                      return TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            cell,
                            style: const TextStyle(
                              fontFamily: StringConstants.bnFontFamily,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right: 30.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        width: 5,
                        color: const Color(0xff262324),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: screenWidth * 0.8,
                        child: const Text(
                          'নিচের প্রশ্নগুলো খাতায় লিখে সমাধান করি',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: StringConstants.samirFont,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const PracticeQuestion(
              questionNo: '১',
              question: '১ থেকে ৫০ পর্যন্ত অঙ্কে লিখি।',
              qColor: Colors.pink,
            ),
            const PracticeQuestion(
              questionNo: '২',
              question: '৫১ থেকে ১০০ পর্যন্ত অঙ্কে লিখি।',
              qColor: Colors.cyan,
            ),
            const PracticeQuestion(
              questionNo: '৩',
              question: '১ থেকে ৫০ পর্যন্ত কথায় লিখি।',
              qColor: Colors.purple,
            ),
            const PracticeQuestion(
              questionNo: '৪',
              question: '৫১ থেকে ১০০ পর্যন্ত কথায় লিখি।',
              qColor: Colors.cyan,
            ),
            const PracticeQuestion(
              questionNo: '৫',
              question: 'কথায় লিখিঃ ৯ , ১২ , ১৪ , ১৯ , ২৫ , ৩০ , ৪৫ , ৫৬ , ৮১',
              qColor: Colors.teal,
            ),
            const PracticeQuestion(
              questionNo: '৬',
              question:
                  'অঙ্কে লিখোঃ    আট, ঊনিশ, ঊনত্রিশ, একচল্লিশ, আটচল্লিশ, বাহাত্তর, ঊনআশি, পঁচাশি, বিরানব্বই, নিরানব্বই ',
              qColor: Colors.deepPurpleAccent,
            ),
            const PracticeQuestion(
              questionNo: '৭',
              question: '২ থেকে ১০০ পর্যন্ত জোড় সংখ্যা লিখো।',
              qColor: Colors.pinkAccent,
            ),
            const PracticeQuestion(
              questionNo: '৮',
              question: '১ থেকে ৯৯ পর্যন্ত বিজোড় সংখ্যা লিখো।',
              qColor: Colors.blue,
            ),
            const PracticeQuestion(
              questionNo: '৯',
              question: 'বড় থেকে ছোট সাজাওঃ ১৬, ১৭, ২৫, ২৮, ৩৫, ৪৫, ৫৬, ৬৯',
              qColor: Colors.brown,
            ),
            const PracticeQuestion(
              questionNo: '১০',
              question: 'ছোট থেকে বড় সাজাওঃ  ৮৫, ৭৬, ৬৬, ৬৪, ৫৩, ৪৯, ৪২, ১৫',
              qColor: Colors.orange,
            ),
            const PracticeQuestion(
              questionNo: '১১',
              question: 'ইংরেজিতে 1 থেকে 100 পর্যন্ত সংখ্যাগুলো লেখো।',
              qColor: Colors.teal,
            ),
            const PracticeQuestion(
              questionNo: '১২',
              question: 'ইংরেজিতে 1 থেকে 50 পর্যন্ত বানান করে লেখো৷',
              qColor: Colors.blue,
            ),
            const PracticeQuestion(
              questionNo: '১৩',
              question: 'স্থানীয় মান কয়টি ও কী কী?',
              qColor: Colors.purple,
            ),
            const PracticeQuestion(
              questionNo: '১৪',
              question: 'এক হাজার লিখতে কয়টি ০ প্রয়োজন?',
              qColor: Colors.teal,
            ),
            const PracticeQuestion(
              questionNo: '১৫',
              question: 'বিশ হাজার লিখতে কয়টি ০ প্রয়োজন?',
              qColor: Colors.blue,
            ),
            const PracticeQuestion(
              questionNo: '১৬',
              question: 'এক লক্ষ লিখতে কয়টি ০ প্রয়োজন?',
              qColor: Colors.pinkAccent,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
