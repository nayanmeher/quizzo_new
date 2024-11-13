

abstract class AuthFirebaseService{
  Future<Either> signup(CreateUserReqModel model);
  Future<Either> signin(SigninUserReqModel model);
}


class AuthFirebaseServiceImpl extends AuthFirebaseService{
  
}