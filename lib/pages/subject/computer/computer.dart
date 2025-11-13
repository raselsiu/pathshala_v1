import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/computer_quiz.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/internet.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/intro.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/pc_future.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/pc_main_parts.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/pc_main_usages.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/pc_security.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/pages/pc_using_roles.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerPage extends StatelessWidget {
  const ComputerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7e2572),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'কম্পিউটার',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
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
                        builder: (context) => const ComputerIntro(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcIntro),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComputerMainParts(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcMainParts),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComputerMainUsages(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcMainUsages),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComputerInternet(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcInternet),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComputerUsageRoles(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcUsages),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComputerSecurity(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcSecurity),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComputerFuture(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcFuture),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComputerQuiz(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    height: 155,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ComputerImageConst.pcQuiz),
                          fit: BoxFit.contain),
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
