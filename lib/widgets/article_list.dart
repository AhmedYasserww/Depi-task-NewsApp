import 'package:flutter/material.dart';
import '../models/article_repository.dart';
import 'article_card.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: ArticleRepository.articles.length,
      itemBuilder: (context, index) {
        return ArticleCard(
          model: ArticleRepository.articles[index],
        );
      },
    );
  }
}