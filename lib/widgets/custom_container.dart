import 'package:flutter/material.dart';
import 'package:hylophone_app/data/repo/audio_repo.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String noteNumber;
  final Color? splashColor;
  const CustomContainer(
      {required this.color,
      required this.noteNumber,
      this.splashColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.blueAccent,
            onTap: () async {
              await audioRepo.playNote(noteNumber);
            },
            child: Container(),
          ),
        ),
      ),
    );
  }
}
