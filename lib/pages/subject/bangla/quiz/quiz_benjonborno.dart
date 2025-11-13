import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunamonir_pathshala/utils/en_to_bn_number.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

final AudioPlayer _audioPlayer = AudioPlayer();

class GameScreenBengaliBenjonborno extends StatefulWidget {
  const GameScreenBengaliBenjonborno({super.key});

  @override
  GameScreenBengaliBenjonbornoState createState() => GameScreenBengaliBenjonbornoState();
}

class GameScreenBengaliBenjonbornoState extends State<GameScreenBengaliBenjonborno>
    with TickerProviderStateMixin {
  final List<String> originalAlphabets = [
    'ক',
    'খ',
    'গ',
    'ঘ',
    'ঙ',
    'চ',
    'ছ',
    'জ',
    'ঝ',
    'ঞ',
    'ট',
    'ঠ',
    'ড',
    'ঢ',
    'ণ',
    'ত',
    'থ',
    'দ',
    'ধ',
    'ন',
    'প',
    'ফ',
    'ব',
    'ভ',
    'ম',
    'য',
    'র',
    'ল',
    'শ',
    'ষ',
    'স',
    'হ',
    'ড়',
    'ঢ়',
    'য়',
    'ৎ',
    'ং',
    'ঃ',
    'ঁ'
  ];

  List<String> shuffledAlphabets = [];
  List<String> acceptedAlphabets = [];
  int currentExpectedIndex = 0;
  int wrongAttempts = 0;
  DateTime? gameStartTime;
  bool gameCompleted = false;

  late AnimationController _shakeController;
  late AnimationController _successController;
  late Animation<double> _shakeAnimation;
  late Animation<double> _successAnimation;

  @override
  void initState() {
    super.initState();
    _initializeGame();
    _setupAnimations();
  }

  void _setupAnimations() {
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _successController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _shakeAnimation = Tween<double>(
      begin: 0,
      end: 10,
    ).animate(CurvedAnimation(
      parent: _shakeController,
      curve: Curves.elasticIn,
    ));

    _successAnimation = Tween<double>(
      begin: 1,
      end: 1.2,
    ).animate(CurvedAnimation(
      parent: _successController,
      curve: Curves.elasticOut,
    ));
  }

  void _initializeGame() {
    shuffledAlphabets = List.from(originalAlphabets);
    shuffledAlphabets.shuffle(Random());
    acceptedAlphabets.clear();
    currentExpectedIndex = 0;
    wrongAttempts = 0;
    gameStartTime = DateTime.now();
    gameCompleted = false;
  }

  void _playSuccessSound() async {
    await _audioPlayer.play(AssetSource('audios/correct.mp3'));
    HapticFeedback.lightImpact();
  }

  void _playErrorSound() async {
    await _audioPlayer.play(AssetSource('audios/error.m4a'));
    HapticFeedback.vibrate();
  }

  void _handleDrop(String droppedAlphabet) {
    if (droppedAlphabet == originalAlphabets[currentExpectedIndex]) {
      // Correct alphabet
      setState(() {
        acceptedAlphabets.add(droppedAlphabet);
        shuffledAlphabets.remove(droppedAlphabet);
        currentExpectedIndex++;

        // Keep only last 2 alphabets visible in accepted list
        if (acceptedAlphabets.length > 2) {
          acceptedAlphabets.removeAt(0);
        }
      });

      _playSuccessSound();
      _successController.forward().then((_) {
        _successController.reverse();
      });

      // Check if game is completed
      if (currentExpectedIndex >= originalAlphabets.length) {
        setState(() {
          gameCompleted = true;
        });
        _showGameCompletionDialog();
      }
    } else {
      // Wrong alphabet
      setState(() {
        wrongAttempts++;
      });
      _playErrorSound();
      _shakeController.forward().then((_) {
        _shakeController.reverse();
      });
    }
  }

  void _showGameCompletionDialog() {
    final duration = DateTime.now().difference(gameStartTime!);
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.celebration, color: Colors.amber, size: 30),
              SizedBox(width: 10),
              Center(
                child: Text('অভিনন্দন! 🎉',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: StringConstants.samirFont,
                    )),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.star, color: Colors.orange, size: 50),
              const SizedBox(height: 15),
              const Text(
                'সফলভাবে সব ব্যঞ্জনবর্ণ সাজিয়েছো!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontFamily: StringConstants.bnFontFamily,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('ভুল চেষ্টা:',
                            style: TextStyle(fontFamily: StringConstants.samirFont)),
                        Text('${convertToBengaliNumber(wrongAttempts.toString())} বার',
                            style: TextStyle(
                              color: Colors.red.shade600,
                              fontFamily: StringConstants.bnFontFamily,
                              fontSize: 16,
                            )),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('সময় লেগেছে:',
                            style: TextStyle(fontFamily: StringConstants.samirFont)),
                        Text(
                            '${convertToBengaliNumber(minutes.toString())} মি ${convertToBengaliNumber(seconds.toString())} সে',
                            style: const TextStyle(
                              color: Colors.green,
                              fontFamily: StringConstants.bnFontFamily,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _initializeGame();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.replay),
                  SizedBox(width: 8),
                  Text('আবার খেলুন', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _initializeGame();
                });
              },
              child: const Icon(Icons.restart_alt),
            ),
          ),
        ],
        title: const Text(
          'ব্যঞ্জনবর্ণ খেলা',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: Colors.teal.shade600,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Progress and Stats Section
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatCard(
                  'অগ্রগতি',
                  '${convertToBengaliNumber(currentExpectedIndex.toString())}/${convertToBengaliNumber((originalAlphabets.length).toString())}',
                  Colors.blue,
                ),
                _buildStatCard('ভুল', convertToBengaliNumber(wrongAttempts.toString()), Colors.red),
                _buildStatCard(
                    'পরবর্তী',
                    currentExpectedIndex < originalAlphabets.length
                        ? originalAlphabets[currentExpectedIndex]
                        : '✓',
                    Colors.green),
              ],
            ),
          ),

          const SizedBox(height: 10),
          // Drop Zone Section
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: acceptedAlphabets.length == 2 && _shakeController.isAnimating
                      ? Colors.red.shade400
                      : Colors.teal.shade300,
                  width: 3,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: DragTarget<String>(
                onWillAccept: (data) => true,
                onAccept: _handleDrop,
                builder: (context, candidateData, rejectedData) {
                  return AnimatedBuilder(
                    animation: _shakeAnimation,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(_shakeAnimation.value, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'সঠিক ক্রমে ব্যঞ্জনবর্ণ রাখো',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.teal.shade700,
                                fontFamily: StringConstants.bnFontFamily,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            if (acceptedAlphabets.isEmpty)
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.teal.shade300,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.teal.shade400,
                                ),
                              )
                            else
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: acceptedAlphabets.map((alphabet) {
                                  return AnimatedBuilder(
                                    animation: _successAnimation,
                                    builder: (context, child) {
                                      return Transform.scale(
                                        scale: acceptedAlphabets.last == alphabet
                                            ? _successAnimation.value
                                            : 1.0,
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          margin: const EdgeInsets.symmetric(horizontal: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade100,
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all(
                                              color: Colors.green.shade400,
                                              width: 2,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              alphabet,
                                              style: TextStyle(
                                                fontSize: 55,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.green.shade700,
                                                fontFamily: StringConstants.samirFont,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Alphabet List Section
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1,
                      ),
                      itemCount: shuffledAlphabets.length,
                      itemBuilder: (context, index) {
                        final alphabet = shuffledAlphabets[index];
                        return Draggable<String>(
                          data: alphabet,
                          feedback: Material(
                            elevation: 8,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade100,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.orange.shade400,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  alphabet,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange.shade700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          childWhenDragging: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 2,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.green.shade300,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                alphabet,
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontFamily: StringConstants.samirFont,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
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

  Widget _buildStatCard(String title, String value, Color color) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: StringConstants.bnFontFamily,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
            fontFamily: StringConstants.enFontFamily,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _shakeController.dispose();
    _successController.dispose();
    super.dispose();
  }
}
