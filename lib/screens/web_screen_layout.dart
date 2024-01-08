import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widget/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: const Column(
              children: [
                ContactList(),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
