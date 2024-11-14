

import 'package:dartz/dartz.dart';
import 'package:quizzo/data/model/auth/create_user_req_model.dart';
import 'package:quizzo/data/model/auth/signin_user_req_model.dart';
import 'package:quizzo/data/source/auth/auth_firebase_service.dart';
import 'package:quizzo/domain/repository/auth/auth_repository.dart';

import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<Either> signin(SigninUserReqModel model) async{
    return await sl<AuthFirebaseService>().signinUser(model);
  }

  @override
  Future<Either> signup(CreateUserReqModel model) async{
    return await sl<AuthFirebaseService>().signUpUser(model);
  }

}