abstract class RegisterRepository {
  Future createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  });
}