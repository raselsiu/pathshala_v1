import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerMainParts extends StatelessWidget {
  const ComputerMainParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'কম্পিউটারের প্রধান অংশগুলো',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff0aa168),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.monitor,
            title: 'মনিটর (Monitor)',
            description:
                'মনিটর দেখতে অনেকটা টিভির মতো। এটা কম্পিউটারে কী হচ্ছে, তা দেখাতে সাহায্য করে। তোমরা এখানে ছবি, লেখা সবকিছু দেখতে পারো।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.cpu,
            title: 'সিপিইউ - CPU (Central Processing Unit)',
            description:
                'সিপিইউ হলো কম্পিউটারটির মস্তিষ্ক। এটি সমস্ত নির্দেশনা এবং গণনা করে কম্পিউটারের কাজগুলো সম্পন্ন করে। এটি কম্পিউটারের সবচেয়ে গুরুত্বপূর্ণ অংশ।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.keyboard,
            title: 'কিবোর্ড (Keyboard)',
            description:
                'কিবোর্ড হলো লেখার জন্য। এখানে অনেক বোতাম (button) আছে, যেগুলোতে অক্ষর, সংখ্যা লেখা থাকে। এগুলো টিপে তোমরা কম্পিউটারে লিখতে পারো।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.mouse,
            title: 'মাউস (Mouse)',
            description:
                'মাউস দিয়ে তোমরা কম্পিউটারের স্ক্রিনে কোনো কিছু নির্বাচন (select) করতে পারো। এটা দেখতে ছোট ইঁদুরের মতো, তাই এর নাম মাউস।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.speaker,
            title: 'স্পিকার (Speaker)',
            description:
                'স্পিকার হলো কম্পিউটার থেকে শব্দ শোনার জন্য ব্যবহৃত ডিভাইস। এর মাধ্যমে আমরা মিউজিক, ভিডিও, অথবা কম্পিউটার সিস্টেমের সাউন্ড শুনতে পাই।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.ram,
            title: 'র‍্যাম - RAM \n(Random Access Memory)',
            description:
                'র‍্যাম হলো কম্পিউটারের অস্থায়ী মেমরি, যেখানে প্রোগ্রাম চালানোর সময় তথ্য সঞ্চিত থাকে। এটি কম্পিউটারের দ্রুত কাজ করার জন্য সাহায্য করে।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.hardDrive,
            title: 'হার্ড ড্রাইভ (Hard Drive)',
            description:
                'হার্ড ড্রাইভ হলো কম্পিউটারের স্থায়ী মেমরি। এতে আমরা ফাইল, ছবি, ভিডিও, এবং অন্যান্য তথ্য সংরক্ষণ করি।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.powerSupply,
            title: 'পাওয়ার সাপ্লাই \n(Power Supply)',
            description:
                'পাওয়ার সাপ্লাই হলো সেই ডিভাইস যা কম্পিউটারের সকল অংশে বিদ্যুৎ সরবরাহ করে।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.printer,
            title: 'প্রিন্টার (Printer)',
            description:
                'প্রিন্টার হলো এমন একটা মেশিন, যা কম্পিউটারের লেখা বা ছবি কাগজে তুলে দেয়। যেমন, তুমি কম্পিউটারে একটা ছবি আঁকলেই, প্রিন্টারের সাহায্যে সেটাকে কাগজে আনতে পারবে!',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.ssd,
            title: 'এসএসডি \n SSD (Solid State Drive)',
            description:
                'SSD-এর পুরো নাম Solid State Drive (সলিড স্টেট ড্রাইভ)। এটি কম্পিউটারের ডাটা সংরক্ষণের জন্য ব্যবহৃত হয়।\n\n'
                'হার্ড ড্রাইভের (HDD) মতোই এটি ফাইল, ছবি, ভিডিও ইত্যাদি রাখতে সাহায্য করে, তবে এটি অনেক দ্রুত কাজ করে।\n\n'
                'এসএসডি ব্যবহার করলে কম্পিউটার তাড়াতাড়ি চালু হয় এবং ফাইল খুব দ্রুত খুলতে পারে!',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.ups,
            title: ' ইউপিএস (UPS)',
            description:
                'ইউপিএস হলো কম্পিউটারের জন্য পাওয়ার ব্যাংক। যখন কারেন্ট চলে যায়, তখন এটা কম্পিউটারকে কিছুক্ষণ চালু রাখে, যাতে তোমরা জরুরি কাজ শেষ করতে পারো।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.motherboard,
            title: 'মাদারবোর্ড (Motherboard)',
            description:
                'মাদারবোর্ড হলো কম্পিউটারের ভেতরের একটা বড় বোর্ড, যেখানে সিপিইউ, র‍্যাম, ইত্যাদি সবকিছু লাগানো থাকে। এটা কম্পিউটারের সব অংশকে একসাথে কাজ করতে সাহায্য করে।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.graphicsCard,
            title: 'গ্রাফিক্স কার্ড \n(Graphics Card)',
            description:
                'গ্রাফিক্স কার্ড হলো কম্পিউটারের একটি বিশেষ অংশ, যা ছবি, ভিডিও, ও গেমের গ্রাফিক্স সুন্দরভাবে দেখাতে সাহায্য করে।\n\n'
                'এটি কম্পিউটারের মনিটরে স্পষ্ট ও সুন্দর ছবি দেখাতে কাজ করে, বিশেষ করে গেম খেলা, ভিডিও এডিটিং, আর থ্রিডি ডিজাইন করার সময়।\n\n'
                'এক কথায়, গ্রাফিক্স কার্ড থাকলে কম্পিউটারের ছবি আরও সুন্দর ও স্পষ্ট দেখায়!',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.casing,
            title: ' কেসিং - Casing',
            description:
                'কেসিং হলো কম্পিউটারের বাইরের কাঠামো বা বাক্স, যেখানে সিপিইউ, মাদারবোর্ড, হার্ড ড্রাইভ, এসএসডি, পাওয়ার সাপ্লাইসহ সব যন্ত্রাংশ থাকে।\n\n'
                'এটি কম্পিউটারকে ধুলো, ময়লা এবং ধাক্কা থেকে রক্ষা করে এবং ভেতরের অংশগুলোকে ঠান্ডা রাখতে সাহায্য করে।\n\n'
                'এক কথায়, কেসিং হলো কম্পিউটারের সুরক্ষার জন্য একটি শক্ত কাঠামো! ',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.panDrive,
            title: 'পেনড্রাইভ - Pendrive ',
            description:
                'পেনড্রাইভ হলো একটি ছোট মেমোরি ডিভাইস, যা কম্পিউটারের সঙ্গে সংযুক্ত করে তথ্য রাখা বা নেওয়া যায়। \n\nএটি খুব হালকা ও সহজে বহনযোগ্য, তাই যেকোনো জায়গায় নিয়ে যাওয়া যায়।\n\n'
                'পেনড্রাইভ দিয়ে আমরা ছবি, গান, ভিডিও, বা দরকারি ফাইল সংরক্ষণ করতে পারি এবং সহজেই অন্য কম্পিউটারে নিয়ে ব্যবহার করতে পারি! ',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.coolingFan,
            title: 'কুলিং ফ্যান (Cooling Fan)',
            description:
                'কুলিং ফ্যান হলো কম্পিউটারের একটি ছোট পাখা, যা ভেতরের অংশগুলো ঠান্ডা রাখে।\n\nকম্পিউটার অনেকক্ষণ চললে গরম হয়ে যায়, তখন কুলিং ফ্যান বাতাস দিয়ে ঠান্ডা করে। এতে কম্পিউটার ভালোভাবে কাজ করতে পারে এবং নষ্ট হওয়ার ঝুঁকি কমে! ',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.webcam,
            title: 'ওয়েবক্যাম (Webcam)',
            description:
                'ওয়েবক্যাম হলো একটি ছোট ক্যামেরা, যা কম্পিউটারের সঙ্গে যুক্ত থাকে। এটি ভিডিও কল করতে, ছবি তুলতে এবং অনলাইন ক্লাস বা মিটিংয়ে ব্যবহার করা হয়।\n\n'
                'ওয়েবক্যামের মাধ্যমে আমরা বন্ধু-পরিবারের সঙ্গে ভিডিওতে কথা বলতে পারি এবং অনলাইনে সহজে যোগাযোগ করতে পারি! ',
          ),
          SizedBox(height: 20),
        ],
      )),
    );
  }
}

class BeautifulCard extends StatelessWidget {
  final String title;
  final String description;
  final String coverImage;

  const BeautifulCard({
    super.key,
    required this.title,
    required this.description,
    required this.coverImage,
  });

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    // var mediaHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Image(
              image: AssetImage(coverImage),
              width: mediaWidth * 1,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 25,
                color: Color(0xff0aa168),
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
