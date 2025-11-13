import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/ads/native_ads_widget.dart';
import 'package:sunamonir_pathshala/base_scaffold.dart';
import 'package:sunamonir_pathshala/components/mathematics/odd_even/even_card.dart';
import 'package:sunamonir_pathshala/components/mathematics/odd_even/odd_card.dart';
import 'package:sunamonir_pathshala/services/ads_helper.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MathOddEven extends StatelessWidget {
  const MathOddEven({super.key});

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      backgroundColor: const Color(0xff3F3F37),
      appBar: AppBar(
        title: const Text(
          'জোড়/বিজোর সংখ্যার ধারনা',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'জোড় সংখ্যা (১-৫০)',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: StringConstants.samirFont,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color(0x7b262621),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: StaggeredGrid.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: const [
                    MathEvenCard(
                      textOne: '২',
                      textTwo: 'দুই',
                    ),
                    MathEvenCard(
                      textOne: '৪',
                      textTwo: 'চার',
                    ),
                    MathEvenCard(
                      textOne: '৬',
                      textTwo: 'ছয়',
                    ),
                    MathEvenCard(
                      textOne: '৮',
                      textTwo: 'আট',
                    ),
                    MathEvenCard(
                      textOne: '১০',
                      textTwo: 'দশ',
                    ),
                    MathEvenCard(
                      textOne: '১২',
                      textTwo: 'বারো',
                    ),
                    MathEvenCard(
                      textOne: '১৪',
                      textTwo: 'চেীদ্দ',
                    ),
                    MathEvenCard(
                      textOne: '১৬',
                      textTwo: 'ষোলো',
                    ),
                    MathEvenCard(
                      textOne: '১৮',
                      textTwo: 'আঠারো',
                    ),
                    MathEvenCard(
                      textOne: '২০',
                      textTwo: 'বিশ',
                    ),
                    MathEvenCard(
                      textOne: '২২',
                      textTwo: 'বাইশ',
                    ),
                    MathEvenCard(
                      textOne: '২৪',
                      textTwo: 'চব্বিশ',
                    ),
                    MathEvenCard(
                      textOne: '২৬',
                      textTwo: 'ছাব্বিশ',
                    ),
                    MathEvenCard(
                      textOne: '২৮',
                      textTwo: 'আটাশ',
                    ),
                    MathEvenCard(
                      textOne: '৩০',
                      textTwo: 'ত্রিশ',
                    ),
                    MathEvenCard(
                      textOne: '৩২',
                      textTwo: 'বত্রিশ',
                    ),
                    MathEvenCard(
                      textOne: '৩৪',
                      textTwo: 'চৌত্রিশ',
                    ),
                    MathEvenCard(
                      textOne: '৩৬',
                      textTwo: 'ছত্রিশ',
                    ),
                    MathEvenCard(
                      textOne: '৩৮',
                      textTwo: 'আটত্রিশ',
                    ),
                    MathEvenCard(
                      textOne: '৪০',
                      textTwo: 'চল্লিশ',
                    ),
                    MathEvenCard(
                      textOne: '৪২',
                      textTwo: 'বিয়াল্লিশ',
                    ),
                    MathEvenCard(
                      textOne: '৪৪',
                      textTwo: 'চুয়াল্লিশ',
                    ),
                    MathEvenCard(
                      textOne: '৪৬',
                      textTwo: 'ছেচল্লিশ',
                    ),
                    MathEvenCard(
                      textOne: '৪৮',
                      textTwo: 'আটচল্লিশ',
                    ),
                    MathEvenCard(
                      textOne: '৫০',
                      textTwo: 'পঞ্চাশ',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.medium),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xff8aef1f),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'বিজোড় সংখ্যা (১-৫০)',
                    style: TextStyle(
                      color: Color(0xff8aef1f),
                      fontFamily: StringConstants.samirFont,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color(0x7b262621),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: const [
                    MathOddCard(
                      textOne: '১',
                      textTwo: 'এক',
                    ),
                    MathOddCard(
                      textOne: '৩',
                      textTwo: 'তিন',
                    ),
                    MathOddCard(
                      textOne: '৫',
                      textTwo: 'পাঁচ',
                    ),
                    MathOddCard(
                      textOne: '৭',
                      textTwo: 'সাত',
                    ),
                    MathOddCard(
                      textOne: '৯',
                      textTwo: 'নয়',
                    ),
                    MathOddCard(
                      textOne: '১১',
                      textTwo: 'এগারো',
                    ),
                    MathOddCard(
                      textOne: '১৩',
                      textTwo: 'তেরো',
                    ),
                    MathOddCard(
                      textOne: '১৫',
                      textTwo: 'পনেরো',
                    ),
                    MathOddCard(
                      textOne: '১৭',
                      textTwo: 'সতেরো',
                    ),
                    MathOddCard(
                      textOne: '১৯',
                      textTwo: 'ঊনিশ',
                    ),
                    MathOddCard(
                      textOne: '২১',
                      textTwo: 'একুশ',
                    ),
                    MathOddCard(
                      textOne: '২৩',
                      textTwo: 'তেইশ',
                    ),
                    MathOddCard(
                      textOne: '২৫',
                      textTwo: 'পঁচিশ',
                    ),
                    MathOddCard(
                      textOne: '২৭',
                      textTwo: 'সাতাশ',
                    ),
                    MathOddCard(
                      textOne: '২৯',
                      textTwo: 'ঊনত্রিশ',
                    ),
                    MathOddCard(
                      textOne: '৩১',
                      textTwo: 'একত্রিশ',
                    ),
                    MathOddCard(
                      textOne: '৩৩',
                      textTwo: 'তেত্রিশ',
                    ),
                    MathOddCard(
                      textOne: '৩৫',
                      textTwo: 'পয়ত্রিশ',
                    ),
                    MathOddCard(
                      textOne: '৩৭',
                      textTwo: 'সাইত্রিশ',
                    ),
                    MathOddCard(
                      textOne: '৩৯',
                      textTwo: 'ঊনচল্লিশ',
                    ),
                    MathOddCard(
                      textOne: '৪১',
                      textTwo: 'একচল্লিশ',
                    ),
                    MathOddCard(
                      textOne: '৪৩',
                      textTwo: 'তেতাল্লিশ',
                    ),
                    MathOddCard(
                      textOne: '৪৫',
                      textTwo: 'পঁয়তাল্লিশ',
                    ),
                    MathOddCard(
                      textOne: '৪৭',
                      textTwo: 'সাতচল্লিশ',
                    ),
                    MathOddCard(
                      textOne: '৪৯',
                      textTwo: 'উনপঞ্চাশ',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
