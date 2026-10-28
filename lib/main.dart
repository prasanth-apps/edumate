import 'package:edumate/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Edumate());
}

class Edumate extends StatelessWidget {
  const Edumate({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/register',
      getPages: approutes(),
    );
  }
}
