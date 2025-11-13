import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla/poets/poet_details.dart';
import 'package:sunamonir_pathshala/utils/text_string/poet_string.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

import '../../../base_scaffold.dart';

class PoetListView extends StatefulWidget {
  const PoetListView({Key? key}) : super(key: key);

  @override
  State<PoetListView> createState() => _PoetListViewState();
}

class _PoetListViewState extends State<PoetListView> with TickerProviderStateMixin {
  late AnimationController _controller;
  late List<AnimationController> _itemControllers;

  final List<Poet> poets = [
    Poet(
      name: PoetString.robindronathName,
      period: PoetString.robindronathDate,
      desc: PoetString.robindronathDesc,
    ),
    Poet(
      name: PoetString.kajiNazrulName,
      period: PoetString.kajiNazrulDate,
      desc: PoetString.kajiNazrulDesc,
    ),
    Poet(
      name: PoetString.samsurRahmanName,
      period: PoetString.samsurRahmanDate,
      desc: PoetString.samsurRahmanDesc,
    ),
    Poet(
      name: PoetString.jibonanondoDasName,
      period: PoetString.jibonanondoDasDate,
      desc: PoetString.jibonanondoDasDesc,
    ),
    Poet(
      name: PoetString.sukumarRoyName,
      period: PoetString.sukumarRoyDate,
      desc: PoetString.sukumarRoyDesc,
    ),
    Poet(
      name: PoetString.sukantoVottaName,
      period: PoetString.sukantoVottaDate,
      desc: PoetString.sukantoVottaDesc,
    ),
    Poet(
      name: PoetString.micleModhusudhonName,
      period: PoetString.micleModhusudhonDate,
      desc: PoetString.micleModhusudhonDesc,
    ),
    Poet(
      name: PoetString.nirmulendoGunName,
      period: PoetString.nirmulendoGunDate,
      desc: PoetString.nirmulendoGunDesc,
    ),
    Poet(
      name: PoetString.joshimUddinName,
      period: PoetString.joshimUddinDate,
      desc: PoetString.joshimUddinDesc,
    ),
    Poet(
      name: PoetString.almahmudName,
      period: PoetString.almahmudDate,
      desc: PoetString.almahmudDesc,
    ),
    Poet(
      name: PoetString.fororukhAhmedName,
      period: PoetString.fororukhAhmedDate,
      desc: PoetString.fororukhAhmedDesc,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _itemControllers = List.generate(
      poets.length,
      (index) => AnimationController(
        duration: Duration(milliseconds: 600 + (index * 100)),
        vsync: this,
      ),
    );

    _startAnimation();
  }

  void _startAnimation() async {
    for (int i = 0; i < _itemControllers.length; i++) {
      await Future.delayed(Duration(milliseconds: i * 100));
      if (mounted) {
        _itemControllers[i].forward();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    for (var controller in _itemControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      // Replaced AdScaffold
      backgroundColor: const Color(0xFF1A1A2E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'কবি পরিচিতি',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: StringConstants.bnFontFamily,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF16213E),
        elevation: 0,
        centerTitle: true,
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
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: poets.length, // Removed ad spacing
          itemBuilder: (context, index) {
            // Removed ad calculation logic
            return AnimatedBuilder(
              animation: _itemControllers[index], // Use index directly
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(
                    0,
                    50 * (1 - _itemControllers[index].value),
                  ),
                  child: Opacity(
                    opacity: _itemControllers[index].value,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: _buildPoetTile(poets[index], index),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildPoetTile(Poet poet, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.05),
          ],
        ),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            _onPoetTap(poet);
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // Avatar with gradient background
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: _getGradientColors(index),
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      poet.name.split(' ').map((e) => e[0]).join(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Poet details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        poet.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        poet.period,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                // Arrow icon with animation
                AnimatedBuilder(
                  animation: _itemControllers[index],
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _itemControllers[index].value * 0.1,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.6),
                        size: 20,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Color> _getGradientColors(int index) {
    final gradients = [
      [const Color(0xFF667eea), const Color(0xFF764ba2)],
      [const Color(0xFFf093fb), const Color(0xFFf5576c)],
      [const Color(0xFF4facfe), const Color(0xFF00f2fe)],
      [const Color(0xFF43e97b), const Color(0xFF38f9d7)],
      [const Color(0xFFfa709a), const Color(0xFFfee140)],
      [const Color(0xFFa8edea), const Color(0xFFfed6e3)],
      [const Color(0xFFff9a9e), const Color(0xFFfecfef)],
      [const Color(0xFF96fbc4), const Color(0xFFf9f586)],
      [const Color(0xFFffecd2), const Color(0xFFfcb69f)],
      [const Color(0xFFa18cd1), const Color(0xFFfbc2eb)],
    ];
    return gradients[index % gradients.length];
  }

  void _onPoetTap(Poet poet) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PoetDetailScreen(poet: poet)),
    );
  }
}

class Poet {
  final String name;
  final String period;
  final String desc;

  Poet({
    required this.name,
    required this.period,
    required this.desc,
  });
}
