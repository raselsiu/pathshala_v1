import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/components/english_card.dart';
import 'package:sunamonir_pathshala/pages/subject/english/alphabet.dart';
import 'package:sunamonir_pathshala/pages/subject/english/animals.dart';
import 'package:sunamonir_pathshala/pages/subject/english/birds.dart';
import 'package:sunamonir_pathshala/pages/subject/english/color.dart';
import 'package:sunamonir_pathshala/pages/subject/english/day_month.dart';
import 'package:sunamonir_pathshala/pages/subject/english/direction.dart';
import 'package:sunamonir_pathshala/pages/subject/english/fish.dart';
import 'package:sunamonir_pathshala/pages/subject/english/flowers.dart';
import 'package:sunamonir_pathshala/pages/subject/english/foods.dart';
import 'package:sunamonir_pathshala/pages/subject/english/fruits.dart';
import 'package:sunamonir_pathshala/pages/subject/english/garments.dart';
import 'package:sunamonir_pathshala/pages/subject/english/numbers.dart';
import 'package:sunamonir_pathshala/pages/subject/english/opposite_word.dart';
import 'package:sunamonir_pathshala/pages/subject/english/planets.dart';
import 'package:sunamonir_pathshala/pages/subject/english/professions.dart';
import 'package:sunamonir_pathshala/pages/subject/english/rhymes.dart';
import 'package:sunamonir_pathshala/pages/subject/english/season.dart';
import 'package:sunamonir_pathshala/pages/subject/english/shapes.dart';
import 'package:sunamonir_pathshala/pages/subject/english/trans.dart';
import 'package:sunamonir_pathshala/pages/subject/english/vegetables.dart';
import 'package:sunamonir_pathshala/pages/subject/human_body.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EnglishPage extends StatefulWidget {
  const EnglishPage({super.key});

  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
  @override
  Widget build(BuildContext context) {
    var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        backgroundColor: const Color(0xffFFEFE8),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffce506d),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'English - (ইংরেজী)',
            style: TextStyle(
              fontFamily: StringConstants.samirFont,
              color: Colors.white,
              fontSize: 25,
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
                  crossAxisCount: isLandscape ? 4 : 2,
                  mainAxisSpacing: isLandscape ? 0 : 0,
                  crossAxisSpacing: isLandscape ? 0 : 0,
                  children: const [
                    EnglishCard(
                      pageLocation: EngAlphabet(),
                      imagePath: ImageConstant.engAlphabet,
                    ),
                    EnglishCard(
                      pageLocation: EnglishNumbers(),
                      imagePath: ImageConstant.engNumbers,
                    ),
                    EnglishCard(
                      pageLocation: OppositeWordsTable(),
                      imagePath: ImageConstant.engOpposite,
                    ),
                    EnglishCard(
                      pageLocation: EnRhymesCard(),
                      imagePath: ImageConstant.engRhymes,
                    ),
                    EnglishCard(
                      pageLocation: HumanBodyPage(),
                      imagePath: ImageConstant.engBodyParts,
                    ),
                    EnglishCard(
                      pageLocation: EngAnimals(),
                      imagePath: ImageConstant.engAnimal,
                    ),
                    EnglishCard(
                      pageLocation: EngFruits(),
                      imagePath: ImageConstant.engFruits,
                    ),
                    EnglishCard(
                      pageLocation: EngFlowers(),
                      imagePath: ImageConstant.engFlowers,
                    ),
                    EnglishCard(
                      pageLocation: EngFish(),
                      imagePath: ImageConstant.engFish,
                    ),
                    EnglishCard(
                      pageLocation: EngBirds(),
                      imagePath: ImageConstant.engBirds,
                    ),
                    EnglishCard(
                      pageLocation: EngVegetables(),
                      imagePath: ImageConstant.engVegetable,
                    ),
                    EnglishCard(
                      pageLocation: EngColors(),
                      imagePath: ImageConstant.engColors,
                    ),
                    EnglishCard(
                      pageLocation: EngDayMonth(),
                      imagePath: ImageConstant.engDayMonth,
                    ),
                    EnglishCard(
                      pageLocation: EngSeasons(),
                      imagePath: ImageConstant.engSeason,
                    ),
                    EnglishCard(
                      pageLocation: EngDirection(),
                      imagePath: ImageConstant.engDirection,
                    ),
                    EnglishCard(
                      pageLocation: EngShapes(),
                      imagePath: ImageConstant.engShapes,
                    ),
                    EnglishCard(
                      pageLocation: EngFoods(),
                      imagePath: ImageConstant.engFoods,
                    ),
                    EnglishCard(
                      pageLocation: EngTransport(),
                      imagePath: ImageConstant.engAirWater,
                    ),
                    EnglishCard(
                      pageLocation: EngGarments(),
                      imagePath: ImageConstant.engClothGarments,
                    ),
                    EnglishCard(
                      pageLocation: EnglishPlanets(),
                      imagePath: ImageConstant.engPlanet,
                    ),
                    EnglishCard(
                      pageLocation: EngProfessions(),
                      imagePath: ImageConstant.engProfession,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
