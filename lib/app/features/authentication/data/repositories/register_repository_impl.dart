import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/register_repository.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final FirebaseAuth _firebaseAuth;

  RegisterRepositoryImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  @override
  Future createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  }) async {
    try {
      
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      await userCredential.user!.updateDisplayName(userName);

      return userCredential;

    } on FirebaseAuthException catch (error, stack) {
      log('Error ao realizar cadastro do usuario com email e senha', error: error, stackTrace: stack);
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
