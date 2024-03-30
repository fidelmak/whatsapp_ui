import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class SenderMessage extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessage({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: SizedBox(
            height: 50,
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
                  child: Text(
                    message,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Positioned(
                    top: 22,
                    bottom: 2,
                    child: Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(fontSize: 11),
                        ),
                        const SizedBox(
                          width: 50,
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
