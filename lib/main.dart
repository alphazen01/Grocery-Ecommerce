import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/moduels/onboarding/onbarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnbordingScreen(),
    );
  }
}
