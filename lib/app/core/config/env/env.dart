import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;
  // Avoid self isntance
  Env._();
  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }

  Future<void> load() => dotenv.load(fileName: '.env');

  String? operator [](String key) => dotenv.env[key];
}
