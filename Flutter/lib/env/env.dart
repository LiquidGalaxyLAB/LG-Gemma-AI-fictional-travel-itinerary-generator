import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'ACCESS_TOKEN', obfuscate: true)
  static final String ACCESS_TOKEN = _Env.ACCESS_TOKEN;
}