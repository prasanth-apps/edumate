import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Regsiter extends StatefulWidget {
  const new({super.key});

  @override
  State<Regsiter> createState() => _RegsiterState();
}

class _RegsiterState extends State<Regsiter> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController coursecontroller = TextEditingController();

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
                    print("success");
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
