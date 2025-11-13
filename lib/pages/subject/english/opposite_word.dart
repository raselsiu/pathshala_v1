import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class OppositeWordsTable extends StatefulWidget {
  const OppositeWordsTable({Key? key}) : super(key: key);

  @override
  State<OppositeWordsTable> createState() => _OppositeWordsTableState();
}

class _OppositeWordsTableState extends State<OppositeWordsTable> {
  // Expanded JSON data with English words, their opposites, and Bengali translations
  final String jsonData = '''
  {
    "opposites": [
      {"word": "Happy", "bengaliWord": "সুখী", "opposite": "Sad", "bengaliOpposite": "দুঃখিত"},
      {"word": "Big", "bengaliWord": "বড়", "opposite": "Small", "bengaliOpposite": "ছোট"},
      {"word": "Hot", "bengaliWord": "গরম", "opposite": "Cold", "bengaliOpposite": "ঠাণ্ডা"},
      {"word": "Fast", "bengaliWord": "দ্রুত", "opposite": "Slow", "bengaliOpposite": "ধীর"},
      {"word": "Rich", "bengaliWord": "ধনী", "opposite": "Poor", "bengaliOpposite": "গরিব"},
      {"word": "Strong", "bengaliWord": "শক্তিশালী", "opposite": "Weak", "bengaliOpposite": "দুর্বল"},
      {"word": "Young", "bengaliWord": "তরুণ", "opposite": "Old", "bengaliOpposite": "বৃদ্ধ"},
      {"word": "Beautiful", "bengaliWord": "সুন্দর", "opposite": "Ugly", "bengaliOpposite": "কুৎসিত"},
      {"word": "Light", "bengaliWord": "হালকা", "opposite": "Dark", "bengaliOpposite": "অন্ধকার"},
      {"word": "Good", "bengaliWord": "ভালো", "opposite": "Bad", "bengaliOpposite": "খারাপ"},
      {"word": "Open", "bengaliWord": "খোলা", "opposite": "Closed", "bengaliOpposite": "বন্ধ"},
      {"word": "Love", "bengaliWord": "ভালোবাসা", "opposite": "Hate", "bengaliOpposite": "ঘৃণা"},
      {"word": "Up", "bengaliWord": "উপরে", "opposite": "Down", "bengaliOpposite": "নিচে"},
      {"word": "High", "bengaliWord": "উঁচু", "opposite": "Low", "bengaliOpposite": "নিচু"},
      {"word": "Loud", "bengaliWord": "জোরে", "opposite": "Quiet", "bengaliOpposite": "শান্ত"},
      {"word": "Long", "bengaliWord": "লম্বা", "opposite": "Short", "bengaliOpposite": "খাটো"},
      {"word": "Deep", "bengaliWord": "গভীর", "opposite": "Shallow", "bengaliOpposite": "অগভীর"},
      {"word": "First", "bengaliWord": "প্রথম", "opposite": "Last", "bengaliOpposite": "শেষ"},
      {"word": "Early", "bengaliWord": "আগে", "opposite": "Late", "bengaliOpposite": "দেরি"},
      {"word": "Start", "bengaliWord": "শুরু", "opposite": "Finish", "bengaliOpposite": "শেষ"},
      {"word": "Beginning", "bengaliWord": "সূচনা", "opposite": "End", "bengaliOpposite": "সমাপ্তি"},
      {"word": "Success", "bengaliWord": "সাফল্য", "opposite": "Failure", "bengaliOpposite": "ব্যর্থতা"},
      {"word": "Win", "bengaliWord": "জয়", "opposite": "Lose", "bengaliOpposite": "হার"},
      {"word": "Empty", "bengaliWord": "খালি", "opposite": "Full", "bengaliOpposite": "পূর্ণ"},
      {"word": "Clean", "bengaliWord": "পরিষ্কার", "opposite": "Dirty", "bengaliOpposite": "নোংরা"},
      {"word": "Dry", "bengaliWord": "শুকনো", "opposite": "Wet", "bengaliOpposite": "ভিজা"},
      {"word": "Hard", "bengaliWord": "কঠিন", "opposite": "Soft", "bengaliOpposite": "নরম"},
      {"word": "Rough", "bengaliWord": "খসখসে", "opposite": "Smooth", "bengaliOpposite": "মসৃণ"},
      {"word": "Sharp", "bengaliWord": "ধারালো", "opposite": "Dull", "bengaliOpposite": "ভোঁতা"},
      {"word": "Sweet", "bengaliWord": "মিষ্টি", "opposite": "Bitter", "bengaliOpposite": "তিক্ত"},
      {"word": "Fresh", "bengaliWord": "তাজা", "opposite": "Stale", "bengaliOpposite": "বাসি"},
      {"word": "Brave", "bengaliWord": "সাহসী", "opposite": "Cowardly", "bengaliOpposite": "কাপুরুষ"},
      {"word": "Difficult", "bengaliWord": "কঠিন", "opposite": "Easy", "bengaliOpposite": "সহজ"},
      {"word": "Expensive", "bengaliWord": "দামি", "opposite": "Cheap", "bengaliOpposite": "সস্তা"},
      {"word": "Generous", "bengaliWord": "উদার", "opposite": "Selfish", "bengaliOpposite": "স্বার্থপর"},
      {"word": "Innocent", "bengaliWord": "নিরপরাধ", "opposite": "Guilty", "bengaliOpposite": "দোষী"},
      {"word": "Maximum", "bengaliWord": "সর্বাধিক", "opposite": "Minimum", "bengaliOpposite": "সর্বনিম্ন"},
      {"word": "Polite", "bengaliWord": "বিনয়ী", "opposite": "Rude", "bengaliOpposite": "অভদ্র"},
      {"word": "Private", "bengaliWord": "ব্যক্তিগত", "opposite": "Public", "bengaliOpposite": "সার্বজনীন"},
      {"word": "Temporary", "bengaliWord": "অস্থায়ী", "opposite": "Permanent", "bengaliOpposite": "স্থায়ী"}
    ]
  }
  ''';

