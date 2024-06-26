import 'package:tmdb_movies/core/data/models/base_paginated_response.dart';
import 'package:tmdb_movies/core/data/models/base_response_state.dart';
import 'package:tmdb_movies/features/movies/domain/entities/movie_entity.dart';
import 'package:tmdb_movies/features/movies/domain/repositories/movies_repository.dart';

class GetPopularMoviesUsecase{
  final MoviesRepository _moviesRepository;

  const GetPopularMoviesUsecase(this._moviesRepository);

  Future<BaseResponseState<BasePaginatedResponse<Movie>>> call(int page) async {
    return _moviesRepository.getMovieDetails(page: page);
  }
}
