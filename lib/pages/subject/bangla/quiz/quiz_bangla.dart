import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

class GameScreenBengaliLetterMatchOne extends StatefulWidget {
  const GameScreenBengaliLetterMatchOne({super.key});

  @override
  GameScreenBengaliLetterMatchOneState createState() => GameScreenBengaliLetterMatchOneState();
}

class GameScreenBengaliLetterMatchOneState extends State<GameScreenBengaliLetterMatchOne>
    with TickerProviderStateMixin {
  final List<String> correctOrder = ['অ', 'আ', 'ই', 'ঈ', 'উ', 'ঊ', 'ঋ', 'এ', 'ঐ', 'ও', 'ঔ'];
  List<String> shuffledVowels = [];
  List<String?> droppedVowels = [];
  late AnimationController _celebrationController;
  late Animation<double> _scaleAnimation;
  late AnimationController _shakeController;
  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();
    _initializeGame();
    _setupAnimations();
  }

  void _setupAnimations() {
    _celebrationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _celebrationController, curve: Curves.elasticOut),
    );

    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _shakeAnimation = Tween<double>(begin: -5.0, end: 5.0).animate(
      CurvedAnimation(parent: _shakeController, curve: Curves.elasticIn),
    );
  }

  void _initializeGame() {
    shuffledVowels = List.from(correctOrder);
    shuffledVowels.shuffle(Random());
    droppedVowels = List.filled(correctOrder.length, null);
  }

  void _resetGame() {
    setState(() {
      _initializeGame();
    });
  }

  bool _isGameComplete() {
    for (int i = 0; i < droppedVowels.length; i++) {
      if (droppedVowels[i] != correctOrder[i]) {
        return false;
      }
    }
    return droppedVowels.every((vowel) => vowel != null);
  }

  void _checkGameCompletion() {
    if (_isGameComplete()) {
      _celebrationController.forward().then((_) {
        _showCongratulationsDialog();
      });
    }
  }

  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ScaleTransition(
          scale: _scaleAnimation,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.lerp(Colors.purple[100], Colors.pink[100], 0.5),
            content: Container(
              height: MediaQuery.sizeOf(context).height * 0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple[100]!, Colors.pink[100]!, Colors.orange[100]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.bookmark_added_outlined,
                    size: 60,
                    color: Colors.teal,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '🎉 অভিনন্দন! 🎉',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.purple[800],
                      fontFamily: StringConstants.samirFont,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'সব বর্ণ সঠিক ক্রমে সাজিয়েছো!',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple[700],
                      fontFamily: StringConstants.bnFontFamily,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.green[400]!, Colors.blue[400]!],
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        _celebrationController.reset();
                        _resetGame();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      ),
                      child: const Text(
                        'আবার চেষ্টা করো',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onIncorrectDrop() {
    _shakeController.forward().then((_) {
      _shakeController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'বাংলা স্বরবর্ণ সাজানো',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: _resetGame,
              icon: const Icon(Icons.refresh, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[100]!,
              Colors.purple[100]!,
              Colors.pink[100]!,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // Drop zones
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.35,
                  child: AnimatedBuilder(
                    animation: _shakeAnimation,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(_shakeAnimation.value, 0),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            itemCount: correctOrder.length,
                            itemBuilder: (context, index) {
                              return DragTarget<String>(
                                onAccept: (vowel) {
                                  setState(() {
                                    // Remove from previous position if exists
                                    int previousIndex = droppedVowels.indexOf(vowel);
                                    if (previousIndex != -1) {
                                      droppedVowels[previousIndex] = null;
                                    }

                                    // Add to new position
                                    droppedVowels[index] = vowel;
                                    shuffledVowels.remove(vowel);
                                  });
                                  _checkGameCompletion();
                                },
                                onWillAccept: (vowel) => true,
                                builder: (context, candidateData, rejectedData) {
                                  bool isCorrect = droppedVowels[index] == correctOrder[index];
                                  bool hasVowel = droppedVowels[index] != null;

                                  return Container(
                                    decoration: BoxDecoration(
                                      gradient: hasVowel
                                          ? isCorrect
                                              ? LinearGradient(
                                                  colors: [Colors.green[300]!, Colors.green[500]!])
                                              : LinearGradient(
                                                  colors: [Colors.red[300]!, Colors.red[500]!])
                                          : LinearGradient(
                                              colors: [Colors.grey[200]!, Colors.grey[300]!]),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: candidateData.isNotEmpty
                                            ? Colors.blue
                                            : Colors.grey[400]!,
                                        width: candidateData.isNotEmpty ? 3 : 2,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: hasVowel
                                          ? GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  shuffledVowels.add(droppedVowels[index]!);
                                                  droppedVowels[index] = null;
                                                });
                                              },
                                              child: Text(
                                                droppedVowels[index]!,
                                                style: const TextStyle(
                                                    fontSize: 50,
                                                    color: Colors.white,
                                                    fontFamily: StringConstants.bnFontFamily),
                                              ),
                                            )
                                          : Text(
                                              '${index + 1}',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                // Draggable vowels
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.38,
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'বর্ণগুলো টেনে নিয়ে সঠিক জায়গায় বসাও',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontFamily: StringConstants.bnFontFamily,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Flexible(
                          child: SingleChildScrollView(
                            child: Wrap(
                              spacing: 16,
                              runSpacing: 10,
                              alignment: WrapAlignment.center,
                              children: shuffledVowels.map((vowel) {
                                return Draggable<String>(
                                  data: vowel,
                                  feedback: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.orange[400]!, Colors.pink[400]!],
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        vowel,
                                        style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.white,
                                          fontFamily: StringConstants.bnFontFamily,
                                        ),
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.blue[400]!, Colors.purple[400]!],
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 8,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        vowel,
                                        style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.white,
                                          fontFamily: StringConstants.bnFontFamily,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _celebrationController.dispose();
    _shakeController.dispose();
    super.dispose();
  }
}
