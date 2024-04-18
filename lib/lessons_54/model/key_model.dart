import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class _Shared_key {
  static const name = 'Hello!';
}

abstract class _secureToken {
  static const name = 'token';
}

class ExampleModelKey {
  // Shared_Preferences
  final _prefs = SharedPreferences.getInstance();
  final _storage = const FlutterSecureStorage();
  void readName() async {
    final storage = await _prefs;
    final result_read = storage.getString(_Shared_key.name);
    print(result_read);
  }

  void setName() async {
    final storage = await _prefs;
    final add_name =
        storage.setString(_Shared_key.name, '11112222dsadsadasdsa');
  }

  Future<void> readToken() async {
    final token = await _storage.read(key: _secureToken.name);
    print(token);
  }

  Future<void> setToken() async {
    final add_token = await _storage.write(
      key: _secureToken.name,
      value: '1232sadsadsa132121321321',
    );
    // print(add_token);
  }
}
