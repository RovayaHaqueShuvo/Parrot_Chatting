import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  static StorageService get to => Get.find();
  late final SharedPreferences _prefs;

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setString(String key, String value) async{
    return await _prefs.setString(key, value);
  }
  Future<bool> setBool(String key, bool value) async{
    return await _prefs.setBool(key, value);
  }
  bool getBool (String key){
    return _prefs.getBool(key)??false;
  }

  Future<bool> remove(String key) async{
    return await _prefs.remove(key);
  }
  Future<bool> setInt(String key, int value) async{
    return await _prefs.setInt(key, value);
  }
  Future<bool> setDouble(String key, double value) async{
    return await _prefs.setDouble(key, value);
  }
  Future<bool> setList(String key, List<String> value) async{
    return await _prefs.setStringList(key, value);
  }


}
