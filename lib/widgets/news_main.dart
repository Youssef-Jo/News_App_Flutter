import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import 'package:news/views/specific_one_new.dart';

// int maxline = 2;

class NewsMain extends StatelessWidget {
  const NewsMain({super.key, required this.articalsModel, required this.maxline});
  final ArticalsModel articalsModel;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return SpecificNew(art: articalsModel);
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: articalsModel.image != null
                    ? NetworkImage(articalsModel.image!)
                    : const NetworkImage(
                        "https://cdn.vectorstock.com/i/500p/38/32/palestine-flag-vector-20323832.avif"),
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articalsModel.title,
              maxLines: maxline,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articalsModel.subtitle ?? "General",
              maxLines: maxline,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
