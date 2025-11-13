import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class AlphabetCustomList extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color iconBgClr;
  final IconData icons;
  final Widget pageLocation;

  const AlphabetCustomList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconBgClr,
    required this.icons,
    required this.pageLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pageLocation,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 70,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  color: iconBgClr,
                  width: 70,
                  height: 70,
                  child: Center(
                    child: FaIcon(
                      icons,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: StringConstants.latoFontFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.purple,
                          fontFamily: StringConstants.samirFont,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xff25282a),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
