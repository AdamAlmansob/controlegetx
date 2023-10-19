// ignore_for_file: sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class SenderBubbleChatWidget extends StatelessWidget {
  final String chat;
  final String time;

  const SenderBubbleChatWidget({
    super.key,
    required this.chat,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    // new new
    TextEditingController messageController = TextEditingController();
    List<String> chatList = [];
    //
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: MediaQuery.of(context).size.width * 65 / 100,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              '$chat',
              textAlign: TextAlign.left,
              style: const TextStyle(color: Colors.black, height: 150 / 100),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              //color: Colors.greenAccent,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Text(
            '$time',
            style: TextStyle(color: Colors.blue.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
