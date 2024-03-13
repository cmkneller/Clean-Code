/// [File] home_screen.dart
///
/// This file holds the app's [HomeScreen]
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024

import 'package:cleanproject/src/features/scanner/presentation/screens/scanner_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/path_constants.dart';
import '../../../error/presentation/widgets/error_wrapper.dart';
import '../widgets/article_widget.dart';
import '../widgets/featured_article_widget.dart';

import '../../../../config/locator.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_events.dart';
import '../bloc/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });
  static const routeName = "/";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc bloc = getIt.get<HomeBloc>();

  @override
  void initState() {
    bloc.add(InitHomeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ErrorWrapper(
      widget: Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: GestureDetector(
            onTap: () {
              context.pushNamed(ScannerScreen.routeName);
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: 80,
                  height: 80,
                  color: Theme.of(context).colorScheme.primary,
                  child: Image.asset(
                    AssetPathConstants.qrIconPath,
                    width: 40,
                  ),
                )),
          ),
          appBar: AppBar(
            leadingWidth: 150,
            backgroundColor: Colors.transparent,
            leading: Image.asset(
              AssetPathConstants.logoPath,
            ),
          ),
          body: BlocConsumer<HomeBloc, HomeState>(
            bloc: bloc,
            listener: (context, state) {
              // Place any logic you want to be triggered by a state change
            },
            builder: (context, state) {
              Size screenDimensions = MediaQuery.of(context).size;

              return Column(
                children: [
                  // Featured Article
                  FeaturedArticleWidget(
                    screenDimensions: screenDimensions,
                    articleUrl: state.featuredArticle.articleUrl,
                    title: state.featuredArticle.title,
                    description: state.featuredArticle.description,
                    thumbnailUrl: state.featuredArticle.thumbnailUrl,
                  ),

                  Container(
                    padding: const EdgeInsets.all(32),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Whats On:",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 24)),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...state.articleList.map((article) =>
                                  ArticleWidget(
                                      screenDimensions: screenDimensions,
                                      thumbnailUrl: article.thumbnailUrl,
                                      articleUrl: article.articleUrl,
                                      title: article.title))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}
