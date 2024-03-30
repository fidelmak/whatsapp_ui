import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

import 'Sender_message.dart';
import 'my_messages.dart';

class Chat_list extends StatefulWidget {
  const Chat_list({super.key});

  @override
  State<Chat_list> createState() => _chat_listState();
}

class _chat_listState extends State<Chat_list> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]["isMe"] == true) {
            return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          }
          return SenderMessage(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        });
  }
}
