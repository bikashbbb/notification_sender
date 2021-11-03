import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/provider/auth/countrycode.dart';

Widget loginbutton(var title) {
  return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(35.0)),
      width: 150,
      child: GetBuilder<CountryCodeController>(
        builder: (_) {
          return ListTile(
            title: Text(
              CountryCodeController.isloading.value && title[0] == 'S'
                  ? 'signing.'
                  : title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            trailing: CountryCodeController.isloading.value && title[0] == 'S'
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.white,
                    size: 22,
                  ),
          );
        },
      ));
}

class Textfields {}
