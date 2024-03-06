import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/News_Model.dart';
import 'package:news_app_ui_setup/widgets/catogery_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  final List<NewsModel> category_model = [
    NewsModel(
        Name: 'Business', image: 'assets/photo_2_2024-02-17_21-17-28.jpg'),
    NewsModel(
        Name: 'Technology', image: 'assets/photo_6_2024-02-17_21-17-28.jpg'),
    NewsModel(Name: 'Science', image: 'assets/photo_5_2024-02-17_21-17-28.jpg'),
    NewsModel(Name: 'Sports', image: 'assets/photo_1_2024-02-17_21-17-28.jpg'),
    NewsModel(Name: 'General', image: 'assets/photo_4_2024-02-17_21-17-28.jpg'),
    NewsModel(Name: 'Health', image: 'assets/heaith.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category_model.length,
          itemBuilder: (context, index) {
            return Catogery_card(news_model: category_model[index]);
          }),
    );
  }
}
