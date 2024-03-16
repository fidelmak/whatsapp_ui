import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          prefixIcon:
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
          icon: Icon(
            Icons.search,
            size: 20,
          ),
          hintStyle: TextStyle(fontSize: 10),
          hintText: "Search on Start Chat ",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                width: 0,
              )),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
