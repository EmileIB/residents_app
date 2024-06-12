 import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  bool containsKey(String key);

  List<String>? getList(String key);

  Future<bool> cacheString(String key, String value);

  Future<void> cacheBool(String key, bool value);

  String? getString(String key);
  bool getBool(String key);

  Future<bool> cacheList(String key, List<String> value);

  Future<bool> removeValue(String key);
}

class LocalDataSourceSharedPreferences extends LocalDataSource {
  SharedPreferences sharedPreferences;

  LocalDataSourceSharedPreferences(this.sharedPreferences);

  @override
  Future<bool> cacheString(String key, String value) async {
    return await sharedPreferences.setString(key, value);
  }

  @override
  Future<bool> cacheList(String key, List<String> value) async {
    return await sharedPreferences.setStringList(key, value);
  }

  @override
  List<String>? getList(String key) {
    return sharedPreferences.getStringList(key);
  }

  @override
  Future<bool> removeValue(String key) async {
    return sharedPreferences.remove(key);
  }

  @override
  bool containsKey(String key) {
    return sharedPreferences.containsKey(key);
  }

  @override
  String? getString(String key) {
  return sharedPreferences.getString(key);
  }
  @override
  bool getBool(String key) {
  return sharedPreferences.getBool(key)?? false;
  }
  
  @override
  Future<void> cacheBool(String key, bool value) {
    return sharedPreferences.setBool(key, value);
  }
}
