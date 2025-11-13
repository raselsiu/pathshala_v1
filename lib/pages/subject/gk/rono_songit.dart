import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class GKRonoSongit extends StatefulWidget {
  const GKRonoSongit({super.key});

  @override
  State<GKRonoSongit> createState() => _GKRonoSongitState();
}

class _GKRonoSongitState extends State<GKRonoSongit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff037a6c),
        title: const Text(
          StringConstants.GKRonoSongitTitle,
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              const SizedBox(
                child: Text(
                  StringConstants.GKRonoSongitTitle,
                  style: TextStyle(
                    fontFamily: StringConstants.samirFont,
                    fontSize: 32,
                    color: Colors.teal,
                  ),
                ),
              ),
              const SizedBox(
                child: Text(
                  StringConstants.GKRonoSongitSubTitle,
                  style: TextStyle(
                    fontFamily: StringConstants.samirFont,
                    fontSize: 20,
                    color: Colors.black,
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
                  color: Colors.teal,
                ),
              ),
              const Text(
                StringConstants.GKRonoSongitDesc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 28,
                  fontFamily: StringConstants.bnFontFamily,
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
