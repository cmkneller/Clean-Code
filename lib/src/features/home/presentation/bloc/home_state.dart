/// [File] home_state.dart
///
/// This file holds a [HomeState] class used in
/// the home bloc
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024

import 'package:cleanproject/src/core/shared/entities/url.dart';
import 'package:cleanproject/src/features/article/domain/article.dart';

import '../../../../core/utility/submission_status.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final AsyncStatus status;
  final List<Article> articleList;
  final Article featuredArticle;

  const HomeState({
    required this.status,
    required this.articleList,
    required this.featuredArticle,
  });

  /// Creates an initial state
  ///
  /// Returns [HomeState]
  factory HomeState.initial() => const HomeState(
        articleList: [
          Article(
              articleUrl: Url(
                  urlString:
                      "https://www.liverpoolmuseums.org.uk/whatson/museum-of-liverpool/exhibition/happiness#:~:text=Book-,tickets,-Book%20members%27%20tickets"),
              thumbnailUrl: Url(
                  urlString:
                      "https://images.liverpoolmuseums.org.uk/styles/dynamic_medium/public/2023-08/Happiness-creative-1080x840.jpg"),
              title: "Happiness!",
              description:
                  "Happiness! is an exhibition filled with fun and humour..."),
          Article(
              articleUrl: Url(
                  urlString:
                      "https://www.liverpoolmuseums.org.uk/whatson/museum-of-liverpool/exhibition/happiness#:~:text=Book-,tickets,-Book%20members%27%20tickets"),
              thumbnailUrl: Url(
                  urlString:
                      "https://images.liverpoolmuseums.org.uk/styles/dynamic_medium/public/2023-08/Happiness-creative-1080x840.jpg"),
              title: "Happiness!",
              description:
                  "Happiness! is an exhibition filled with fun and humour..."),
          Article(
              articleUrl: Url(
                  urlString:
                      "https://www.liverpoolmuseums.org.uk/whatson/museum-of-liverpool/exhibition/happiness#:~:text=Book-,tickets,-Book%20members%27%20tickets"),
              thumbnailUrl: Url(
                  urlString:
                      "https://images.liverpoolmuseums.org.uk/styles/dynamic_medium/public/2023-08/Happiness-creative-1080x840.jpg"),
              title: "Happiness!",
              description:
                  "Happiness! is an exhibition filled with fun and humour..."),
        ],
        featuredArticle: Article(
            articleUrl: Url(
                urlString:
                    "https://www.liverpoolmuseums.org.uk/whatson/museum-of-liverpool/exhibition/happiness#:~:text=Book-,tickets,-Book%20members%27%20tickets"),
            thumbnailUrl: Url(
                urlString:
                    "https://images.liverpoolmuseums.org.uk/styles/dynamic_medium/public/2023-08/Happiness-creative-1080x840.jpg"),
            title: "Happiness!",
            description:
                "Happiness! is an exhibition filled with fun and humour..."),
        status: AsyncStatus.ready,
      );

  @override
  List<Object> get props => [status, articleList, featuredArticle];

  /// Creates a copy of the home state
  ///
  /// Accepts any field and...
  /// returns a copied version of [HomeState] with the fields changed
  HomeState copyWith(
      {AsyncStatus? status,
      List<Article>? articleList,
      Article? featuredArticle}) {
    return HomeState(
        status: status ?? this.status,
        articleList: articleList ?? this.articleList,
        featuredArticle: featuredArticle ?? this.featuredArticle);
  }
}
