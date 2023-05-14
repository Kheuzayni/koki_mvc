import 'package:flutter/material.dart';
import 'package:koki_mvc/controller/feed_controller.dart';
import 'package:koki_mvc/modele/rss_type.dart';

class HomeController extends StatelessWidget {

  List<RssType> types = [
    RssType(type: "Infos", url: "https://www.francebleu.fr/rss/a-la-une.xml"),
    RssType(type: "Sport", url: "https://www.francebleu.fr/rss/sports.xml"),
    RssType(type: "Culture", url: "https://www.francebleu.fr/rss/culture.xml"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: types.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Mon flux RSS"),
            bottom: TabBar(tabs: types.map((type) => Tab(text: type.type,)).toList()),
          ),
          body: TabBarView(children: types.map((type) => FeedController(url: type.url)).toList()),
        )
    );
  }
}