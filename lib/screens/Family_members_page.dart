import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/Components/item.dart';
import '../models/item.dart';

class familyMembers extends StatelessWidget {
  const familyMembers({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        engName: 'Father',
        japName: 'Chichi',
        imagePath: 'assets/images/family_members/family_father.png',
        sound:'sounds/family_members/father.wav'),
    ItemModel(
        engName: 'Mother',
        japName: 'haha',
        imagePath: 'assets/images/family_members/family_mother.png',
        sound:'sounds/family_members/mother.wav'),
    ItemModel(
        engName: 'Daughter',
        japName: 'musume',
        imagePath: 'assets/images/family_members/family_daughter.png',
        sound:'sounds/family_members/daughter.wav'),
    ItemModel(
        engName: 'GrandFather',
        japName: 'sofu',
        imagePath: 'assets/images/family_members/family_grandfather.png',
        sound:'sounds/family_members/grand father.wav'),
    ItemModel(
        engName: 'GrandMother',
        japName: 'sobo',
        imagePath: 'assets/images/family_members/family_grandmother.png',
        sound:'sounds/family_members/grand mother.wav'),
    ItemModel(
        engName: 'OlderBrother',
        japName: 'ani',
        imagePath: 'assets/images/family_members/family_older_brother.png',
        sound:'sounds/family_members/older bother.wav'),
    ItemModel(
        engName: 'OlderSister',
        japName: 'ane',
        imagePath: 'assets/images/family_members/family_older_sister.png',
        sound:'sounds/family_members/older sister.wav'),
    ItemModel(
        engName: 'Son',
        japName: 'musuko',
        imagePath: 'assets/images/family_members/family_son.png',
        sound:'sounds/family_members/son.wav'),
    ItemModel(
        engName: 'YoungerSister',
        japName: 'imōto',
        imagePath: 'assets/images/family_members/family_younger_sister.png',
        sound:'sounds/family_members/younger sister.wav'),
    ItemModel(
        engName: 'YoungerBrother',
        japName: 'otōto',
        imagePath: 'assets/images/family_members/family_younger_brother.png',
        sound:'sounds/family_members/younger brohter.wav'),
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
          return Item(Number: numbers[index], color: Color(0xff528032),);
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
