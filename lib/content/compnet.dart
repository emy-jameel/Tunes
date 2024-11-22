import 'package:flutter/material.dart';
import 'package:trues/models/tund_model.dart';

class TuneColor extends StatelessWidget {
  const TuneColor({super.key, required this.tunee});
  final TuneModel tunee;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: tunee.color,
        ),
        onTap: () async {
          tunee.playsound();
          // try {
          //   await player.play(AssetSource(number.sound));
          // } catch (e) {
          //   print("Error playing sound: $e");
          // }
        },
      ),
    );
  }
}
