import 'package:flutter/material.dart';
import 'package:koki_mvc/modele/article.dart';
import 'package:koki_mvc/vue/title_view.dart';

class ListVue extends StatelessWidget {
  final List<Article> articles;

  const ListVue({required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index)=> TileView(article: articles[index])),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: articles.length
    );
  }
}