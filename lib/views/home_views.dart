import 'package:flutter/material.dart';
import '../widgets/card_list_widget.dart';
import '../widgets/main_news_list_bilder.dart';

class Homeviews extends StatefulWidget {
  const Homeviews({super.key});

  @override
  State<Homeviews> createState() => _HomeviewsState();
}

class _HomeviewsState extends State<Homeviews> {
  bool isSwitch = false;
  void toggle(bool value) {
    setState(() {
      isSwitch = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            NewsWidgetBilder(
              category: 'general',
            )
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoryList(),
        //     SizedBox(
        //       height: 25,
        //     ),
        //     Expanded(child: MainNewsList()),
        //   ],
        // ),
      ),
    );
  }
}



// ********************************
//toggle button
// ********************************
// SliverToBoxAdapter(
//   child: Transform.scale(
//     scale: 1.5,
//     child: Switch(
//       value: isSwitch,
//       onChanged: toggle,
//       activeColor: Colors.blue,
//       activeTrackColor: Colors.lightBlue,
//       materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//     ),
//   ),
// ),