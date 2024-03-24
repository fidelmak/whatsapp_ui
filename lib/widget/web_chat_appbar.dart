import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

import '../info.dart';

class Chatbar extends StatefulWidget {
  const Chatbar({super.key});

  @override
  State<Chatbar> createState() => _ChatbarState();
}

class _ChatbarState extends State<Chatbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.087,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
                radius: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
