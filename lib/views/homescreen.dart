import 'package:edumate/controllers/student_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final StudentController studentController = Get.find<StudentController>();
  @override
  Widget build(BuildContext context) {
    final student = studentController.student;
    final name = student.value?.name;
    return Scaffold(appBar: AppBar(title: Text(name!)));
  }
}
