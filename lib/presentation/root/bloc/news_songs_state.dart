import 'package:spotify_clone/domain/entites/song/song.dart';

abstract class PlayListState {}

class NewsSongsLoading extends PlayListState {}

class NewsSongsLoaded extends PlayListState {
  final List<SongEntity> songs;
  NewsSongsLoaded({required this.songs});
}

class NewsSongsLoadFailure extends PlayListState {}