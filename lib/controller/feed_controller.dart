import 'package:flutter/material.dart';
import 'package:koki_mvc/modele/article.dart';
import 'package:koki_mvc/modele/feed_parser.dart';
import 'package:koki_mvc/vue/list_vue.dart';

class FeedController extends StatelessWidget {

  final String url;

  const FeedController({required this.url});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: FeedParser().getFeed(url),
        builder: ((context, snapshot)=> ListVue(articles: snapshot.data ?? []) )
    );
  }
}