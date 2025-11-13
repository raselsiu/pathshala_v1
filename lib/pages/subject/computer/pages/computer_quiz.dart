import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerQuiz extends StatefulWidget {
  const ComputerQuiz({super.key});

  @override
  State<ComputerQuiz> createState() => _ComputerQuizState();
}

class _ComputerQuizState extends State<ComputerQuiz> {
  final List<ComputerPart> _targetParts = [
    ComputerPart('মনিটর', ComputerImageConst.monitor),
    ComputerPart('সিপিইউ', ComputerImageConst.cpu),
    ComputerPart('কিবোর্ড', ComputerImageConst.keyboard),
    ComputerPart('মাউস', ComputerImageConst.mouse),
    ComputerPart('স্পিকার', ComputerImageConst.speaker),
    ComputerPart('র‌্যাম', ComputerImageConst.ram),
    ComputerPart('হার্ড ড্রাইভ', ComputerImageConst.hardDrive),
    ComputerPart('পাউয়ার সাপ্লাই', ComputerImageConst.powerSupply),
    ComputerPart('প্রিন্টার', ComputerImageConst.printer),
    ComputerPart('এসএসডি', ComputerImageConst.ssd),
    ComputerPart('ইউপিএস', ComputerImageConst.ups),
    ComputerPart('মাদারবোর্ড', ComputerImageConst.motherboard),
    ComputerPart('গ্রাফিক্স কার্ড', ComputerImageConst.graphicsCard),
    ComputerPart('কেসিং', ComputerImageConst.casing),
    ComputerPart('পেনড্রাইভ', ComputerImageConst.panDrive),
    ComputerPart('কোলিং ফ্যান', ComputerImageConst.coolingFan),
    ComputerPart('ওয়েবকেম', ComputerImageConst.webcam),
  ];

  late List<ComputerPart> _draggableParts;
  int _correct = 0;
  int _wrong = 0;
  late int _totalQuestions;

  @override
  void initState() {
    super.initState();
    _resetGame();
  }

  void _resetGame() {
    setState(() {
      _draggableParts = List.from(_targetParts)..shuffle();
      _totalQuestions = _targetParts.length;
      _correct = 0;
      _wrong = 0;
      for (var part in _targetParts) {
        part.isMatched = false;
      }
    });
  }

  void _checkMatch(ComputerPart part, String targetName) {
    if (part.name == targetName && !part.isMatched) {
      setState(() {
        part.isMatched = true;
        _correct++;
      });

      if (_correct == _totalQuestions) {
        Future.delayed(const Duration(milliseconds: 300), () {
          _showResultDialog();
        });
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.white),
              SizedBox(width: 10),
              Text(
                'সঠিক উত্তর! 🥳🎉',
                style: TextStyle(
                  fontFamily: StringConstants.bnFontFamily,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
        ),
      );
    } else if (!part.isMatched) {
      setState(() => _wrong++);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error, color: Colors.white),
              SizedBox(width: 10),
              Text(
                'ভুল উত্তর ❌',
                style: TextStyle(
                  fontFamily: StringConstants.bnFontFamily,
                  fontSize: 25,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          backgroundColor: Color(0xFF151313),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.quiz, size: 60, color: Color(0xff3A7D44)),
                const SizedBox(height: 20),
                const Text(
                  'কুইজ রেজাল্ট',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                _buildResultRow('মোট প্রশ্ন:', '$_totalQuestions'),
                _buildResultRow('সঠিক উত্তর:', '$_correct', Colors.green),
                _buildResultRow('ভুল চেষ্টা:', '$_wrong', Colors.red),
                const SizedBox(height: 25),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.replay,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Play Again',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3A7D44),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    _resetGame();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildResultRow(String label, String value, [Color? color]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 25,
              fontFamily: StringConstants.bnFontFamily,
            ),
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 25,
                color: color ?? Colors.blueGrey,
                fontFamily: StringConstants.samirFont),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final unmatchedParts = _draggableParts.where((part) => !part.isMatched).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'কম্পিউটার কুইজ 🖥️',
          style: TextStyle(fontFamily: StringConstants.samirFont, color: Colors.white),
        ),
        backgroundColor: const Color(0xff3A7D44),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _resetGame,
          )
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Images Column (Draggables)
              Expanded(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: unmatchedParts.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: _buildDraggablePart(unmatchedParts[index]),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              // Names Column (Targets)
              Expanded(
                child: ListView.builder(
                  itemCount: _targetParts.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: _buildDropTarget(_targetParts[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDraggablePart(ComputerPart part) {
    return Draggable<ComputerPart>(
      data: part,
      feedback: Material(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff057205), width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(part.imagePath),
        ),
      ),
      childWhenDragging: Opacity(
        opacity: 0.5,
        child: _PartWidget(imagePath: part.imagePath),
      ),
      child: _PartWidget(imagePath: part.imagePath),
    );
  }

  Widget _buildDropTarget(ComputerPart part) {
    return DragTarget<ComputerPart>(
      builder: (context, candidateData, rejectedData) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 60,
          decoration: BoxDecoration(
            color: part.isMatched ? Colors.green.shade100 : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: part.isMatched ? Colors.green : Colors.green,
              width: 2,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                part.name,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: StringConstants.samirFont,
                  fontWeight: FontWeight.w500,
                  color: part.isMatched ? Colors.green.shade800 : Colors.blue.shade800,
                ),
              ),
            ),
          ),
        );
      },
      onAcceptWithDetails: (details) => _checkMatch(details.data, part.name),
    );
  }
}

class _PartWidget extends StatelessWidget {
  final String imagePath;

  const _PartWidget({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff057205)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(imagePath),
    );
  }
}

class ComputerPart {
  final String name;
  final String imagePath;
  bool isMatched;

  ComputerPart(this.name, this.imagePath, {this.isMatched = false});
}
