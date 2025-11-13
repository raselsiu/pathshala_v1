import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends StatefulWidget {
  final String adUnitId;
  final Widget? placeholder;
  final int retryDelayInSeconds;

  const BannerAdWidget({
    super.key,
    required this.adUnitId,
    this.placeholder,
    this.retryDelayInSeconds = 5,
  });

  @override
  BannerAdWidgetState createState() => BannerAdWidgetState();
}

class BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isBannerAdReady = false;
  AdSize? _adSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadAdaptiveBannerAd();
  }

  Future<void> _loadAdaptiveBannerAd() async {
    _bannerAd?.dispose();

    final AnchoredAdaptiveBannerAdSize? adaptiveSize = await AdSize.getAnchoredAdaptiveBannerAdSize(
      Orientation.portrait,
      MediaQuery.of(context).size.width.truncate(),
    );

    if (adaptiveSize == null) {
      debugPrint('Adaptive banner size is null.');
      return;
    }

    setState(() => _adSize = adaptiveSize);

    _bannerAd = BannerAd(
      adUnitId: widget.adUnitId,
      request: const AdRequest(),
      size: adaptiveSize,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (!mounted) return;
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('Failed to load adaptive banner ad: ${err.message}');
          ad.dispose();
          if (!mounted) return;
          setState(() {
            _isBannerAdReady = false;
          });
          // Retry after delay
          Future.delayed(
            Duration(seconds: widget.retryDelayInSeconds),
            _loadAdaptiveBannerAd,
          );
        },
      ),
    );

    await _bannerAd!.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isBannerAdReady && _bannerAd != null && _adSize != null) {
      return SizedBox(
        width: _adSize!.width.toDouble(),
        height: _adSize!.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      );
    } else {
      return widget.placeholder ??
          const SizedBox(
              // width: MediaQuery.of(context).size.width,
              // height: 50,
              // color: Colors.grey[300],
              // child: const Center(child: Text('Loading Ad...')),
              );
    }
  }
}
