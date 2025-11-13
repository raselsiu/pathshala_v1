import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/homepage.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.welcomeBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(child: Container()),
            Text(width.toString()),
            InkWell(
              child: Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.welcomeBtnTest),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homepage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
