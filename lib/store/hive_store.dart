import 'package:firedart/firedart.dart';
import 'package:hive/hive.dart';

/// Stores tokens using a Hive store.
/// Depends on the Hive plugin: https://pub.dev/packages/hive
class HiveStore extends TokenStore {
  HiveStore._internal(this._box);

  static const keyToken = 'auth_token';

  static Future<HiveStore> create() async {
    var box = await Hive.openBox(
      'auth_store',
      compactionStrategy: (entries, deletedEntries) => deletedEntries > 50,
    );
    return HiveStore._internal(box);
  }

  final Box _box;

  @override
  Token? read() => _box.get(keyToken);

  @override
  void write(Token? token) => _box.put(keyToken, token);

  @override
  void delete() => _box.delete(keyToken);
}
