import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountryCodeController extends GetxController {

  String cuntrycode = '911';
  void choosecountry(BuildContext context) {
    showCountryPicker(
        context: context,
        onSelect: (country) {
          cuntrycode = country.phoneCode;
          update();
        });
  }
}
