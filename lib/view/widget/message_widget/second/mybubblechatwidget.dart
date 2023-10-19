// ignore_for_file: unnecessary_string_interpolations, sort_child_properties_last

import 'package:flutter/material.dart';

class MyBubbleChatWidget extends StatelessWidget {
  final String chat;
  final String time;
  final String chatnow = '';
  final String nowtime = '';

  const MyBubbleChatWidget({super.key, required this.chat, required this.time});
  /*String getcurrentTime(){
	DateTime now =DateTime.now();
	String formattedTime =DateFormat('HH:mm:ss').format(now);
return formattedTime; }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$time',
            style: TextStyle(color: Colors.deepOrange.withOpacity(0.5)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16),
            width: MediaQuery.of(context).size.width * 65 / 100,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              '$chat',
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.black, height: 150 / 100),
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.5),
              //color: Colors.deepPurpleAccent,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
