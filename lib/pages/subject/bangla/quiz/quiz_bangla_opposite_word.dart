import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';

class GameScreenOppositeWord extends StatefulWidget {
  const GameScreenOppositeWord({super.key});

  @override
  GameScreenOppositeWordState createState() => GameScreenOppositeWordState();
}

class GameScreenOppositeWordState extends State<GameScreenOppositeWord>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late AnimationController _progressController;
  late Animation<double> _progressAnimation;

  final List<Map<String, String>> wordsData = [
    {"word": "বন্ধু", "opposit": "শত্রু"},
    {"word": "আপন", "opposit": "পর"},
    {"word": "ভালো", "opposit": "খারাপ"},
    {"word": "বড়", "opposit": "ছোট"},
    {"word": "আলো", "opposit": "অন্ধকার"},
    {"word": "সত্য", "opposit": "মিথ্যা"},
    {"word": "নতুন", "opposit": "পুরানো"},
    {"word": "উঠা", "opposit": "নামা"},
    {"word": "দিন", "opposit": "রাত"},
    {"word": "আনন্দ", "opposit": "দুঃখ"},
    {"word": "কঠিন", "opposit": "সহজ"},
    {"word": "উচ্চ", "opposit": "নিম্ন"},
    {"word": "আসে", "opposit": "যায়"},
    {"word": "বাঁচা", "opposit": "মরা"},
    {"word": "শান্তি", "opposit": "অশান্তি"},
    {"word": "গরম", "opposit": "ঠান্ডা"},
    {"word": "ভেতর", "opposit": "বাইর"},
    {"word": "পছন্দ", "opposit": "অপছন্দ"},
    {"word": "সোজা", "opposit": "বাকা"},
    {"word": "নম্র", "opposit": "অহংকারী"},
    {"word": "ধনী", "opposit": "গরিব"},
    {"word": "সাহসী", "opposit": "ভীরু"},
    {"word": "পরিষ্কার", "opposit": "নোংরা"},
    {"word": "সকালে", "opposit": "রাতে"},
    {"word": "বাম", "opposit": "ডান"},
    {"word": "আগে", "opposit": "পরে"},
    {"word": "দ্রুত", "opposit": "ধীরে"},
    {"word": "চাপা", "opposit": "খোলা"},
    {"word": "কাজ", "opposit": "বেকার"},
    {"word": "প্রশ্ন", "opposit": "উত্তর"},
  ];

  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  int wrongAttempts = 0;
  int totalAttempts = 0;

  List<Map<String, String>> shuffledQuestions = [];
  List<String> currentOptions = [];
  String selectedAnswer = '';
  bool isAnswerSelected = false;
  bool isCorrectAnswer = false;
  bool gameFinished = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );

    _progressController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _progressController, curve: Curves.easeInOut),
    );

    initializeGame();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _progressController.dispose();
    super.dispose();
  }

  void initializeGame() {
    shuffledQuestions = List.from(wordsData)..shuffle();
    generateOptions();
    _progressController.forward();
  }

  void generateOptions() {
    if (currentQuestionIndex >= shuffledQuestions.length) {
      setState(() {
        gameFinished = true;
      });
      return;
    }

    String correctAnswer = shuffledQuestions[currentQuestionIndex]['opposit']!;
    List<String> wrongOptions = wordsData
        .where((item) => item['opposit'] != correctAnswer)
        .map((item) => item['opposit']!)
        .toList();

    wrongOptions.shuffle();
    String wrongOption = wrongOptions.first;

    currentOptions = [correctAnswer, wrongOption];
    currentOptions.shuffle();

    setState(() {
      selectedAnswer = '';
      isAnswerSelected = false;
      isCorrectAnswer = false;
    });
  }

  void selectAnswer(String answer) {
    if (isAnswerSelected) return;

    setState(() {
      selectedAnswer = answer;
      isAnswerSelected = true;
      totalAttempts++;

      if (answer == shuffledQuestions[currentQuestionIndex]['opposit']) {
        isCorrectAnswer = true;
        correctAnswers++;
        _animationController.forward().then((_) {
          _animationController.reverse();
        });

        Future.delayed(const Duration(milliseconds: 1500), () {
          nextQuestion();
        });
      } else {
        isCorrectAnswer = false;
        wrongAttempts++;

        Future.delayed(const Duration(milliseconds: 1000), () {
          setState(() {
            selectedAnswer = '';
            isAnswerSelected = false;
          });
        });
      }
    });
  }

  void nextQuestion() {
    setState(() {
      currentQuestionIndex++;
    });

    if (currentQuestionIndex >= shuffledQuestions.length) {
      setState(() {
        gameFinished = true;
      });
    } else {
      generateOptions();
    }
  }

  void resetGame() {
    setState(() {
      currentQuestionIndex = 0;
      correctAnswers = 0;
      wrongAttempts = 0;
      totalAttempts = 0;
      gameFinished = false;
    });

    _progressController.reset();
    initializeGame();
  }

  Widget buildStars() {
    return Container(); // Empty container since stars are removed
  }

  @override
  Widget build(BuildContext context) {
    if (gameFinished) {
      return AdScaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple.shade400,
                Colors.pink.shade400,
                Colors.orange.shade400,
              ],
            ),
          ),
          child: Center(
            child: Card(
              margin: const EdgeInsets.all(20),
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.emoji_events,
                      size: 80,
                      color: Colors.amber,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '🎉 খেলা শেষ! 🎉',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.indigo,
                        fontFamily: StringConstants.samirFont,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'তুমি ${shuffledQuestions.length}টার মধ্যে $correctAnswersটা ঠিক করেছো!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green.shade700,
                        fontFamily: StringConstants.samirFont,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          ResultRow(
                            'সঠিক উত্তর',
                            correctAnswers.toString(),
                            Colors.green,
                          ),
                          ResultRow('ভুল চেষ্টা', wrongAttempts.toString(), Colors.red),
                          ResultRow('মোট চেষ্টা', totalAttempts.toString(), Colors.blue),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton.icon(
                      onPressed: resetGame,
                      icon: const Icon(Icons.refresh),
                      label: const Text(
                        'আবার খেলো',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: StringConstants.samirFont,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return AdScaffold(
        appBar: AppBar(
          title: const Text("বিপরীত শব্দের খেলা",
              style: TextStyle(
                color: Colors.white,
                fontFamily: StringConstants.samirFont,
              )),
          iconTheme: const IconThemeData(color: Colors.white),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft, // Start direction
                end: Alignment.bottomRight, // End direction
                colors: [
                  Color(0xff077568), // Start Color
                  Color(0xff0e4d81), // End Color
                ], // Customize your colors here
              ),
            ),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade400,
                  Colors.teal.shade400,
                  Colors.deepPurple.shade400,
                ],
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top -
                        MediaQuery.of(context).padding.bottom,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        // Header Card
                        Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10, left: 8, top: 10, right: 8),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.quiz, color: Colors.indigo, size: 24),
                                    const SizedBox(width: 10),
                                    Text(
                                      'প্রশ্ন ${currentQuestionIndex + 1}/${shuffledQuestions.length}',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.indigo,
                                        fontFamily: StringConstants.samirFont,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                AnimatedBuilder(
                                  animation: _progressAnimation,
                                  builder: (context, child) {
                                    return LinearProgressIndicator(
                                      value: (currentQuestionIndex + _progressAnimation.value) /
                                          shuffledQuestions.length,
                                      backgroundColor: Colors.grey.shade300,
                                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                                      minHeight: 5,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Main Question Card
                        Container(
                          constraints: BoxConstraints(
                            minHeight: MediaQuery.of(context).size.height * 0.6,
                          ),
                          child: Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.white, Colors.blue.shade50],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Question Section
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.shade50,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.indigo.shade200, width: 2),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'বিপরীত শব্দ খুঁজো',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.indigo.shade700,
                                            fontFamily: StringConstants.bnFontFamily,
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment: WrapCrossAlignment.center,
                                          children: [
                                            Text(
                                              shuffledQuestions[currentQuestionIndex]['word']!,
                                              style: TextStyle(
                                                fontSize: 28,
                                                color: Colors.indigo.shade800,
                                                fontFamily: StringConstants.samirFont,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const Icon(Icons.arrow_forward,
                                                size: 24, color: Colors.indigo),
                                            const SizedBox(width: 10),
                                            Container(
                                              constraints: BoxConstraints(
                                                minWidth: 100,
                                                maxWidth: MediaQuery.of(context).size.width * 0.35,
                                              ),
                                              height: 45,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: isAnswerSelected && isCorrectAnswer
                                                        ? Colors.green
                                                        : Colors.indigo,
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                              child: Center(
                                                child: AnimatedSwitcher(
                                                  duration: const Duration(milliseconds: 300),
                                                  child: selectedAnswer.isNotEmpty
                                                      ? Text(
                                                          selectedAnswer,
                                                          key: ValueKey(selectedAnswer),
                                                          style: TextStyle(
                                                            fontSize: 25,
                                                            fontFamily: StringConstants.samirFont,
                                                            color: isCorrectAnswer
                                                                ? Colors.green
                                                                : Colors.red,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                          overflow: TextOverflow.ellipsis,
                                                        )
                                                      : const Text(
                                                          '____?____',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.grey,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  // Options Section
                                  Text(
                                    'উত্তর বেছে নাও -',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.indigo.shade700,
                                      fontFamily: StringConstants.bnFontFamily,
                                    ),
                                  ),
                                  const SizedBox(height: 20),

                                  ...currentOptions.map((option) {
                                    bool isSelected = selectedAnswer == option;
                                    bool isCorrect = isSelected && isCorrectAnswer;
                                    bool isWrong =
                                        isSelected && !isCorrectAnswer && isAnswerSelected;

                                    return Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      width: double.infinity,
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                        child: ElevatedButton(
                                          onPressed: () => selectAnswer(option),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: isCorrect
                                                ? Colors.green
                                                : isWrong
                                                    ? Colors.red
                                                    : Colors.indigo,
                                            foregroundColor: Colors.white,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 18, horizontal: 20),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            elevation: isSelected ? 15 : 8,
                                            shadowColor: isCorrect
                                                ? Colors.green.shade300
                                                : isWrong
                                                    ? Colors.red.shade300
                                                    : Colors.indigo.shade300,
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  option,
                                                  style: const TextStyle(
                                                    fontSize: 25,
                                                    fontFamily: StringConstants.samirFont,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                              if (isSelected) ...[
                                                const SizedBox(width: 8),
                                                Icon(
                                                  isCorrect ? Icons.check_circle : Icons.cancel,
                                                  size: 20,
                                                ),
                                              ],
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}

class ResultRow extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const ResultRow(this.label, this.value, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label:',
            style: const TextStyle(
              fontSize: 18,
              fontFamily: StringConstants.samirFont,
            ),
          ),
          Text(
            '$value টি',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
              fontFamily: StringConstants.enFontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
