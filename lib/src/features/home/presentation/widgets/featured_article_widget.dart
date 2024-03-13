/// [File] featured_article_widget.dart
///
/// This file holds a [FeaturedArticleWidget] used in the home screen
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024

import 'package:flutter/material.dart';

import '../../../../core/shared/entities/url.dart';
import '../../../../core/shared/widgets/custom_button.dart';
import '../../../../core/utility/url_launcher.dart';

class FeaturedArticleWidget extends StatelessWidget {
  const FeaturedArticleWidget(
      {super.key,
      required this.screenDimensions,
      required this.articleUrl,
      required this.thumbnailUrl,
      required this.description,
      required this.title});
  final Url thumbnailUrl;
  final Url articleUrl;
  final String title;
  final String description;

  final Size screenDimensions;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
      child: Stack(
        children: [
          Image.network(
            thumbnailUrl.urlString,
            width: screenDimensions.width,
            height: screenDimensions.height * 0.40,
            fit: BoxFit.cover,
          ),
          Container(
            width: screenDimensions.width,
            height: screenDimensions.height * 0.40,
            padding: const EdgeInsets.all(32),
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
                      fontSize: 24),
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: 160,
                  height: 50,
                  child: CustomButton(
                      function: () {
                        UrlLauncher.launchUrlMethod(articleUrl.urlString);
                      },
                      activated: true,
                      isGradient: false,
                      isDark: true,
                      child: const Text(
                        "Book Now!",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
