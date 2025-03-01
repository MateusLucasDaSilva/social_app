import 'package:social_app/app/core/utils/constants/app_images.dart';
import 'package:social_app/app/domain/entities/chat_entity.dart';
import 'package:social_app/app/domain/entities/message_entity.dart';

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
  static List<MessageEntity> messages = [
    MessageEntity(message: 'Oi, tudo bem?', isMe: true),
    MessageEntity(message: 'Oi! Tudo sim e você?', isMe: false),
    MessageEntity(message: 'Também estou bem, obrigado!', isMe: true),
    MessageEntity(message: 'Que bom! O que tem feito ultimamente?', isMe: false),
    MessageEntity(message: 'Trabalhando bastante e você?', isMe: true),
    MessageEntity(message: 'Mesma coisa, a vida está corrida.', isMe: false),
    MessageEntity(message: 'Verdade! Vamos marcar algo esse fim de semana?', isMe: true),
    MessageEntity(message: 'Boa ideia! Que dia você pode?', isMe: false),
    MessageEntity(message: 'Sábado à tarde seria ótimo!', isMe: true),
    MessageEntity(message: 'Fechado! Te mando uma mensagem antes.', isMe: false),
    MessageEntity(message: 'Ótimo! Algum lugar em mente?', isMe: true),
    MessageEntity(message: 'Podemos ir naquele café novo.', isMe: false),
    MessageEntity(message: 'Boa ideia! Ouvi dizer que é muito bom.', isMe: true),
    MessageEntity(message: 'Sim! Tem doces incríveis.', isMe: false),
    MessageEntity(message: 'Ótimo, então está combinado!', isMe: true),
    MessageEntity(message: 'Sim! Te vejo lá então.', isMe: false),
    MessageEntity(message: 'Aliás, como foi sua semana?', isMe: true),
    MessageEntity(message: 'Bem cansativa, mas produtiva. E a sua?', isMe: false),
    MessageEntity(message: 'Parecido! Mas estou animado para o final de semana.', isMe: true),
    MessageEntity(message: 'Com certeza, vai ser bom dar uma relaxada.', isMe: false),
  ];
}
