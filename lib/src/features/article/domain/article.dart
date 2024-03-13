/// [File] article.dart
///
/// This file holds a [Article] entity used in the domain layer
/// to represent a website article preview
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024
///

import 'package:equatable/equatable.dart';

import 'package:cleanproject/src/core/shared/entities/url.dart';

class Article extends Equatable {
  final Url articleUrl;
  final Url thumbnailUrl;
  final String title;
  final String description;
  const Article({
    required this.articleUrl,
    required this.thumbnailUrl,
    required this.title,
    required this.description,
  });

  @override
  List<Object> get props => [articleUrl, thumbnailUrl, title, description];
}

class NullArticle extends Article {
  const NullArticle()
      : super(
            articleUrl: const NullUrl(),
            thumbnailUrl: const NullUrl(),
            title: "",
            description: "");
}
