import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

class BakkoMakeSorBorBo extends StatefulWidget {
  const BakkoMakeSorBorBo({super.key});

  @override
  State<BakkoMakeSorBorBo> createState() => _BakkoMakeSorBorBoState();
}

class _BakkoMakeSorBorBoState extends State<BakkoMakeSorBorBo> {
  @override
  Widget build(BuildContext context) {
    return AdScaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'বাক্য তৈরী - স্বরবর্ণ',
            style: TextStyle(
              fontFamily: StringConstants.samirFont,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s6),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s7),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s9),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(ImageConstant.s11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
