// #############################################
// ###### Checking for device landScape ########
// #############################################
// var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

// #############################################
// #### Checking for device Height and Width ###
// #############################################
// var width = MediaQuery.of(context).size.width;
// var height = MediaQuery.of(context).size.height;

import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/human_body/png/arm.png'),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
