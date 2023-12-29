import '../../repositories/register_repository.dart';

import 'register_usecase.dart';

class RegisterUsecaseImpl implements RegisterUsecase {
  final RegisterRepository _registerRepository;

  RegisterUsecaseImpl({required RegisterRepository registerRepository}) : _registerRepository = registerRepository;

  @override
  Future createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  }) {
    return _registerRepository.createUserWithEmailAndPassword(
      userName: userName,
      email: email,
      password: password,
    );
  }
}
