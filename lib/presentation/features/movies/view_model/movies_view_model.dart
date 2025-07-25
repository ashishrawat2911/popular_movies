import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/domain/usecases/get_movies_use_case.dart';
import 'package:popular_movies/presentation/features/movies/state/movie_state.dart';

@injectable
class MoviesViewModel extends Cubit<MoviesState> {
  final GetMoviesUseCase _getMoviesUseCase;

  MoviesViewModel(this._getMoviesUseCase) : super(const MoviesState());

  void getMovies() async {
    emit(state.copyWith(moviesResultState: MoviesResultState.loading()));
    final result = await _getMoviesUseCase.call();
    result.fold(
      (failure) => emit(state.copyWith(
        moviesResultState: MoviesResultState.error(failure),
      )),
      (movies) => emit(state.copyWith(
        moviesResultState: MoviesResultState.result(movies),
      )),
    );
  }
}
