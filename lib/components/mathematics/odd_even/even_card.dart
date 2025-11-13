import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MathEvenCard extends StatelessWidget {
  final String textOne;
  final String textTwo;

  const MathEvenCard({
    super.key,
    required this.textOne,
    required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xff037a6c),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              textOne,
              style: const TextStyle(
                fontSize: 25,
                fontFamily: StringConstants.skBishal,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Text(
              textTwo,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: StringConstants.skBishal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
