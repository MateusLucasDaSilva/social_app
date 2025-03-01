import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_images.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/core/utils/constants/mocks.dart';
import 'package:social_app/app/domain/entities/chat_entity.dart';
import 'package:social_app/app/domain/entities/conversation_entity.dart';
import 'package:social_app/app/domain/entities/message_entity.dart';

class ChatPage extends StatefulWidget {
  final ChatEntity chat;
  const ChatPage({super.key, required this.chat});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late ConversationEntity conversation;

  @override
  void initState() {
    super.initState();
    conversation = ConversationEntity(
      meUrlAsset: AppImages.avatar,
      otherUrlAsset: widget.chat.imgAsset,
      meName: 'Mateus Lucas',
      otherName: widget.chat.username,
      messages: Mocks.messages,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chat.username),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: EdgeInsets.all(AppSize.padding),
              child: Column(
                children: [
                  ...conversation.messages.map(
                    (e) => ConversationWidget(
                      message: e,
                      meImageAssert: conversation.meUrlAsset,
                      otherImageAssert: conversation.otherUrlAsset,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ConversationWidget extends StatelessWidget {
  final MessageEntity message;
  final String meImageAssert;
  final String otherImageAssert;
  const ConversationWidget({
    super.key,
    required this.message,
    required this.meImageAssert,
    required this.otherImageAssert,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSize.padding),
      child: Row(
        mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isMe)
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    otherImageAssert,
                  ),
                ),
              ),
            ),
          if (!message.isMe)
            SizedBox(
              width: AppSize.padding,
            ),
          Container(
            width: MediaQuery.sizeOf(context).width * .5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.withValues(alpha: .2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(message.message),
            ),
          ),
          if (message.isMe)
            SizedBox(
              width: AppSize.padding,
            ),
          if (message.isMe)
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    meImageAssert,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
