import 'package:firedart/firedart.dart';
import 'package:hive/hive.dart';

class TokenAdapter extends TypeAdapter<Token> {
  @override
  final typeId = 42;

  @override
  void write(BinaryWriter writer, Token obj) {
    writer.writeMap(obj.toMap());
  }

  @override
  Token read(BinaryReader reader) {
    return Token.fromMap(
      reader.readMap().map<String, dynamic>(
            (key, value) => MapEntry<String, dynamic>(key, value),
          ),
    );
  }
}
