import 'package:edumate/controllers/student_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController coursecontroller = TextEditingController();

  final StudentController studentController = Get.find<StudentController>();

  @override
  void dispose() {
    namecontroller.dispose();
    agecontroller.dispose();
    phonecontroller.dispose();
    coursecontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "required";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: agecontroller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "age",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "required";
                  }
                  return null;
                },
              ),
              TextFormField(
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                controller: phonecontroller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "phone",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "required";
                  }
                  if (value.length > 10) {
                    return "invalid number";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: coursecontroller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "course",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "required";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    studentController.register(
                      namecontroller.text,
                      agecontroller.text,
                      phonecontroller.text,
                      coursecontroller.text,
                    );
                    Get.offNamed('/home');
                  }
                },
                child: Text("register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
