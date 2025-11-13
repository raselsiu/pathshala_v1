import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/jsondata/data.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class BisisthoBektittoData extends StatelessWidget {
  BisisthoBektittoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'বিশিষ্ঠ ব্যাক্তিত্ব',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: const Color(0xff511680),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        itemCount: bisisthoBektittoData.length,
        itemBuilder: (context, index) {
          final item = bisisthoBektittoData[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0x08033f70), // Background color
              border: Border.all(color: const Color(0xff9f2cfd)), // Border color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xff511680),
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
                    color: Color(0xff511680),
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
                  color: Color(0xff25b405),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
