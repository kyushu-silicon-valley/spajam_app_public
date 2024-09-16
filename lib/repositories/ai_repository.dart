import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/ai_info_model.dart';

class AiRepository {
  Future<List<AiInfoModel>> fetchAi() async {
    final client = Supabase.instance.client;
    final response = await client.from('ai_infos').select();
    final aiInfos = response.map(AiInfoModel.fromJson).toList();
    return aiInfos;
  }
}
