import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/Components/item.dart';
import '../models/number.dart';

class numbersPage extends StatelessWidget {
  const numbersPage({super.key});
  final List<Number_class> numbers = const [
    Number_class(
        engName: 'One',
        japName: 'ichi',
        imagePath: 'assets/images/numbers/number_one.png'),
    Number_class(
        engName: 'Two',
        japName: 'ni',
        imagePath: 'assets/images/numbers/number_two.png'),
    Number_class(
        engName: 'Three',
        japName: 'san',
        imagePath: 'assets/images/numbers/number_three.png'),
    Number_class(
        engName: 'Four',
        japName: 'shi/yon',
        imagePath: 'assets/images/numbers/number_four.png'),
    Number_class(
        engName: 'Five',
        japName: 'go',
        imagePath: 'assets/images/numbers/number_five.png'),
    Number_class(
        engName: 'Six',
        japName: 'roku',
        imagePath: 'assets/images/numbers/number_six.png'),
    Number_class(
        engName: 'Seven',
        japName: 'shichi/nana',
        imagePath: 'assets/images/numbers/number_seven.png'),
    Number_class(
        engName: 'Eight',
        japName: 'hachi',
        imagePath: 'assets/images/numbers/number_eight.png'),
    Number_class(
        engName: 'Nine',
        japName: 'kyuu/ku',
        imagePath: 'assets/images/numbers/number_nine.png'),
    Number_class(
        engName: 'Ten',
        japName: 'juu',
        imagePath: 'assets/images/numbers/number_ten.png'),
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
          return Item(Number: numbers[index]);
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
