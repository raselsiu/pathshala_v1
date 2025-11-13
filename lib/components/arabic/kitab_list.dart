import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class KitabList extends StatefulWidget {
  final String name;
  final Widget page;

  const KitabList({
    super.key,
    required this.name,
    required this.page,
  });

  @override
  State<KitabList> createState() => _KitabListState();
}

class _KitabListState extends State<KitabList> {
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
          ImageConstant.kitabIcon,
          height: 40,
          width: 40,
        ),
        title: Text(
          widget.name,
          style: const TextStyle(
            fontFamily: StringConstants.samirFont,
            fontSize: 22,
            color: Color(0xff942803),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
        shape: RoundedRectangleBorder(
          // side: const BorderSide(color: Colors.purpleAccent, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
