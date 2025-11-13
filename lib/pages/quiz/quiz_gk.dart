import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<dynamic>? quizData;
  Map<String, dynamic>? currentQuestion;
  int score = 0;
  int questionIndex = 0;
  bool isAnswered = false;
  String? selectedAnswer;
  bool quizCompleted = false;

  @override
  void initState() {
    super.initState();
    loadQuizData();
  }

  Future<void> loadQuizData() async {
    String data = await rootBundle.loadString('assets/quiz_data/gk_quiz.json');
    quizData = json.decode(data);
    setState(() {
      pickQuestion();
    });
  }

  void pickQuestion() {
    if (questionIndex < quizData!.length) {
      setState(() {
        currentQuestion = quizData![questionIndex];
        isAnswered = false;
        selectedAnswer = null;
      });
    } else {
      setState(() {
        quizCompleted = true;
      });
    }
  }

  void checkAnswer(String answer) {
    setState(() {
      isAnswered = true;
      selectedAnswer = answer;
      if (answer == currentQuestion!['answer']) {
        score++;
      }
    });
  }

  void goToNextQuestion() {
    if (quizCompleted) return;
    setState(() {
      questionIndex++;
      pickQuestion();
    });
  }

  void restartQuiz() {
    setState(() {
      score = 0;
      questionIndex = 0;
      quizCompleted = false;
      pickQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Quiz'),
      ),
      body: quizCompleted
          ? buildRewardScreen()
          : currentQuestion == null
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        value: (questionIndex + 1) / quizData!.length,
                        backgroundColor: Colors.teal[100],
                        color: Colors.teal,
                      ),
                      const SizedBox(height: 20),
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            currentQuestion!['question'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ...List.generate(4, (index) {
                        String option = currentQuestion!['options'][index];
                        Color optionColor = Colors.teal;

                        if (isAnswered) {
                          if (option == currentQuestion!['answer']) {
                            optionColor = Colors.green;
                          } else if (option == selectedAnswer) {
                            optionColor = Colors.red;
                          }
                        }

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ElevatedButton(
                            onPressed: isAnswered ? null : () => checkAnswer(option),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: optionColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 18,
                                color: isAnswered && option == currentQuestion!['answer']
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        );
                      }),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: isAnswered ? goToNextQuestion : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isAnswered
                              ? (selectedAnswer == currentQuestion!['answer']
                                  ? Colors.green
                                  : Colors.red)
                              : Colors.teal,
                        ),
                        child: Text(
                          isAnswered ? 'Next Question' : 'Select an Answer',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }

  Widget buildRewardScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '🎉 Congratulations! 🎉',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            'Your Score: $score/${quizData!.length}',
            style: const TextStyle(
              fontSize: 22,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: restartQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            ),
            child: const Text(
              'Play Again',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
