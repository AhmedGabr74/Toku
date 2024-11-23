import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/screens/Family_members_page.dart';
import '../Components/category_items.dart';
import 'Numbers_Page.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfffef5d9),
        appBar: AppBar(
          title: const Text(
            'Toku',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff49332a),
        ),
        body: Column(
          children: [
            category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const numbersPage();
                    },
                  ),
                );
              },
              text: 'Numbers',
              color: Color(0xfff99531),
            ),
            category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return familyMembers();
                }));
              },
              text: 'FamilyMembers',
              color: Color(0xff528032),
            ),
            category(
              text: 'Colors',
              color: Color(0xff7d40a2),
            ),
            category(
              text: 'Pharses',
              color: Color(0xff47a4ca),
            ),
          ],
        ),
      ),
    );
  }
}
