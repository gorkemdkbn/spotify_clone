import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone/data/models/auth/create_user_req.dart';
import 'package:spotify_clone/data/models/auth/signin_user_req.dart';

abstract class AuthFirebaseService{

  Future<Either> sigup (CreateUserReq createUserReq);


  Future<Either> sigin (SigninUserReq signinUserReq);

}

class AuthFirebaseServiceImpl extends AuthFirebaseService {



  @override
  Future<Either> sigin(SigninUserReq signinUserReq) async {
    try{

      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signinUserReq.email,
          password: signinUserReq.password
      );
      return Right('Signin Was Successfull');
    } on FirebaseAuthException catch (e){

      String message = '';

      if(e.code == 'invalid-email'){
        message = 'Not user found for that email';
      } else if(e.code == 'invalid-credential') {
        message = 'wrong password provided for that user';
      }
      return Left(message);
    }
  }
  @override
  Future<Either> sigup(CreateUserReq createUserReq) async {
    try{

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email,
          password: createUserReq.password
      );
      return Right('Signup Was Successfull');
    } on FirebaseAuthException catch (e){

     String message = '';

     if(e.code == 'weak-password'){
       message = 'The Password provided is too weak';
     } else if(e.code == 'email-already-in-use') {
       message = 'The account already exists for that email';
     }
     return Left(message);
    }


  }

}