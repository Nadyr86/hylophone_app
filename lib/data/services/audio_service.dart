import 'package:audioplayers/audioplayers.dart';

class AudioServices {
  final player = AudioPlayer();

  Future<void> playNote(String number) async {
    await player.play(AssetSource(
      'notes/notyi$number.wav',
    ));
  }
}

final AudioServices audioServices = AudioServices();
