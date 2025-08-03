import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';

import '../Services/news_services.dart';
import 'main_news_list.dart';

class NewsWidgetBilder extends StatefulWidget {
  const NewsWidgetBilder({
    super.key, required this.category,
  });
  final String category;
  @override
  State<NewsWidgetBilder> createState() => _NewWidgetBilderState();
}

class _NewWidgetBilderState extends State<NewsWidgetBilder> {
  var future;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    future = NewServices(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MainNewsList(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
                child:
                    Center(child: Text("An Error occured, Try again later")));
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}


// return isLoading
//         ? const SliverFillRemaining(
//             child: Center(
//                 child: CircularProgressIndicator(
//             color: Colors.white,
//             backgroundColor: Colors.amberAccent,
//           )))
//         : articlesmodel.isNotEmpty? MainNewsList(articles:articlesmodel):const SliverFillRemaining(child: Center(child: Text("An Error occured, Try again later")),);