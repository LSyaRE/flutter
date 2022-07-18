import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {
  String _apikey = '123';
  String _baseUrl = 'localhost:3000';
  String _language = 'es-ES';

  UserProvider() {
    print('object');
    this.getUsers();
  }

  getUsers() async {
    var url = Uri.http(_baseUrl, 'users');
    var response = await http.get(url);
  }

  getUser(String id) async {
    var url = Uri.http(_baseUrl, 'users/$id');
    var response = await http.get(url);
  }

  createUser(Map<String, String> json) async {
    var url = Uri.http(_baseUrl, 'users');
    var response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json);
  }

  updateUser(String id, Map<String, String> json) async {
    var url = Uri.http(_baseUrl, 'users/$id');
    var response = await http.put(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json);
  }

  deleteUser(String id) async {
    var url = Uri.http(_baseUrl, 'users/$id');
    var response = await http.delete(url);
  }
}
