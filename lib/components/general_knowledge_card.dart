import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GeneralKnowledgeCard extends StatelessWidget {
  final Widget pageLocation;
  final String imagePath;

  const GeneralKnowledgeCard({
    super.key,
    required this.pageLocation,
    required this.imagePath,
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
              builder: (context) => pageLocation,
            ),
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
      ),
    );
  }
}
