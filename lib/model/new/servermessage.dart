import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'postes.dart';
import 'dart:convert';

//
//
//
class Services {
  static var url = Uri.parse(
      //'http://dash.infinityfree.com/accounts/if0_35294550'
      //'https://srv1338-files.hstgr.io/65776dd4fc394691/files/public_html/messageapp/post_api.php'
      'https://alwahash.online/messageapp/post_api.php'
      ); // https://dash.infinityfree.com/accounts/if0_35294550

  static const _CREATE_TABLE_ACTION = 'CREATE_TABLE';
  static const _ADD_POST_ACTION = 'ADD_POST';
  static const _GET_ALL_POSTS_ACTION = 'GET_ALL';
  static const _UPDATE_POST_ACTION = 'UPDATE_POST';
  static const _DELETE_POST_ACTION = 'DELETE_POST';

  //Method to create table
  static Future<String> createTable() async {
    try {
      var map = <String, dynamic>{};
      map['action'] = _CREATE_TABLE_ACTION;
      final response = await http.post(url, body: map);
      if (kDebugMode) {
        print('Create table response: ${response.body}');
      }
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return 'error';
      }
    } catch (e) {
      return 'error';
    }
  }

  //Method to add Post
  static Future<String> addPost(
      String userName, //String postTitle,
      String postText) async {
    try {
      var map = <String, dynamic>{};
      map['action'] = _ADD_POST_ACTION;
      map['messages_user'] = userName;
      //map['messages_title'] = postTitle;
      map['messages_contixt'] = postText;
      final response = await http.post(url, body: map);
      if (kDebugMode) {
        print('ADD Post Response: ${response.body}');
      }
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return 'error';
      }
    } catch (e) {
      return 'error';
    }
  }

  // Method to show Posts
  static Future<List<Posts>> getAllPosts() async {
    try {
      var map = <String, dynamic>{};
      map['action'] = _GET_ALL_POSTS_ACTION;
      final response = await http.post(url, body: map);
      if (kDebugMode) {
        print('Get All Posts: ${response.body}');
      }
      if (200 == response.statusCode) {
        List<Posts> list = parseResponse(response.body);
        return list;
      }
    } catch (e) {
      return <Posts>[];
    }
    return getAllPosts();
  }

  static List<Posts> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Posts>((json) => Posts.fromJson(json)).toList();
  }

  //Method to update post
  static Future<String> updatePost(
    String postId,
    String username,
    //String postTitle,
    String postText,
  ) async {
    try {
      var map = <String, dynamic>{};
      map['action'] = _UPDATE_POST_ACTION;
      map['messages_id'] = postId;
      map['messages_user'] = username;
      //map['messages_title'] = postTitle;
      map['messages_contixt'] = postText;
      final response = await http.post(url, body: map);
      if (kDebugMode) {
        print("Update Post Response: ${response.body}");
      }
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return 'error';
      }
    } catch (e) {
      return "error";
    }
  }

  // Method to delete post
  static Future<String> deletePost(String postId) async {
    try {
      var map = <String, dynamic>{};
      map['action'] = _DELETE_POST_ACTION;
      map['messages_id'] = postId;
      final response = await http.post(url, body: map);
      if (kDebugMode) {
        print('delete post response: ${response.body}');
      }
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return 'error';
      }
    } catch (e) {
      return 'error';
    }
  }
}
