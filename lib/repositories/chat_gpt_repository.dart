import 'package:dio/dio.dart';

import '../env/env.dart';

class ChatGptRepository {
  Future<String> getResponse(String system, String user) async {
    final key = Env.openAiApiKey;
    // ignore: inference_failure_on_function_invocation
    final response = await Dio().post(
      'https://api.openai.com/v1/chat/completions',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $key',
        },
      ),
      data: {
        'model': 'gpt-4o-mini',
        'messages': [
          {
            'role': 'system',
            'content': system,
          },
          {
            'role': 'user',
            'content': user,
          },
        ],
      },
    );
    if (response.statusCode == 200) {
      // ignore: avoid_dynamic_calls
      return response.data['choices'][0]['message']['content'] as String;
    }
    return '';
  }
}
