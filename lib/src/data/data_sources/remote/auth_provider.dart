import 'package:sss_trainer_project/src/data/repositories/auth_user.dart';

abstract class AuthProvider {
  Future<void> initialize();

  Future<AuthUser?> signInWithEmailAndPassword(String email, String password);

  Future<AuthUser?> createUserWithEmailAndPassword(
    String email,
    String password,
  );

  Future<void> signOut();

  AuthUser? get currentUser;
}
