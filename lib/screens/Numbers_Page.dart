import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/Components/item.dart';
import '../models/item.dart';

class numbersPage extends StatelessWidget {
  const numbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        engName: 'One',
        japName: 'ichi',
        imagePath: 'assets/images/numbers/number_one.png',
        sound:'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        engName: 'Two',
        japName: 'ni',
        imagePath: 'assets/images/numbers/number_two.png',
        sound:'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        engName: 'Three',
        japName: 'san',
        imagePath: 'assets/images/numbers/number_three.png',
        sound:'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        engName: 'Four',
        japName: 'shi/yon',
        imagePath: 'assets/images/numbers/number_four.png',
        sound:'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        engName: 'Five',
        japName: 'go',
        imagePath: 'assets/images/numbers/number_five.png',
        sound:'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        engName: 'Six',
        japName: 'roku',
        imagePath: 'assets/images/numbers/number_six.png',
        sound:'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        engName: 'Seven',
        japName: 'shichi/nana',
        imagePath: 'assets/images/numbers/number_seven.png',
        sound:'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        engName: 'Eight',
        japName: 'hachi',
        imagePath: 'assets/images/numbers/number_eight.png',
        sound:'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        engName: 'Nine',
        japName: 'kyuu/ku',
        imagePath: 'assets/images/numbers/number_nine.png',
        sound:'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        engName: 'Ten',
        japName: 'juu',
        imagePath: 'assets/images/numbers/number_ten.png',
        sound:'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
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
          return Item(Number: numbers[index], color: Color(0xfff8942f),);
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
