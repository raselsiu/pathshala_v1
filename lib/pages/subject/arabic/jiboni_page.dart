import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/arabic/jiboni_listtile.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/adom_nobi.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/daud_nobi.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/ibrahim_nobi.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/jakariya_nobi.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/muhammad_sa.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/musa_nobi.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/nuh_nobi.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/sulayman_nobi.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/yakub.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni/yusof_nobi.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class JiboniPage extends StatelessWidget {
  const JiboniPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff1f1f1),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'সংক্ষিপ্ত জীবনী',
            style: TextStyle(
              fontFamily: StringConstants.skBishal,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          backgroundColor: const Color(0xff094d85),
        ),
        body: ListView(
          children: const [
            SizedBox(height: 15),
            JiboniListTile(
              name: 'হযরত আদম (আঃ)',
              page: AdomNobi(),
            ),
            JiboniListTile(
              name: 'হযরত নুহ (আঃ) ',
              page: NuhNobi(),
            ),
            JiboniListTile(
              name: 'হযরত ইব্রাহিম (আঃ)',
              page: IbrahimNobi(),
            ),
            JiboniListTile(
              name: 'হযরত মুসা (আঃ)',
              page: MusaNobi(),
            ),
            JiboniListTile(
              name: 'হযরত দাউদ (আঃ)',
              page: DaudNobi(),
            ),
            JiboniListTile(
              name: 'হযরত সুলাইমান (আঃ)',
              page: SulaymanNoni(),
            ),
            JiboniListTile(
              name: 'হযরত ইয়াকুব (আঃ)',
              page: YakubNobi(),
            ),
            JiboniListTile(
              name: 'হযরত ইউসুফ (আঃ)',
              page: YudofNabi(),
            ),
            JiboniListTile(
              name: 'হযরত যাকারিয়া (আঃ)',
              page: JakariyaNobi(),
            ),
            JiboniListTile(
              name: 'হযরত মুহাম্মদ (আঃ)',
              page: MuhammadSa(),
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
