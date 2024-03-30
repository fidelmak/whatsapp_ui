import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widget/contact_list.dart';
import 'package:whatsapp_ui/widget/web_search_bar.dart';

import '../widget/chat_list.dart';
import '../widget/web_chat_appbar.dart';
import '../widget/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Webprofilebar(),
                  WebSearch(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Chatbar(),
                Expanded(child: Chat_list()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
