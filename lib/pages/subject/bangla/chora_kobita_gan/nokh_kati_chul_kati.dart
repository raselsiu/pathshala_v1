import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/poem.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class NokhKatiChulKati extends StatefulWidget {
  const NokhKatiChulKati({super.key});

  @override
  State<NokhKatiChulKati> createState() => _NokhKatiChulKatiState();
}

class _NokhKatiChulKatiState extends State<NokhKatiChulKati> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppConstants.colorCommon,
        title: const Text(
          PoemConstant.nokhChulTitle,
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Container(
              height: 150,
              width: MediaQuery.sizeOf(context).width,
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
                PoemConstant.nokhChulTitle,
                style: TextStyle(
                  fontFamily: StringConstants.samirFont,
                  fontSize: 24,
                  color: AppConstants.colorCommon,
                ),
              ),
            ),
            const SizedBox(
              child: Text(
                PoemConstant.nokhChulSubTitle,
                style: TextStyle(
                  fontFamily: StringConstants.samirFont,
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
                color: AppConstants.colorCommon,
              ),
            ),
            const Text(
              PoemConstant.nokhChulDesc,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Nikosh',
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
