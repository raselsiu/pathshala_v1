import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MegnetQuiz extends StatefulWidget {
  const MegnetQuiz({super.key});

  @override
  MegnetQuizState createState() => MegnetQuizState();
}

class MegnetQuizState extends State<MegnetQuiz> with SingleTickerProviderStateMixin {
  // Quiz data
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'চুম্বক কী?',
      'answers': [
        'যে বস্তু তাপ ও বিদ্যুৎ পরিবাহী',
        'যে বস্তুর আকর্ষণ ও দিক নির্দেশক ধর্ম আছে',
        'যে বস্তু সর্বদা ঠান্ডা থাকে',
        'যে বস্তু আলো প্রতিফলিত করে'
      ],
      'correctIndex': 1,
      'explanation':
          'যে সকল বস্তুর আকর্ষণ ও দিক নির্দেশক ধর্ম আছে, তাকে চুম্বক বলে। চুম্বকে পরিণত করলে এর ভর, ঘনত্ব, আয়তন বা উষ্ণতার কোনো পরিবর্তন হয় না।'
    },
    {
      'question': 'চৌম্বক পদার্থ বলতে কী বোঝায়?',
      'answers': [
        'যে পদার্থ বিদ্যুৎ পরিবাহী',
        'যে পদার্থকে চুম্বক আকর্ষণ করে এবং চুম্বকে পরিণত করা যায়',
        'যে পদার্থ পানিতে ভাসে',
        'যে পদার্থ তাপ অপরিবাহী'
      ],
      'correctIndex': 1,
      'explanation':
          'চৌম্বক পদার্থ হলো লোহা ও লোহার যৌগ এবং লোহা ও ইস্পাত যুক্ত সংকর ধাতুসমূহ যাদেরকে চুম্বক আকর্ষণ করে এবং চুম্বকে পরিণত করা যায়।'
    },
    {
      'question': 'নিচের কোনটি অচৌম্বক পদার্থ?',
      'answers': ['লোহা', 'নিকেল', 'কোবাল্ট', 'তামা'],
      'correctIndex': 3,
      'explanation':
          'তামা একটি অচৌম্বক পদার্থ। অচৌম্বক পদার্থের উদাহরণ: সোনা, রুপা, তামা, অ্যালুমিনিয়াম, স্টিল ইত্যাদি।'
    },
    {
      'question': 'চুম্বকে পরিণত করলে কোনটি পরিবর্তন হয় না?',
      'answers': ['ভর', 'ঘনত্ব', 'আয়তন', 'উপরের সবগুলোই'],
      'correctIndex': 3,
      'explanation':
          'কোনো পদার্থকে চুম্বকে পরিণত করলে এর ভর, ঘনত্ব, আয়তন বা উষ্ণতার কোনো কিছুরই পরিবর্তন হয় না।'
    },
    {
      'question': 'অচৌম্বক পদার্থ সম্পর্কে কোনটি সঠিক?',
      'answers': [
        'চুম্বক দ্বারা আকর্ষিত হয়',
        'চুম্বকে পরিণত করা যায়',
        'চুম্বক দ্বারা আকর্ষিত হয় না',
        'লৌহচৌম্বক ধর্ম প্রদর্শন করে'
      ],
      'correctIndex': 2,
      'explanation':
          'অচৌম্বক পদার্থ চুম্বক দ্বারা আকর্ষিত হয় না এবং এদেরকে চুম্বকে পরিণত করা যায় না।'
    },
    {
      'question': 'নিচের কোন জোড়াটি শুধুমাত্র অচৌম্বক পদার্থের?',
      'answers': ['লোহা-নিকেল', 'সোনা-রুপা', 'কোবাল্ট-ইস্পাত', 'লোহা-কোবাল্ট'],
      'correctIndex': 1,
      'explanation': 'সোনা ও রুপা উভয়েই অচৌম্বক পদার্থ। অন্য বিকল্পগুলোতে চৌম্বক পদার্থ রয়েছে।'
    },
    {
      'question': 'তামার ব্যবহারের কারণ কী?',
      'answers': [
        'এটি চৌম্বক পদার্থ',
        'এটি সস্তা',
        'এটি অচৌম্বক এবং ভালো বিদ্যুৎ পরিবাহী',
        'এটি খুব শক্তিশালী'
      ],
      'correctIndex': 2,
      'explanation':
          'তামা ব্যবহারের প্রধান কারণ এটি অচৌম্বক এবং বিদ্যুতের সুপরিবাহী, বিশেষত বৈদ্যুতিক তারে।'
    },
    {
      'question': 'নিচের কোনটি চৌম্বক পদার্থের উদাহরণ?',
      'answers': ['সোনা', 'রুপা', 'ইস্পাত', 'তামা'],
      'correctIndex': 2,
      'explanation':
          'ইস্পাত একটি চৌম্বক পদার্থ। লোহা ও ইস্পাত যুক্ত সংকর ধাতুসমূহ চৌম্বক পদার্থের উদাহরণ।'
    },
    {
      'question': 'চুম্বকের কয়টি প্রধান ধর্ম আছে?',
      'answers': ['১টি', '২টি', '৩টি', '৪টি'],
      'correctIndex': 1,
      'explanation': 'চুম্বকের ২টি প্রধান ধর্ম: ১. আকর্ষণ ধর্ম ২. দিক নির্দেশক ধর্ম।'
    },
    {
      'question': 'নিচের কোন ধাতুটি চৌম্বক পদার্থ নয়?',
      'answers': ['নিকেল', 'কোবাল্ট', 'লোহা', 'অ্যালুমিনিয়াম'],
      'correctIndex': 3,
      'explanation':
          'অ্যালুমিনিয়াম একটি অচৌম্বক পদার্থ। প্রধান চৌম্বক পদার্থগুলো হলো লোহা, নিকেল ও কোবাল্ট।'
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
          'চৌম্বক পদার্থ কুইজ',
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
