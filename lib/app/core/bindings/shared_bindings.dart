
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SharedBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<FirebaseAuth>(FirebaseAuth.instance);
  }
}