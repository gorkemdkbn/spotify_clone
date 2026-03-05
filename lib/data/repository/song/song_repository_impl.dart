import 'package:dartz/dartz.dart';

import '../../../domain/repository/song/song.dart';
import '../../../service_locator.dart';
import '../../sources/song/song_firebase_service.dart';

class SongRepositoryImpl extends SongsRepository {

  @override
  Future<Either> getNewsSongs() async {
    return await sl<SongFirebaseService>().getNewSongs();
  }

  @override
  Future<Either> getPlaylists() async {
    return await sl<SongFirebaseService>().getPlaylists();
  }
}
