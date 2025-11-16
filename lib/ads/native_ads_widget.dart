import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

enum NativeAdSize { small, medium, large }

class NativeAdWidget extends StatefulWidget {
  final String adUnitId;
  final NativeAdSize adSize;

  const NativeAdWidget({
    super.key,
    required this.adUnitId,
    this.adSize = NativeAdSize.medium,
  });

  @override
  State<NativeAdWidget> createState() => _NativeAdWidgetState();
}

class _NativeAdWidgetState extends State<NativeAdWidget> {
  NativeAd? _nativeAd;
  bool _isAdLoaded = false;
  bool _hasInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasInitialized) {
      _hasInitialized = true;
      _loadNativeAd();
    }
  }

  void _loadNativeAd() {
    _nativeAd = NativeAd(
      adUnitId: widget.adUnitId,
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          if (mounted) {
            setState(() {
              _isAdLoaded = true;
            });
          }
        },
        onAdFailedToLoad: (ad, error) {
          if (kDebugMode) {
            print('Native ad failed to load: $error');
          }
          ad.dispose();
        },
        onAdOpened: (ad) => print('Native ad opened'),
        onAdClosed: (ad) => print('Native ad closed'),
      ),
      request: const AdRequest(),
      nativeTemplateStyle: _getNativeTemplateStyle(),
    );

    _nativeAd!.load();
  }

  NativeTemplateStyle _getNativeTemplateStyle() {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return NativeTemplateStyle(
      templateType: _getTemplateType(),
      mainBackgroundColor: isDark ? Colors.grey[900] : Colors.white,
      cornerRadius: 8.0,
      callToActionTextStyle: NativeTemplateTextStyle(
        textColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.primary,
        style: NativeTemplateFontStyle.bold,
        size: 14.0,
      ),
      primaryTextStyle: NativeTemplateTextStyle(
        textColor: isDark ? Colors.white : Colors.black87,
        backgroundColor: Colors.transparent,
        style: NativeTemplateFontStyle.bold,
        size: 16.0,
      ),
      secondaryTextStyle: NativeTemplateTextStyle(
        textColor: isDark ? Colors.grey[300] : Colors.grey[600],
        backgroundColor: Colors.transparent,
        style: NativeTemplateFontStyle.normal,
        size: 14.0,
      ),
      tertiaryTextStyle: NativeTemplateTextStyle(
        textColor: isDark ? Colors.grey[400] : Colors.grey[500],
        backgroundColor: Colors.transparent,
        style: NativeTemplateFontStyle.normal,
        size: 12.0,
      ),
    );
  }

  TemplateType _getTemplateType() {
    switch (widget.adSize) {
      case NativeAdSize.small:
        return TemplateType.small;
      case NativeAdSize.medium:
        return TemplateType.medium;
      case NativeAdSize.large:
        return TemplateType.medium; // Use medium for large ads as well
    }
  }

  double _getAdHeight() {
    switch (widget.adSize) {
      case NativeAdSize.small:
        return 120;
      case NativeAdSize.medium:
        return 250;
      case NativeAdSize.large:
        return 300;
      default:
        return 120; // fallback value
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isAdLoaded || _nativeAd == null) {
      // return const SizedBox();
      return _buildAdPlaceholder();
    }

    return Container(
      height: _getAdHeight(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AdWidget(ad: _nativeAd!),
      ),
    );
  }

  Widget _buildAdPlaceholder() {
    return Container(
      height: _getAdHeight(),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 12),
            Text(
              'Loading Ad...',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nativeAd?.dispose();
    super.dispose();
  }
}
