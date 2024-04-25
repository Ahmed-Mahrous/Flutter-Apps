import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String Sound;

  const TuneModel({required this.color, required this.Sound});
  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(Sound));
  }

}