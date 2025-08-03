import 'package:flutter/material.dart';
import 'package:news/widgets/main_news_list_bilder.dart';

class SpeceificNews extends StatelessWidget {
  const SpeceificNews({super.key, required this.category, required this.title});
  final String category;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: CustomScrollView(slivers: [
          NewsWidgetBilder(category: category),
        ]),
      ),
    );
  }
}
