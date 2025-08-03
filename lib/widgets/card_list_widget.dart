import 'package:flutter/material.dart';

import '../models/continer_model.dart';
import 'card_widgit.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  final List<ContinerModel> item = const [
    ContinerModel(image: "assets/images/generall.jpeg", title: "General"),
    ContinerModel(image: "assets/images/sport.avif", title: "Sports"),
    ContinerModel(image: "assets/images/technology.jpeg", title: "Technology"),
    ContinerModel(image: "assets/images/health.avif", title: "Health"),
    ContinerModel(image: "assets/images/images.jpeg", title: "Business"),
    ContinerModel(image: "assets/images/science.avif", title: "Science"),
    ContinerModel(
        image: "assets/images/entertaiment.avif", title: "Entertainment"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(), //!بتغير شكل السكرول في النهايه
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, index) => CardWidgit(item: item[index]),
      ),
    );
  }
}
