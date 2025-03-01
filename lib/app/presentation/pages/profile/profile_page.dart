import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_images.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/core/utils/widgets/posts/posts_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeImage = MediaQuery.sizeOf(context).width * 0.4;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Container(
            height: sizeImage,
            width: sizeImage,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  AppImages.avatar,
                ),
              ),
            ),
          ),
          SizedBox(
            height: AppSize.padding,
          ),
          Text(
            'Mateus',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text('PAULO AFONSO, BA'),
          SizedBox(
            height: AppSize.padding,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'SEGUIR',
              ),
            ),
          ),
          SizedBox(
            height: AppSize.padding,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text('MENSAGEM'),
            ),
          ),
          SizedBox(
            height: AppSize.padding,
          ),
          PostsWidget(crossAxisCount: 2,)
        ],
      ),
    );
  }
}
