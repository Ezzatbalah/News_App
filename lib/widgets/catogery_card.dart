import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/News_Model.dart';
import 'package:news_app_ui_setup/views/categoryView.dart';

class Catogery_card extends StatelessWidget {
  const Catogery_card({super.key, required this.news_model});
  final NewsModel news_model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: news_model.Name,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(news_model.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
              child: Text(
            news_model.Name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
        ),
      ),
    );
  }
}
