import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_routes.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/core/utils/constants/mocks.dart';
import 'package:social_app/app/core/utils/widgets/title_text_widget.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          TitleTextWidget(text: 'Chats'),
          SizedBox(
            height: AppSize.padding,
          ),
          Divider(),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: Mocks.chats.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final chat = Mocks.chats[index];
              return ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () => Navigator.pushNamed(context, NamedRoutes.chat.route, arguments: chat),
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        chat.imgAsset,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  chat.username,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                subtitle: Text(
                  chat.lastMessage,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
