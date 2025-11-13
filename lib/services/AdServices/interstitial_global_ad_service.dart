import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../../ads/interstitial_ad_manager.dart';

// Create a mixin that any widget can use
mixin AdNavigationMixin<T extends StatefulWidget> on State<T> {
  late InterstitialAdManager _adManager;
  bool _hasNavigated = false;

  @override
  void initState() {
    super.initState();
    _initializeAdManager();
  }

  void _initializeAdManager() {
    _adManager = InterstitialAdManager();
    _adManager.loadInterstitialAd();
  }

  Future<void> showAdAndNavigate(Widget destination) async {
    _hasNavigated = false;
    // 1. Check internet connection
    final connectivityResult = await Connectivity().checkConnectivity();
    final bool hasInternet = connectivityResult != ConnectivityResult.none;

    // 2. Check if an ad is ready
    final bool adReady = _adManager.isAdReady;

    // 3. Set navigation callback (reused for both ad outcomes)
    void navigate() {
      if (_hasNavigated) return;
      _hasNavigated = true;
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => destination),
      );
    }

    // 4. Show ad if conditions are met
    if (hasInternet && adReady) {
      _adManager.onAdDismissed = navigate;
      _adManager.onAdFailedToShow = navigate;
      _adManager.showInterstitialAd();
    } else {
      navigate(); // Direct navigation if no internet or ad not ready
    }
  }

  @override
  void dispose() {
    _adManager.dispose();
    super.dispose();
  }
}