  late List<Map<String, dynamic>> oppositeWords;
  final TextEditingController _searchController = TextEditingController();
  late List<Map<String, dynamic>> filteredWords;

  @override
  void initState() {
    super.initState();
    // Parse JSON data
    Map<String, dynamic> data = Map<String, dynamic>.from(jsonDecode(jsonData));
    oppositeWords = List<Map<String, dynamic>>.from(data['opposites']);
    filteredWords = List.from(oppositeWords);

    _searchController.addListener(_filterWords);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterWords() {
    if (_searchController.text.isEmpty) {
      setState(() {
        filteredWords = List.from(oppositeWords);
      });
    } else {
      setState(() {
        filteredWords = oppositeWords
            .where((wordPair) =>
                wordPair['word'].toLowerCase().contains(_searchController.text.toLowerCase()) ||
                wordPair['opposite'].toLowerCase().contains(_searchController.text.toLowerCase()) ||
                wordPair['bengaliWord'].contains(_searchController.text) ||
                wordPair['bengaliOpposite'].contains(_searchController.text))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'English Opposite Words',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 5,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            child: Column(
              children: [
                const Text(
                  'ইংরেজী বিপরীত শব্দ',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: StringConstants.samirFont,
                    color: Colors.indigo,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search words | শব্দ খুঁজুন',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  style: const TextStyle(fontFamily: StringConstants.bnFontFamily, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredWords.isEmpty
                ? const Center(
                    child: Text(
                      'No matching words found\n---------------- \nকোনো শব্দ পাওয়া যায়নি,\nআবার চেষ্টা করো!',
                      style: TextStyle(fontSize: 16, fontFamily: StringConstants.bnFontFamily),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ListView.separated(
                          itemCount: filteredWords.length,
                          separatorBuilder: (context, index) => Divider(
                            height: 1,
                            color: Colors.green.withOpacity(0.1),
                          ),
                          itemBuilder: (context, index) {
                            final item = filteredWords[index];
                            return Container(
                              decoration: BoxDecoration(
                                color:
                                    index % 2 == 0 ? Colors.white : Colors.green.withOpacity(0.1),
                              ),
                              child: Row(
                                children: [
                                  // Word and Bengali word
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          right: BorderSide(
                                            color: Colors.grey.shade300,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            item['word'],
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            item['bengaliWord'],
                                            style: const TextStyle(
                                              fontSize: 30,
                                              color: Colors.red,
                                              fontFamily: StringConstants.bnFontFamily,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Opposite and Bengali opposite
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                                      child: Column(
                                        children: [
                                          Text(
                                            item['opposite'],
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            item['bengaliOpposite'],
                                            style: const TextStyle(
                                              fontSize: 30,
                                              color: Colors.purple,
                                              fontFamily: StringConstants.bnFontFamily,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
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

Map<String, dynamic> jsonDecode(String jsonString) {
  return json.decode(jsonString);
}
