import 'package:flutter/material.dart';

Widget loginbutton(var title) {
  return Container(
    width: 150,
    child: RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
      color: Colors.orangeAccent,
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
    ),
  );
}

class Textfields{


}