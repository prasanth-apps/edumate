// ignore: strict_top_level_inference
import 'package:edumate/bindings/student_binding.dart';
import 'package:edumate/views/homescreen.dart';
import 'package:edumate/views/register.dart';
import 'package:get/get.dart';

// ignore: strict_top_level_inference
approutes() => [
  GetPage(name: '/register', page: () => Register(), binding: StudentBinding()),
  GetPage(name: '/home', page: () => Homescreen()),
];
