import 'package:flutter/material.dart';

class Alltextfields {
  static Widget register_textfield({String hinttext = ''}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        alignment: const Alignment(0.1, 0),
        height: 60,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // country code
            hinttext != '' && hinttext[1] == 'h'
                ? Container(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text(
                            '+1',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(),
            // icon

            Container(
              width: hinttext != '' && hinttext[1] == 'h'
                  ? 270
                  : 320,
              height: 23,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorHeight: 20,
                cursorColor: Colors.white,
                decoration: InputDecoration.collapsed(
                    hintText: hinttext,
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 14,
                        fontWeight: FontWeight.w600
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}