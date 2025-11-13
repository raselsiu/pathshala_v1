import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/bakko_make/bakko_make_benjonborno_sound.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/bakko_make/bakko_make_sorborno_sound.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/benjonborno.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/chora_kobita_list.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/kobi_porichoy_lists.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/national_anthem.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/rono_songit.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/sobdho/biporit_ortho.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/sobdho/somarthok.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/sorborno.dart';
import 'package:sunamonir_pathshala/services/AdServices/interstitial_global_ad_service.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../base_scaffold.dart';

class BanglaContentPage extends StatefulWidget {
  const BanglaContentPage({super.key});

  @override
  State<BanglaContentPage> createState() => _BanglaContentPageState();
}

class _BanglaContentPageState extends State<BanglaContentPage> with AdNavigationMixin {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return AdScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff105d56),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          StringConstants.subTitleBn,
          style: TextStyle(
            fontFamily: StringConstants.samirFont,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(Sorborno()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.sorborno),
                          ),
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(BenjonBorno()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.benjonBorno),
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
                        showModalBottomSheet<void>(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25),
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: width > 600 ? 500 : 500,
                              color: Colors.white,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const SizedBox(height: 30),
                                    ElevatedButton(
                                      onPressed: () => showAdAndNavigate(const BakkoMakeSorBorBo()),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        foregroundColor: Colors.transparent,
                                        elevation: 0,
                                      ),
                                      child: Image.asset(
                                        ImageConstant.bakkoSorBtn,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () =>
                                          showAdAndNavigate(const BakkoMakeBenjonBorno()),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: Colors.transparent,
                                          elevation: 0),
                                      child: Image.asset(
                                        ImageConstant.bakkoBenBtn,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      },
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.bakko_make),
                          ),
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(const ChoraKobitaList()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.kobita_chora),
                          ),
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(const BiporitSobdo()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.opposit),
                          ),
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(const Somarthok()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.somarthok),
                          ),
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(const PoetListView()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.kobi_porichito),
                          ),
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(const NationalAnthem()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.national_song),
                          ),
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: GestureDetector(
                      onTap: () => showAdAndNavigate(const RonoSongit()),
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.ronosongit),
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
    );
  }
}

class BanglaCardWidgets extends StatelessWidget {
  final String imgUrl;
  final Widget page;

  const BanglaCardWidgets({
    super.key,
    required this.imgUrl,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          ),
        },
        child: Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl),
            ),
          ),
        ),
      ),
    );
  }
}
