import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/core/utils/widgets/posts/posts_widget.dart';
import 'package:social_app/app/core/utils/widgets/title_text_widget.dart';
import 'package:social_app/app/presentation/pages/home/widgets/post_widget.dart';

class HomeWidget extends StatelessWidget {

  const HomeWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return SingleChildScrollView(
         child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                TitleTextWidget(text: 'Descubra'),
                SizedBox(
                  height: AppSize.padding,
                ),
                Text('O QUE HÁ DE NOVO HOJE'),
                SizedBox(
                  height: AppSize.padding,
                ),
                PostWidget(),
                SizedBox(
                  height: AppSize.padding,
                ),
                Text('NAVEGUE MAIS'),
                SizedBox(
                  height: AppSize.padding,
                ),
                PostsWidget(),
              ],
            ),
       );
  }
}