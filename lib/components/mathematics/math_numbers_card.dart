import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MathNumbersCard extends StatelessWidget {
  final String audioLink;
  final String imagePath;

  MathNumbersCard({
    super.key,
    required this.audioLink,
    required this.imagePath,
  });

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        player.play(
          AssetSource(audioLink),
        )
      },
      child: Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
          ),
        ),
      ),
    );
  }
}
