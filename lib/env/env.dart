import 'package:envied/envied.dart';

part 'env.g.dart';

/// 環境変数を読み出すためのクラス.[envied]パッケージを利用して生成する
/// 必ずobfuscate: trueを指定して、難読化しておくこと。
@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static String supabaseUrl = _Env.supabaseUrl;
  @EnviedField(varName: 'SUPABASE_KEY', obfuscate: true)
  static String supabaseKey = _Env.supabaseKey;
  @EnviedField(varName: 'OPEN_AI_API_KEY', obfuscate: true)
  static String openAiApiKey = _Env.openAiApiKey;
}
