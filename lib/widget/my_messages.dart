import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class MyMessageCard extends StatefulWidget {
  const MyMessageCard({super.key});

  @override
  State<MyMessageCard> createState() => _MyMessageCardState();
}

class _MyMessageCardState extends State<MyMessageCard> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [Padding(padding: EdgeInsets.only(left: 10, right: 30))],
          ),
        ),
      ),
    );
  }
}
