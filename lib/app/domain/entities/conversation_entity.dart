// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:social_app/app/domain/entities/message_entity.dart';

class ConversationEntity {
  final String meUrlAsset;
  final String otherUrlAsset;
  final String meName;
  final String otherName;
  final List<MessageEntity> messages;
  ConversationEntity({
    required this.meUrlAsset,
    required this.otherUrlAsset,
    required this.meName,
    required this.otherName,
    required this.messages,
  });
}
