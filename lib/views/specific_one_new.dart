import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import '../widgets/specific_news.dart';

class SpecificNew extends StatelessWidget {
  const SpecificNew({super.key, required this.art});
  final ArticalsModel art;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Youssef Essam",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SpcificOneNew(art: art));
  }
}
