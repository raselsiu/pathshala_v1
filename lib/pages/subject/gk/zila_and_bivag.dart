import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/jsondata/data.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class zilaAndBivag extends StatelessWidget {
  zilaAndBivag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'জেলা ও বিভাগ পরিচিতি',
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
                  'ঢাকা বিভাগ',
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
                itemCount: dhakaZilaData.length,
                itemBuilder: (context, index) {
                  final item = dhakaZilaData[index];
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
                              item['id'].toString(),
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
                  'চট্টগ্রাম বিভাগ',
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
                itemCount: chittagongData.length,
                itemBuilder: (context, index) {
                  final item = chittagongData[index];
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
                              item['id'].toString(),
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
                  'রাজশাহী বিভাগ',
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
                itemCount: rajshahiData.length,
                itemBuilder: (context, index) {
                  final item = rajshahiData[index];
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
                              item['id'].toString(),
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
                  'খুলনা বিভাগ',
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
                itemCount: khulnaData.length,
                itemBuilder: (context, index) {
                  final item = khulnaData[index];
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
                              item['id'].toString(),
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
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff3d3d3d),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'বরিশাল বিভাগ',
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
                itemCount: borishalData.length,
                itemBuilder: (context, index) {
                  final item = borishalData[index];
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
                            backgroundColor: const Color(0xff3d3d3d),
                            child: Text(
                              item['id'].toString(),
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
                                color: Color(0xff3d3d3d),
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
                              color: Color(0xff730ab0),
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
                  color: const Color(0xffe56969),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'সিলেট বিভাগ',
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
                itemCount: sylhetData.length,
                itemBuilder: (context, index) {
                  final item = sylhetData[index];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: const Color(0x08033f70), // Background color
                          border: Border.all(color: const Color(0xffe56969)), // Border color
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xffe56969),
                            child: Text(
                              item['id'].toString(),
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
                                color: Color(0xff1a1a1a),
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
                              color: Color(0xffe56969),
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
                  color: const Color(0xff037a6c),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'রংপুর বিভাগ',
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
                itemCount: rongpurData.length,
                itemBuilder: (context, index) {
                  final item = rongpurData[index];
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
                              item['id'].toString(),
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
                              color: Color(0xff000000),
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
                  color: const Color(0xffb12a7d),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'ময়মনসিংহ বিভাগ',
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
                itemCount: mymensingData.length,
                itemBuilder: (context, index) {
                  final item = mymensingData[index];
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
                            backgroundColor: const Color(0xffb12a7d),
                            child: Text(
                              item['id'].toString(),
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
                                color: Color(0xffb12a7d),
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
                              color: Color(0xff000000),
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
