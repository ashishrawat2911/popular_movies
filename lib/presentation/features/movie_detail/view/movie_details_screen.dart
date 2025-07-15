import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popular_movies/core/extention/build_context_extension.dart';
import 'package:popular_movies/core/extention/movie_db_image_extention.dart';
import 'package:popular_movies/di/di.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';

@RoutePage()
class MoviesDetailScreen extends StatelessWidget {
  final int id;

  const MoviesDetailScreen(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          inject<MoviesDetailsViewModel>()..add(MovieDetailsEvent.load(id)),
      child: BlocBuilder<MoviesDetailsViewModel, MovieDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                title: Text(
              state.title,
              style: context.textTheme.headlineMedium,
            )),
            body: handleMovieUi(state),
          );
        },
      ),
    );
  }

  Widget handleMovieUi(MovieDetailState state) {
    return state.movieDetailResultState.when(loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }, result: (r) {
      return _MovieDetailView(movieDetails: r, videos: state.videos);
    }, error: (error) {
      return Center(child: Text(error));
    });
  }
}

class _MovieDetailView extends StatelessWidget {
  final MovieDetails movieDetails;
  final List<Video> videos;

  const _MovieDetailView({
    required this.movieDetails,
    required this.videos,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CachedNetworkImage(
            imageUrl: movieDetails.backdropPath.getMovieDBImage,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  movieDetails.title,
                  style: context.textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  context.translations.rating(movieDetails.voteAverage),
                  style: context.textTheme.labelLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  movieDetails.overview,
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
        _VideosView(videos: videos)
      ],
    );
  }
}

class _VideosView extends StatelessWidget {
  final List<Video> videos;

  const _VideosView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        width: 200,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = videos[index];
            return _VideosItem(video: item);
          },
          itemCount: videos.length,
        ),
      ),
    );
  }
}

class _VideosItem extends StatelessWidget {
  final Video video;

  const _VideosItem({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Flexible(
            child: CachedNetworkImage(
              imageUrl: video.key.getYoutubeThumbnailBaseURl,
            ),
          ),
          Text(
            video.name,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
