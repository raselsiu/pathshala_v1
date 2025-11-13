import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceWaveAndSoundQuiz extends StatefulWidget {
  const ScienceWaveAndSoundQuiz({super.key});

  @override
  ScienceWaveAndSoundQuizState createState() => ScienceWaveAndSoundQuizState();
}

class ScienceWaveAndSoundQuizState extends State<ScienceWaveAndSoundQuiz>
    with SingleTickerProviderStateMixin {
  // Quiz data
  final List<Map<String, dynamic>> _questions = [
    {
      "question": "তরঙ্গ কাকে বলে?",
      "answers": [
        "শক্তির স্থানান্তর যেখানে মাধ্যমের কণাগুলো স্থানান্তরিত হয়",
        "শক্তির সঞ্চারণ যেখানে মাধ্যমের কণাগুলো স্থানান্তরিত হয় না",
        "কণাগুলোর স্থায়ী স্থানান্তর",
        "তাপের প্রবাহ"
      ],
      "correctIndex": 1,
      "explanation":
          "তরঙ্গ হলো শক্তির সঞ্চারণ প্রক্রিয়া যেখানে মাধ্যমের কণাগুলো কেবল কম্পিত হয় কিন্তু স্থানান্তরিত হয় না।"
    },
    {
      "question": "শব্দ সঞ্চালনের জন্য কী প্রয়োজন?",
      "answers": ["শূন্যস্থান", "জড় মাধ্যম", "চৌম্বক ক্ষেত্র", "তড়িৎ ক্ষেত্র"],
      "correctIndex": 1,
      "explanation": "শব্দ সঞ্চালনের জন্য জড় মাধ্যম প্রয়োজন, যেমন বায়ু, পানি বা কঠিন পদার্থ।"
    },
    {
      "question": "০°C তাপমাত্রায় শুষ্ক বায়ুতে শব্দের বেগ কত?",
      "answers": ["১৪৫০ মি/সে", "৩৩২ মি/সে", "৫২২১ মি/সে", "২৯৯৭৯২ কিমিঃ/সে"],
      "correctIndex": 1,
      "explanation":
          "স্বাভাবিক অবস্থায় (০°C তাপমাত্রা ও ১ atm চাপে) শুষ্ক বায়ুতে শব্দের বেগ ৩৩২ মিটার/সেকেন্ড।"
    },
    {
      "question": "প্রতিধ্বনি শোনার জন্য ন্যূনতম দূরত্ব কত?",
      "answers": ["৮.৩ মিটার", "১৬.৬ মিটার", "৩৩.২ মিটার", "৫০ মিটার"],
      "correctIndex": 1,
      "explanation":
          "প্রতিধ্বনি শোনার জন্য উৎস ও প্রতিফলকের মধ্যে ন্যূনতম ১৬.৬ মিটার দূরত্ব প্রয়োজন।"
    },
    {
      "question": "মানুষের শ্রাব্যতার সীমা কত?",
      "answers": [
        "৫ হার্জ - ৫,০০০ হার্জ",
        "২০ হার্জ - ২০,০০০ হার্জ",
        "১০০ হার্জ - ১০০০০০ হার্জ",
        "০ হার্জ - ২০০০০০ হার্জ"
      ],
      "correctIndex": 1,
      "explanation": "মানুষ সাধারণত ২০ হার্জ থেকে ২০,০০০ হার্জ কম্পাঙ্কের শব্দ শুনতে পায়।"
    },
    {
      "question": "শব্দের বেগ কোন মাধ্যমে সবচেয়ে বেশি?",
      "answers": ["শূন্যস্থান", "বায়ু", "পানি", "লোহা"],
      "correctIndex": 3,
      "explanation":
          "লোহায় শব্দের বেগ সবচেয়ে বেশি (৫২২১ মি./সে.), তারপর পানি (১৪৫০ মি./সে.), সবচেয়ে কম বায়ুতে (৩৩২ মি./সে.)।"
    },
    {
      "question": "কোনটি শ্রবণোত্তর শব্দের উদাহরণ?",
      "answers": ["মানুষের কথা", "গিটার এর সুর", "ডলফিনের শব্দ", "গর্জন"],
      "correctIndex": 2,
      "explanation":
          "২০,০০০ হার্জের বেশি কম্পাঙ্কের শব্দকে শ্রবণোত্তর শব্দ বলে, যা ডলফিন ব্যবহার করে।"
    },
    {
      "question": "শব্দের তীব্রতা পরিমাপ করা হয় কোন যন্ত্রে?",
      "answers": ["থার্মোমিটার", "অডিওমিটার", "ব্যারোমিটার", "স্পিডোমিটার"],
      "correctIndex": 1,
      "explanation": "শব্দের তীব্রতা পরিমাপ করা হয় অডিওমিটার বা ডেসিবল মিটারের মাধ্যমে।"
    },
    {
      "question": "কোন প্রাণী আল্ট্রাসনিক শব্দ শুনতে পায়?",
      "answers": ["মানুষ", "গরু", "চামচিকা", "হাঁস"],
      "correctIndex": 2,
      "explanation":
          "চামচিকা, কুকুর, ডলফিন প্রভৃতি প্রাণী আল্ট্রাসনিক শব্দ শুনতে পায় যা মানুষের শ্রবণ সীমার বাইরে।"
    },
    {
      "question": "তাপ বাড়লে শব্দের বেগ কী হয়?",
      "answers": ["বাড়ে", "কমে", "অপরিবর্তিত থাকে", "প্রথমে বাড়ে পরে কমে"],
      "correctIndex": 0,
      "explanation":
          "তাপমাত্রা বাড়লে মাধ্যমের কণাগুলোর গতিশক্তি বাড়ে, ফলে শব্দের বেগ বৃদ্ধি পায়।"
    },
    {
      "question": "সুপারসনিক বিমান বলতে কী বোঝায়?",
      "answers": [
        "শব্দের চেয়ে ধীরগতির বিমান",
        "শব্দের বেগের সমান গতির বিমান",
        "শব্দের চেয়ে দ্রুতগতির বিমান",
        "নিঃশব্দ বিমান"
      ],
      "correctIndex": 2,
      "explanation":
          "যে বিমান শব্দের গতিবেগ (১২৩৫ কিমি/ঘণ্টা) এর চেয়ে বেশি গতিতে চলে তাকে সুপারসনিক বিমান বলে।"
    },
    {
      "question": "শব্দের তীক্ষ্মতা নির্ভর করে কোনটির উপর?",
      "answers": ["তরঙ্গের বিস্তার", "তরঙ্গের কম্পাঙ্ক", "তরঙ্গের দশা", "তরঙ্গের বেগ"],
      "correctIndex": 1,
      "explanation": "শব্দের তীক্ষ্মতা নির্ভর করে কম্পাঙ্কের উপর - কম্পাঙ্ক越高, শব্দ越তীক্ষ্ণ।"
    },
    {
      "question": "কম্পাংকের একক কী?",
      "answers": ["নিউটন", "হার্জ", "পাস্কাল", "জুল"],
      "correctIndex": 1,
      "explanation":
          "কম্পাংকের একক হলো হার্জ (Hz), যা এক সেকেন্ডে সম্পন্ন কম্পন সংখ্যা নির্দেশ করে।"
    },
    {
      "question": "শব্দ তরঙ্গ প্রকৃতিতে কী ধরনের তরঙ্গ?",
      "answers": ["অনুপ্রস্থ তরঙ্গ", "অনুদৈর্ঘ্য তরঙ্গ", "বিদ্যুৎচুম্বকীয় তরঙ্গ", "স্থির তরঙ্গ"],
      "correctIndex": 1,
      "explanation":
          "শব্দ তরঙ্গ হলো অনুদৈর্ঘ্য তরঙ্গ, যেখানে মাধ্যমের কণাগুলো তরঙ্গের গতির সমান্তরালে কম্পিত হয়।"
    },
    {
      "question": "নিচের কোন মাধ্যমে শব্দের বেগ সবচেয়ে কম?",
      "answers": ["ইস্পাত", "পানি", "বায়ু", "কাচ"],
      "correctIndex": 2,
      "explanation":
          "বায়ুতে শব্দের বেগ সবচেয়ে কম (৩৩২ মি./সে.), কারণ গ্যাসীয় মাধ্যমে কণাগুলোর মধ্যে দূরত্ব বেশি।"
    },
    {
      "question": "শব্দের প্রতিধ্বনি শোনার জন্য ন্যূনতম সময় ব্যবধান কত?",
      "answers": ["০.০৫ সেকেন্ড", "০.১ সেকেন্ড", "০.৫ সেকেন্ড", "১ সেকেন্ড"],
      "correctIndex": 1,
      "explanation":
          "মানুষের কানে শব্দ ধারণক্ষমতা ০.১ সেকেন্ড পর্যন্ত স্থায়ী হয়, তাই প্রতিধ্বনি শুনতে কমপক্ষে এই সময় ব্যবধান প্রয়োজন।"
    },
    {
      "question": "সুর ও স্বরের মধ্যে পার্থক্য কী?",
      "answers": [
        "সুর একক কম্পাংক, স্বর একাধিক কম্পাংক",
        "স্বর একক কম্পাংক, সুর একাধিক কম্পাংক",
        "উভয়ই একক কম্পাংক",
        "উভয়ই একাধিক কম্পাংক"
      ],
      "correctIndex": 0,
      "explanation":
          "সুর হলো একটি মাত্র কম্পাংক বিশিষ্ট শব্দ, আর স্বর হলো একাধিক কম্পাংকের সমন্বয়ে গঠিত শব্দ।"
    },
    {
      "question": "শব্দের বেগ সবচেয়ে বেশি হবে কখন?",
      "answers": [
        "শীতকালে শুষ্ক বায়ুতে",
        "গ্রীষ্মকালে আর্দ্র বায়ুতে",
        "বৃষ্টির সময়",
        "রাতের বেলা"
      ],
      "correctIndex": 1,
      "explanation":
          "তাপমাত্রা ও আর্দ্রতা বাড়লে শব্দের বেগ বৃদ্ধি পায়, তাই গ্রীষ্মকালে আর্দ্র বায়ুতে শব্দের বেগ সর্বোচ্চ হয়।"
    },
    {
      "question": "অ্যালট্রাসনোগ্রাফিতে কোন ধরনের শব্দ ব্যবহার করা হয়?",
      "answers": [
        "অবশ্রাব্য শব্দ",
        "শ্রবণোত্তর শব্দ",
        "নিম্ন কম্পাংকের শব্দ",
        "মধ্য কম্পাংকের শব্দ"
      ],
      "correctIndex": 1,
      "explanation":
          "অ্যালট্রাসনোগ্রাফিতে ২০,০০০ হার্জের বেশি কম্পাংকের শ্রবণোত্তর শব্দ ব্যবহার করা হয়।"
    },
    {
      "question": "শব্দের বেগ কোনটির উপর নির্ভর করে না?",
      "answers": [
        "মাধ্যমের ঘনত্ব",
        "মাধ্যমের স্থিতিস্থাপকতা",
        "শব্দের তীব্রতা",
        "মাধ্যমের তাপমাত্রা"
      ],
      "correctIndex": 2,
      "explanation":
          "শব্দের বেগ শুধুমাত্র মাধ্যমের বৈশিষ্ট্য (ঘনত্ব, স্থিতিস্থাপকতা, তাপমাত্রা) দ্বারা নির্ধারিত হয়, শব্দের তীব্রতা দ্বারা নয়।"
    },
    {
      "question": "শব্দের প্রতিফলনের প্রয়োগ কোথায়?",
      "answers": ["স্টেথোস্কোপ", "সোনার", "ইকোলোকেশন", "উপরের সবকটি"],
      "correctIndex": 3,
      "explanation":
          "স্টেথোস্কোপ, সোনার এবং ইকোলোকেশন - সবকটিতেই শব্দের প্রতিফলন নীতি ব্যবহার করা হয়।"
    },
    {
      "question": "বায়ুর আর্দ্রতা বাড়লে শব্দের বেগ কেন বৃদ্ধি পায়?",
      "answers": [
        "জলীয় বাষ্প হালকা বলে",
        "তাপমাত্রা কমে যায় বলে",
        "ঘনত্ব বেড়ে যায় বলে",
        "চাপ কমে যায় বলে"
      ],
      "correctIndex": 0,
      "explanation":
          "জলীয় বাষ্প শুষ্ক বায়ুর চেয়ে হালকা, ফলে আর্দ্র বায়ুর ঘনত্ব কমে এবং শব্দের বেগ বৃদ্ধি পায়।"
    },
    {
      "question": "শব্দের কোন বৈশিষ্ট্য দ্বারা আমরা বিভিন্ন বাদ্যযন্ত্রের শব্দ পার্থক্য করতে পারি?",
      "answers": ["তীব্রতা", "তীক্ষ্মতা", "গুণ বা টিম্বার", "বেগ"],
      "correctIndex": 2,
      "explanation":
          "টিম্বার বা গুণ নামক বৈশিষ্ট্যের কারণে একই সুর ও তীব্রতার শব্দও বিভিন্ন উৎস থেকে ভিন্ন শোনায়।"
    },
    {
      "question": "শব্দের তীব্রতা পরিমাপের একক কী?",
      "answers": ["হার্জ", "ডেসিবেল", "নিউটন", "ওয়াট"],
      "correctIndex": 1,
      "explanation":
          "শব্দের তীব্রতা পরিমাপ করা হয় ডেসিবেল (dB) এককে, যা লগারিদমিক স্কেলে প্রকাশিত হয়।"
    },
    {
      "question": "শব্দের বেগের সঠিক ক্রম কোনটি?",
      "answers": [
        "গ্যাস > তরল > কঠিন",
        "কঠিন > তরল > গ্যাস",
        "তরল > কঠিন > গ্যাস",
        "কঠিন > গ্যাস > তরল"
      ],
      "correctIndex": 1,
      "explanation":
          "শব্দের বেগ কঠিনে সর্বোচ্চ (লোহা ৫২২১ মি./সে.), তারপর তরলে (পানি ১৪৫০ মি./সে.), এবং গ্যাসে সর্বনিম্ন (বায়ু ৩৩২ মি./সে.)।"
    },
    {
      "question": "শব্দোত্তর তরঙ্গের কম্পাংক কত?",
      "answers": [
        "২০ হার্জ এর কম",
        "২০ হার্জ - ২০,০০০ হার্জ",
        "২০,০০০ হার্জ এর বেশি",
        "১,০০০ হার্জ - ১০,০০০ হার্জ"
      ],
      "correctIndex": 2,
      "explanation":
          "শব্দোত্তর বা আল্ট্রাসনিক তরঙ্গের কম্পাংক ২০,০০০ হার্জ (২০ কি/হার্জ) এর বেশি হয়।"
    },
    {
      "question": "কোন বিজ্ঞানী প্রথম প্রমাণ করেন শব্দ সঞ্চালনের জন্য মাধ্যম প্রয়োজন?",
      "answers": ["আইজাক নিউটন", "অটো ভন গেরিক", "আলবার্ট আইনস্টাইন", "গ্যালিলিও গ্যালিলি"],
      "correctIndex": 1,
      "explanation":
          "১৭শ শতকে জার্মান বিজ্ঞানী অটো ভন গেরিক শূন্যস্থানে শব্দ সঞ্চালন হয় না তা প্রমাণ করেন।"
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
