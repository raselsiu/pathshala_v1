import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/science/science_listtile.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_fatiha.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/atoms.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/biomondol.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/dhatu_odhatu.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/megnet.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/podartho.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/wave_and_sound.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff1f1f1),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'বিজ্ঞান',
            style: TextStyle(
              fontFamily: StringConstants.samirFont,
              color: Color(0xffffffff),
              fontSize: 25,
            ),
          ),
          backgroundColor: const Color(0xff96095f),
        ),
        body: ListView(
          children: const [
            SizedBox(height: 15),
            ScienceTileList(
              logo: (ImageConstant.physicsIcon),
              title: 'পদার্থ',
              tileColor: Color(0xffffffff),
              page: SciencePhysics(),
            ),
            ScienceTileList(
              logo: (ImageConstant.magnetIcon),
              title: 'চৌম্বক ও অচৌম্বক পদার্থ',
              tileColor: Color(0xffffffff),
              page: ScienceMegnet(),
            ),
            ScienceTileList(
              logo: (ImageConstant.metalIcon),
              title: 'ধাতু ও অধাতু',
              tileColor: Color(0xffffffff),
              page: ScienceDhatuAndOdhatu(),
            ),
            ScienceTileList(
              logo: (ImageConstant.soundWaveIcon),
              title: 'তরঙ্গ ও শব্দ',
              tileColor: Color(0xffffffff),
              page: ScienceWaveAndSound(),
            ),
            ScienceTileList(
              logo: (ImageConstant.atomIcon),
              title: 'পরমাণু ও পরমাণুর গঠন',
              tileColor: Color(0xffffffff),
              page: ScienceAtoms(),
            ),
            ScienceTileList(
              logo: (ImageConstant.atmsIcon),
              title: 'বায়ুমন্ডল',
              tileColor: Color(0xffffffff),
              page: ScienceBiomondal(),
            ),
            ScienceTileList(
              logo: (ImageConstant.gasIcon),
              title: 'গ্যাস ও জ্বালানি',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.solarIcon),
              title: 'নবায়নযোগ্য জ্বালানি',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.greenhouseIcon),
              title: 'গ্রিনহাউজ গ্যাস',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.geneticsIcon),
              title: 'জেনেটিক্স',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.humanIcon),
              title: 'মানবদেহ ও রক্ত',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.vitaminIcon),
              title: 'খাদ্য ও ভিটামিন',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.energyIcon),
              title: 'আলোক শক্তি',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.photosynthesisIcon),
              title: 'উদ্ভিদ ও সালোকসংশ্লেষন',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.mulIcon),
              title: 'রুপান্তরিত পাতা/মূল/কান্ড',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.biddhaIcon),
              title: 'গুরুত্বপূর্ণ কিছু বিদ্যা',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.acidIcon),
              title: 'কোন খাদ্যে কোন এসিড',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.dynamoIcon),
              title: 'বিভিন্ন শক্তি রুপান্তক যন্ত্র',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.measureIcon),
              title: 'বিভিন্ন পরিমাপক যন্ত্র',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.cultureIcon),
              title: 'বিভিন্ন প্রকার কালচার',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.ekokIcon),
              title: 'গুরুত্বপূর্ণ একক',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            ScienceTileList(
              logo: (ImageConstant.inventIcon),
              title: 'বিভিন্ন আবিষ্কার ও আবিষ্কারক',
              tileColor: Color(0xffffffff),
              page: SurahFatiha(),
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
