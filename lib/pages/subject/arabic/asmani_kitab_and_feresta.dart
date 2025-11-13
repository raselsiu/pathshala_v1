import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/arabic/kitab_list.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah/surah_fatiha.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class AsmaniKitabAndFreresta extends StatelessWidget {
  const AsmaniKitabAndFreresta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff1f1f1),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'আসমানী কিতাব ও ফেরেস্তা',
            style: TextStyle(
              fontFamily: StringConstants.skBishal,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff942803),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: const [
                  SizedBox(height: 15),
                  KitabList(
                    name: 'তাওরাত',
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "যবূর",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "ইঞ্জিল",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              ListView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: const [
                  SizedBox(height: 15),
                  KitabList(
                    name: 'তাওরাত',
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "যবূর",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "ইঞ্জিল",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  KitabList(
                    name: "কুরআন",
                    page: SurahFatiha(),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ));
  }
}
