import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

class AamPataJuraJura extends StatefulWidget {
  const AamPataJuraJura({super.key});

  @override
  State<AamPataJuraJura> createState() => _AamPataJuraJuraState();
}

class _AamPataJuraJuraState extends State<AamPataJuraJura> {
  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppConstants.aamPataColor,
        title: const Text(
          StringConstants.aamPataTitle,
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.skBishal),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.poemCoverImg),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.aamPataTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.skBishal,
                        fontSize: 24,
                        color: AppConstants.aamPataColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.aamPataSubTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.skBishal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppConstants.aamPataColor,
                    ),
                  ),
                  const Text(
                    StringConstants.aamPataDesc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Nikosh',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
