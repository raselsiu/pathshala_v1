import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../services/ads_helper.dart';

class InterstitialAdManager {
  InterstitialAd? _interstitialAd;
  bool _isInterstitialAdReady = false;

  // Callback functions for different ad events
  VoidCallback? onAdDismissed;
  VoidCallback? onAdLoaded;
  VoidCallback? onAdFailedToShow;

  void loadInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            if (kDebugMode) {
              print('$ad loaded');
            }
            _interstitialAd = ad;
            _isInterstitialAdReady = true;
            _setFullScreenContentCallback();

            // Notify when ad is loaded
            onAdLoaded?.call();
          },
          onAdFailedToLoad: (LoadAdError error) {
            if (kDebugMode) {
              print('InterstitialAd failed to load: $error.');
            }
            _isInterstitialAdReady = false;
          },
        ));
  }

  void _setFullScreenContentCallback() {
    if (_interstitialAd == null) return;

    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) => print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        if (kDebugMode) {
          print('$ad onAdDismissedFullScreenContent.');
        }
        ad.dispose();
        _isInterstitialAdReady = false;
        loadInterstitialAd(); // Load next ad

        // Notify when ad is dismissed - THIS IS THE KEY ADDITION
        onAdDismissed?.call();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        if (kDebugMode) {
          print('$ad onAdFailedToShowFullScreenContent: $error');
        }
        ad.dispose();
        _isInterstitialAdReady = false;
        loadInterstitialAd(); // Load next ad

        // Notify when ad failed to show
        onAdFailedToShow?.call();
      },
    );
  }

  void showInterstitialAd() {
    if (_isInterstitialAdReady && _interstitialAd != null) {
      _interstitialAd!.show();
    } else {
      if (kDebugMode) {
        print('Interstitial ad is not ready yet.');
      }
    }
  }

  bool get isAdReady => _isInterstitialAdReady;

  void dispose() {
    _interstitialAd?.dispose();
    // Clear callbacks to prevent memory leaks
    onAdDismissed = null;
    onAdLoaded = null;
    onAdFailedToShow = null;
  }
}
