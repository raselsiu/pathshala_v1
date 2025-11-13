import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunamonir_pathshala/components/english/alphabet_list_card.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet/capital_letter.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet/capital_letter_tst.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet/fillin_the_gap.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet/sentence_making.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet/small_letter.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet/small_letter_tst.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet/word_making.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngAlphabet extends StatelessWidget {
  const EngAlphabet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff243642),
        appBar: AppBar(
          elevation: 5,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Alphabet - ইংরেজী বর্ণমালা',
            style: TextStyle(
              fontFamily: StringConstants.samirFont,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff243642),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              AlphabetCustomList(
                title: 'Capital Letters',
                subtitle: 'বড় হাতের',
                iconBgClr: Colors.teal,
                icons: FontAwesomeIcons.a,
                pageLocation: CapitalLetter(),
              ),
              AlphabetCustomList(
                title: 'Capital Letters Test',
                subtitle: 'এলোমেলো(বড় হাতের)',
                iconBgClr: Color(0xff557C56),
                icons: FontAwesomeIcons.arrowDownZA,
                pageLocation: CapitalLetterTest(),
              ),
              AlphabetCustomList(
                title: 'Small Letters',
                subtitle: 'ছোট হাতের',
                iconBgClr: Color(0xffAE445A),
                icons: FontAwesomeIcons.s,
                pageLocation: SmallLetter(),
              ),
              AlphabetCustomList(
                title: 'Small Letters Test',
                subtitle: 'এলোমেলো(ছোট হাতের)',
                iconBgClr: Color(0xff557C56),
                icons: FontAwesomeIcons.arrowDownZA,
                pageLocation: SmallLetterTest(),
              ),
              AlphabetCustomList(
                title: 'Word Making',
                subtitle: 'শব্দ তৈরী',
                iconBgClr: Color(0xffD63484),
                icons: FontAwesomeIcons.listUl,
                pageLocation: WordMaking(),
              ),
              AlphabetCustomList(
                title: 'Fill in the Gaps',
                subtitle: 'শূন্যস্থান পূরণ',
                iconBgClr: Color(0xff8000d7),
                icons: FontAwesomeIcons.arrowsLeftRightToLine,
                pageLocation: FillInTheGaps(),
              ),
              AlphabetCustomList(
                title: 'Sentence Making',
                subtitle: 'বাক্য তৈরী',
                iconBgClr: Color(0xff00ceb5),
                icons: FontAwesomeIcons.rectangleList,
                pageLocation: SentenceMaking(),
              ),
            ],
          ),
        ));
  }
}
