import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';

class EnRhymesCard extends StatelessWidget {
  const EnRhymesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Rhymes / ছড়া',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'All Rhymes',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              BeautifulCard(
                title: "Two Little Blackbirds",
                subtitle:
                    "\nTwo little blackbirds\nSitting on a wall.\nOne called Peter,\nOne called Paul.\n\n"
                    "Fly away Peter,\nFly away, Paul.\nGoodbye, Peter,\nGoodbye, Paul.\n\n",
                imageUrl: ImageConstEnglish.twoLittle,
                gradOne: const Color(0xff7853B8), // Deep purple
                gradTwo: const Color(0xff352552),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Two Little Hands",
                subtitle:
                    "\nTwo little hands to\nClap, clap, clap\nTwo little legs go\nTap, tap, tap\n\n"
                    "Two little eyes are\nOpen wide\nOne little head goes\nSide to side.\n\n",
                imageUrl: ImageConstEnglish.twoLittleHands,
                gradOne: const Color(0xffF28F8F), // Deep purple
                gradTwo: const Color(0xffBA68C8),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Counting Cats",
                subtitle: "\n1 cat, 2 cats.\nBrown cat, white cat..\n\n"
                    "3 cats, 4 cats.\nBlack cat, red cat\n\n",
                imageUrl: ImageConstEnglish.counting,
                gradOne: const Color(0xff455A64), // Deep purple
                gradTwo: const Color(0xffC8856A),
                onTap: () {},
              ),
              BeautifulCard(
                title: "One, Two, Three, Four, Five",
                subtitle: "\nOne, two, three, four, five,\nOnce I caught a fish alive.\n\n"
                    "Six, seven, eight, nine, ten,\nThen I let it go again.\n\n"
                    "Why did you let it go?\nBecause it bit my finger so.\nWhich finger did it bite?\nThis little finger on the right\n\n",
                imageUrl: ImageConstEnglish.oneTwo,
                gradOne: const Color(0xff2F877F), // Deep purple
                gradTwo: const Color(0xff455A64),
                onTap: () {},
              ),
              BeautifulCard(
                title: "I Love My Country",
                subtitle:
                    "\nI love my country,\nI love my mother\nI like to serve other,\nI like to study.\n\n",
                imageUrl: ImageConstEnglish.iLoveMy,
                gradOne: const Color(0xffA19834), // Deep purple
                gradTwo: const Color(0xff3AB51F),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Humpty Dumpty",
                subtitle:
                    "\nHumpty Dumpty sat on a wall,\nHumpty Dumpty had a great fall.\nAll the king's horses and all the king's men\nCouldn't put Humpty together again.\n\n",
                imageUrl: ImageConstEnglish.humptyDumpty,
                gradOne: const Color(0xffA10C4F), // Deep purple
                gradTwo: const Color(0xff352552),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Vegetables",
                subtitle:
                    "\nTomatoes and carrots\nCabbage and peas\nLook so yummy\nAll red and green.\n"
                    "\nSo little children\nEat them everyday\nTo make you grow\nStrong and smart.\n\n",
                imageUrl: ImageConstEnglish.vegetables,
                gradOne: const Color(0xff099E18), // Deep purple
                gradTwo: const Color(0xffB3B114),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Telephones",
                subtitle:
                    "\nKring, kring, telephone\nHello, hello, hello!\nI am a cat.\nBut who are you?\nOh! My God.\nI am a rat\nBut not at home.\n\n",
                imageUrl: ImageConstEnglish.telephones,
                gradOne: const Color(0xffA621BD), // Deep purple
                gradTwo: const Color(0xff531EAF),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Baa Baa Black Sheep",
                subtitle:
                    "\nBaa, baa black sheep\nHave you any wool\nYes sir, yes sir\nThree bags full.\n\n",
                imageUrl: ImageConstEnglish.blackShips,
                gradOne: const Color(0xffB9BF3B), // Deep purple
                gradTwo: const Color(0xff579E10),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Baa Baa Black Sheep",
                subtitle:
                    "\nThank you, God\nFor the world so sweet.\nThank you, God\nFor the food we eat.\n\n",
                imageUrl: ImageConstEnglish.thanksGod,
                gradOne: const Color(0xff15A947), // Deep purple
                gradTwo: const Color(0xff3AB51F),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Twinkle Twinkle",
                subtitle:
                    "\nTwinkle, twinkle, little star,\nHow I wonder what you are!\nUp above the world so high,\nLike a diamond in the sky.\n\n",
                imageUrl: ImageConstEnglish.twinkle,
                gradOne: const Color(0xff800D80), // Deep purple
                gradTwo: const Color(0xffB0038A),
                onTap: () {},
              ),
              BeautifulCard(
                title: "Twinkle Twinkle",
                subtitle:
                    "\nBrush, brush, brush\nBrush your teeth\nBrush with paste.\nBrush them clean\nBrush every morning\nBrush every night.\n\n",
                imageUrl: ImageConstEnglish.brush,
                gradOne: const Color(0xffFF725E), // Deep purple
                gradTwo: const Color(0xff520D92),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeautifulCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Color gradOne;
  final Color gradTwo;
  final VoidCallback onTap;

  const BeautifulCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.gradOne,
    required this.gradTwo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          imageUrl,
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [
                              gradOne,
                              gradTwo, // Bright blue
                            ],
                            stops: const [0.1, 0.9],
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
