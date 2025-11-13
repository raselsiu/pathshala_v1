import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/apps_audio_player.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SurahFil extends StatelessWidget {
  const SurahFil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          ReusableAudioPlayer(
            audioUrl: "https://cdn.islamic.network/quran/audio-surah/128/ar.alafasy/105.mp3",
          ),
        ],
        title: const Text(
          'সূরা আল-ফীল',
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.skBishal),
        ),
        backgroundColor: const Color(0xff23810e),
      ),
      body: const SingleChildScrollView(
        child: Image(
          image: AssetImage(ImageConstant.surahFilImg),
        ),
      ),
    );
  }
}
