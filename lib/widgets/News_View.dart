import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_Title.dart';
import '../Models/article_model.dart';

class NewsView extends StatelessWidget {
  final List<ArticleModel> articels;
  NewsView({super.key, required this.articels});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articels.length,
            (context, index) {
      return NewsTitle(
        articleModel: articels[index],
      );
    }));
    //  ListView.builder(
    //    shrinkWrap: true,
    //    physics: NeverScrollableScrollPhysics(),
    //    itemCount: newsModel.length,
    //    itemBuilder: (context, index) {
    //    return Padding(
    //      padding: const EdgeInsets.only(bottom: 12),
    //      child: NewsTitle(list_model: newsModel[index]),
    //    );
    //  });
  }
}
