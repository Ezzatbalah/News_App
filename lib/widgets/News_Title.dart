import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/article_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({
    super.key, required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if(articleModel.image!=null)
        Padding(
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:Image.network(
              articleModel.image!,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            articleModel.title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            articleModel.subTitle??'',
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
