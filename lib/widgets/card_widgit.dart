// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news/views/spacifc_news.dart';

import '../models/continer_model.dart';

class CardWidgit extends StatelessWidget {
  const CardWidgit({
    Key? key,
    required this.item,
  }) : super(key: key);
  final ContinerModel item;
  final news = " News";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SpeceificNews(
            category: item.title.toLowerCase(),
            title: item.title + news,
          );
        }));
      },
      child: Container(
        width: 200,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(item.image),
          ),
        ),
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            item.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
