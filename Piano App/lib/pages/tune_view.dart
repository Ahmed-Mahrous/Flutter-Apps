import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_view_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
final List<TuneModel> tunes = const[
  TuneModel(color: Colors.white, Sound: 'note1.wav'),
  TuneModel(color: Colors.black, Sound: 'note2.wav'),
  TuneModel(color: Colors.white, Sound: 'note3.wav'),
  TuneModel(color: Colors.black, Sound: 'note4.wav'),
  TuneModel(color: Colors.white, Sound: 'note5.wav'),
  TuneModel(color: Colors.black, Sound: 'note6.wav'),
  TuneModel(color: Colors.white, Sound: 'note7.wav'),
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Tune App",style: TextStyle(fontSize: 25,color: Colors.white,)),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),

      ),
    );
  }
//     List<TuneItem> getTuneItem(){
//        List<TuneItem> Items = [];
//        for (var color in tuneColors){
//          Items.add(TuneItem(color: color));
//        }
//        return Items;
// }
}
