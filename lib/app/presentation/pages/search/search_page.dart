import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/core/utils/widgets/inputs/input_search_widget.dart';
import 'package:social_app/app/core/utils/widgets/posts/posts_widget.dart';
import 'package:social_app/app/core/utils/widgets/title_text_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          TitleTextWidget(text: 'Pesquisar'),
          SizedBox(
            height: AppSize.padding,
          ),
          InputSearchWidget(),
          SizedBox(
            height: AppSize.padding,
          ),
          Text('TODOS OS RESULTADOS'),
          SizedBox(
            height: AppSize.padding,
          ),
          PostsWidget(crossAxisCount: 3,),
        ],
      ),
    );
  }
}
