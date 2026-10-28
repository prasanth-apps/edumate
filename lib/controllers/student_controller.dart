import 'package:edumate/models/student_model.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  var student = Rxn<StudentModel>();

  Future<void> register(String name, age, mobile, course) async {
    student.value = StudentModel(
      name: name,
      age: age,
      mobile: mobile,
      course: course,
    );
  }
}
