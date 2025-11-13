import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/services/ads_helper.dart';

import 'ads/banner_ad_widget.dart';

class AdScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;

  const AdScaffold({super.key, required this.body, this.appBar, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: body,
      bottomNavigationBar: BannerAdWidget(
        adUnitId: AdHelper.bannerAdUnitId,
      ),
    );
  }
}
