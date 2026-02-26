import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../views/article_details_screen.dart';

class ArticleCard extends StatelessWidget {

  const ArticleCard({
    super.key,
    required this.article,
  });

  final NewsModel article;

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: (){

        Navigator.push(

          context,

          MaterialPageRoute(

            builder: (_)=>

                ArticleDetailsScreen(

                  article: article,

                ),

          ),

        );

      },

      child: Row(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          Expanded(

            child: Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(

                  article.title,

                  maxLines: 2,

                  overflow:
                  TextOverflow.ellipsis,

                  style: const TextStyle(

                    fontSize:18,

                    fontWeight:
                    FontWeight.w600,

                    color: Color(0xFF231F20),

                  ),

                ),

                const SizedBox(height:4),

                Text(

                  article.type,

                  style: const TextStyle(

                    fontSize:12,

                    color: Color(0xFF6D6265),

                  ),

                ),

              ],

            ),

          ),

          const SizedBox(width:16),

          Container(

            height:90,

            width:112,

            decoration: BoxDecoration(

              borderRadius:
              BorderRadius.circular(8),

              image: DecorationImage(

                image:
                AssetImage(article.image),

                fit: BoxFit.cover,

              ),

            ),

          ),

        ],

      ),

    );

  }

}