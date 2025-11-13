import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SentenceTile extends StatelessWidget {
  final player = AudioPlayer();

  final String? audioUrl;
  final String? title1;
  final String? title2;
  final String? title3;
  final String? title4;
  final String? title5;
  final String? subtitle1;
  final String? subtitle2;
  final String? subtitle3;
  final String? subtitle4;
  final String? subtitle5;
  final String? letter;

  SentenceTile({
    super.key,
    required this.letter,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.subtitle4,
    required this.subtitle5,
    required this.audioUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff444444),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xffff4698),
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    letter!,
                    style: const TextStyle(
                      fontFamily: StringConstants.enFontKanit,
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Color(0xffe72d6e),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: const Color(0xff3d3d3d),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GestureDetector(
                onTap: () => {
                  player.play(
                    AssetSource(audioUrl!),
                  )
                },
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstEnglish.speakerLogo),
                ),
              ),
            )
          ],
        ),
        const Divider(endIndent: 15.0, indent: 15.0, height: 25.0),
        ListTile(
          title: Text(
            title1!,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.enFontFamily,
                color: Color(0xffb90b63)),
          ),
          subtitle: Text(
            subtitle1!,
            style: const TextStyle(
              fontSize: 22,
              fontFamily: StringConstants.samirFont,
            ),
          ),
        ),
        ListTile(
          title: Text(
            title2!,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.enFontFamily,
                color: Color(0xffb90b63)),
          ),
          subtitle: Text(
            subtitle2!,
            style: const TextStyle(
              fontSize: 22,
              fontFamily: StringConstants.samirFont,
            ),
          ),
        ),
        ListTile(
          title: Text(
            title3!,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.enFontFamily,
                color: Color(0xffb90b63)),
          ),
          subtitle: Text(
            subtitle3!,
            style: const TextStyle(
              fontSize: 22,
              fontFamily: StringConstants.samirFont,
            ),
          ),
        ),
        ListTile(
          title: Text(
            title4!,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.enFontFamily,
                color: Color(0xffb90b63)),
          ),
          subtitle: Text(
            subtitle4!,
            style: const TextStyle(
              fontSize: 22,
              fontFamily: StringConstants.samirFont,
            ),
          ),
        ),
        ListTile(
          title: Text(
            title5!,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.enFontFamily,
                color: Color(0xffb90b63)),
          ),
          subtitle: Text(
            subtitle5!,
            style: const TextStyle(
              fontSize: 22,
              fontFamily: StringConstants.samirFont,
            ),
          ),
        ),
        const Divider(endIndent: 15.0, indent: 15.0, height: 25.0),
      ],
    );
  }
}
