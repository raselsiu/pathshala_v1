import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class PhysicsQuiz extends StatefulWidget {
  const PhysicsQuiz({super.key});

  @override
  PhysicsQuizState createState() => PhysicsQuizState();
}

class PhysicsQuizState extends State<PhysicsQuiz> with SingleTickerProviderStateMixin {
  // Quiz data
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'পদার্থের কয়টি অবস্থা আছে?',
      'answers': ['২টি', '৩টি', '৪টি', '৫টি'],
      'correctIndex': 1,
      'explanation': 'পদার্থের তিনটি অবস্থা আছে: কঠিন, তরল ও বায়বীয়।'
    },
    {
      'question': 'পানির স্ফুটনাংক কত?',
      'answers': [
        '০ ডিগ্রি সেলসিয়াস',
        '৫০ ডিগ্রি সেলসিয়াস',
        '১০০ ডিগ্রি সেলসিয়াস',
        '১৫০ ডিগ্রি সেলসিয়াস'
      ],
      'correctIndex': 2,
      'explanation': 'পানির স্ফুটনাংক ১০০ ডিগ্রি সেলসিয়াস। চাপ বৃদ্ধি পেলে স্ফুটনাংক বৃদ্ধি পায়।'
    },
    {
      'question': 'নিচের কোনটি নিষ্ক্রিয় মৌল?',
      'answers': ['অক্সিজেন', 'হাইড্রোজেন', 'নাইট্রোজেন', 'হিলিয়াম'],
      'correctIndex': 3,
      'explanation': 'হিলিয়াম একটি নিষ্ক্রিয় মৌল। অন্যান্য নিষ্ক্রিয় মৌল হল নিয়ন, আর্গন ইত্যাদি।'
    },
    {
      'question': 'প্রকৃতিতে প্রাপ্ত সবচেয়ে হালকা মৌল কোনটি?',
      'answers': ['হিলিয়াম', 'হাইড্রোজেন', 'অক্সিজেন', 'লিথিয়াম'],
      'correctIndex': 1,
      'explanation': 'প্রকৃতিতে প্রাপ্ত সবচেয়ে হালকা মৌল হল হাইড্রোজেন।'
    },
    {
      'question': 'পদার্থের কোন পরিবর্তনে নতুন পদার্থ তৈরি হয়?',
      'answers': ['ভৌত পরিবর্তন', 'রাসায়নিক পরিবর্তন', 'উভয়টিই', 'কোনটিই নয়'],
      'correctIndex': 1,
      'explanation': 'রাসায়নিক পরিবর্তনের ফলে নতুন পদার্থ তৈরি হয়, যেমন লোহায় মরিচা ধরা।'
    },
    {
      'question': 'পানির ঘনত্ব সবচেয়ে বেশি কোন তাপমাত্রায়?',
      'answers': [
        '০ ডিগ্রি সেলসিয়াস',
        '৪ ডিগ্রি সেলসিয়াস',
        '১০০ ডিগ্রি সেলসিয়াস',
        '-৪ ডিগ্রি সেলসিয়াস'
      ],
      'correctIndex': 1,
      'explanation': 'পানির ঘনত্ব সবচেয়ে বেশি ৪ ডিগ্রি সেলসিয়াস তাপমাত্রায়।'
    },
    {
      'question': 'প্রকৃতিতে প্রাপ্ত সবচেয়ে শক্ত পদার্থ কোনটি?',
      'answers': ['লোহা', 'সোনা', 'হীরা', 'গ্রাফাইট'],
      'correctIndex': 2,
      'explanation': 'প্রকৃতিতে প্রাপ্ত সবচেয়ে শক্ত পদার্থ হল হীরা (হীরক)।'
    },
    {
      'question': 'নিচের কোনটি বায়বীয় পদার্থের উদাহরণ?',
      'answers': ['লোহা', 'পানি', 'অক্সিজেন', 'বরফ'],
      'correctIndex': 2,
      'explanation': 'অক্সিজেন একটি বায়বীয় পদার্থ। বায়বীয় পদার্থের নির্দিষ্ট আকার ও আয়তন নেই।'
    },
    {
      'question': 'কোন তাপমাত্রায় কঠিন পদার্থ তরলে পরিণত হয়?',
      'answers': ['স্ফুটনাংকে', 'গলনাংকে', 'কক্ষ তাপমাত্রায়', 'যেকোনো তাপমাত্রায়'],
      'correctIndex': 1,
      'explanation': 'গলনাংকে কঠিন পদার্থ তরলে পরিণত হয়। পানির গলনাংক ০ ডিগ্রি সেলসিয়াসদ।'
    },
    {
      'question': 'নিচের কোনটি ভৌত পরিবর্তনের উদাহরণ?',
      'answers': ['লোহায় মরিচা ধরা', 'কাগজ পোড়ানো', 'বরফ গলে পানি হওয়া', 'দুধ টক হওয়া'],
      'correctIndex': 2,
      'explanation': 'বরফ গলে পানি হওয়া একটি ভৌত পরিবর্তন, কারণ এতে শুধু অবস্থার পরিবর্তন হয়।'
    },
    {
      'question': 'কার্বনের কোন রূপটি বিদ্যুৎ পরিবাহী?',
      'answers': ['হীরা', 'গ্রাফাইট', 'কয়লা', 'কাঠ'],
      'correctIndex': 1,
      'explanation': 'গ্রাফাইট বিদ্যুৎ পরিবাহী, কিন্তু হীরা বিদ্যুৎ অপরিবাহী।'
    },
    {
      'question': 'কোনটি ঊর্ধ্বপাতিত পদার্থ?',
      'answers': ['লবণ', 'চিনি', 'আয়োডিন', 'বালি'],
      'correctIndex': 2,
      'explanation': 'আয়োডিন একটি ঊর্ধ্বপাতিত পদার্থ যা উত্তপ্ত করলে সরাসরি বাষ্পে পরিণত হয়।'
    },
    {
      'question': 'সবচেয়ে হালকা গ্যাস কোনটি?',
      'answers': ['অক্সিজেন', 'নাইট্রোজেন', 'হাইড্রোজেন', 'কার্বন ডাই-অক্সাইড'],
      'correctIndex': 2,
      'explanation': 'হাইড্রোজেন সবচেয়ে হালকা গ্যাস।'
    },
    {
      'question': 'নিচের কোনটি অধাতু?',
      'answers': ['লোহা', 'তামা', 'সালফার', 'অ্যালুমিনিয়াম'],
      'correctIndex': 2,
      'explanation': 'সালফার একটি অধাতু যা তাপ ও বিদ্যুৎ অপরিবাহী।'
    },
    {
      'question': 'কোনটি জৈব যৌগ?',
      'answers': ['NaCl', 'H₂O', 'CO₂', 'CH₄'],
      'correctIndex': 3,
      'explanation': 'CH₄ (মিথেন) একটি জৈব যৌগ যা কার্বন ও হাইড্রোজেন দ্বারা গঠিত।'
    },
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
          'পদার্থ কুইজ',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Color(0xff0667b6)),
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
          decoration: const BoxDecoration(color: Color(0xff0667b6)),
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
                        backgroundColor: Colors.purple,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'আবার খেলুন',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: StringConstants.samirFont,
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
          style: TextStyle(color: Colors.grey.shade600),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
