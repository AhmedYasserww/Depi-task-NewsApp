import 'package:flutter/material.dart';
import '../models/article_repository.dart';
import 'article_card.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(16),

      child: ListView.separated(

        itemBuilder: (context,index)=>ArticleCard(

          article:
          ArticlesRepository.articles[index],

        ),

        separatorBuilder:
            (context,index)=>const SizedBox(height:16),

        itemCount:
        ArticlesRepository.articles.length,

      ),

    );

  }

}