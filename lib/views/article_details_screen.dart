import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/news_model.dart';

class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({super.key, required this.article});

  final NewsModel article;

  @override
  Widget build(BuildContext context) {

    String dateText =
    DateFormat('MMM d, yyyy').format(article.date);

    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              "assets/images/backgroundDetails.jpg",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,

            child: Container(

              height:
              MediaQuery.of(context).size.height * 0.6,

              padding:
              const EdgeInsets.all(20),

              decoration: const BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.only(

                  topLeft: Radius.circular(24),

                  topRight: Radius.circular(24),

                ),

              ),

              child: SingleChildScrollView(

                child: Column(

                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Text(

                      article.title,

                      style: const TextStyle(

                        fontSize: 32,

                        fontWeight: FontWeight.w600,

                        color: Color(0xFF231F20),

                      ),

                    ),

                    const SizedBox(height: 16),

                    Row(

                      children: [

                        const CircleAvatar(

                          backgroundImage: AssetImage(

                              "assets/images/Harry.png"),

                        ),

                        const SizedBox(width: 8),

                        Text(

                          "${article.publisher} . $dateText",

                          style: const TextStyle(

                            fontSize: 12,

                            color: Color(0xFF6D6265),

                          ),

                        ),

                      ],

                    ),

                    const SizedBox(height: 24),

                    const Text(

                      "Forests are one of the most important natural resources...",

                      style: TextStyle(

                        fontSize: 16,

                        color: Color(0xFF231F20),

                      ),

                    ),

                  ],

                ),

              ),

            ),

          ),

        ],

      ),

    );

  }

}