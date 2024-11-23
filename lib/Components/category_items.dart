import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        child: Text(
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          text!,
        ),
        color: color!,
      ),
    );
  }
}
