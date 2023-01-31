import 'package:shared_preferences/shared_preferences.dart';

// all shared_pref keys
class SharedPrefKeys {
  static const String tokenId = "tokenId";                    // String

}
// abstract class handel all project shared pref values
// have 3 main method for every KEY
// 1 - set value      ->    return bool [true] if success or [false] if fail
// 1 - get value      ->    return dynamic value
// 1 - remove value   ->    return Future<bool> [true] if success or [false] if fail
abstract class SharedPrefRepo {
//   -------------------  tokenId  -------------------

  Future<bool> setTokenId(String tokenId);

  String? getTokenId();

  Future<bool> removeTokenId();

}
class SharedPrefImpl implements SharedPrefRepo {
  final SharedPreferences _shared;

  SharedPrefImpl(this._shared);

//   -------------------  tokenId  -------------------

  @override
  String? getTokenId() => _shared.getString(SharedPrefKeys.tokenId);

  @override
  Future<bool> removeTokenId() async => _shared.remove(SharedPrefKeys.tokenId);

  @override
  Future<bool> setTokenId(String tokenId) async =>
      await _shared.setString(SharedPrefKeys.tokenId, tokenId);

}