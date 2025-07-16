import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popular_movies/core/extention/build_context_extension.dart';
import 'package:popular_movies/core/extention/movie_db_image_extention.dart';
import 'package:popular_movies/di/di.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/presentation/features/movies/state/movie_state.dart';
import 'package:popular_movies/presentation/features/movies/view_model/movies_view_model.dart';
import 'package:popular_movies/routes/app_router.gr.dart';

@RoutePage()
class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<MoviesViewModel>()..getMovies(),
      child: BlocBuilder<MoviesViewModel, MoviesState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                context.translations.movies,
                style: context.textTheme.headlineMedium,
              ),
            ),
            body: handleMoviesUi(state.moviesResultState),
          );
        },
      ),
    );
  }

  Widget handleMoviesUi(MoviesResultState moviesResultState) {
    return moviesResultState.map(
      loading: (_) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      result: (resultState) {
        return _Movies(resultState.movies);
      },
      error: (errorState) {
        return Center(child: Text(errorState.error.message));
      },
    );
  }
}

class _Movies extends StatelessWidget {
  final List<Movie> movies;

  const _Movies(this.movies);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      itemCount: movies.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index) {
        final movie = movies[index];
        return _MovieItem(
          movie: movie,
        );
      },
    );
  }
}

class _MovieItem extends StatelessWidget {
  final Movie movie;

  const _MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(MoviesDetailRoute(id: movie.id)),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: movie.posterPath.getMovieDBImage,
          ),
          const SizedBox(height: 10),
          Text(
            movie.title,
            style: context.textTheme.titleMedium,
          ),
          Text(
            context.translations.rating(movie.voteAverage),
            style: context.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
