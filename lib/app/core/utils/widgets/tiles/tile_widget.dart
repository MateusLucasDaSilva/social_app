import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_images.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              AppImages.avatar,
            ),
          ),
        ),
      ),
      title: Text('Mateus Lucas'),
      subtitle: Text('@mateuslcs'),
    );
  }
}
