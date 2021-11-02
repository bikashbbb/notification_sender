import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/provider/auth/countrycode.dart';

class Alltextfields {
  static Widget register_textfield(controller,
      {String hinttext = '', var context = ''}) {
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
            // COUNTRY CODE  field
            GetBuilder<CountryCodeController>(
                init: CountryCodeController(),
                builder: (_) {
                  return hinttext != '' && hinttext[1] == 'h'
                      ? InkWell(
                          onTap: () {
                            _.choosecountry(context);
                          },
                          child: Row(
                            children: [
                              Text(
                                '+' + _.cuntrycode,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      : Container();
                }),
            SizedBox(
              width: hinttext != '' && hinttext[1] == 'h' ? 270 : 320,
              height: 23,
              child: TextField(
                controller: controller,
                keyboardType: hinttext != '' && hinttext[1] == 'h'
                    ? TextInputType.number
                    : TextInputType.text,
                style: const TextStyle(color: Colors.white),
                cursorHeight: 20,
                cursorColor: Colors.white,
                decoration: InputDecoration.collapsed(
                    hintText: hinttext,
                    hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
