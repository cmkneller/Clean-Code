/// [File] article_widget.dart
///
/// This file holds a [ArticleWidget] used in the home screen
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024
///
import 'package:cleanproject/src/core/shared/entities/url.dart';
import 'package:flutter/material.dart';

import '../../../../core/utility/url_launcher.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget(
      {super.key,
      required this.screenDimensions,
      required this.thumbnailUrl,
      required this.articleUrl,
      required this.title});

  final Url thumbnailUrl;
  final Url articleUrl;
  final String title;

  final Size screenDimensions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
          onTap: () {
            UrlLauncher.launchUrlMethod(articleUrl.urlString);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Stack(
              children: [
                Image.network(
                  thumbnailUrl.urlString,
                  width: screenDimensions.width * 0.60,
                  height: screenDimensions.height * 0.25,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: screenDimensions.width * 0.60,
                  height: screenDimensions.height * 0.25,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(68, 0, 0, 0),
                        Color.fromARGB(255, 0, 0, 0)
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
