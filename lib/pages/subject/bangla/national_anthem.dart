import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../base_scaffold.dart';

class NationalAnthem extends StatefulWidget {
  const NationalAnthem({super.key});

  @override
  State<NationalAnthem> createState() => _NationalAnthemState();
}

class _NationalAnthemState extends State<NationalAnthem> {
  final audioPlayer = AudioPlayer();

  late bool isPlaying = false;
  late Widget iconn = const Icon(Icons.play_arrow);

  // void getAudio() async {
  //   var url =
  //       "https://drive.google.com/uc?export=download&confirm=no_antivirus&id=1v8RBvEOpsEDlD_o7OA2TKgxysF-O5jUW";
  //
  //   if (!isPlaying) {
  //     await audioPlayer.play(UrlSource(url));
  //     setState(() {
  //       isPlaying = true;
  //       iconn = const Icon(Icons.play_arrow);
  //     });
  //   }
  //   if (isPlaying) {
  //     await audioPlayer.pause();
  //     setState(() {
  //       isPlaying = false;
  //       iconn = const Icon(Icons.pause);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppConstants.colorCommon,
        title: const Text(
          StringConstants.nationalAnthemTitle,
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.poemCoverImg),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.nationalAnthemTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.samirFont,
                        fontSize: 24,
                        color: AppConstants.colorCommon,
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      StringConstants.nationalAnthemSubTitle,
                      style: TextStyle(
                        fontFamily: StringConstants.samirFont,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppConstants.colorCommon,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 50, top: 15, left: 16.0, right: 16.0),
                    child: Text(
                      StringConstants.nationalAnthemDesc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Nikosh',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
