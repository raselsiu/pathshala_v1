import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SurahTileList extends StatefulWidget {
  final String surahName;
  final String ayahCount;
  final Color tileColor;
  final Widget page;

  const SurahTileList({
    super.key,
    required this.surahName,
    required this.tileColor,
    required this.ayahCount,
    required this.page,
  });

  @override
  State<SurahTileList> createState() => _SurahTileListState();
}

class _SurahTileListState extends State<SurahTileList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget.page,
            ),
          );
        },
        tileColor: Colors.white,
        leading: Image.asset(
          ImageConstant.surahLeadingIcon,
          height: 40,
          width: 40,
        ),
        title: Text(
          widget.surahName,
          style: const TextStyle(
              fontFamily: StringConstants.skBishal, fontSize: 22, color: Color(0xff23810e)),
        ),
        subtitle: Text(
          widget.ayahCount,
          style: const TextStyle(
            fontFamily: StringConstants.bnFontFamily,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        shape: RoundedRectangleBorder(
          // side: const BorderSide(color: Colors.purpleAccent, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
