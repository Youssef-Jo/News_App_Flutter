import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import 'package:news/widgets/news_main.dart';

class MainNewsList extends StatelessWidget {
  const MainNewsList({
    super.key,
    required this.articles,
  });

  final List<ArticalsModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsMain(articalsModel: articles[index], maxline: 2),
        ),
      ),
    );
  }
}







//import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news/Services/news_services.dart';
// import 'package:news/models/news_model.dart';
// import 'package:news/widgets/news_main.dart';

// class MainNewsList extends StatefulWidget {
//   const MainNewsList({
//     super.key,
//   });

//   @override
//   State<MainNewsList> createState() => _MainNewsListState();
// }

// class _MainNewsListState extends State<MainNewsList> {
//   List<ArticalsModel> articles = [];
//   bool isLoding = true;
//   @override
//   void initState() {
//     super.initState();
//     getgeneralnews();
//   }

//   Future<void> getgeneralnews() async {
//     articles = await NewServices(Dio()).getGeneralNews();
//     isLoding = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoding
//         ? const SliverFillRemaining(
//             child: Center(
//                 child: CircularProgressIndicator(
//             color: Colors.white,
//             backgroundColor: Colors.amberAccent,
//           )))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) => Padding(
//                 padding: const EdgeInsets.only(bottom: 22),
//                 child: NewsMain(articalsModel: articles[index]),
//               ),
//             ),
//           );
//   }
// }




