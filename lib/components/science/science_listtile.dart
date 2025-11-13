import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceTileList extends StatelessWidget {
  final String logo;
  final String title;
  final Color tileColor;
  final Widget page;

  const ScienceTileList({
    super.key,
    required this.title,
    required this.tileColor,
    required this.page,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        tileColor: tileColor,
        leading: Image.asset(
          logo,
          height: 40,
          width: 40,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: StringConstants.samirFont,
            fontSize: 22,
            color: Color(0xffb12a7d),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
