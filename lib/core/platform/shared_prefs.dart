import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPreferencesManager {
  Future<bool> cleanAll();

  Future<String> getAccessToken();

  Future<bool> setAccessToken(String newValue);
}

class SharedPreferencesManagerImpl implements SharedPreferencesManager {
  final _accessToken = 'access_token';

  @override
  Future<bool> cleanAll() async {
    await setAccessToken('');
    return true;
  }

  @override
  Future<String> getAccessToken() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    var value = sharedPrefs.getString(_accessToken);
    if (value == null) {
      value = '';
      await setAccessToken(value);
    }
    return value;
  }

  @override
  Future<bool> setAccessToken(String newValue) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final res = sharedPrefs.setString(_accessToken, newValue);
    return res;
  }
}
