import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  const TuneModel({required this.color, required this.sound});

  void playsound() async {
    final player = AudioPlayer();
    try {
      await player.play(AssetSource(sound));
    } catch (e) {
      print("Error playing sound: $e");
    }
  }
}
