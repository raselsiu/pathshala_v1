import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceBiomondalQuiz extends StatefulWidget {
  const ScienceBiomondalQuiz({super.key});

  @override
  ScienceBiomondalQuizState createState() => ScienceBiomondalQuizState();
}

class ScienceBiomondalQuizState extends State<ScienceBiomondalQuiz>
    with SingleTickerProviderStateMixin {
  // Quiz data
  final List<Map<String, dynamic>> _questions = [
    {
      "question": "বায়ুমণ্ডল কী?",
      "answers": [
        "পৃথিবীর জলরাশি",
        "ভূ-পৃষ্ঠকে বেষ্টনকারী বায়ুর আবরণ",
        "পৃথিবীর ভূত্বক",
        "মহাসাগরের পানির স্তর"
      ],
      "correctIndex": 1,
      "explanation":
          "বায়ুমণ্ডল হলো ভূ-পৃষ্ঠের চারপাশে বেষ্টন করে থাকা বায়ুর আবরণ যা পৃথিবীর মাধ্যাকর্ষণ শক্তির দ্বারা ধৃত থাকে।"
    },
    {
      "question": "বায়ুমণ্ডলের আনুমানিক বয়স কত?",
      "answers": ["১০ কোটি বছর", "৩৫ কোটি বছর", "১০০ কোটি বছর", "৫০০ কোটি বছর"],
      "correctIndex": 1,
      "explanation": "বায়ুমণ্ডলের বয়স প্রায় ৩৫ কোটি বছর বলে ধারণা করা হয়।"
    },
    {
      "question": "বায়ুমণ্ডলের প্রধান স্তর কয়টি?",
      "answers": ["৩টি", "৫টি", "৭টি", "৯টি"],
      "correctIndex": 1,
      "explanation":
          "বায়ুমণ্ডলকে ৫টি প্রধান স্তরে ভাগ করা হয়: ট্রপোমণ্ডল, স্ট্রাটোমণ্ডল, মেসোমণ্ডল, তাপমণ্ডল এবং এক্সোমণ্ডল।"
    },
    {
      "question": "আবহাওয়া সংক্রান্ত প্রায় সকল প্রক্রিয়া ঘটে কোন স্তরে?",
      "answers": ["স্ট্রাটোমণ্ডল", "ট্রপোমণ্ডল", "মেসোমণ্ডল", "তাপমণ্ডল"],
      "correctIndex": 1,
      "explanation":
          "মেঘ, বৃষ্টিপাত, বজ্রপাত, ঝড় ইত্যাদি সব আবহাওয়া সংক্রান্ত প্রক্রিয়া ট্রপোমণ্ডলে ঘটে।"
    },
    {
      "question": "ওজোন স্তর কোথায় অবস্থিত?",
      "answers": ["ট্রপোমণ্ডল", "স্ট্রাটোমণ্ডল", "মেসোমণ্ডল", "তাপমণ্ডল"],
      "correctIndex": 1,
      "explanation":
          "ওজোন স্তর (O₃) স্ট্রাটোমণ্ডলে অবস্থিত যা সূর্যের ক্ষতিকর অতিবেগুনি রশ্মি শোষণ করে।"
    },
    {
      "question": "বায়ুমণ্ডলে কোন গ্যাসের পরিমাণ সবচেয়ে বেশি?",
      "answers": ["অক্সিজেন", "কার্বন ডাই অক্সাইড", "নাইট্রোজেন", "আর্গন"],
      "correctIndex": 2,
      "explanation": "বায়ুমণ্ডলে নাইট্রোজেনের পরিমাণ সর্বাধিক (প্রায় ৭৮.০২%)।"
    },
    {
      "question": "বেতার তরঙ্গ কোন স্তরে প্রতিফলিত হয়?",
      "answers": ["ট্রপোমণ্ডল", "আয়নোমণ্ডল", "এক্সোমণ্ডল", "ওজোন স্তর"],
      "correctIndex": 1,
      "explanation":
          "তাপমণ্ডলের নিম্নাংশ আয়নোমণ্ডলে বেতার তরঙ্গ প্রতিফলিত হয় যা দূরবর্তী যোগাযোগ সম্ভব করে।"
    },
    {
      "question": "বায়ুমণ্ডলের কোন স্তরে উল্কাপিণ্ড পুড়ে যায়?",
      "answers": ["ট্রপোমণ্ডল", "স্ট্রাটোমণ্ডল", "মেসোমণ্ডল", "এক্সোমণ্ডল"],
      "correctIndex": 2,
      "explanation": "মেসোমণ্ডলে উল্কাপিণ্ড বায়ুর সাথে ঘর্ষণের ফলে পুড়ে যায় এবং আলোকিত হয়।"
    },
    {
      "question": "বায়ুমণ্ডলের কোন স্তরে মহাকাশযান অবস্থান করে?",
      "answers": ["ট্রপোমণ্ডল", "স্ট্রাটোমণ্ডল", "তাপমণ্ডল", "এক্সোমণ্ডল"],
      "correctIndex": 3,
      "explanation":
          "এক্সোমণ্ডল বায়ুমণ্ডলের সর্বোচ্চ স্তর যেখানে মহাকাশযানগুলো সাধারণত অবস্থান করে।"
    },
    {
      "question": "বায়ুমণ্ডলে অক্সিজেনের পরিমাণ কত?",
      "answers": ["প্রায় ২০.৭১%", "প্রায় ৫০%", "প্রায় ০.০৩%", "প্রায় ৭৮%"],
      "correctIndex": 0,
      "explanation": "বায়ুমণ্ডলে অক্সিজেনের পরিমাণ প্রায় ২০.৭১% যা জীবনের জন্য অপরিহার্য।"
    },
    {
      "question": "'প্রাকৃতিক সৌরপর্দা' বলা হয় কাকে?",
      "answers": ["কার্বন ডাই অক্সাইড স্তরকে", "ওজোন স্তরকে", "নাইট্রোজেন স্তরকে", "জলীয় বাষ্পকে"],
      "correctIndex": 1,
      "explanation":
          "ওজোন স্তর সূর্যের ক্ষতিকর অতিবেগুনি রশ্মি শোষণ করে পৃথিবীকে রক্ষা করে বলে একে 'প্রাকৃতিক সৌরপর্দা' বলা হয়।"
    },
    {
      "question": "বায়ুর ঘনত্ব কোথায় সবচেয়ে বেশি?",
      "answers": ["পর্বতশৃঙ্গে", "সমুদ্রপৃষ্ঠে", "১০ কিলোমিটার উচ্চতায়", "৩০ কিলোমিটার উচ্চতায়"],
      "correctIndex": 1,
      "explanation": "সমুদ্রপৃষ্ঠে বায়ুর চাপ সবচেয়ে বেশি হওয়ায় এখানে ঘনত্বও সর্বাধিক।"
    },
    {
      "question": "ট্রপোমণ্ডলের গভীরতা নিরক্ষীয় অঞ্চলে কত?",
      "answers": ["৮-১০ কিলোমিটার", "১৬-১৯ কিলোমিটার", "২৫-৩০ কিলোমিটার", "৩৫-৪০ কিলোমিটার"],
      "correctIndex": 1,
      "explanation":
          "নিরক্ষীয় অঞ্চলে ট্রপোমণ্ডলের গভীরতা ১৬-১৯ কিলোমিটার যেখানে মেরু অঞ্চলে এটি মাত্র ৮ কিলোমিটার।"
    },
    {
      "question": "বায়ুমণ্ডলের কোন স্তরে আন্তর্জাতিক মহাকাশ স্টেশন অবস্থান করে?",
      "answers": ["স্ট্রাটোমণ্ডল", "মেসোমণ্ডল", "তাপমণ্ডল", "এক্সোমণ্ডল"],
      "correctIndex": 2,
      "explanation":
          "তাপমণ্ডলে (প্রায় ৪০০ কিলোমিটার উচ্চতায়) আন্তর্জাতিক মহাকাশ স্টেশন অবস্থান করে।"
    },
    {
      "question": "বায়ুমণ্ডলের কোন উপাদান গ্রিনহাউজ প্রভাবের জন্য প্রধানত দায়ী?",
      "answers": ["নাইট্রোজেন", "অক্সিজেন", "কার্বন ডাই অক্সাইড", "আর্গন"],
      "correctIndex": 2,
      "explanation":
          "কার্বন ডাই অক্সাইড (CO₂) এবং অন্যান্য গ্রিনহাউজ গ্যাস তাপ আটকে রাখে যা গ্রিনহাউজ প্রভাব সৃষ্টি করে।"
    }
  ];

  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;
  int _wrongAnswers = 0;
  bool _isAnswered = false;
  int? _selectedAnswerIndex;
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _progressAnimation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        setState(() {
          _progressValue = _progressAnimation.value;
        });
      });

    // Start progress animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _answerQuestion(int answerIndex) {
    if (_isAnswered) return;

    setState(() {
      _isAnswered = true;
      _selectedAnswerIndex = answerIndex;

      if (answerIndex == _questions[_currentQuestionIndex]['correctIndex']) {
        _correctAnswers++;
      } else {
        _wrongAnswers++;
      }

      // Reset animation for next question
      _animationController.reset();
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (_currentQuestionIndex < _questions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _isAnswered = false;
          _selectedAnswerIndex = null;
          _animationController.forward();
        });
      } else {
        // Show results
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              correctAnswers: _correctAnswers,
              wrongAnswers: _wrongAnswers,
              totalQuestions: _questions.length,
            ),
          ),
        ).then((_) {
          // Reset quiz when coming back from results
          setState(() {
            _currentQuestionIndex = 0;
            _correctAnswers = 0;
            _wrongAnswers = 0;
            _isAnswered = false;
            _selectedAnswerIndex = null;
            _animationController.forward();
          });
        });
      }
    });
  }

  Color _getAnswerColor(int answerIndex) {
    if (!_isAnswered) return const Color(0xcb077568);

    if (answerIndex == _questions[_currentQuestionIndex]['correctIndex']) {
      return Colors.green;
    } else if (answerIndex == _selectedAnswerIndex) {
      return Colors.red;
    }
    return Colors.blueGrey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'কুইজ - বায়ুমন্ডল',
          style: TextStyle(
              color: Colors.white,
              fontFamily: StringConstants.samirFont,
              fontWeight: FontWeight.w200),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Color(0xff046055)),
        ),
      ),
      body: Column(
        children: [
          // Progress bar
          Container(
            margin: const EdgeInsets.all(16),
            height: 10,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: (_currentQuestionIndex + _progressValue) / _questions.length,
              backgroundColor: const Color(0x2af12a7d),
              valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffb12a7d)),
            ),
          ),

          // Question counter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'প্রশ্নঃ ${_currentQuestionIndex + 1}/${_questions.length}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: StringConstants.bnFontFamily,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.check, color: Colors.green),
                    Text(
                      '$_correctAnswers ',
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: StringConstants.enFontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(Icons.close, color: Colors.red),
                    Text(
                      '$_wrongAnswers',
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: StringConstants.enFontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Question card
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Question text
                      Text(
                        _questions[_currentQuestionIndex]['question'],
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: StringConstants.samirFont,
                          color: Color(0xffa60486),
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 30),

                      // Answers
                      Expanded(
                        child: ListView.builder(
                          itemCount: _questions[_currentQuestionIndex]['answers'].length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _getAnswerColor(index),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  elevation: _isAnswered ? 0 : 3,
                                ),
                                onPressed: () => _answerQuestion(index),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Text(
                                    _questions[_currentQuestionIndex]['answers'][index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: StringConstants.bnFontFamily,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // Explanation (shown after answering)
                      if (_isAnswered)
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.purple),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'ব্যাখ্যা:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  _questions[_currentQuestionIndex]['explanation'],
                                  style: const TextStyle(
                                    color: Colors.purple,
                                    fontSize: 16,
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
          ),
        ],
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int wrongAnswers;
  final int totalQuestions;

  const ResultScreen({
    super.key,
    required this.correctAnswers,
    required this.wrongAnswers,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = (correctAnswers / totalQuestions) * 100;
    String resultText;
    Color resultColor;

    if (percentage >= 80) {
      resultText = 'অসাধারণ!';
      resultColor = Colors.green;
    } else if (percentage >= 50) {
      resultText = 'ভালো হয়েছে!';
      resultColor = Colors.blue;
    } else {
      resultText = 'আরও চেষ্টা করুন';
      resultColor = Colors.brown;
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'ফলাফল',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Color(0xff046055)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.purple.shade50],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Animated result circle
                    TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: percentage),
                      duration: const Duration(seconds: 2),
                      builder: (context, double value, child) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 180,
                              child: CircularProgressIndicator(
                                value: value / 100,
                                strokeWidth: 15,
                                backgroundColor: Colors.grey.shade300,
                                valueColor: AlwaysStoppedAnimation<Color>(resultColor),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '${value.toInt()}%',
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: resultColor,
                                  ),
                                ),
                                Text(
                                  resultText,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: StringConstants.bnFontFamily,
                                    color: resultColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),

                    const SizedBox(height: 30),

                    // Score details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildScoreCard(
                          'সঠিক উত্তর',
                          '$correctAnswers',
                          Colors.green,
                          Icons.check,
                        ),
                        _buildScoreCard(
                          'ভুল উত্তর',
                          '$wrongAnswers',
                          Colors.red,
                          Icons.close,
                        ),
                        _buildScoreCard(
                          'মোট প্রশ্ন',
                          '$totalQuestions',
                          Colors.blue,
                          Icons.list_alt,
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // Restart button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'আবার খেলুন',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: StringConstants.bnFontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScoreCard(String title, String value, Color color, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontFamily: StringConstants.bnFontFamily, fontSize: 18),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: StringConstants.enFontFamily,
            color: color,
          ),
        ),
      ],
    );
  }
}
