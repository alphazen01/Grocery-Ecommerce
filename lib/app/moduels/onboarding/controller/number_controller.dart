import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/countries.dart';

class NumberController extends GetxController {
  var phoneController = TextEditingController();
  List<Country> allCountry = countries;
  String countryDialCode = '+880';
  var countryLetterCode = "BD".obs;
  void changeCountryCode(String cc, String dc) {
    countryLetterCode.value = cc;
    countryDialCode = dc;
  }
}
