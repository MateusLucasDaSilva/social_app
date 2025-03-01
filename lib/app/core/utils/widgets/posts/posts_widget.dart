import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_images.dart';

class PostsWidget extends StatelessWidget {
  final int crossAxisCount;
  PostsWidget({super.key, this.crossAxisCount = 2});

  final posts = [
    AppImages.post2,
    AppImages.post3,
    AppImages.post4,
    AppImages.post5,
    AppImages.post6,
    AppImages.post7,
    AppImages.post8,
    AppImages.post9,
    AppImages.post10,
    AppImages.post11,
    AppImages.post2,
    AppImages.post3,
    AppImages.post4,
    AppImages.post5,
    AppImages.post6,
    AppImages.post7,
    AppImages.post8,
    AppImages.post9,
    AppImages.post10,
    AppImages.post11,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      shrinkWrap: true,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      children: posts
          .map(
            (e) => Image.asset(e, fit: BoxFit.cover),
          )
          .toList(),
    );
  }
}
