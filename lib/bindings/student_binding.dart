import 'package:edumate/controllers/student_controller.dart';
import 'package:get/instance_manager.dart';

class StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StudentController());
  }
}
