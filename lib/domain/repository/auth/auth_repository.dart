import 'package:dartz/dartz.dart';
import 'package:quizzo/data/model/auth/create_user_req_model.dart';
import 'package:quizzo/data/model/auth/signin_user_req_model.dart';

abstract class AuthRepository{
  Future<Either> signup(CreateUserReqModel model);
  Future<Either> signin(SigninUserReqModel model);
}