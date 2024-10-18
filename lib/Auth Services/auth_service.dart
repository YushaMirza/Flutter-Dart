// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  // for storing data in cloud firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // for authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // for Register
  Future<String> registerUser(
      {required String email,
      required String password,
      required String username}) async {
    String result = "Some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        // for register user in firebase auth with email and password
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        // for adding user to our cloud firestore
        await _firestore.collection("users").doc(credential.user!.uid).set({
          'username': username,
          'email': email,
          'uid': credential.user!.uid
        });
        result = "Success";
      } else {
        result = "Passwords don't match";
      }
    } catch (e) {
      return e.toString();
    }
    return result;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String result = "Some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // for register user in firebase auth with email and password
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        result = "Success";
      } else {
        result = "Passwords don't match";
      }
    } catch (e) {
      return e.toString();
    }
    return result;
  }
}
