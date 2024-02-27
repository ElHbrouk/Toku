import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String englishName;
  final String japaneseName;
  final String sound;
  final String? image;

  const ItemModel({
    required this.englishName,
    required this.japaneseName,
    required this.sound,
    this.image,
  });

  playSound({required sound}) async {
    final player = AudioPlayer();
    await player.stop();
    await player.play(AssetSource(sound));
  }
}
