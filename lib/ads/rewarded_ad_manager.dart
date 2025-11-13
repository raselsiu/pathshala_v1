import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../services/ads_helper.dart';

class RewardedAdManager {
  RewardedAd? _rewardedAd;
  bool _isRewardedAdReady = false;

  void loadRewardedAd() {
    RewardedAd.load(
        adUnitId: AdHelper.rewardedAdUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (RewardedAd ad) {
            print('$ad loaded.');
            _rewardedAd = ad;
            _isRewardedAdReady = true;
            _setFullScreenContentCallback();
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('RewardedAd failed to load: $error');
            _isRewardedAdReady = false;
          },
        ));
  }

  void _setFullScreenContentCallback() {
    if (_rewardedAd == null) return;

    _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (RewardedAd ad) => print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _isRewardedAdReady = false;
        loadRewardedAd(); // Load next ad
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _isRewardedAdReady = false;
        loadRewardedAd(); // Load next ad
      },
    );
  }

  void showRewardedAd({required Function(AdWithoutView ad, RewardItem reward) onUserEarnedReward}) {
    if (_isRewardedAdReady && _rewardedAd != null) {
      _rewardedAd!.show(onUserEarnedReward: onUserEarnedReward);
    } else {
      print('Rewarded ad is not ready yet.');
    }
  }

  bool get isAdReady => _isRewardedAdReady;

  void dispose() {
    _rewardedAd?.dispose();
  }
}
