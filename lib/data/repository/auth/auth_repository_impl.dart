import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/auth/signin_user_req.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_servis.dart';

import '../../../domain/repository/auth/auth.dart';
import '../../../service_locator.dart';
import '../../models/auth/create_user_req.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    return await sl<AuthFirebaseService>().sigin(signinUserReq);
  }
  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
   return await sl<AuthFirebaseService>().sigup(createUserReq);

  }


}