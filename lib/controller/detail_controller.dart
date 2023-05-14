import 'package:flutter/material.dart';
import 'package:koki_mvc/modele/article.dart';
import 'package:koki_mvc/vue/description_text.dart';
import 'package:koki_mvc/vue/image_view.dart';
import 'package:koki_mvc/vue/my_padd.dart';
import 'package:koki_mvc/vue/title_text.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailController extends StatelessWidget {
  final Article article;
  const DetailController({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padd(),
            TitleText(title: article.title),
            Padd(),
            ImageView(imageUrl: article.imageUrl),
            Padd(),
            const Divider(),
            Padd(),
            DescText(description: article.description),
            Padd(),
            ElevatedButton(
                onPressed: handleToWeb,
                child: const Text("Vers l'article complet")
            )
          ],
        ),
      ),
    );
  }

  handleToWeb() async {
    if (await canLaunch(article.link)) {
      await launch(article.link);
    }
  }
}