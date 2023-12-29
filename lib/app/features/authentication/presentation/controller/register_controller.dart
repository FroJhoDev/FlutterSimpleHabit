import 'dart:developer';

import 'package:get/state_manager.dart';

import '../../domain/usecases/register/register_usecase.dart';

class RegisterController extends GetxController {
  final RegisterUsecase _registerUsecase;

  RegisterController({
    required RegisterUsecase registerUsecase,
  }) : _registerUsecase = registerUsecase;

  void createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  }) async {
    try {
      await _registerUsecase.createUserWithEmailAndPassword(
        userName: userName,
        email: email,
        password: password,
      );
    } catch (error) {
      log('Error no controller ao realizar cadastro do usuario', error: error);
    }
  }
}
