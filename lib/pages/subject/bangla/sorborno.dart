import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/utils/audios/audios.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../base_scaffold.dart';

class Sorborno extends StatelessWidget {
  Sorborno({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstants.colorCommon,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'বাংলা স্বরবর্ণ',
          style: TextStyle(
            fontFamily: StringConstants.samirFont,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 10,
                      children: [
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio1),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.soree_o),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio2),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.soree_aa),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio3),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.rosso_ee),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio4),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dirgo_ee),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio5),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.rosso_oo),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio6),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dirgo_oo),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio7),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.ri),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio8),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.ay),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio9),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.oy),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio10),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.ooo),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () => {
                              player.play(
                                AssetSource(AudioConstant.sAudio11),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.oow),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
