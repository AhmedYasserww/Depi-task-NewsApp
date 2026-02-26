import 'news_model.dart';

class ArticleRepository {
  static final List<NewsModel> articles = [
    NewsModel(
      title: "Designing a Comfortable Work Environment",
      type: "Lifestyle",
      publisher: "Admin",
      date: DateTime.now(),
      details: "Article details",
      image: "assets/images/img_1.jpg",
    ),
    NewsModel(
      title: "Amazing Travel Places You Should Visit",
      type: "Travel",
      publisher: "Admin",
      date: DateTime.now(),
      details: "Article details",
      image: "assets/images/img_2.jpg",
    ),
    NewsModel(
      title: "Top Beaches Around The World",
      type: "Travel",
      publisher: "Admin",
      date: DateTime.now(),
      details: "Article details",
      image: "assets/images/img_3.jpg",
    ),
  ];
}