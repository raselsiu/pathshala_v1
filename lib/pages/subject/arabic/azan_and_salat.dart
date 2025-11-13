import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/jsondata/arabic.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class AzanAndSalat extends StatelessWidget {
  const AzanAndSalat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'আজান ও সালাত',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: const Color(0xff532079),
      ),
      backgroundColor: const Color(0xffffffff),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        itemCount: azanAndSalatData.length,
        itemBuilder: (context, index) {
          final item = azanAndSalatData[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              // Background color
              border: Border.all(color: Colors.black), // Border color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: ListTile(
              tileColor: Colors.white,
              title: Text(
                item['question'].toString(),
                style: const TextStyle(
                    fontFamily: StringConstants.samirFont,
                    fontSize: 22,
                    color: Color(0xff8533c7),
                    height: 0,
                    letterSpacing: 0),
              ),
              subtitle: Text(
                item['answer'].toString(),
                style: const TextStyle(
                  fontFamily: StringConstants.bnFontFamily,
                  fontSize: 25,
                  height: 0,
                  letterSpacing: 0,
                  color: Color(0xff000000),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
