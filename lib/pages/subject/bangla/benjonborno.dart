import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/utils/audios/audios.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../base_scaffold.dart';

class BenjonBorno extends StatelessWidget {
  BenjonBorno({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstants.colorCommon,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'বাংলা ব্যঞ্জনবর্ণ',
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
                                AssetSource(AudioConstant.bAudio1),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.koo1),
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
                                AssetSource(AudioConstant.bAudio2),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.khaa2),
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
                                AssetSource(AudioConstant.bAudio3),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.go3),
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
                                AssetSource(AudioConstant.bAudio4),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.gho4),
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
                                AssetSource(AudioConstant.bAudio5),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.ummo5),
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
                                AssetSource(AudioConstant.bAudio6),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.sca6),
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
                                AssetSource(AudioConstant.bAudio7),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.scha7),
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
                                AssetSource(AudioConstant.bAudio8),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.borgiojho8),
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
                                AssetSource(AudioConstant.bAudio9),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.jho9),
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
                                AssetSource(AudioConstant.bAudio10),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.nio10),
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
                                AssetSource(AudioConstant.bAudio11),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.tto11),
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
                                AssetSource(AudioConstant.bAudio12),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.tho12),
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
                                AssetSource(AudioConstant.bAudio13),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.doo13),
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
                                AssetSource(AudioConstant.bAudio14),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dho14),
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
                                AssetSource(AudioConstant.bAudio15),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.murdhono15),
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
                                AssetSource(AudioConstant.bAudio16),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.too16),
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
                                AssetSource(AudioConstant.bAudio17),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.thoo17),
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
                                AssetSource(AudioConstant.bAudio18),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.duu18),
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
                                AssetSource(AudioConstant.bAudio19),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dhuu19),
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
                                AssetSource(AudioConstant.bAudio20),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dointarno20),
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
                                AssetSource(AudioConstant.bAudio21),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.po21),
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
                                AssetSource(AudioConstant.bAudio22),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.pho22),
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
                                AssetSource(AudioConstant.bAudio23),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.bo23),
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
                                AssetSource(AudioConstant.bAudio24),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.bho24),
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
                                AssetSource(AudioConstant.bAudio25),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.mo25),
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
                                AssetSource(AudioConstant.bAudio26),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.untosthojo26),
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
                                AssetSource(AudioConstant.bAudio27),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.untosthoRo27),
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
                                AssetSource(AudioConstant.bAudio28),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.loo28),
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
                                AssetSource(AudioConstant.bAudio29),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.talubosso29),
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
                                AssetSource(AudioConstant.bAudio30),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.murdonosso30),
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
                                AssetSource(AudioConstant.bAudio31),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.duntoshho31),
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
                                AssetSource(AudioConstant.bAudio32),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.hoo32),
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
                                AssetSource(AudioConstant.bAudio33),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dosinarRo33),
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
                                AssetSource(AudioConstant.bAudio34),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dorro34),
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
                                AssetSource(AudioConstant.bAudio35),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.unthostio35),
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
                                AssetSource(AudioConstant.bAudio36),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.khondoto36),
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
                                AssetSource(AudioConstant.bAudio37),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.bisorgo38),
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
                                AssetSource(AudioConstant.bAudio38),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.onessar37),
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
                                AssetSource(AudioConstant.bAudio39),
                              )
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.chondrobindu39),
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
