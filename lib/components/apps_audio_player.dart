import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ReusableAudioPlayer extends StatefulWidget {
  final String audioUrl;

  const ReusableAudioPlayer({Key? key, required this.audioUrl}) : super(key: key);

  @override
  _ReusableAudioPlayerState createState() => _ReusableAudioPlayerState();
}

class _ReusableAudioPlayerState extends State<ReusableAudioPlayer> {
  late final AudioPlayer _audioPlayer;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    // Load the audio URL
    _audioPlayer.setUrl(widget.audioUrl);

    // Listen to the player's state to handle when playback ends
    _audioPlayer.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        setState(() {
          _isPlaying = false; // Reset to play icon when audio completes
        });
        _audioPlayer.pause(); // Ensure the player does not auto-play
        _audioPlayer.seek(Duration.zero); // Reset audio position
      }
    });
  }

  void _togglePlayPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      icon: Icon(
        _isPlaying ? Icons.pause : Icons.play_arrow,
        color: Colors.green,
      ),
      onPressed: _togglePlayPause,
    );
  }
}
