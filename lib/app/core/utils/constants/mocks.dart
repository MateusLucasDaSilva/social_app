import 'package:social_app/app/core/utils/constants/app_images.dart';
import 'package:social_app/app/domain/entities/chat_entity.dart';

class Mocks {
  static List<ChatEntity> chats = [
    ChatEntity(imgAsset: AppImages.post1, username: 'James', lastMessage: 'Olá amigo, tudo bem?'),
    ChatEntity(imgAsset: AppImages.post2, username: 'Maria', lastMessage: 'Vamos marcar um encontro?'),
    ChatEntity(imgAsset: AppImages.post3, username: 'Carlos', lastMessage: 'Já viu as novidades de hoje?'),
    ChatEntity(imgAsset: AppImages.post4, username: 'Fernanda', lastMessage: 'Que saudades! Precisamos conversar.'),
    ChatEntity(imgAsset: AppImages.post5, username: 'Roberto', lastMessage: 'O jogo ontem foi incrível!'),
    ChatEntity(imgAsset: AppImages.post6, username: 'Ana', lastMessage: 'Me manda o endereço depois!'),
    ChatEntity(imgAsset: AppImages.post7, username: 'Lucas', lastMessage: 'Chegou a encomenda?'),
    ChatEntity(imgAsset: AppImages.post8, username: 'Beatriz', lastMessage: 'A festa estava maravilhosa!'),
    ChatEntity(imgAsset: AppImages.post9, username: 'Eduardo', lastMessage: 'Te envio os arquivos mais tarde.'),
    ChatEntity(imgAsset: AppImages.post10, username: 'Camila', lastMessage: 'Quando vamos sair novamente?'),
  ];
}
