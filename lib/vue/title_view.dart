import 'package:flutter/material.dart';
import 'package:koki_mvc/controller/detail_controller.dart';
import 'package:koki_mvc/modele/article.dart';
import 'package:koki_mvc/vue/date_row.dart';
import 'package:koki_mvc/vue/description_text.dart';
import 'package:koki_mvc/vue/image_view.dart';
import 'package:koki_mvc/vue/title_text.dart';

class TileView extends StatelessWidget {

  final Article article;
  TileView({required this.article});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final route = MaterialPageRoute(builder: (context) => DetailController(article: article));
        Navigator.push(context, route);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            DateRow(date: article.date),
            ImageView(imageUrl: article.imageUrl),
            TitleText(title: article.title),
            const Padding(padding: EdgeInsets.only(top: 10)),
            DescText(description: article.description)
          ],
        ),
      ),
    );
  }
}