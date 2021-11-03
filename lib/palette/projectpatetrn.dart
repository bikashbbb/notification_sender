import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/provider/auth/countrycode.dart';
import 'package:iro/provider/auth/signupprovider.dart';

var background = Color(0xff123456);

class Alltextfields {
  static Widget register_textfield(controller,
      {String hinttext = '', var context = ''}) {
    return GetBuilder<TextfieldController>(
        init: TextfieldController(),
        builder: (builder) {
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                      '+' + CountryCodeController.cuntrycode,
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
                    width: hinttext != '' && hinttext[1] == 'h' ? 270 : 280,
                    height: 23,
                    child: TextField(
                      onChanged: (string) {
                        hinttext[0] == 'U' ? builder.checkUsername() : null;
                      },
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
                  hinttext[0] == 'U'
                      ? SizedBox(
                          height: 20, width: 20, child: builder.initialicon)
                      : Container()
                ],
              ),
            ),
          );
        });
  }
}
