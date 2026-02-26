import 'package:flutter/material.dart';

import '../widgets/article_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE9EEFA),
        title: const Text(
          "News",
          style: TextStyle(
            color: Color(0xFF231F20),
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const ArticlesList(),
    );
  }
}