import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/news_model.dart';

class ArticleDetailsScreen extends StatelessWidget {

  const ArticleDetailsScreen({
    super.key,
    required this.model,
  });

  final NewsModel model;

  @override
  Widget build(BuildContext context) {

    String date =
    DateFormat('yyyy-MM-dd').format(model.date);

    return Scaffold(

      appBar: AppBar(
        title: const Text("Details"),
      ),

      body: SingleChildScrollView(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Image.asset(
              model.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            Padding(

              padding: const EdgeInsets.all(20),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    model.title,

                    style: const TextStyle(

                      fontSize: 24,

                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "${model.publisher} - $date",

                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(

                    "This article talks about different topics and ideas that help people improve their lifestyle and knowledge.",

                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}