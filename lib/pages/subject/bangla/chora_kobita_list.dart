import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/chora_kobita_gan/chora_kobita_inner_list.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/chora_kobita_gan/gane_gane_sikhi.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../base_scaffold.dart';

class ChoraKobitaList extends StatelessWidget {
  const ChoraKobitaList({super.key});

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff07ab7f),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          StringConstants.choraKobitaTitle,
          style: TextStyle(
            fontFamily: StringConstants.skBishal,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.choraKobitaBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChoraKobita(),
                  ),
                )
              },
              child: Container(
                height: 100,
                margin: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 15),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.choraKobitaBtn),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GaneGaneSikhi(),
                    ))
              },
              child: Container(
                height: 100,
                margin: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 15),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.ganeGaneShikhiBtn),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
