import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/audios/audios.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ArAlphabet extends StatelessWidget {
  ArAlphabet({super.key});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'আরবি হরফ পরিচিতি',
            style: TextStyle(
              fontFamily: StringConstants.skBishal,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff057205),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha2)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha1)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha4)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha3)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha6)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha5)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha8)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha7)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha10)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha9)),
            ),
            GestureDetector(
              onTap: () => {player.play(AssetSource(AudioConstant.bAudio1))},
              child: const Image(image: AssetImage(ImageConstant.arabAlpha12)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha11)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha14)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha13)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha16)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha15)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha18)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha17)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha20)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha19)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha22)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha21)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha24)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha23)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha26)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha25)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha28)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha27)),
            ),
            GestureDetector(
              onTap: () => {
                player.play(
                  AssetSource(AudioConstant.bAudio1),
                )
              },
              child: const Image(image: AssetImage(ImageConstant.arabAlpha29)),
            ),
          ],
        ));
  }
}
