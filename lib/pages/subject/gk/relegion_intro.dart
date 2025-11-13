import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/jsondata/data.dart';
import 'package:sunamonir_pathshala/utils/en_to_bn_number.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ReligionIntroduce extends StatelessWidget {
  const ReligionIntroduce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'ধর্মের পরিচয়',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: const Color(0xff243642),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff037a6c),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'ইসলাম ধর্ম',
                  style: TextStyle(
                      color: Colors.white, fontFamily: StringConstants.samirFont, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                itemCount: islamData.length,
                itemBuilder: (context, index) {
                  final item = islamData[index];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color(0x08033f70), // Background color
                          border: Border.all(color: const Color(0xff313131)), // Border color
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xff037a6c),
                            child: Text(
                              convertToBengaliNumber((index + 1).toString()),
                              style: const TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: StringConstants.samirFont,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          title: Text(
                            item['question'].toString(),
                            style: const TextStyle(
                                fontFamily: StringConstants.samirFont,
                                fontSize: 20,
                                color: Color(0xff037a6c),
                                height: 0,
                                letterSpacing: 0),
                          ),
                          subtitle: Text(
                            item['answer'].toString(),
                            style: const TextStyle(
                              fontFamily: StringConstants.samirFont,
                              fontSize: 18,
                              height: 0,
                              letterSpacing: 0,
                              color: Color(0xffb12a7d),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff04518f),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'হিন্দু ধর্ম',
                  style: TextStyle(
                      color: Colors.white, fontFamily: StringConstants.samirFont, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                itemCount: hinduData.length,
                itemBuilder: (context, index) {
                  final item = hinduData[index];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color(0x08033f70), // Background color
                          border: Border.all(color: const Color(0xff313131)), // Border color
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xff04518f),
                            child: Text(
                              convertToBengaliNumber((index + 1).toString()),
                              style: const TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: StringConstants.samirFont,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          title: Text(
                            item['question'].toString(),
                            style: const TextStyle(
                                fontFamily: StringConstants.samirFont,
                                fontSize: 20,
                                color: Color(0xff04518f),
                                height: 0,
                                letterSpacing: 0),
                          ),
                          subtitle: Text(
                            item['answer'].toString(),
                            style: const TextStyle(
                              fontFamily: StringConstants.samirFont,
                              fontSize: 18,
                              height: 0,
                              letterSpacing: 0,
                              color: Color(0xffb12a7d),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff6905a9),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'খ্রিস্টধর্ম',
                  style: TextStyle(
                      color: Colors.white, fontFamily: StringConstants.samirFont, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                itemCount: christanData.length,
                itemBuilder: (context, index) {
                  final item = christanData[index];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color(0x08033f70), // Background color
                          border: Border.all(color: const Color(0xff313131)), // Border color
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xff6905a9),
                            child: Text(
                              convertToBengaliNumber((index + 1).toString()),
                              style: const TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: StringConstants.samirFont,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          title: Text(
                            item['question'].toString(),
                            style: const TextStyle(
                                fontFamily: StringConstants.samirFont,
                                fontSize: 20,
                                color: Color(0xff6905a9),
                                height: 0,
                                letterSpacing: 0),
                          ),
                          subtitle: Text(
                            item['answer'].toString(),
                            style: const TextStyle(
                              fontFamily: StringConstants.samirFont,
                              fontSize: 18,
                              height: 0,
                              letterSpacing: 0,
                              color: Color(0xff1c1c1c),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffbb4589),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'বৌদ্ধধর্ম',
                  style: TextStyle(
                      color: Colors.white, fontFamily: StringConstants.samirFont, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                itemCount: buddhismData.length,
                itemBuilder: (context, index) {
                  final item = buddhismData[index];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color(0x08033f70), // Background color
                          border: Border.all(color: const Color(0xff313131)), // Border color
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xffbb4589),
                            child: Text(
                              convertToBengaliNumber((index + 1).toString()),
                              style: const TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: StringConstants.samirFont,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          title: Text(
                            item['question'].toString(),
                            style: const TextStyle(
                                fontFamily: StringConstants.samirFont,
                                fontSize: 20,
                                color: Color(0xffbb4589),
                                height: 0,
                                letterSpacing: 0),
                          ),
                          subtitle: Text(
                            item['answer'].toString(),
                            style: const TextStyle(
                              fontFamily: StringConstants.samirFont,
                              fontSize: 18,
                              height: 0,
                              letterSpacing: 0,
                              color: Color(0xff1c1c1c),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
