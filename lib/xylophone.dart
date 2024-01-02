import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              buildConteiner(tus: Color(0xffef443a), notaNomeri: '1'),
              buildConteiner(tus: Color(0xfff99700), notaNomeri: '2'),
              buildConteiner(tus: Color(0xffffe93b), notaNomeri: '3'),
              buildConteiner(tus: Color(0xff4cb050), notaNomeri: '4'),
              buildConteiner(tus: Color(0xff2e968c), notaNomeri: '5'),
              buildConteiner(tus: Color(0xff2996f5), notaNomeri: '6'),
              buildConteiner(tus: Color(0xff9b28b1), notaNomeri: '7'),
            ],
          ),
        ),
      ),
    );
  }

  buildConteiner({required Color tus, required String notaNomeri}) {
    return Expanded(
      child: Container(
        color: tus,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.blueAccent,
            onTap: () {
              player.play(AssetSource(
                'notes/notyi$notaNomeri.wav',
              ));
            },
            child: Container(),
          ),
        ),
      ),
    );
  }
}
