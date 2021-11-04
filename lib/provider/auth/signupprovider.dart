import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/domain/signupdomain.dart';
import 'package:iro/provider/auth/countrycode.dart';

class SIgnupClicked extends GetxController {
  // controllers
  static var username = TextEditingController();
  static var phone = TextEditingController();
  static var password = TextEditingController().obs;
  var confirmPasword = TextEditingController().obs;
  // ui messeges
  static var messege = ''.obs;

  void checkPasswords() {
    if (password.value.text != confirmPasword.value.text) {
      messege.value = 'Passwords should match';
    } else if (TextfieldController.usermsginitial == '') {
      CountryCodeController().isphonevalid();
    }
    update();
  }

  void signupclicked() {
    if (username.text == '' ||
        phone.text == '' ||
        password.value.text == '' ||
        confirmPasword.value.text == '') {
      messege.value = 'Fields can\'t be empty...';
      update();
    } else {
      checkPasswords();
    }
  }
}

class TextfieldController extends GetxController {
  Icon? initialicon = null;
  // UI messege
  static var usermsginitial = '';

  var finalicon =
      Icon(Icons.error_outline_rounded, color: Colors.redAccent[400]);

  void checkUsername() {
    if (SIgnupClicked.username.value.toString().contains('@')) {
      usermsginitial = 'Username must not contain \'@\'';
      initialicon = finalicon;
      update();
    } else if (SIgnupClicked.username.value.toString() != '') {
      Future.delayed(const Duration(milliseconds: 600), () async {
        // check username

        if (await isusernameAvailable()) {
          usermsginitial = '';
          initialicon = Icon(
            Icons.check_box_rounded,
            color: Colors.greenAccent[700],
          );
          update();
        } else {
          usermsginitial = 'Username not avialable';
          initialicon = finalicon;
          update();
        }
      });
    }
  }
}
