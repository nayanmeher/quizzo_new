

import 'package:dartz/dartz.dart';
import 'package:quizzo/core/usecase/use_case.dart';
import 'package:quizzo/data/model/auth/create_user_req_model.dart';
import 'package:quizzo/domain/repository/auth/auth_repository.dart';

import '../../../service_locator.dart';

class SignupUsecase extends Usecase<Either, CreateUserReqModel>{
  @override
  Future<Either> call({CreateUserReqModel? param}){
    return sl<AuthRepository>().signup(param!);
  }

}