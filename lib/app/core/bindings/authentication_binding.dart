import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../features/authentication/domain/usecases/register/register_usecase.dart';
import '../../features/authentication/data/repositories/register_repository_impl.dart';
import '../../features/authentication/presentation/controller/register_controller.dart';
import '../../features/authentication/domain/usecases/register/register_usecase_impl.dart';

class AuthenticationBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<RegisterUsecase>(RegisterUsecaseImpl(registerRepository: RegisterRepositoryImpl(firebaseAuth: Get.find<FirebaseAuth>())));
    Get.put<RegisterController>(RegisterController(registerUsecase: Get.find<RegisterUsecase>()));
  }
}