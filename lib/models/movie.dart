import 'dart:convert';

class Movie {
  Movie({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  bool adult;
  String? backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String? posterPath;
  String? releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;
  String? heroId;

  get fullPosterImg {
    if (posterPath != null) return 'https://image.tmdb.org/t/p/w500$posterPath';

    return 'https://imgs.search.brave.com/FwltuKNxpOjrj6g6dCJ8C1iNBDNdYJB4KU-MwkZxoIA/rs:fit:300:400:1/g:ce/aHR0cHM6Ly9zMy1l/dS13ZXN0LTEuYW1h/em9uYXdzLmNvbS9p/bWFnZXMuY2FzdGNh/bGwuYmx1ZS1jb21w/YXNzLmNvbS9wb3J0/Zm9saW8vNTk4Ny81/OTg3OTUxeDMwMC5q/cGc';
  }

  get fullBackdropPath {
    if (backdropPath != null) {
      return 'https://image.tmdb.org/t/p/w500$backdropPath';
    }

    return 'https://imgs.search.brave.com/FwltuKNxpOjrj6g6dCJ8C1iNBDNdYJB4KU-MwkZxoIA/rs:fit:300:400:1/g:ce/aHR0cHM6Ly9zMy1l/dS13ZXN0LTEuYW1h/em9uYXdzLmNvbS9p/bWFnZXMuY2FzdGNh/bGwuYmx1ZS1jb21w/YXNzLmNvbS9wb3J0/Zm9saW8vNTk4Ny81/OTg3OTUxeDMwMC5q/cGc';
  }

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        releaseDate: json["release_date"],
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );
}
