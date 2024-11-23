import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.Number});

  final Number_class Number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xfff8942f),
      child: Row(
        children: [
          Container(
            color: const Color(0xfffef5db),
            child: Image.asset(
              Number.imagePath,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Number.japName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  Number.engName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource('sounds/numbers/number_one_sound.mp3'),
                  );
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              )),
        ],
      ),
    );
  }
}
