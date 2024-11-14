import 'package:dartz/dartz.dart';
import 'package:quizzo/core/usecase/use_case.dart';
import 'package:quizzo/data/model/auth/signin_user_req_model.dart';
import 'package:quizzo/domain/repository/auth/auth_repository.dart';

import '../../../service_locator.dart';

class SigninUsecase extends Usecase<Either, SigninUserReqModel>{
  @override
  Future<Either> call({SigninUserReqModel? param}){
    return sl<AuthRepository>().signin(param!);
  }

}