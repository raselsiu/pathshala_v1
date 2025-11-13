import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceAtomsQuiz extends StatefulWidget {
  const ScienceAtomsQuiz({super.key});

  @override
  ScienceAtomsQuizState createState() => ScienceAtomsQuizState();
}

class ScienceAtomsQuizState extends State<ScienceAtomsQuiz> with SingleTickerProviderStateMixin {
  // Quiz data
  final List<Map<String, dynamic>> _questions = [
    {
      "question": "পরমাণু কাকে বলে?",
      "answers": [
        "বৃহত্তম কণা যা খালি চোখে দেখা যায়",
        "ক্ষুদ্রতম কণা যা দিয়ে সবকিছু তৈরি",
        "শুধুমাত্র ধাতুর মৌলিক কণা",
        "শুধুমাত্র তরলের গঠনগত একক"
      ],
      "correctIndex": 1,
      "explanation": "পরমাণু হলো ক্ষুদ্রতম কণা যা দিয়ে সবকিছু তৈরি এবং এটি খালি চোখে দেখা যায় না।"
    },
    {
      "question": "পরমাণুর তিনটি প্রধান কণা কী কী?",
      "answers": [
        "প্রোটন, নিউট্রন, ফোটন",
        "ইলেকট্রন, প্রোটন, নিউট্রন",
        "নিউট্রন, পজিট্রন, ইলেকট্রন",
        "প্রোটন, নিউট্রিনো, ইলেকট্রন"
      ],
      "correctIndex": 1,
      "explanation":
          "পরমাণুর তিনটি প্রধান কণা হলো ইলেকট্রন (ঋণাত্মক), প্রোটন (ধনাত্মক) এবং নিউট্রন (নিরপেক্ষ)।"
    },
    {
      "question": "নিউক্লিয়াস কী দিয়ে গঠিত?",
      "answers": ["শুধু প্রোটন", "শুধু নিউট্রন", "প্রোটন ও ইলেকট্রন", "প্রোটন ও নিউট্রন"],
      "correctIndex": 3,
      "explanation":
          "পরমাণুর নিউক্লিয়াস গঠিত হয় প্রোটন এবং নিউট্রন দিয়ে, যেখানে ইলেকট্রন নিউক্লিয়াসের চারপাশে ঘোরে।"
    },
    {
      "question": "হাইড্রোজেন পরমাণুর কয়টি প্রোটন থাকে?",
      "answers": ["০টি", "১টি", "২টি", "৩টি"],
      "correctIndex": 1,
      "explanation":
          "হাইড্রোজেন হলো সবচেয়ে হালকা পরমাণু যার ১টি প্রোটন এবং ১টি ইলেকট্রন থাকে (নিউট্রন নেই)।"
    },
    {
      "question": "ইলেকট্রনের চার্জ কী ধরনের?",
      "answers": ["ধনাত্মক", "ঋণাত্মক", "নিরপেক্ষ", "কোনো চার্জ নেই"],
      "correctIndex": 1,
      "explanation": "ইলেকট্রন ঋণাত্মক চার্জযুক্ত কণা যা পরমাণুর নিউক্লিয়াসের চারপাশে ঘোরে।"
    },
    {
      "question": "পরমাণুর কোন কণাটির ভর সবচেয়ে কম?",
      "answers": ["প্রোটন", "নিউট্রন", "ইলেকট্রন", "সব কণার ভর সমান"],
      "correctIndex": 2,
      "explanation": "ইলেকট্রনের ভর প্রোটন বা নিউট্রনের ভরের প্রায় ১/১৮৩৬ ভাগ, অর্থাৎ সবচেয়ে কম।"
    },
    {
      "question": "নিউট্রনের বৈশিষ্ট্য কী?",
      "answers": [
        "ধনাত্মক চার্জযুক্ত",
        "ঋণাত্মক চার্জযুক্ত",
        "নিরপেক্ষ চার্জযুক্ত",
        "চার্জ পরিবর্তনশীল"
      ],
      "correctIndex": 2,
      "explanation":
          "নিউট্রন হলো নিরপেক্ষ চার্জযুক্ত কণা যা পরমাণুর নিউক্লিয়াসে প্রোটনের সাথে থাকে।"
    },
    {
      "question": "পরমাণুর ব্যাস প্রায় কত?",
      "answers": ["1e-5 মিটার", "1e-10 মিটার", "1e-15 মিটার", "1e-20 মিটার"],
      "correctIndex": 1,
      "explanation": "একটি পরমাণুর ব্যাস প্রায় 1e-10 মিটার বা 1 অ্যাংস্ট্রম (Å) ক্রমের হয়।"
    },
    {
      "question": "কোনটি সবচেয়ে হালকা পরমাণু?",
      "answers": ["হিলিয়াম", "হাইড্রোজেন", "অক্সিজেন", "কার্বন"],
      "correctIndex": 1,
      "explanation":
          "হাইড্রোজেন হলো সবচেয়ে হালকা এবং সরলতম পরমাণু যার মাত্র ১টি প্রোটন ও ১টি ইলেকট্রন থাকে।"
    },
    {
      "question": "পরমাণুর ভরের বেশিরভাগ অংশ কোথায় কেন্দ্রীভূত?",
      "answers": ["ইলেকট্রন বলয়ে", "নিউক্লিয়াসে", "সমস্ত পরমাণুতে সমানভাবে", "বাইরের শেলে"],
      "correctIndex": 1,
      "explanation":
          "পরমাণুর ভরের প্রায় সমস্ত অংশই নিউক্লিয়াসে কেন্দ্রীভূত থাকে কারণ প্রোটন ও নিউট্রনের ভর ইলেকট্রনের তুলনায় অনেক বেশি।"
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
          'কুইজ - ধাতু এবং অধাতু',
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
