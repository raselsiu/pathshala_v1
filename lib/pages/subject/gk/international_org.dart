import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/jsondata/data.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class InternationalOrg extends StatelessWidget {
  const InternationalOrg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'আন্তর্জাতিক সংস্থা',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: const Color(0xff460975),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        itemCount: internationalOrganizationData.length,
        itemBuilder: (context, index) {
          final item = internationalOrganizationData[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              // Background color
              border: Border.all(color: Colors.black), // Border color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: ListTile(
              title: Text(
                item['question'].toString(),
                style: const TextStyle(
                    fontFamily: StringConstants.samirFont,
                    fontSize: 20,
                    color: Color(0xff460975),
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
                  color: Color(0xffb01878),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
