import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import 'package:overlay_support/overlay_support.dart';

class SpcificOneNew extends StatelessWidget {
  const SpcificOneNew({super.key, required this.art});
  final ArticalsModel art;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              showSimpleNotification(
                elevation: 0,
                position: NotificationPosition.top,
                // contentPadding: const EdgeInsets.all(5),
                const Center(
                    child: Text(
                  "Notification",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                background: Colors.orange,
                duration: const Duration(milliseconds: 400),
                foreground: Colors.black,
                subtitle: const Center(
                  child: Text("Youssef Essam"),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                art.image ??
                    "https://cdn.vectorstock.com/i/500p/38/32/palestine-flag-vector-20323832.avif",
                width: double.infinity,
                height: 230,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            art.title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            art.subtitle ?? "",
            style: const TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
