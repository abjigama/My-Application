import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_up.dart';

ValueNotifier<AuthServices> authServices = ValueNotifier(AuthServices());

class AuthServices {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  

  User? get currentUser => firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();


  Future<UserCredential> singIn({
    required String email,
    required String password,
  })  async {
    return await firebaseAuth.signInWithEmailAndPassword(
      email: email, password: password);
      
  }
  Future<UserCredential> SignUp({
    required String email,
    required String password,
  })  async {
    return await firebaseAuth.createUserWithEmailAndPassword(
      email: email, password: password);
      
  }
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
  Future<void> resetPassword({
    required String email,
  }) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }
  Future<void> updateUsername({
    required String username,
  }) async {
    await currentUser!.updateDisplayName(username);
  }
  Future<void> deleteAccount({
    required String email,
    required String password,
  }) async {
    AuthCredential credential=
      EmailAuthProvider.credential(email: email, password: password);
    await currentUser!.reauthenticateWithCredential(credential);
    await currentUser!.delete();
    await firebaseAuth.signOut();
  }
  Future<void> resetPasswordFromCurrentPassword({
    required String currentpassword,
    required String newpassword,
    required String email,
  }) async {
    AuthCredential credential=
      EmailAuthProvider.credential(email: email, password: currentpassword);
    await currentUser!.reauthenticateWithCredential(credential);
    await currentUser!.updatePassword(newpassword);
  }

  Future<void> createAccount({required String email, required String password}) async {}




}

 