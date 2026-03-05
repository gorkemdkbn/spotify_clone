import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/presentation/root/bloc/news_songs_state.dart';

import '../../../domain/usecases/song/get_news_songs.dart';
import '../../../service_locator.dart';

class NewsSongsCubit extends Cubit<PlayListState> {

  NewsSongsCubit() : super(NewsSongsLoading());

  Future < void > getNewsSongs() async {
    var returnedSongs = await sl < GetNewsSongsUseCase > ().call();
    returnedSongs.fold(
            (l) {
          emit(NewsSongsLoadFailure());
        },
            (data) {
          emit(
              NewsSongsLoaded(songs: data)
          );
        }
    );
  }


}