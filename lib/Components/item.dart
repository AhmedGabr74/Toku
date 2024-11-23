import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/models/item.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.Number, required this.color});

  final ItemModel Number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffef5db),
            child: Image.asset(
              Number.imagePath!,
            ),
          ),
          Expanded(child: itemInfo(Number: Number)),
        ],
      ),
    );
  }
}

class itemInfo extends StatelessWidget {
  const itemInfo({super.key, required this.Number});
  final ItemModel Number;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                  AssetSource(Number.sound),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
        ),
      ],
    );
  }
}




class pharses_item extends StatelessWidget {
  const pharses_item({super.key, required this.Number, required this.color});

  final ItemModel Number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: itemInfo(Number: Number)
    );
  }
}
