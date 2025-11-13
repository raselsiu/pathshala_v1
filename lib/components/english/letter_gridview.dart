import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LettersView extends StatelessWidget {
  final player = AudioPlayer();

  final String audioUrl;
  final String img;

  LettersView({
    super.key,
    required this.audioUrl,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        player.play(
          AssetSource(audioUrl),
        )
      },
      child: Image(
        image: AssetImage(img),
      ),
    );
  }
}
