import 'package:get_it/get_it.dart';
import 'package:spotify_clone/data/models/auth/signin_user_req.dart';
import 'package:spotify_clone/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_clone/data/sources/auth/auth_firebase_servis.dart';
import 'package:spotify_clone/domain/repository/auth/auth.dart';
import 'package:spotify_clone/domain/usecases/auth/sigin.dart';
import 'package:spotify_clone/domain/usecases/auth/signup.dart';

import 'data/repository/song/song_repository_impl.dart';
import 'data/sources/song/song_firebase_service.dart';
import 'domain/repository/song/song.dart';
import 'domain/usecases/song/get_new_play_list.dart';
import 'domain/usecases/song/get_news_songs.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async{
sl.registerSingleton<AuthFirebaseService> (
  AuthFirebaseServiceImpl()
);
sl.registerSingleton<SongFirebaseService> (
    SongFirebaseServiceImpl()
);

sl.registerSingleton<AuthRepository> (
    AuthRepositoryImpl()
);

sl.registerSingleton<SongsRepository> (
  SongRepositoryImpl()
);

sl.registerSingleton<SignupUseCase> (
    SignupUseCase()
);

sl.registerSingleton<SigninUseCase> (
    SigninUseCase()
);
sl.registerSingleton<GetNewsSongsUseCase> (
    GetNewsSongsUseCase()
);

sl.registerSingleton<GetPlayListUseCase> (
     GetPlayListUseCase()
);

}


