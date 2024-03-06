import 'package:flutter/material.dart';

import 'package:news_app_ui_setup/views/Home_View.dart';

void main() {
  
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
