import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/jsondata/data.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../utils/en_to_bn_number.dart';

class GeographicalName extends StatelessWidget {
  const GeographicalName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'ভৌগোলিক উপনাম',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: const Color(0xff605678),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        itemCount: geographicalNameData.length,
        itemBuilder: (context, index) {
          final item = geographicalNameData[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              // Background color
              border: Border.all(color: Colors.black), // Border color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                backgroundColor: const Color(0xff605678),
                child: Text(
                  convertToBengaliNumber((index + 1).toString()),
                  style: const TextStyle(
                      color: Colors.white, fontFamily: StringConstants.samirFont, fontSize: 22),
                ),
              ),
              title: Text(
                item['question'].toString(),
                style: const TextStyle(
                    fontFamily: StringConstants.samirFont,
                    fontSize: 20,
                    color: Color(0xff605678),
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
