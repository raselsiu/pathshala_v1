import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/english/letter_gridview.dart';
import 'package:sunamonir_pathshala/utils/audios/audios.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SmallLetter extends StatelessWidget {
  const SmallLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2a2a2a),
        appBar: AppBar(
          elevation: 5,
          iconTheme: const IconThemeData(color: Color(0xffffffff)),
          title: const Text(
            'Small Letters',
            style: TextStyle(
              fontFamily: StringConstants.enFontFamily,
              fontWeight: FontWeight.w700,
              color: Color(0xffffffff),
            ),
          ),
          backgroundColor: const Color(0xff2a2a2a),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(15),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSa,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSb,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSc,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSd,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSe,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSf,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSg,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSh,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSi,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSj,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSk,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSl,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSm,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSn,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSo,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSp,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSq,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSr,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSs,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSt,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSu,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSv,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSw,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSx,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSy,
            ),
            LettersView(
              audioUrl: AudioConstant.bAudio1,
              img: ImageConstEnglish.letterSz,
            ),
          ],
        ));
  }
}
