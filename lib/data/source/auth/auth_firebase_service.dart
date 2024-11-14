import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quizzo/data/model/auth/signin_user_req_model.dart';

import '../../model/auth/create_user_req_model.dart';

abstract class AuthFirebaseService {
  Future<Either> signUpUser(CreateUserReqModel model);

  Future<Either> signinUser(SigninUserReqModel model);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signUpUser(CreateUserReqModel model) async {
    try {
      final data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: model.email, password: model.password);
      FirebaseFirestore.instance
          .collection('Users')
          .add({'name': model.fullName, 'email': data.user?.email});
      log('SignUP User : REsp : ${data.toString()}');
      return const Right('User Signed up successfully.');
    } on FirebaseAuthException catch (e) {
      String msg = '';
      if (e.code == 'weak-password') {
        msg = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        msg = 'The user with email is already exist.';
      }
      return Left(msg);
    }
  }

  @override
  Future<Either> signinUser(SigninUserReqModel model) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: model.email, password: model.password);
      return const Right('User signed in successfully');
    } on FirebaseAuthException catch (e) {
      String msg = '';
      if (e.code == 'invalid-email') {
        log('Exception: Invalid Email.');
        msg = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        log('Exception:email-already-in-use.');
        msg = 'The user with email is already exist.';
      }
      log('Exception : $e');
      return Left(msg);
    }
  }
}
