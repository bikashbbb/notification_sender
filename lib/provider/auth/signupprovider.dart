import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/domain/signupdomain.dart';
import 'package:iro/models/authentication/signupmodel.dart';
import 'package:phone_number/phone_number.dart';

class SIgnupClicked extends GetxController {
  // controllers
  var username = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController().obs;
  var confirmPasword = TextEditingController().obs;
  var messege = ''.obs;


  void check_conpass()async {
    if (password.value.text != confirmPasword.value.text) {
      messege.value = 'Passwords should match';
    } else {
      // create new account !!
      var result = await PhoneNumberUtil().validate('9823099656', '+977');
    print(result);
      SignupModel.username = username.text;
      SignupModel.password = password.value.text;
      // sendOtp(phone.value.text);
    }
    update();
  }

  void signupclicked() {
    if (username.text == '' ||
        phone.text == '' ||
        password.value.text == '' ||
        confirmPasword.value.text == '') {
      messege.value = 'Fields can\'t be empty...';
    } else {
      messege.value = '';
      check_conpass();
    }
    update();
  }
}
