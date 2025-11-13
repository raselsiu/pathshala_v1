import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/components/mathematics/manosangko_list_tile.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MathManosangko extends StatelessWidget {
  const MathManosangko({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'মানসাঙ্ক',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10),
          ManosangkoListTile(
            serialColor: Color(0xff094d85),
            serial: '১',
            question: 'প্রশ্নঃ কত সেকেন্ডে ১ মিনিট?',
            answer: 'উঃ ৬০ সেকেন্ডে ১ মিনিট।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xffb12a7d),
            serial: '২',
            question: 'প্রশ্নঃ কত মিনিটে ১ ঘণ্টা?',
            answer: 'উঃ ৬০ মিনিটে ১ ঘণ্টা।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff037a6c),
            serial: '৩',
            question: 'প্রশ্নঃ কত ঘণ্টায় ১ দিন?',
            answer: 'উঃ ২৪ ঘণ্টায় ১ দিন।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xffeea203),
            serial: '৪',
            question: 'প্রশ্নঃ কত দিনে ১ সন্তাহ?',
            answer: 'উঃ ৭ দিনে ১ সপ্তাহ।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff04518f),
            serial: '৫',
            question: 'প্রশ্নঃ কত দিনে ১ পক্ষ?',
            answer: 'উঃ ১৫ দিনে ১ পক্ষ।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff343232),
            serial: '৬',
            question: 'প্রশ্নঃ কত দিনে ১ মাস?',
            answer: 'উঃ ৩০ দিনে ১ মাস।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff057205),
            serial: '৭',
            question: 'প্রশ্নঃ কত দিনে ১ বছর?',
            answer: 'উঃ ৩৬৫ দিনে ১ বছর।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xffc78807),
            serial: '৮',
            question: 'প্রশ্নঃ কত মাসে ১ বছর?',
            answer: 'উঃ ১২ মাসে ১ বছর।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff2f0252),
            serial: '৯',
            question: 'প্রশ্নঃ কত বছরে ১ যুগ?',
            answer: 'উঃ ১২ বছরে ১ বুগ।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xffeea203),
            serial: '১০',
            question: 'প্রশ্নঃ কতটিতে ১ জোড়া?',
            answer: 'উঃ ২টিতে ১ জোড়া।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff2f0252),
            serial: '১১',
            question: 'প্রশ্নঃ কতটিতে ১ হালি?',
            answer: 'উঃ ৪টিতে ১ হালি।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff04518f),
            serial: '১২',
            question: 'প্রশ্নঃ কতটিতে ১ ভজন?',
            answer: 'উঃ ১২টিতে ১ ডজন।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xffb12a7d),
            serial: '১৩',
            question: 'প্রশ্নঃ কতটিতে ১ কুড়ি?',
            answer: 'উঃ ২০টিতে ১ কুড়ি।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xff053605),
            serial: '১৪',
            question: 'প্রশ্নঃ কত পয়সায় ১ টাকা?',
            answer: 'উঃ ১০০ পয়সায় ১ টাকা।',
          ),
          ManosangkoListTile(
            serialColor: Color(0xfffa4e4e),
            serial: '১৫',
            question: 'প্রশ্নঃ ১ বছরে কয়টি খতু?',
            answer: 'উঃ ১ বছরে ৬টি খতু।',
          ),
        ],
      ),
    );
  }
}
