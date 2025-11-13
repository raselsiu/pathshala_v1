import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_benefits.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_bengali_types.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_equipments_and_roles.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_fitness_exercise.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_player_intro.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_tournament.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_type.dart';
import 'package:sunamonir_pathshala/utils/image_string/sports.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double divHeight = MediaQuery.of(context).size.height * (screenWidth > 600 ? 0.18 : 0.15);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xc8014f01),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'খেলাধূলা',
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StaggeredGrid.count(
              crossAxisCount: 1,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(SportsImageConst.sports1),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsTournament(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(SportsImageConst.sports3),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsBengaliType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(SportsImageConst.sports4),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsBenefits(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(SportsImageConst.sports5),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsEqupment(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(SportsImageConst.sports6),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ExercisePages(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(SportsImageConst.sports7),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsPlayerIntroduce(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(SportsImageConst.sports8),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
