import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngTransport extends StatelessWidget {
  const EngTransport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Types of Transportation',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.enFontFamily,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans1),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans2),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans3),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans4),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans5),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans6),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans7),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans8),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans9),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans10),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans11),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans12),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans13),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans14),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans15),
              TransportCardWidgets(imgUrl: ImageConstEnglish.trans16),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class TransportCardWidgets extends StatelessWidget {
  final String imgUrl;

  const TransportCardWidgets({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.04),
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: size.height > 600 ? 250 : 150,
      width: double.infinity,
      child: Image.asset(imgUrl, fit: BoxFit.contain),
    );
  }
}
