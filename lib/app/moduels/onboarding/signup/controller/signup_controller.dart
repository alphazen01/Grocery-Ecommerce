import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final obscureText = true.obs;
}
