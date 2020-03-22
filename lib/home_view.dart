import 'package:flutter/material.dart';
import 'Sound.dart';


class HomeView extends StatelessWidget{
  final List<Sound> sounds = [
    Sound("yak yak", "0.01","ttt"),
    Sound("tuki", "0.02","fff"),
    Sound("bla", "0.01","zzz"),
    Sound("nooo yak", "0.01","qqq"),
    Sound("mishh", "0.01","rrr"),
    Sound("motz", "0.03","bla"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: sounds.length,
          itemBuilder: (BuildContext context, int index) => buildSoundsCard(context, index)
      ),
    );
  }

  Widget buildSoundsCard(BuildContext context, int index){
    final Sound = sounds[index];
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:8.0, bottom: 4.0 ),
                child: Row(children: <Widget>[
                  Text(Sound.title, style: new TextStyle(fontSize: 30),),
                  Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4.0, bottom: 80.0 ),
                child: Row(children: <Widget>[
                  Text(Sound.length),
                  Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0, bottom: 8.0 ),
                child: Row(children: <Widget>[
                  Text(Sound.hatzil, style: new TextStyle(fontSize: 35),),
                  Spacer(),
                ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}