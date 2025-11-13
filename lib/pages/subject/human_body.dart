import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/components/human_body_card.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class HumanBodyPage extends StatefulWidget {
  const HumanBodyPage({super.key});

  @override
  State<HumanBodyPage> createState() => _HumanBodyPageState();
}

class _HumanBodyPageState extends State<HumanBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        // const Color(0xffFBF5F2)
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff96095f),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'মানবদেহের বিভিন্ন অংশ',
            style: TextStyle(
              fontFamily: StringConstants.bnFontFamily,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  children: const [
                    HumanBodyCard(
                      imagePath: ImageConstant.hbArm,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbBack,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbBeard,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbBelly,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbBlood,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbBody,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbBone,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbBrain,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbCheek,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbChest,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbChin,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbEar,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbElbow,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbEye,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbFace,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbFingers,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbFist,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbFoot,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbForehead,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbHair,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbHand,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbHead,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbHeart,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbHeel,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbIntestine,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbKidney,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbKnee,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbLeg,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbLip,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbLiver,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbLungs,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbMoustache,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbMouth,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbMuscle,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbNail,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbNeck,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbNerve,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbNose,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbNostril,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbShoulders,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbSkin,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbSkull,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbSpine,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbStomach,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbTeeth,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbThroat,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbThumb,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbToe,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbTongue,
                    ),
                    HumanBodyCard(
                      imagePath: ImageConstant.hbWrist,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
