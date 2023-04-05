import 'package:sss_trainer_project/src/data/data_sources/remote/auth_provider.dart';
import 'package:sss_trainer_project/src/data/repositories/auth_user.dart';

import 'firebase_auth_provider.dart';

class AuthService implements AuthProvider {
  final AuthProvider authProvider;

  AuthService(this.authProvider);

  factory AuthService.firebase() => AuthService(FirebaseAuthProvider());

  @override
  Future<AuthUser?> createUserWithEmailAndPassword(
    String email,
    String password,
  ) =>
      authProvider.createUserWithEmailAndPassword(
        email,
        password,
      );

  @override
  AuthUser? get currentUser => authProvider.currentUser;

  @override
  Future<void> initialize() => authProvider.initialize();

  @override
  Future<AuthUser?> signInWithEmailAndPassword(
    String email,
    String password,
  ) =>
      authProvider.signInWithEmailAndPassword(
        email,
        password,
      );

  @override
  Future<void> signOut() => authProvider.signOut();
}
