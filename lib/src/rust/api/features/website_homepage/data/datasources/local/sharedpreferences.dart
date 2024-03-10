import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences? prefs;

class SharedPreference extends ChangeNotifier {

  final String tokenKey = 'token';

  /// clear shared preferences
  Future<void> clear() async {
    prefs = await SharedPreferences.getInstance();
    await prefs!.clear();
  }

  /// cache token
  saveToken(String id) async {
    prefs = await SharedPreferences.getInstance();
    prefs!.setString(tokenKey, id);
    notifyListeners();
  }
  /// get user token
  Future<String> getToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs!.getString(tokenKey) ?? '';
  }

}
