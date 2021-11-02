import 'package:flutter/material.dart';

Widget loginbutton(var title) {
  return Container(
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(35.0)),
    width: 150,
    child: ListTile(
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      ),
      trailing: const Icon(
        Icons.arrow_right_alt_outlined,
        color: Colors.white,
        size: 22,
      ),
    ),
  );
}

class Textfields {}
