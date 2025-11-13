import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/jsondata/arabic.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class Dua extends StatelessWidget {
  const Dua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'গুরুত্বপূর্ণ দোয়া',
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
        itemCount: duaData.length,
        itemBuilder: (context, index) {
          final item = duaData[index];
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
                  textAlign: TextAlign.center,
                  item['q'].toString(),
                  style: const TextStyle(
                      fontFamily: StringConstants.samirFont,
                      fontSize: 25,
                      color: Color(0xff8533c7),
                      height: 0,
                      letterSpacing: 0),
                ),
                subtitle: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "${item['def']}\n\n",
                      style: const TextStyle(
                        color: Colors.black87,
                        fontFamily: StringConstants.arabicFont,
                        fontSize: 25,
                      ),
                      children: [
                        TextSpan(
                          text: item['a'],
                          style: const TextStyle(
                            fontFamily: StringConstants.bnFontFamily,
                          ),
                        ),
                        TextSpan(
                          text: item['mean'],
                          style: const TextStyle(
                            fontFamily: StringConstants.bnFontFamily,
                          ),
                        ),
                      ]),
                )),
          );
        },
      ),
    );
  }
}
