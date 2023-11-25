import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  // Obtain shared preferences.
  SharedPreferences? sharedPreferences;

  /// initialize the hive box
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> clear() async {
    await sharedPreferences?.clear();
  }

  Future<void> delete(String key) async {
    await sharedPreferences?.remove(key);
  }

  /// store the data
  Future<void> saveSharedValue<T>(String key, T value) async {
    if (T == bool) {
      await sharedPreferences?.setBool(key, value as bool);
    } else if (T == String) {
      await sharedPreferences?.setString(key, value as String);
    } else if (T == int) {
      await sharedPreferences?.setInt(key, value as int);
    }
  }

  /// return bool value
  bool getBoolValue(String key, bool defaultValue) =>
      sharedPreferences?.getBool(key) ?? defaultValue;

  /// return string value
  String getStringValue(String key, String defaultValue) =>
      sharedPreferences?.getString(key) ?? defaultValue;

  /// return int value
  int getIntValue(String key, int defaultValue) =>
      sharedPreferences?.getInt(key) ?? defaultValue;
}
