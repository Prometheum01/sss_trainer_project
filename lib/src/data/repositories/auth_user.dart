import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@immutable
class AuthUser {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;
  final String? phoneNumber;
  final bool isEmailVerified;

  const AuthUser({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.photoUrl,
    required this.phoneNumber,
    required this.isEmailVerified,
  });

  factory AuthUser.fromFirebaseUser(User user) => AuthUser(
        uid: user.uid,
        email: user.email,
        displayName: user.displayName,
        photoUrl: user.photoURL,
        phoneNumber: user.phoneNumber,
        isEmailVerified: user.emailVerified,
      );

  @override
  String toString() {
    return 'AuthUser{uid: $uid, email: $email, displayName: $displayName, photoUrl: $photoUrl, phoneNumber: $phoneNumber, isEmailVerified: $isEmailVerified}';
  }
}
