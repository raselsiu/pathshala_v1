import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/arabic/surah_listtile.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_alam_nashrah.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_asr.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_falaq.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_fatiha.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_fil.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_humaza.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_ikhlas.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_kafirun.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_kawther.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_nas.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff1f1f1),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'গুরুত্বপূর্ণ ১০ টি সূরা',
            style: TextStyle(
              fontFamily: StringConstants.skBishal,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          backgroundColor: Color(0xff077568),
        ),
        body: ListView(
          children: const [
            SizedBox(height: 15),
            SurahTileList(
              surahName: 'সূরা ফাতিহা',
              tileColor: Colors.teal,
              ayahCount: 'আয়াত সংখ্যাঃ ৭ টি',
              page: SurahFatiha(),
            ),
            SurahTileList(
              surahName: 'সূরা ইখলাস',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৪ টি',
              page: SurahIkhlas(),
            ),
            SurahTileList(
              surahName: 'সূরা ফালাক',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৫ টি',
              page: SurahFalaq(),
            ),
            SurahTileList(
              surahName: 'সূরা নাস',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৩ টি',
              page: SurahNas(),
            ),
            SurahTileList(
              surahName: 'সূরা কাউছার',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৩ টি',
              page: SurahKawther(),
            ),
            SurahTileList(
              surahName: 'সূরা আছর',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৩ টি',
              page: SurahAsr(),
            ),
            SurahTileList(
              surahName: 'সূরা কাফিরুন',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৬ টি',
              page: SurahKafirun(),
            ),
            SurahTileList(
              surahName: 'সূরা আলাম-নাসরাহ',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৮ টি',
              page: SurahAlamNashrah(),
            ),
            SurahTileList(
              surahName: 'সূরা হুমাজা',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৯ টি',
              page: SurahHumaza(),
            ),
            SurahTileList(
              surahName: 'সূরা ফিল',
              tileColor: Colors.teal,
              ayahCount: ' আয়াত সংখ্যাঃ ৫ টি',
              page: SurahFil(),
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
