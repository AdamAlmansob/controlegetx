//import 'package:flutter/material.dart';

// ignore_for_file: file_names, empty_constructor_bodies

class Message {
  final bool isReaded;
  final String shopName;
  final String message;
  final String shopLogoUrl;

  Message({
    required this.isReaded,
    required this.shopLogoUrl,
    required this.message,
    required this.shopName,
  }) {}

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      isReaded: json['is_readed'],
      shopLogoUrl: json['shop_logo_url'],
      message: json['message'],
      shopName: json['shop_name'],
    );
  }
}

/*

// Thes project by Salar Brefki
//برمجة وتطوير سالار بريفكي
// YouTube: https://www.youtube.com/channel/UCphD-Ww9JnrBXRfzy6Ivg0g
// Facebook: https://www.facebook.com/salar.brefki
//Instagram: https://www.instagram.com/salarbrefki

import 'package:flutter/cupertino.dart';

class Posts {
  String id;
  String username;
  String postTitle;
  String postText;

  Posts({
    @required this.id,
    @required this.username,
    @required this.postTitle,
    @required this.postText,
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      id: json['id'] as String,
      username: json['username'] as String,
      postTitle: json['posttitle'] as String,
      postText: json['posttext'] as String,
    );
  }
}

*/