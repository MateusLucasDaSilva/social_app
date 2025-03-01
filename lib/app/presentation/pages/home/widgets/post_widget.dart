import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_images.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/core/utils/widgets/tiles/tile_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sizePost = MediaQuery.sizeOf(context).width - (2 * AppSize.padding);
    return Column(
      children: [
        Container(
          width: sizePost,
          height: sizePost,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                AppImages.post1,
              ),
            ),
          ),
        ),
        TileWidget(),
      ],
    );
  }
}
