import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran30/models/surrahModel.dart';

import '../widgets/playerWidget.dart';

class Audioview extends StatefulWidget {
  final SurrahModel surah;
  final String surahname;

  const Audioview({super.key, required this.surah, required this.surahname});

  @override
  State<Audioview> createState() => _AudioviewState();
}

class _AudioviewState extends State<Audioview> {
  late AudioPlayer player = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);

    // Start the player as soon as the app is displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(
        UrlSource(
          'https://download.quranicaudio.com/quran/${widget.surah.reciter.relativepath}/${widget.surah.id}.mp3',
        ),
      );
      await player.resume();
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quran Audio"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              // Reciter Info
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green[100],
                child: Icon(Icons.person, size: 60, color: Colors.green[700]),
              ),
              const SizedBox(height: 15),
              Text(
                widget.surah.reciter.Englishname,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.surah.reciter.Arabicname,
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              const SizedBox(height: 30),

              // Surah name
              Text(
                widget.surahname,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 40),

              PlayerWidget(player: player),
            ],
          ),
        ),
      ),
    );
  }
}
