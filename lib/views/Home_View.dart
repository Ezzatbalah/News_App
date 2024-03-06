import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/Catogery_CardView.dart';
import 'package:news_app_ui_setup/widgets/NewsListViewBuildeer.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
            // SliverList(delegate: SliverChildBuilderDelegate(
            //   childCount: 10,
            //   (context, index) {
            //   return NewsView();
            // })),
            //////////////
            // SliverToBoxAdapter(
            //   child: NewsView(),
            // )
          ],
        )
        //Column(children: [
        //   CategoryView(),
        //   SizedBox(
        //     height: 18,
        //   ),
        //   Expanded(child: NewsView()),
        // ],)
        );
  }
}
