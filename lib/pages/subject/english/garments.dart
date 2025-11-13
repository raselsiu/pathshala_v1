import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngGarments extends StatelessWidget {
  const EngGarments({super.key});

  @override
  Widget build(BuildContext context) {
    var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff60058d),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Text(
            "Clothes",
            style: TextStyle(
              fontFamily: StringConstants.enFontFamily,
              color: Colors.white,
              letterSpacing: 3,
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
                  crossAxisCount: isLandscape ? 4 : 2,
                  mainAxisSpacing: isLandscape ? 20 : 15,
                  crossAxisSpacing: isLandscape ? 20 : 15,
                  children: const [
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments1),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments2),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments3),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments4),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments5),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments6),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments7),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments8),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments9),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments10),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments11),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments12),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments13),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments14),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments15),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments16),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments17),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments18),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments19),
                    GarmentsCardWidgets(imgUrl: ImageConstEnglish.garments20),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class GarmentsCardWidgets extends StatelessWidget {
  final String imgUrl;

  const GarmentsCardWidgets({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgUrl),
          ),
        ),
      ),
    );
  }
}
