import 'package:hylophone_app/data/services/audio_service.dart';

class AudioRepo {
  Future<void> playNote(String number) async {
    await audioServices.playNote(number);
  }
}

final AudioRepo audioRepo = AudioRepo();
