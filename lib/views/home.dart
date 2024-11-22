import 'package:flutter/material.dart';
import 'package:trues/content/compnet.dart';
import 'package:trues/models/tund_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<TuneModel> tunes = const [
   TuneModel(color: Colors.amber, sound: "note1.wav"),
   TuneModel(color:  Color.fromARGB(255, 15, 127, 179), sound: "note2.wav"),
   TuneModel(color: Color.fromARGB(255, 23, 124, 80), sound: "note3.wav"),
   TuneModel(color:  Colors.green, sound: "note4.wav"),
   TuneModel(color: Colors.red, sound: "note5.wav"),
   TuneModel(color:  Color.fromARGB(255, 235, 151, 25), sound: "note6.wav"),
   TuneModel(color:  Color.fromARGB(255, 110, 13, 110), sound: "note7.wav"),
    
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 50, 74),
        elevation: 0,
        title: const Text(
          "TUNE",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: 
        tunes.map((e) => TuneColor(tunee: e)).toList(),
      ),
    );
  }

  // List<TuneColor> getTuneItem() {
  //   List<TuneColor> items = [];
  //   for (var element in tunecolors) {
  //     items.add(TuneColor(color: element));
  //   }
  //   return items;
  // }
}
