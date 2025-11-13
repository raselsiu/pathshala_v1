import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngShapes extends StatelessWidget {
  const EngShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff60058d),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Text(
            "Learn the Shapes",
            style: TextStyle(
              fontFamily: StringConstants.enFontFamily,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: const [
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes1),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes2),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes3),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes4),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes5),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes6),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes7),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes8),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes9),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes10),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes11),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes12),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes13),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes14),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes15),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes16),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes17),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes18),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes19),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes20),
                    ShapesCardWidgets(imgUrl: ImageConstEnglish.shapes21),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ));
  }
}

class ShapesCardWidgets extends StatelessWidget {
  final String imgUrl;

  const ShapesCardWidgets({
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
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
