import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../base_scaffold.dart';

class FolaMaker extends StatefulWidget {
  const FolaMaker({super.key});

  @override
  FolaMakerState createState() => FolaMakerState();
}

class FolaMakerState extends State<FolaMaker> with TickerProviderStateMixin {
  final List<ConjunctData> conjunctList = [
    ConjunctData('্য', 'য-ফলা', ['বিদ্যা', 'কল্য', 'ব্যবসা', 'কথ্য', 'মাধ্যম', 'ব্যয়', 'ভাগ্য'],
        Colors.purple),
    ConjunctData('্র', 'র-ফলা', ['গ্রাম', 'দ্রব্য', 'প্রভা', 'ব্রত', 'মন্ত্র', 'কেন্দ্র'],
        Colors.pink.shade400),
    ConjunctData(
        '/', 'রেফ-ফলা', ['তর্ক', 'র্কম', 'বর্ষ', 'পূর্বে', 'মূর্খ', 'সূর্য'], Colors.indigo),
    ConjunctData('ল', 'ল-ফলা', ['ক্লান্ত', 'অম্ল', 'প্লাবন', 'স্লোগান'], Colors.teal),
    ConjunctData('ব', 'ব-ফলা', ['স্বদেশ', 'স্বীকার', 'স্বাগতম', 'বিশ্ব', 'লম্ব'], Colors.orange),
    ConjunctData('ন', 'ন-ফলা', ['যত্ন', 'রত্ন', 'প্রশ্ন', 'স্নান', 'স্নেহ'], Colors.green),
    ConjunctData('ণ', 'ণ-ফলা', ['পূর্বাহ্ন', 'অপরাহ্ন', 'কৃষ্ণ'], Colors.blue),
    ConjunctData('ম', 'ম-ফলা', ['পদ্ম', 'রশ্মি', 'আত্মা', 'বিস্ময়'], Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        title: const Text(
          'ফলার চিহ্ন ও ব্যবহার',
          style: TextStyle(
            fontFamily: StringConstants.samirFont,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff033f70),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF667eea),
              Color(0xFF764ba2),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Expanded(
                child: folaGridWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget folaGridWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: conjunctList.length,
        itemBuilder: (context, index) {
          return _buildGlassyConjunctCard(index); // Adjust content index
        },
      ),
    );
  }

  Widget _buildGlassyConjunctCard(int index) {
    final conjunct = conjunctList[index];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.25),
            Colors.white.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
          BoxShadow(
            color: conjunct.color.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: conjunct.color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Symbol with glowing effect
                  Center(
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            conjunct.color.withOpacity(0.8),
                            conjunct.color.withOpacity(0.6),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(45),
                        boxShadow: [
                          BoxShadow(
                            color: conjunct.color.withOpacity(0.2),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                          BoxShadow(
                            color: conjunct.color.withOpacity(0.2),
                            blurRadius: 25,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          conjunct.symbol,
                          style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontFamily: StringConstants.samirFont),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Name with stylish container
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white.withOpacity(0.1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white.withOpacity(0.4)),
                      ),
                      child: Text(
                        conjunct.name,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: const Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Examples section
                  Text(
                    'উদাহরণ:',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white.withOpacity(0.9),
                      fontFamily: StringConstants.bnFontFamily,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Examples with beautiful chips
                  Expanded(
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: conjunct.examples
                            .map(
                              (example) => Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      conjunct.color.withOpacity(0.6),
                                      conjunct.color.withOpacity(0.4),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: conjunct.color.withOpacity(0.2),
                                      blurRadius: 5,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  example,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontFamily: StringConstants.samirFont,
                                    shadows: [
                                      Shadow(
                                        offset: const Offset(1, 1),
                                        blurRadius: 2,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
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

class ConjunctData {
  final String symbol;
  final String name;
  final List<String> examples;
  final Color color;

  ConjunctData(this.symbol, this.name, this.examples, this.color);
}
