abstract class RegisterUsecase {
  Future createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  });
}