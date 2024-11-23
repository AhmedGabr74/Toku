import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/Components/item.dart';
import '../models/item.dart';

class colorsModel extends StatelessWidget {
  const colorsModel({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        engName: 'Black',
        japName: 'Burakku',
        imagePath: 'assets/images/colors/color_black.png',
        sound:'sounds/colors/black.wav'),
    ItemModel(
        engName: 'Brown',
        japName: 'buraun',
        imagePath: 'assets/images/colors/color_brown.png',
        sound:'sounds/colors/brown.wav'),
    ItemModel(
        engName: 'Dusty Yellow',
        japName: 'dasutiierō',
        imagePath: 'assets/images/colors/color_dusty_yellow.png',
        sound:'sounds/colors/dusty yellow.wav'),
    ItemModel(
        engName: 'Gray',
        japName: 'gurē',
        imagePath: 'assets/images/colors/color_gray.png',
        sound:'sounds/colors/gray.wav'),
    ItemModel(
        engName: 'Green',
        japName: 'gurīn',
        imagePath: 'assets/images/colors/color_green.png',
        sound:'sounds/colors/green.wav'),
    ItemModel(
        engName: 'Red',
        japName: 'reddo',
        imagePath: 'assets/images/colors/color_red.png',
        sound:'sounds/colors/red.wav'),
    ItemModel(
        engName: 'White',
        japName: 'howaito',
        imagePath: 'assets/images/colors/color_white.png',
        sound:'sounds/colors/white.wav'),
    ItemModel(
        engName: 'Yellow',
        japName: 'ierō',
        imagePath: 'assets/images/colors/yellow.png',
        sound:'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff463027),
        iconTheme: const IconThemeData(
          color: Colors.white, // Set back icon color to white
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(Number: numbers[index], color: Color(0xff7c41a2),);
        },
        //children: getList(numbers),
      ),
    );
  }

// List<Widget> getList(List<Number_class> numbers) {
//   List<Widget> itemsList = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemsList.add(Item(Number: numbers[i]));
//   }
//   return itemsList;
//   // /return numbers.map((number) => Item(Number: number)).toList();
// }
}
