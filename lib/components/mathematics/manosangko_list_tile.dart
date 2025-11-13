import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ManosangkoListTile extends StatelessWidget {
  final String serial;
  final String question;
  final String answer;
  final Color serialColor;

  const ManosangkoListTile({
    super.key,
    required this.serial,
    required this.question,
    required this.answer,
    required this.serialColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      child: ListTile(
        leading: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            color: serialColor,
          ),
          child: Text(
            serial,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: StringConstants.samirFont,
              fontSize: 30,
            ),
          ),
        ),
        title: Text(
          question,
          style: const TextStyle(
            fontFamily: StringConstants.samirFont,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          answer,
          style: const TextStyle(
            fontFamily: StringConstants.samirFont,
            fontSize: 16,
            color: Colors.purple,
          ),
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
