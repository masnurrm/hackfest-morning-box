import "package:flutter/material.dart";

class Global with ChangeNotifier {
  Map<String,dynamic> _user = {};
 

  Future<void> signin(Map<String, dynamic> data) async {
    _user = data;
  }

  Map<String,dynamic> getUser() {
    return _user;
  }
}