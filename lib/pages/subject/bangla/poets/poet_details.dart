import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../../base_scaffold.dart';
import '../kobi_porichoy_lists.dart';

class PoetDetailScreen extends StatelessWidget {
  final Poet poet;

  const PoetDetailScreen({super.key, required this.poet});

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          poet.name,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontFamily: StringConstants.bnFontFamily,
          ),
        ),
        backgroundColor: const Color(0xFF16213E),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A1A2E),
              Color(0xFF16213E),
              Color(0xFF0F3460),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF667eea),
                      Color(0xFF764ba2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    poet.name,
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: StringConstants.samirFont,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                poet.period,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontFamily: StringConstants.samirFont,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      poet.desc,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 20,
                        fontFamily: StringConstants.bnFontFamily,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
