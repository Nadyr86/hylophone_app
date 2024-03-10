import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hylophone_app/app_constants/colors/app_colors.dart';
import 'package:hylophone_app/widgets/custom_container.dart';

class XylophoneView extends StatefulWidget {
  const XylophoneView({Key? key}) : super(key: key);

  @override
  _XylophoneViewState createState() => _XylophoneViewState();
}

class _XylophoneViewState extends State<XylophoneView> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomContainer(color: AppColors.red, noteNumber: '1'),
              CustomContainer(color: AppColors.yellow, noteNumber: '2'),
              CustomContainer(color: AppColors.orange, noteNumber: '3'),
              CustomContainer(color: AppColors.greenDark, noteNumber: '4'),
              CustomContainer(color: AppColors.greenLight, noteNumber: '5'),
              CustomContainer(color: AppColors.blue, noteNumber: '6'),
              CustomContainer(color: AppColors.pinkDark, noteNumber: '7'),
            ],
          ),
        ),
      ),
    );
  }
}
