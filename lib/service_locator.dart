
import 'package:get_it/get_it.dart';
import 'package:quizzo/core/usecase/use_case.dart';
import 'package:quizzo/data/repository/auth/auth_repository_impl.dart';
import 'package:quizzo/data/source/auth/auth_firebase_service.dart';
import 'package:quizzo/domain/repository/auth/auth_repository.dart';
import 'package:quizzo/domain/usecases/auth/signin.dart';
import 'package:quizzo/domain/usecases/auth/signup.dart';


final sl = GetIt.instance;

Future<void> initializeDependency() async{
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
  sl.registerSingleton<SigninUsecase>(SigninUsecase());
}