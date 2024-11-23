import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/Components/item.dart';
import '../models/item.dart';

class pharsesModel extends StatelessWidget {
  const pharsesModel({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        engName: 'are_you_coming',
        japName: 'Kimasu ka',
        sound:'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        engName: 'dont_forget_to_subscribe',
        japName: 'Kōdoku o wasurenaide kudasai',
        sound:'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        engName: 'how_are_you_feeling',
        japName: 'Go kibun wa ikagadesu ka',
        sound:'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        engName: 'i_love_anime',
        japName: 'Anime daisuki',
        sound:'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        engName: 'i_love_programming',
        japName: 'Puroguramingu daisuki',
        sound:'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        engName: 'programming_is_easy',
        japName: 'Puroguramingu wa kantan',
        sound:'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        engName: 'what_is_your_name',
        japName: 'Anata no namae wa nandesuka',
        sound:'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        engName: 'where_are_you_going',
        japName: 'Doko ni iku no',
        sound:'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        engName: 'yes_im_coming',
        japName: 'Hai, kimasu',
        sound:'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
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
          return pharses_item(Number: numbers[index], color: Color(0xff47a5cb),);
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
