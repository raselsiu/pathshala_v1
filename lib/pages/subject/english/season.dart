import 'package:audioplayers/audioplayers.dart'; // Import audioplayers package
import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/audios/audios.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngSeasons extends StatelessWidget {
  const EngSeasons({super.key});

  @override
  Widget build(BuildContext context) {
    // Audio player instance
    final audioPlayer = AudioPlayer();

    // Season data model with images, descriptions, and audio paths
    final List<SeasonData> seasons = [
      SeasonData(
        image: ImageConstEnglish.season1,
        headerImage: ImageConstEnglish.season1,
        title: "গ্রীষ্ম (বৈশাখ-জ্যৈষ্ঠ)",
        description:
            "গ্রীষ্ম ঋতুতে প্রচণ্ড গরম পড়ে। সূর্য কড়া তাপে ঝলসে দেয় প্রকৃতিকে। নদী-নালা শুকিয়ে যায়, পানির সংকট দেখা দেয়। তবে এই ঋতুতে ফলের সমারোহ ঘটে। আম, কাঁঠাল, লিচু ইত্যাদি রসালো ফলের স্বাদ পাওয়া যায়।",
        audioPath: AudioConstant.bAudio1, // Add path to your audio file
      ),
      SeasonData(
        image: ImageConstEnglish.season2,
        headerImage: ImageConstEnglish.season2,
        title: "বর্ষা (আষাঢ়-শ্রাবণ)",
        description:
            "বর্ষাকালে আকাশে মেঘ জমে, ঘন ঘন বৃষ্টি হয়। অনেক সময় টানা বৃষ্টিতে প্লাবন দেখা দেয়। কৃষকের জমি পানিতে ভরে ওঠে। প্রকৃতি ধুয়ে-মুছে পরিষ্কার ও সবুজ হয়ে ওঠে।",
        audioPath: AudioConstant.bAudio1, // Add path to your audio file
      ),
      SeasonData(
        image: ImageConstEnglish.season3,
        headerImage: ImageConstEnglish.season3,
        title: "শরৎ (ভাদ্র-আশ্বিন)",
        description:
            "শরৎকালে আকাশ থাকে নীল ও পরিষ্কার, সাদা মেঘ ভেসে বেড়ায়। কাশফুলে ভরে যায় মাঠের ধারে। গ্রীষ্ম ও বর্ষার পরে প্রকৃতিতে এক ধরনের প্রশান্তি নামে। এটি একটি শান্ত, মনোমুগ্ধকর ঋতু।",
        audioPath: AudioConstant.bAudio1, // Add path to your audio file
      ),
      SeasonData(
        image: ImageConstEnglish.season4,
        headerImage: ImageConstEnglish.season4,
        title: "হেমন্ত (কার্তিক-অগ্রহায়ণ)",
        description:
            "হেমন্ত হচ্ছে শীতের পূর্বকাল। এই ঋতুতে ফসল কাটার ধুম পড়ে। ধান কাটা হয়, কৃষক ব্যস্ত সময় পার করে। বাতাসে থাকে হালকা শীতের ছোঁয়া এবং সকালবেলায় কুয়াশা পড়ে।",
        audioPath: AudioConstant.bAudio1, // Add path to your audio file
      ),
      SeasonData(
        image: ImageConstEnglish.season5,
        headerImage: ImageConstEnglish.season5,
        title: "শীত (পৌষ-মাঘ)",
        description:
            "শীতকালে আবহাওয়া ঠাণ্ডা থাকে। বিশেষ করে উত্তরাঞ্চলে কনকনে ঠাণ্ডা পড়ে। গরম কাপড় পরতে হয়। গ্রামে পিঠা-পুলির উৎসব হয়। শীতের ভোরে কুয়াশা ঘেরা প্রকৃতি এক অন্যরকম সৌন্দর্য দেয়।",
        audioPath: AudioConstant.bAudio1, // Add path to your audio file
      ),
      SeasonData(
        image: ImageConstEnglish.season6,
        headerImage: ImageConstEnglish.season6,
        title: "বসন্ত (ফাল্গুন-চৈত্র)",
        description:
            "বসন্ত ঋতুকে বলা হয় ঋতুর রাজা। এ সময় গাছে গাছে ফুল ফোটে, পাখিরা ডাকে, চারদিক রঙিন হয়ে ওঠে। মানুষের মনেও প্রশান্তি ও আনন্দ জাগে। ফাল্গুন মাসে ‘বসন্ত উৎসব’ পালিত হয়।",
        audioPath: AudioConstant.bAudio1, // Add path to your audio file
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Introduction to Seasons',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ...seasons
                  .map((season) => SeasonsCardWidgets(
                        imgUrl: season.image,
                        onTap: () {
                          // Play audio and show dialog simultaneously
                          _playAudio(audioPlayer, season.audioPath);
                          _showSeasonDetails(context, season);
                        },
                      ))
                  .toList(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  // Method to play audio
  void _playAudio(AudioPlayer player, String audioPath) async {
    try {
      await player.play(AssetSource(audioPath));
    } catch (e) {
      debugPrint("Error playing audio: $e");
    }
  }

  void _showSeasonDetails(BuildContext context, SeasonData season) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: SeasonDetailsDialog(season: season),
        );
      },
    );
  }
}

class SeasonDetailsDialog extends StatelessWidget {
  final SeasonData season;

  const SeasonDetailsDialog({
    super.key,
    required this.season,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header with curved image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                season.headerImage,
                width: double.infinity,
                height: 180,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Title with decorative element
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              gradient: LinearGradient(
                colors: [
                  Colors.indigo.shade300,
                  Colors.indigo.shade700,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(
              season.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: StringConstants.samirFont,
              ),
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              season.description,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Close button
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text(
                'Close',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeasonsCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const SeasonsCardWidgets({
    super.key,
    required this.imgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        margin: const EdgeInsets.only(bottom: 16),
        height: 200,
        width: double.infinity,
        child: Hero(
          tag: imgUrl,
          child: Material(
            child: ClipRRect(
              child: Image.asset(
                imgUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Updated data model to hold season information including audio path
class SeasonData {
  final String image;
  final String headerImage;
  final String title;
  final String description;
  final String audioPath; // Add audio path field

  SeasonData({
    required this.image,
    required this.headerImage,
    required this.title,
    required this.description,
    required this.audioPath, // Make audioPath required
  });
}
